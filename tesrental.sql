-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 27, 2024 at 02:55 PM
-- Server version: 10.1.29-MariaDB
-- PHP Version: 7.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `tesrental`
--

-- --------------------------------------------------------

--
-- Table structure for table `cars`
--

CREATE TABLE `cars` (
  `id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `manufacture_id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT 'text',
  `license_number` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT 'text',
  `color` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT 'text',
  `year` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT 'text',
  `status` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT 'text',
  `price` int(10) UNSIGNED DEFAULT NULL,
  `penalty` int(10) UNSIGNED DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cars`
--

INSERT INTO `cars` (`id`, `manufacture_id`, `name`, `license_number`, `color`, `year`, `status`, `price`, `penalty`, `deleted_at`, `created_at`, `updated_at`) VALUES
('be1b3755-8ca6-4da7-81d6-99eaf71fc662', '92ceeaf9-7be2-4fb8-9f1c-7b82c63bb9ac', 'A123', 'E3456YT', 'Putih', '2020', 'terpakai', 500000, 200000, NULL, '2024-01-27 06:41:26', '2024-01-27 06:47:12'),
('b67b2542-592f-47a3-8245-adc36ecba7e0', '702f41f0-9ac0-4da2-9639-72163f8db6b0', 'A3211', 'E3236RT', 'Putih', '2021', 'tersedia', 500000, 200000, NULL, '2024-01-27 06:42:07', '2024-01-27 06:42:07');

-- --------------------------------------------------------

--
-- Table structure for table `car_images`
--

CREATE TABLE `car_images` (
  `id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `car_id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT 'text',
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `car_images`
--

INSERT INTO `car_images` (`id`, `car_id`, `image`, `deleted_at`, `created_at`, `updated_at`) VALUES
('287931de-c1ff-43d2-ab87-e688761e3f92', 'be1b3755-8ca6-4da7-81d6-99eaf71fc662', 'storage/image/car/63164cf9-aebb-4224-8476-2e67cc297b31.jpeg', NULL, '2024-01-27 06:41:27', '2024-01-27 06:41:27'),
('b886826c-ef55-44e5-8254-772754b94222', 'b67b2542-592f-47a3-8245-adc36ecba7e0', 'storage/image/car/e390b665-aba5-4a49-b392-a0eb5548db17.jpeg', NULL, '2024-01-27 06:42:07', '2024-01-27 06:42:07');

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT 'text',
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT 'text',
  `nik` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT 'text',
  `sex` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT 'text',
  `address` text COLLATE utf8mb4_unicode_ci,
  `phone_number` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT 'text',
  `email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT 'text',
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`id`, `name`, `slug`, `nik`, `sex`, `address`, `phone_number`, `email`, `deleted_at`, `created_at`, `updated_at`) VALUES
('5863da54-03fc-49bc-952e-85b4b5fece69', 'Holden Hackett', 'Holden Hackett', '829-25-6409', 'laki-laki', '7958 Batz DrivesEast Sandy, CT 74617-0227', '+1 (693) 797-6656', 'hauck.abigayle@yahoo.com', '2020-12-09 05:08:31', '2020-12-09 04:46:04', '2020-12-09 05:08:31'),
('918fd78d-e5b6-4b5c-9cd5-44a88d167534', 'Jane Kasokandel', 'Jane Kasokandel', '32123441579655', 'perempuan', 'Jatiwangi Majalengka', '082155555333', 'jane@mail.com', NULL, '2020-12-09 04:46:04', '2024-01-27 06:14:28'),
('6f530f57-35b1-4082-bfc6-d568372d7100', 'Dr. Willy Hendra', 'tyra-lockman', '861-74-4728', 'perempuan', '30883 Stanton Crossing Apt. 031\nKuhicmouth, CT 35522', '401-771-6884', 'mraz.verlie@gibson.org', NULL, '2020-12-09 04:46:04', '2020-12-09 04:46:04'),
('87271fe3-1c5f-4a1c-963f-4af6ab1680c6', 'Jed Jember', 'Jed Jember', '45628131944', 'laki-laki', '8131 Davis VistaRohanmouth, UT 63564-8421', '085593678759', 'verla.flatley@friesen.info', NULL, '2020-12-09 04:46:04', '2024-01-27 06:49:21'),
('79d0a8dc-8082-4c4f-b1c0-1a5cbe9318dd', 'Ms. Lilyan Corkery', 'mr-roman-schiller', '898-98-7596', 'laki-laki', '2209 Maverick Inlet\nHudsontown, VT 03075', '886-227-7260', 'edwina.runolfsson@toy.com', NULL, '2020-12-09 04:46:04', '2020-12-09 04:46:04'),
('c3440b5f-ec11-4463-a3bd-2e23ae76b933', 'Mistari', 'Mistari', '46602273777', 'perempuan', 'Bandung', '(0233) 659-0253', 'zboncak.samanta@yahoo.com', NULL, '2020-12-09 04:46:04', '2024-01-27 06:51:50'),
('ab6fbb29-993a-4b11-b34a-4181ad1f6e3c', 'Dr. Pierre Erman', 'Dr. Pierre Erman', '601753667290', 'perempuan', 'Bandung', '0863903942187', 'raina.lynch@gmail.com', NULL, '2020-12-09 04:46:04', '2024-01-27 06:50:01'),
('e51a5ccb-b1d2-4696-8af8-b1ac850c3a83', 'Morgan Hoeger', 'prof-gilbert-klocko-v', '716-91-0457', 'laki-laki', '35966 Skiles View\nKayberg, CT 72429', '523-216-6138', 'xconsidine@ferry.com', NULL, '2020-12-09 04:46:04', '2020-12-09 04:46:04'),
('37f5adcb-8293-41a9-9c72-a4876c0f0b72', 'Lilla Cronin', 'Lilla Cronin', '98039343020', 'perempuan', 'Kota', '086972255483', 'brisa.moen@yahoo.com', NULL, '2020-12-09 04:46:05', '2024-01-27 06:50:41'),
('29930504-ab4b-4243-a7c0-5cc5ebc5daee', 'Abraham', 'Abraham', '7386553978247', 'laki-laki', 'Brebes', '0958-803-3363', 'walker.lucio@williamson.net', NULL, '2020-12-09 04:46:05', '2024-01-27 06:52:23'),
('4e35b88b-582e-4bdd-ae9f-ab40196bfe64', 'Polly Trantow', 'Polly Trantow', '2559540705', 'perempuan', 'Brebes', '0816612771271', 'connelly.rashad@hotmail.com', NULL, '2020-12-09 04:46:05', '2024-01-27 06:51:09'),
('22606c6c-6f85-4587-8315-c13585da502f', 'Mr. Nigel Doyle Jr.', 'jarret-hartmann', '609-96-8001', 'laki-laki', '3507 Crawford Drive\nStrackeburgh, CT 73844', '(297) 438-9540 x5001', 'estel.nicolas@hotmail.com', NULL, '2020-12-09 04:46:05', '2020-12-09 04:46:05'),
('0e8cf2d4-67da-43fe-a279-798c5cf70910', 'Mr. Timmothy Kautzer', 'deon-harris-iv', '870-83-1885', 'perempuan', '7791 Stroman Plain Suite 550\nNew Timothy, NH 39492-4391', '+1.692.690.3489', 'nellie.considine@hotmail.com', NULL, '2020-12-09 04:46:05', '2020-12-09 04:46:05'),
('042defc3-10b2-48ad-b80b-a07fef7a7c79', 'Ms. Carolanne Schuppe PhD', 'magdalen-kovacek', '512-64-2923', 'laki-laki', '613 Rogelio Junctions\nSouth Bria, ME 14355', '+16654795169', 'hulda.wiza@simonis.com', NULL, '2020-12-09 04:46:05', '2020-12-09 04:46:05'),
('52023934-7ff8-4ad6-818e-0da7afba8378', 'Prof. Madelynn Reinger', 'euna-heidenreich', '692-99-4576', 'perempuan', '2605 Homenick Junctions\nEarlmouth, NE 09512-4629', '+1.952.293.5170', 'deshaun.wisozk@rosenbaum.org', NULL, '2020-12-09 04:46:05', '2020-12-09 04:46:05'),
('b073e155-91dd-423c-bc89-41ebcae9c333', 'Annalise Lakin', 'gaston-dach', '488-98-6785', 'perempuan', '35191 Kadin Expressway Apt. 922\nLeannchester, NJ 45152-9122', '+1 (496) 565-4735', 'zachery88@muller.com', NULL, '2020-12-09 04:46:05', '2020-12-09 04:46:05'),
('6f040f9f-8c22-4f9a-9aca-71ac9b0ff0e7', 'Skyla Zemlak', 'ms-leta-prohaska-ii', '744-95-1422', 'laki-laki', '885 Haley Alley\nStammfort, RI 39165', '+1-638-948-8434', 'considine.elissa@hotmail.com', NULL, '2020-12-09 04:46:05', '2020-12-09 04:46:05'),
('ff49edc7-f6fd-40ce-b707-9e6d58d24625', 'Tara Feeney II', 'dr-tre-mclaughlin', '791-87-5791', 'perempuan', '6350 Schuster Port Suite 424\nGonzaloburgh, AZ 66379', '1-794-591-4350 x7381', 'lela.stokes@mohr.com', NULL, '2020-12-09 04:46:05', '2020-12-09 04:46:05'),
('17ffbde2-a7d8-417f-988a-9cb2a8a6f4e1', 'Felipa McKenzie', 'mr-aidan-koelpin', '575-78-8292', 'perempuan', '84770 Erna Extension Apt. 002\nBeattyfort, IA 01635', '1-246-312-0602 x8598', 'cheyanne.metz@abshire.biz', NULL, '2020-12-09 04:46:05', '2020-12-09 04:46:05'),
('2a26575c-0a4b-4229-befd-d8a034d501b0', 'Devan Schroeder', 'daniella-koch', '206-04-8321', 'laki-laki', '728 Ankunding Village Suite 934\nChristaburgh, CT 99870', '276-982-6244', 'lindsey19@yahoo.com', NULL, '2020-12-09 04:46:05', '2020-12-09 04:46:05'),
('e5f6e894-37b7-4274-b03b-5d23dc682d78', 'Dr. Minerva Macejkovic Jr.', 'dr-eden-romaguera-jr', '774-90-2481', 'perempuan', '833 Conrad Well Apt. 540\nMarilieborough, ME 00470-3213', '1-568-333-4837', 'jay43@yahoo.com', NULL, '2020-12-09 04:46:05', '2020-12-09 04:46:05'),
('6b879573-c13c-4d3a-9b0a-8ca531b26ab1', 'Nestor Langworth', 'price-glover', '084-81-1880', 'laki-laki', '24848 Luettgen Lake Apt. 453\nFerryhaven, ME 57801', '(384) 646-3513', 'brionna36@yahoo.com', NULL, '2020-12-09 04:46:05', '2020-12-09 04:46:05'),
('02a55df4-0a55-4301-9240-136ff5b7108c', 'Antonia Okuneva', 'jettie-koelpin', '496-63-4572', 'laki-laki', '4670 Fadel Lock\nWest Donnie, NV 38542', '1-385-736-8724 x683', 'yreichert@schmitt.info', NULL, '2020-12-09 04:46:05', '2020-12-09 04:46:05'),
('701666af-2772-4e1e-bb80-4020df2b451d', 'Morton Wyman', 'miss-linnie-mitchell-i', '788-60-5814', 'perempuan', '3092 Klein Tunnel Apt. 040\nLake Isaiasport, MO 98655', '+1.742.853.7457', 'tschamberger@zemlak.com', NULL, '2020-12-09 04:46:05', '2020-12-09 04:46:05'),
('0d6f4323-a0e0-4495-8a11-76ba1c78bebb', 'Prof. Destini Emard Sr.', 'caden-bailey-ii', '044-10-5417', 'laki-laki', '486 Florine Haven Suite 209\nNew Justonchester, WY 38292-2455', '934.762.1433 x1350', 'immanuel.hagenes@gmail.com', NULL, '2020-12-09 04:46:05', '2020-12-09 04:46:05'),
('51ceb097-53f2-4a25-88c8-dcabbaa45098', 'Zola Walsh', 'prof-lesley-beer-iv', '774-19-4665', 'laki-laki', '2460 Walton Islands\nAdrianaton, MN 03716-1015', '425.994.7977 x65961', 'vincent.walker@yahoo.com', NULL, '2020-12-09 04:46:05', '2020-12-09 04:46:05'),
('ae8d23f3-1716-4045-91ff-baa334a3618e', 'Jevon Walter', 'scarlett-bergstrom', '529-99-2764', 'laki-laki', '2105 Lorenz Parkways Apt. 699\nAglaeberg, IN 30916-9284', '336.321.5721 x71035', 'stokes.eino@yahoo.com', NULL, '2020-12-09 04:46:05', '2020-12-09 04:46:05'),
('016b9477-fc45-41c4-afae-de379af16381', 'Dr. Elton Larson IV', 'kaela-haley', '683-10-0186', 'laki-laki', '485 Irma Isle\nArturochester, MS 43134', '1-382-408-8244', 'okeefe.leonardo@yahoo.com', NULL, '2020-12-09 04:46:05', '2020-12-09 04:46:05'),
('d5f90ca0-2316-4232-b809-08fb57d06b45', 'Kirsten Koch', 'neoma-cummings-dds', '790-63-7719', 'perempuan', '588 Emard Shoal\nSouth Adalbertoville, MS 97564', '1-981-754-8096 x8804', 'jody52@jakubowski.com', NULL, '2020-12-09 04:46:05', '2020-12-09 04:46:05'),
('c48412b6-28f9-4d3a-bd0c-bcc67091a931', 'Dr. Leon Spencer', 'abdul-morar', '693-80-3064', 'laki-laki', '7656 Lenny Shore Apt. 095\nLorenzaland, DC 87249', '(480) 751-4374 x5650', 'maureen45@yahoo.com', NULL, '2020-12-09 04:46:05', '2020-12-09 04:46:05'),
('a17b8fa8-f8be-4373-9252-4a7f4056cb61', 'Ettie Bosco', 'vincenzo-murray', '870-03-8899', 'perempuan', '8875 Cole Canyon Suite 570\nLake Stephentown, ID 58910-4242', '864.249.3041 x793', 'konopelski.derek@legros.biz', NULL, '2020-12-09 04:46:05', '2020-12-09 04:46:05'),
('881ebc0d-b7aa-46b0-b6da-dcc2adce6767', 'Prof. Kirstin Padberg', 'larissa-gleason-phd', '882-91-8026', 'perempuan', '93408 Kihn Trail Suite 252\nDemetriusside, ID 34781-2793', '412.752.6990 x42993', 'drew.ward@harvey.com', NULL, '2020-12-09 04:46:05', '2020-12-09 04:46:05'),
('c875edec-0f7b-46c6-8baa-96477adf79bb', 'Shany Mayer', 'lucienne-torp', '043-07-6019', 'perempuan', '69552 Scotty Junctions Suite 197\nPierremouth, TX 02911', '231-442-5051', 'jenkins.winston@gmail.com', NULL, '2020-12-09 04:46:05', '2020-12-09 04:46:05'),
('aeb1aa06-e9bd-45ab-9dad-5042480d1bcc', 'Davonte Quitzon Sr.', 'gayle-gottlieb', '239-38-6532', 'perempuan', '1817 Merlin Green Apt. 047\nNorth Eli, OK 43784', '229-799-4636', 'camren78@parisian.com', NULL, '2020-12-09 04:46:05', '2020-12-09 04:46:05'),
('7135174f-ed97-4747-983c-188efac219a9', 'Chad Kulas Sr.', 'triston-reichel', '182-33-8375', 'laki-laki', '5691 Lind Ways Apt. 854\nPort Monte, PA 66898-8344', '443-319-5255 x31058', 'verda.rolfson@mclaughlin.com', NULL, '2020-12-09 04:46:05', '2020-12-09 04:46:05'),
('071555b0-cba8-4c68-92f8-d537a77caa51', 'Jaime Emard', 'prof-keyon-king-iii', '737-72-4981', 'perempuan', '23774 Gislason Fall\nTravonbury, AZ 10664', '+19566796605', 'gdoyle@schumm.com', NULL, '2020-12-09 04:46:05', '2020-12-09 04:46:05'),
('65aba15c-b24c-430d-9b7a-84feeeceb2c9', 'Tanya Lowe MD', 'eunice-mclaughlin', '698-89-0105', 'perempuan', '58308 Beer Cliffs\nStrosinmouth, NC 07832', '584.299.3837', 'tcronin@casper.biz', NULL, '2020-12-09 04:46:05', '2020-12-09 04:46:05'),
('e4d7d336-4305-468d-a565-766160a5950b', 'Javon Herzog', 'isabell-walsh', '302-15-3882', 'laki-laki', '9085 Marge Knolls Suite 349\nLake Nicholas, GA 58979', '310.620.0685', 'nicole94@feil.net', NULL, '2020-12-09 04:46:05', '2020-12-09 04:46:05'),
('1c077b23-aa6a-4911-9f0a-9b10987b8c40', 'Gennaro Hessel', 'reta-harvey-phd', '826-84-9618', 'laki-laki', '9470 Elmo Common\nEast Dudleyport, NE 97266', '818.527.6551', 'devonte.west@runte.com', NULL, '2020-12-09 04:46:05', '2020-12-09 04:46:05'),
('4b4ee7c9-deca-4454-a1f2-3270de8b49f1', 'Dr. Immanuel Goyette', 'prof-domenica-zulauf', '276-29-4884', 'laki-laki', '32876 Helen Viaduct\nNorth Dina, NC 57902', '(709) 889-9125', 'willie55@yahoo.com', NULL, '2020-12-09 04:46:05', '2020-12-09 04:46:05'),
('b48b4c28-f5f9-4ade-8b7a-3c82f908ef99', 'Monique Schmitt', 'eleanora-schmitt', '774-06-5550', 'perempuan', '1329 Satterfield Manor\nLake Ozella, TX 39353', '+1-242-986-4503', 'dboyer@stoltenberg.com', NULL, '2020-12-09 04:46:05', '2020-12-09 04:46:05'),
('ddb4a4d0-28b1-4355-8ed3-340d20aaa039', 'Ms. Tierra Greenfelder V', 'natalia-wolff-phd', '857-24-5407', 'perempuan', '62172 Kautzer Light Suite 597\nNorth April, CT 12827-0193', '1-361-207-4143 x041', 'kilback.retta@konopelski.com', NULL, '2020-12-09 04:46:05', '2020-12-09 04:46:05'),
('d4472689-4127-409d-9c6c-517351ec5626', 'Buford Bode II', 'monte-windler', '692-27-1681', 'laki-laki', '307 Katelynn Crossing Apt. 094\nYvetteland, MD 26111', '(696) 558-8892 x0311', 'adriana66@gmail.com', NULL, '2020-12-09 04:46:05', '2020-12-09 04:46:05'),
('52772369-aa99-4e5b-a821-d5f86cfb1c21', 'Dahlia Ratke', 'mrs-ashley-bosco-iv', '543-73-5192', 'perempuan', '57183 Garrett Lodge\nNew Marcchester, OH 54222-2746', '583.882.0740 x09273', 'cecilia.schumm@hotmail.com', NULL, '2020-12-09 04:46:05', '2020-12-09 04:46:05'),
('f229065c-be7b-4829-a821-d04d0509f95b', 'Mr. Reilly Bartoletti Sr.', 'telly-becker', '706-78-8509', 'perempuan', '7808 Ivah Points\nGiovaniburgh, NH 70137-9321', '667-591-0666 x6596', 'alfreda08@yahoo.com', NULL, '2020-12-09 04:46:05', '2020-12-09 04:46:05'),
('d276daaf-cca5-4f90-b217-0998ab819a0c', 'Dr. Francesco Osinski Sr.', 'prof-kaleb-hoeger', '745-49-4117', 'laki-laki', '983 Hodkiewicz Glens Apt. 826\nNew Verniestad, SD 67776', '759.874.8053', 'eden91@gmail.com', NULL, '2020-12-09 04:46:05', '2020-12-09 04:46:05'),
('9dc8eaae-ce94-4ec7-8d5f-760d975e73d9', 'Miss Vallie Cremin', 'mr-mason-bayer', '305-98-2833', 'laki-laki', '60430 Batz Lakes Apt. 509\nPort Breanabury, MT 84908', '691-294-1492', 'crist.ismael@raynor.com', NULL, '2020-12-09 04:46:05', '2020-12-09 04:46:05'),
('e664c076-3d4b-4f9d-8a03-a206b06d203b', 'Marion Dietrich', 'jerad-weber', '216-77-9763', 'perempuan', '996 Alden Green Apt. 074\nEast Donald, MI 71409-2352', '219-802-2152', 'clair.williamson@gmail.com', NULL, '2020-12-09 04:46:05', '2020-12-09 04:46:05'),
('5482f621-8e13-41ee-b336-9beb7278732e', 'Robyn Schroeder', 'ona-nitzsche', '893-12-3018', 'laki-laki', '6840 Lubowitz Terrace\nPort Blanca, MI 00507-0084', '990-410-1266 x874', 'velva06@yahoo.com', NULL, '2020-12-09 04:46:05', '2020-12-09 04:46:05'),
('5118af09-6d85-45f2-8b68-7008d785e9ae', 'Paul Huel', 'libbie-runte', '833-34-8220', 'laki-laki', '48650 Jena Stravenue Apt. 558\nWest Dejon, CA 46944-5350', '+1 (474) 312-9733', 'dibbert.fleta@hotmail.com', NULL, '2020-12-09 04:46:05', '2020-12-09 04:46:05'),
('459b0331-30b8-457f-a4db-157b96bd28a7', 'Katelin Waters', 'dr-zackary-kilback-phd', '813-84-5482', 'perempuan', '786 Schiller Junction\nSaulchester, IN 66771', '405.774.9695', 'uriel.sawayn@gmail.com', NULL, '2020-12-09 04:46:06', '2020-12-09 04:46:06'),
('f814becd-fb72-4df1-92ae-16e5e42fda7e', 'Dr. Oliver Rempel', 'mireya-barton', '021-16-1909', 'laki-laki', '62718 Linnie Fork\nHazelstad, PA 31042', '1-534-379-5650 x01713', 'ervin66@yahoo.com', NULL, '2020-12-09 04:46:06', '2020-12-09 04:46:06'),
('896b2b80-5735-4b80-bb5f-d1b9335eaeb4', 'Ms. Michelle Pfannerstill', 'nicholas-jones-md', '746-93-4100', 'laki-laki', '73652 Larson Plains\nWeimannview, NC 63209-7976', '+19376350286', 'anahi.braun@hotmail.com', NULL, '2020-12-09 04:46:06', '2020-12-09 04:46:06'),
('55465448-1caf-438a-bcbf-1e37c2459efa', 'Dr. Kole Gutkowski PhD', 'abagail-roob', '863-61-6032', 'perempuan', '172 Cloyd Plains\nConsidineland, DC 70036', '+1-323-387-7747', 'sylvia19@gmail.com', NULL, '2020-12-09 04:46:06', '2020-12-09 04:46:06'),
('da3f9205-079d-40be-b65c-63c9599fa9cc', 'Scot Weimann', 'korbin-lehner', '213-06-5580', 'perempuan', '397 Joany Centers\nEast Gwenstad, IN 30688-2491', '+1 (313) 874-6366', 'marielle.yost@yahoo.com', NULL, '2020-12-09 04:46:06', '2020-12-09 04:46:06'),
('9de613ad-b819-4bcc-bc32-f521ffb3e513', 'Deion Yost', 'moises-goodwin-jr', '569-50-1376', 'laki-laki', '71899 Rowena Stream\nAustynton, KY 43468-7164', '1-838-821-1674 x7390', 'virginia.wolff@schowalter.com', NULL, '2020-12-09 04:46:06', '2020-12-09 04:46:06'),
('046a5f0d-8ae8-4e16-b126-5331be3a44a6', 'Annie Rosenbaum', 'geo-roberts', '748-21-5882', 'laki-laki', '9164 Pouros Inlet Apt. 867\nFraneckimouth, LA 95115', '1-432-203-2772', 'freddie95@yahoo.com', NULL, '2020-12-09 04:46:06', '2020-12-09 04:46:06'),
('97d74c84-d9e4-4e0a-b9a2-34a7b4539a72', 'Amy Upton', 'javonte-reichert', '470-80-0234', 'laki-laki', '96508 Hackett Throughway Suite 208\nGinoberg, TX 12724', '+1-557-991-4284', 'luz.bins@hotmail.com', NULL, '2020-12-09 04:46:06', '2020-12-09 04:46:06'),
('bb7c8d9b-419d-46a3-836d-5002196d6b80', 'Dr. Lucinda Kuphal II', 'jon-feil', '872-37-2032', 'laki-laki', '81974 West Forks\nEast Kenyatta, NH 39143-4361', '(604) 521-5143', 'anita.hane@ohara.com', NULL, '2020-12-09 04:46:06', '2020-12-09 04:46:06'),
('2e5ad606-4939-4140-bb88-574172b00e6d', 'Theresia Kuhn', 'dr-savion-monahan', '726-21-3625', 'laki-laki', '8802 Horace Locks\nNew Pearl, ND 51762', '+1-782-414-0121', 'bernita61@roberts.com', NULL, '2020-12-09 04:46:06', '2020-12-09 04:46:06'),
('4fbb90e8-e6fe-4da8-ae0e-ff704f2a2657', 'Guillermo Schulist', 'brandi-kihn', '730-25-3066', 'perempuan', '840 Gerlach Turnpike Apt. 460\nLake Ima, MN 94681', '(895) 580-5216 x1287', 'bcole@mcclure.info', NULL, '2020-12-09 04:46:06', '2020-12-09 04:46:06'),
('3146a4aa-02e9-4d69-adfa-8b02c6ceeddd', 'Dr. Reginald Hauck MD', 'dr-glenda-thiel', '896-42-8083', 'laki-laki', '528 Bill Overpass\nNorth Monteberg, VT 77463', '(403) 499-2605 x1141', 'trodriguez@hotmail.com', NULL, '2020-12-09 04:46:06', '2020-12-09 04:46:06'),
('2902a2bd-874f-4357-b3e6-9c16bbf04b28', 'Magdalen Rippin', 'marquise-nader-sr', '831-89-1771', 'laki-laki', '3217 Keebler Pine\nNorth Constance, ND 97259-0508', '567-409-2509 x61339', 'jaren60@schroeder.com', NULL, '2020-12-09 04:46:06', '2020-12-09 04:46:06'),
('956e539e-e7a1-4821-bd04-39c979c7678a', 'Marina Mertz', 'prof-clifton-gibson-v', '823-16-7733', 'perempuan', '8328 Rohan Forges Apt. 952\nSouth Maudestad, OK 76133-6548', '974-916-7534', 'nia69@hotmail.com', NULL, '2020-12-09 04:46:06', '2020-12-09 04:46:06'),
('65b3341c-dbf6-4542-ac72-3c7c7ea9c7e4', 'America Lindgren', 'lauretta-hintz', '675-67-4613', 'laki-laki', '37949 Flatley Port Apt. 214\nHenrietteberg, ME 92763', '(257) 359-3089 x34452', 'zoie.dicki@hotmail.com', NULL, '2020-12-09 04:46:06', '2020-12-09 04:46:06'),
('d47321a3-00c6-4949-997d-9b557c4573e9', 'Brody Boehm IV', 'prof-lisa-rutherford-ii', '894-57-9497', 'laki-laki', '611 Randi Trace\nHarrisbury, NY 76252', '514.381.0668 x712', 'vonrueden.lelah@gmail.com', NULL, '2020-12-09 04:46:06', '2020-12-09 04:46:06'),
('154be5ae-80d7-42a9-82fc-d536bafaaa62', 'Addie O\'Conner', 'dr-clay-schumm', '770-24-0355', 'perempuan', '2725 Annabelle Branch\nLake Adrainland, KY 10253', '+1.260.320.3186', 'preston.gleason@yahoo.com', NULL, '2020-12-09 04:46:06', '2020-12-09 04:46:06'),
('d13eca56-9613-442d-b4d3-ec9d3e352149', 'Margot Nienow DDS', 'clotilde-gerlach', '474-41-8531', 'perempuan', '3190 Rolfson Circle Suite 307\nLake Adeliafurt, AZ 59192', '+12966138162', 'douglas.noemy@gmail.com', NULL, '2020-12-09 04:46:06', '2020-12-09 04:46:06'),
('eff209fa-5035-43b7-9512-c3b93b15b539', 'Dario Nader', 'natasha-wuckert', '833-19-3544', 'laki-laki', '90607 Kutch Rapid Apt. 370\nNorth Lucile, MA 15326-0076', '(825) 320-8714', 'yrunolfsson@herman.net', NULL, '2020-12-09 04:46:06', '2020-12-09 04:46:06'),
('3d4565c1-d37c-46a3-b74c-ce92709d91c8', 'Adrienne Robel', 'amaya-grimes', '122-46-5480', 'perempuan', '995 Cruickshank Islands\nGuststad, NM 27736', '648-377-8597 x1167', 'johnathon65@gmail.com', NULL, '2020-12-09 04:46:06', '2020-12-09 04:46:06'),
('e10bff07-9b6d-44ef-8a99-c8a046a9560c', 'Mae Ebert', 'herminia-kertzmann', '816-66-3501', 'perempuan', '22295 Littel Meadow Apt. 254\nNew Winfield, ND 60142-2300', '+1 (232) 922-6675', 'dbode@gmail.com', NULL, '2020-12-09 04:46:06', '2020-12-09 04:46:06'),
('0ea9ca92-6cf9-48ae-a9bc-f1d9d215f88f', 'Ms. Carolyne Pfeffer MD', 'ruben-thompson', '783-09-4457', 'perempuan', '86945 Mohr Neck\nNew Donato, NV 79083-6283', '+12186736622', 'bartholome64@gmail.com', NULL, '2020-12-09 04:46:06', '2020-12-09 04:46:06'),
('74304d99-fb47-40aa-a88c-15a57311c0c2', 'Saige Hill', 'theresia-moore', '747-67-6998', 'laki-laki', '2653 Kirlin Route\nGillianborough, AK 54752', '(414) 856-1681', 'tressa.erdman@gmail.com', NULL, '2020-12-09 04:46:06', '2020-12-09 04:46:06'),
('bfc5f866-b9e2-4156-a751-a6f9384e30f1', 'Amina Larkin', 'mandy-satterfield', '797-33-8305', 'perempuan', '58541 Khalil Canyon Suite 627\nElnoratown, DC 75015', '1-239-953-7439 x7602', 'toy.river@yahoo.com', NULL, '2020-12-09 04:46:06', '2020-12-09 04:46:06'),
('3b2cfb98-1e5d-41bd-b2e3-ffe18c64db81', 'Kathryn Thompson', 'ms-georgiana-brakus-phd', '720-64-9084', 'perempuan', '6826 Susanna Trafficway\nFraneckiland, WI 96930-6132', '208.305.5488 x434', 'minnie.bosco@yahoo.com', NULL, '2020-12-09 04:46:06', '2020-12-09 04:46:06'),
('284a4882-2c0f-4be2-a252-0ad89d11a231', 'Gussie Hermann', 'ophelia-bruen', '865-92-6368', 'perempuan', '774 Kiley Islands\nSchmidtfort, NE 31242-0195', '206-687-8733 x75346', 'satterfield.jennie@cole.org', NULL, '2020-12-09 04:46:06', '2020-12-09 04:46:06'),
('7214dc3b-a12c-4cd2-993e-b65426fbf54b', 'Ernesto Hamill', 'prof-leda-murazik', '406-16-7056', 'perempuan', '62604 Lucio Turnpike Suite 761\nNorth Keon, WY 15740-2521', '614-784-4811', 'victor.turcotte@hotmail.com', NULL, '2020-12-09 04:46:06', '2020-12-09 04:46:06'),
('ebc82dc5-a90b-4f2e-a31a-1bdb016099b5', 'Hassan Kertzmann', 'loraine-flatley-dds', '458-99-3517', 'laki-laki', '964 Ahmad Fords Suite 281\nWest Mallory, SC 92542-5551', '(816) 991-0799', 'lockman.alf@yahoo.com', NULL, '2020-12-09 04:46:06', '2020-12-09 04:46:06'),
('d07b3d23-7927-4f20-aa3a-b0e549a351e2', 'Nicholaus Jacobi MD', 'millie-prohaska', '355-51-5604', 'laki-laki', '8066 McDermott Walk\nNew Daphne, IN 03829', '(968) 297-9942 x0100', 'emmett88@gmail.com', NULL, '2020-12-09 04:46:06', '2020-12-09 04:46:06'),
('238d4a1f-ca4f-413b-abec-78fddcaf3ec4', 'Prof. Santina Purdy IV', 'shyann-medhurst', '370-14-4170', 'laki-laki', '364 Ola Village Apt. 843\nNew Jazmynmouth, WV 10914-6377', '557.470.8968', 'dana99@hotmail.com', NULL, '2020-12-09 04:46:06', '2020-12-09 04:46:06'),
('5b579ab9-44d6-4b6b-91a7-9aec9370298a', 'Edwin Wehner', 'janet-ziemann', '457-49-9167', 'laki-laki', '307 Reichel Fall Apt. 542\nLetitiaburgh, RI 47413', '1-580-904-5847 x1596', 'xmurazik@gmail.com', NULL, '2020-12-09 04:46:06', '2020-12-09 04:46:06'),
('4ac2540f-641f-48de-b1d3-c814df6ce32b', 'Bruce Borer', 'kacie-kunze-jr', '651-65-3053', 'perempuan', '50786 Lottie Groves\nWest Wiley, SD 92272', '+1 (689) 547-2963', 'antonia99@dibbert.info', NULL, '2020-12-09 04:46:06', '2020-12-09 04:46:06'),
('7a0ffc99-601e-403e-b34a-8d105b125be7', 'Korey O\'Reilly', 'kaden-huel', '738-43-7063', 'perempuan', '31338 Waters Lake Apt. 588\nBergstromview, MO 49447-4769', '+1 (237) 461-5187', 'vincent.jerde@king.net', NULL, '2020-12-09 04:46:06', '2020-12-09 04:46:06'),
('647090b3-5d10-4680-b5a5-ee37351bf9e5', 'Alejandra Towne', 'dr-davin-waters-phd', '616-30-2997', 'laki-laki', '5823 Cleta Fort\nLake Elnorastad, UT 66808-7327', '412-655-2721', 'zmacejkovic@hyatt.biz', NULL, '2020-12-09 04:46:06', '2020-12-09 04:46:06'),
('cc64e8d3-b332-4c2a-b643-88e53c775b74', 'Corine Flatley', 'helga-kilback', '186-42-2535', 'perempuan', '2216 Rodriguez Port Suite 657\nKirstenshire, ME 69559', '+1-872-678-1283', 'gabriel.boyle@hotmail.com', NULL, '2020-12-09 04:46:06', '2020-12-09 04:46:06'),
('b2e0b6c9-023d-40b2-8b96-fa833df9ef0f', 'Dr. John Hand Jr.', 'dr-vergie-dicki-iii', '819-09-9708', 'perempuan', '6095 Cordelia Viaduct Apt. 202\nAdalinefort, KS 05395-4310', '1-338-974-5061', 'stephon96@gmail.com', NULL, '2020-12-09 04:46:06', '2020-12-09 04:46:06'),
('76e99d14-acc4-4234-bff9-5c8b9ae84c5b', 'Madie McClure', 'jayme-tillman', '608-05-4840', 'laki-laki', '8198 Jason Centers\nSabrinachester, KS 06721', '+1-721-908-6506', 'kadin.mayer@reichel.com', NULL, '2020-12-09 04:46:06', '2020-12-09 04:46:06'),
('1373f11b-2a79-4a62-a3ea-8d732c509218', 'Kathlyn Denesik MD', 'serena-lind-i', '758-61-7212', 'laki-laki', '2438 Hubert Greens Apt. 630\nKossmouth, OH 11763', '363-372-4437 x82118', 'von.betsy@hotmail.com', NULL, '2020-12-09 04:46:06', '2020-12-09 04:46:06'),
('f86fb824-0c8b-4ab4-8081-00fd4fe7f1db', 'Destiny Kautzer I', 'rosalind-koelpin', '117-99-4511', 'laki-laki', '407 Levi Mountains Suite 740\nEast Carson, SD 57339', '478.373.4889 x104', 'gia83@wyman.info', NULL, '2020-12-09 04:46:06', '2020-12-09 04:46:06'),
('5d670b1e-88e2-4489-8594-db446d94376b', 'Scottie Krajcik', 'clare-hagenes', '066-26-3555', 'perempuan', '88689 Cassidy Tunnel\nRunolfssonberg, AZ 84372-5733', '(784) 519-4256', 'marco83@feest.com', NULL, '2020-12-09 04:46:06', '2020-12-09 04:46:06'),
('37f989ce-874e-4ee1-a686-333f2755a204', 'Mrs. Abigayle Bogisich', 'vilma-fritsch', '084-55-9189', 'laki-laki', '447 Bogan Causeway Suite 510\nSouth Delta, AR 12120-2116', '1-857-452-9986', 'rvolkman@bosco.com', NULL, '2020-12-09 04:46:06', '2020-12-09 04:46:06'),
('b0789681-fa72-448b-9102-064ddedd27fb', 'Maximillia Bins', 'letha-predovic', '747-51-7698', 'perempuan', '2625 Kunze Mount\nNorth Marcelle, NC 45442-9865', '+1 (824) 822-2759', 'lee.crona@yahoo.com', NULL, '2020-12-09 04:46:06', '2020-12-09 04:46:06'),
('0a3e700d-b8b8-4420-a074-610cec6889da', 'Selina Torphy', 'mrs-sibyl-wehner', '860-30-6431', 'perempuan', '310 Becker Drive\nEast Claireville, HI 71950', '(764) 996-9362 x3401', 'ondricka.elmore@hotmail.com', NULL, '2020-12-09 04:46:06', '2020-12-09 04:46:06'),
('4236b8a2-4170-4739-9173-92bf7a8112a3', 'Dr. Kaitlin Hansen II', 'tabitha-kub', '427-45-4545', 'perempuan', '1805 Carter Parkways\nLemkeview, WY 71081-5327', '328-625-1732 x07754', 'wyman.ruthie@hane.com', NULL, '2020-12-09 04:46:06', '2020-12-09 04:46:06'),
('619f8294-ca54-4d94-8731-45a0dbf73fb8', 'Prof. Theo Kutch I', 'gerard-hirthe', '005-52-7461', 'perempuan', '5318 Cormier Mountains\nMedhurstview, GA 20128', '1-884-562-3829 x8445', 'unique48@yahoo.com', NULL, '2020-12-09 04:46:06', '2020-12-09 04:46:06'),
('e536728f-b156-486e-bb1d-ceeecaa8debf', 'Madisyn Lakin', 'berta-lindgren', '895-45-4035', 'perempuan', '3938 Mary Roads\nFunkberg, ND 47448', '387.294.2086 x3442', 'kemmer.jany@gmail.com', NULL, '2020-12-09 04:46:06', '2020-12-09 04:46:06'),
('6aace493-9214-4ba5-b6c0-8961301d15fd', 'Ocie Smitham', 'maximo-welch', '719-17-1129', 'perempuan', '909 Faustino Inlet\nJoannestad, MT 83035', '1-376-692-4956 x4310', 'kenny57@deckow.info', NULL, '2020-12-09 04:46:06', '2020-12-09 04:46:06'),
('ed545223-3709-4533-80b5-10da9c25d9b1', 'Mona Prohaska', 'dr-cullen-ritchie', '333-36-3593', 'laki-laki', '7621 Katelynn Extension\nHomenickside, NE 07550', '+1.283.270.5410', 'alba23@renner.com', NULL, '2020-12-09 04:46:06', '2020-12-09 04:46:06'),
('cf1460a1-e454-4169-9724-bc3b53631d0a', 'Corbin Witting', 'maude-morissette', '116-91-4869', 'laki-laki', '141 Turner Points Apt. 455\nD\'Amoreton, ME 62592-4786', '796.390.6079 x055', 'jenkins.gloria@mertz.com', NULL, '2020-12-09 04:46:06', '2020-12-09 04:46:06'),
('90a734a0-2b80-42ca-959d-ea7c1681a6a5', 'Carmella Harvey', 'ms-joy-hills', '345-79-7415', 'perempuan', '8228 Grady Alley\nNorth Elroy, LA 88373', '(771) 962-4034', 'casey.ondricka@hotmail.com', NULL, '2020-12-09 04:46:06', '2020-12-09 04:46:06'),
('fee5d75c-a12d-4447-89e5-ccd90fd9d6b1', 'Adolph Jenkins', 'alf-nader', '298-39-2144', 'perempuan', '3165 Tobin Village\nRozellaside, MT 43590-5054', '874-473-0243', 'ykautzer@shields.net', NULL, '2020-12-09 04:46:06', '2020-12-09 04:46:06'),
('e0945b48-145d-4bee-9ee7-febf5e84a483', 'Bart Morissette', 'donavon-hamill', '492-09-7253', 'perempuan', '64226 Dietrich Forks\nWilfordton, NC 20991', '757.891.3847', 'henriette58@stokes.com', NULL, '2020-12-09 04:46:06', '2020-12-09 04:46:06'),
('f605e05b-86e6-4558-8bd8-eb6098d81fbc', 'Tatum Jones DDS', 'linwood-reynolds', '023-05-4850', 'perempuan', '6637 Nyasia Plains Suite 510\nNickolastown, TN 87353-8270', '(960) 575-3640', 'jacobson.tate@hotmail.com', NULL, '2020-12-09 04:46:06', '2020-12-09 04:46:06'),
('c71505d2-fdd7-4f61-99ca-c9f997cba35e', 'Tyree Wolff', 'lucas-vonrueden', '580-29-4920', 'laki-laki', '348 Icie Neck\nKingmouth, UT 77481-3553', '(596) 369-8761', 'wanda.yost@smitham.com', NULL, '2020-12-09 04:46:06', '2020-12-09 04:46:06'),
('227ad33c-da80-4562-b4bc-33d8f086e7b0', 'Chelsie Hills', 'orval-leuschke-md', '616-83-1763', 'perempuan', '548 Justice Mountains\nWest Angelita, HI 17217-5408', '596-230-1783 x1978', 'antoinette15@hotmail.com', NULL, '2020-12-09 04:46:06', '2020-12-09 04:46:06'),
('a7fa69f2-25e9-4be5-91bb-cb3c14c7834d', 'Amani McKenzie', 'dr-alford-emmerich', '097-15-4054', 'laki-laki', '815 Reilly Mission Apt. 210\nSouth Karliemouth, IN 42299', '+1 (827) 710-0350', 'bailey.nickolas@deckow.com', NULL, '2020-12-09 04:46:06', '2020-12-09 04:46:06'),
('6582a010-3afa-4b6c-a944-60ac91d68191', 'Felicita Maggio', 'christelle-schmeler-dds', '726-65-5375', 'perempuan', '560 Theresia Loaf\nLake Chelseaport, KS 11280', '593.210.4483 x021', 'patricia.maggio@hotmail.com', NULL, '2020-12-09 04:46:06', '2020-12-09 04:46:06'),
('f1edcb06-4b00-4830-82b0-1f9d95337dea', 'Jamarcus Parisian', 'dominique-fahey-iii', '873-74-0481', 'perempuan', '48311 Kling Ways Suite 426\nEast Karleyton, MI 83129-0393', '380-435-9968', 'joe.kshlerin@runolfsson.info', NULL, '2020-12-09 04:46:06', '2020-12-09 04:46:06'),
('fe9aee50-98be-464b-9ea3-231029b2e2c2', 'Dr. Reid Fisher IV', 'annabelle-goldner', '460-45-4292', 'laki-laki', '231 Conn Drive Suite 071\nTorphyburgh, SD 16643-4140', '(995) 478-1875 x958', 'rhiannon86@kuphal.com', NULL, '2020-12-09 04:46:06', '2020-12-09 04:46:06'),
('3241a435-c3e6-4580-abe8-189b48b6e4c4', 'Arlo Mitchell', 'amanda-hirthe', '037-96-2637', 'perempuan', '8796 Tracey Wall\nEllischester, AK 95208-3122', '1-571-473-3059 x203', 'selmer67@herzog.com', NULL, '2020-12-09 04:46:06', '2020-12-09 04:46:06'),
('fb5c3e81-58f6-4b3a-a612-a21ad2de930e', 'Haylee Johnston', 'wendy-waelchi', '614-07-9302', 'laki-laki', '246 Schowalter Canyon Apt. 412\nLake Thurmanberg, MD 90802', '302-330-9399', 'jkeeling@lakin.com', NULL, '2020-12-09 04:46:06', '2020-12-09 04:46:06'),
('91e3fa48-219e-44c1-9559-2a9e39f1bd52', 'Tremayne McCullough Sr.', 'prof-mariano-jones', '673-36-2017', 'laki-laki', '830 Chasity Parkways\nMillerfort, ME 29204-2646', '263-375-8576 x254', 'marquise88@yahoo.com', NULL, '2020-12-09 04:46:06', '2020-12-09 04:46:06'),
('a244f9cd-0a9a-4487-ae3a-891cfdea8cb5', 'Tod Flatley III', 'caterina-sipes-iv', '843-88-8543', 'laki-laki', '9176 Olga Estate Suite 932\nLake Daren, SC 48806-4398', '445-716-1207', 'harley.anderson@christiansen.biz', NULL, '2020-12-09 04:46:06', '2020-12-09 04:46:06'),
('8fc771e2-69af-45cd-aea3-97157c339aea', 'Omer Metz', 'mr-omer-wilderman-sr', '731-36-9246', 'perempuan', '380 Zieme Camp\nEast Luella, DC 39127', '1-724-994-2083 x1944', 'vhand@spinka.com', NULL, '2020-12-09 04:46:06', '2020-12-09 04:46:06'),
('afc9e542-bb88-40dd-898b-2d39168e1702', 'Prof. Freddy Gerlach DDS', 'malvina-lowe', '890-42-3683', 'perempuan', '2256 Bryon Rue\nRomaguerahaven, DE 14843-2079', '480.873.6966', 'zfeest@gmail.com', NULL, '2020-12-09 04:46:06', '2020-12-09 04:46:06'),
('df2b9c1f-2232-419a-aa90-d6066b18ffa5', 'Mrs. Herta Lueilwitz', 'prof-kobe-lebsack-ii', '077-78-0091', 'perempuan', '6411 Jessyca Mountains\nBartellport, NV 98073', '(928) 459-0154', 'carmelo34@tillman.net', NULL, '2020-12-09 04:46:06', '2020-12-09 04:46:06'),
('5416d9c9-47e1-43b2-b426-4769935a89bc', 'Priscilla Dietrich', 'anya-robel', '497-90-8953', 'perempuan', '26806 Delphia Coves Suite 263\nJevonview, AL 29465-8406', '1-974-502-0663', 'bogan.cory@stiedemann.com', NULL, '2020-12-09 04:46:06', '2020-12-09 04:46:06'),
('e324adfd-dde2-44b3-be47-f22d0b82fc4f', 'Mrs. Jaqueline Windler', 'aliyah-sanford', '815-84-2591', 'laki-laki', '32441 Octavia Mill Suite 204\nAlbinburgh, OK 52791', '272-662-0486', 'lhansen@pfannerstill.net', NULL, '2020-12-09 04:46:06', '2020-12-09 04:46:06'),
('d4419748-1857-40ce-b058-4810930de871', 'Tania Reichel', 'miss-sarah-stanton', '756-99-9448', 'perempuan', '582 Bria View\nTarynbury, KY 20455', '983-724-6628 x697', 'viviane.towne@hotmail.com', NULL, '2020-12-09 04:46:06', '2020-12-09 04:46:06'),
('f9099300-4042-43bb-a21b-77f1df94ce94', 'Euna Tremblay', 'dave-toy', '066-98-0638', 'laki-laki', '41396 Eliza Mill Suite 925\nNew Jewel, DE 98664', '936.615.4456', 'eschumm@yahoo.com', NULL, '2020-12-09 04:46:06', '2020-12-09 04:46:06'),
('cf4b7531-19b9-4d28-8623-6aea76d297a8', 'Darby Frami II', 'ms-emilie-swift-md', '243-89-7881', 'perempuan', '411 Quigley Row\nLeathafurt, MT 51704-6507', '1-510-299-8582 x53657', 'maxine.rippin@yahoo.com', NULL, '2020-12-09 04:46:06', '2020-12-09 04:46:06'),
('cd609596-5e86-4784-9b53-f1f37f6d62fa', 'Dr. Alta Lowe', 'kellie-mayert', '478-75-7845', 'perempuan', '187 Lon Mills\nPort Maudie, RI 47299', '(509) 321-7533', 'ucollins@schultz.net', NULL, '2020-12-09 04:46:06', '2020-12-09 04:46:06'),
('2f166731-c7d4-4f6b-a104-1e254cf58cb3', 'Hilton Murazik', 'dr-kellie-davis-dvm', '518-73-8107', 'laki-laki', '36918 Goodwin Junction Apt. 387\nKozeyburgh, NJ 03323', '282-246-1751 x91485', 'crona.delmer@gmail.com', NULL, '2020-12-09 04:46:06', '2020-12-09 04:46:06'),
('b27e3aeb-823e-4032-b6ba-a052fc6c5bb6', 'Stan Pacocha', 'prof-lazaro-wolff', '725-61-6987', 'laki-laki', '5999 Von Tunnel\nHalfort, GA 70567', '247-836-4123 x133', 'npfannerstill@gmail.com', NULL, '2020-12-09 04:46:06', '2020-12-09 04:46:06'),
('5ff7e9fe-662a-421b-8873-607371c8d001', 'Verona O\'Keefe', 'kip-lind', '372-27-2301', 'perempuan', '33457 Sarah Green Suite 470\nKunzeshire, NE 72399', '1-534-655-6334', 'mason.grimes@hoppe.org', NULL, '2020-12-09 04:46:06', '2020-12-09 04:46:06'),
('e0c3862a-15ec-48fe-91c7-ae270c3b245d', 'Rudy O\'Kon', 'ms-pinkie-lind', '219-65-7888', 'laki-laki', '59935 Powlowski Plaza\nShannamouth, IA 60972-3555', '+1-467-456-5508', 'ludwig39@gmail.com', NULL, '2020-12-09 04:46:06', '2020-12-09 04:46:06'),
('38d35580-98b0-4632-b540-8a99ea14e634', 'Daphnee Gerlach DDS', 'garrison-prosacco', '064-42-5785', 'perempuan', '479 Pattie Square Suite 263\nMacshire, WI 39480', '380.592.6217 x34412', 'holden32@yahoo.com', NULL, '2020-12-09 04:46:06', '2020-12-09 04:46:06'),
('6149361e-e638-4ac0-ba48-a3c20359c77d', 'Dr. Beatrice Champlin MD', 'shanel-leannon', '682-60-8418', 'perempuan', '362 Emie Meadows\nTaniamouth, NM 38370', '982-285-2926 x4950', 'rhaley@yahoo.com', NULL, '2020-12-09 04:46:06', '2020-12-09 04:46:06'),
('a70d99c2-8866-47c9-82fb-fcd405727f07', 'Makayla Goldner', 'mona-bashirian', '095-27-0865', 'perempuan', '5602 Skiles Mews Suite 369\nThompsonfurt, DC 92926-9591', '+1-881-585-8425', 'judy.block@oconnell.com', NULL, '2020-12-09 04:46:06', '2020-12-09 04:46:06'),
('99982362-4930-408f-b0a9-76a14db063f3', 'Alison Wunsch I', 'zander-larkin-v', '808-04-5920', 'laki-laki', '989 Fisher Vista\nNorth Marielaton, GA 75235', '(446) 877-4879 x951', 'coleman.ankunding@witting.com', NULL, '2020-12-09 04:46:06', '2020-12-09 04:46:06'),
('65a2aae4-0e62-40fe-9907-25adff7a8faf', 'Kattie Volkman III', 'bryana-kuhic', '736-76-4034', 'laki-laki', '72770 Sauer Loop\nWest Dorthaton, SD 83963-6678', '251.379.0169 x6986', 'wbogisich@kihn.com', NULL, '2020-12-09 04:46:06', '2020-12-09 04:46:06'),
('286c688f-b4e3-41f5-8286-81497cc5c050', 'Jeanie Feest II', 'dr-reese-rippin-md', '356-59-3724', 'perempuan', '37042 Nigel Mountain Apt. 309\nTrevionmouth, NV 06231-6639', '+19478051528', 'marilie.murray@stokes.com', NULL, '2020-12-09 04:46:06', '2020-12-09 04:46:06'),
('a990f9f9-ee56-44bc-b0a4-ca7324ce1488', 'Augustine Streich', 'miss-shania-carroll', '325-88-6503', 'perempuan', '4728 Letitia Pass Apt. 262\nWest Gayle, WA 75246', '409-702-7407 x9205', 'ben.haley@gmail.com', NULL, '2020-12-09 04:46:06', '2020-12-09 04:46:06'),
('dab6e94b-7325-4fc2-930b-0b3d216e48bd', 'Tillman Krajcik', 'miss-meta-lakin', '106-33-2501', 'perempuan', '566 Elvis Underpass\nSouth Brook, UT 62096-2464', '249-463-4785', 'arianna.simonis@yahoo.com', NULL, '2020-12-09 04:46:06', '2020-12-09 04:46:06'),
('f3ea411c-ff33-488f-a549-93b6d1594c8e', 'Will Leuschke Sr.', 'mrs-adele-bruen-md', '870-43-7714', 'perempuan', '19687 Melany Inlet\nWest Zarialand, RI 84688', '+1-815-468-6633', 'eichmann.keeley@lockman.com', NULL, '2020-12-09 04:46:06', '2020-12-09 04:46:06'),
('937a74f3-b7bb-4d1d-8104-bb9a134d185f', 'Lucienne Weissnat', 'dr-natasha-hane-sr', '808-33-3469', 'perempuan', '130 Aurelie Mount Apt. 718\nMeaganport, WA 35774-6790', '(391) 357-8790', 'ivy27@hotmail.com', NULL, '2020-12-09 04:46:06', '2020-12-09 04:46:06'),
('1a04e365-a40d-4190-bf59-0c476f8f6841', 'Prof. Katherine Nikolaus DDS', 'buster-armstrong', '891-71-6245', 'laki-laki', '7584 Lera Lake\nNew Gilda, UT 34339-3300', '1-526-419-0058', 'hilbert63@kunze.com', NULL, '2020-12-09 04:46:06', '2020-12-09 04:46:06'),
('c8c1cfdc-461f-49d3-a34c-cb0cb29843d9', 'Chelsey Harvey', 'katrina-botsford', '694-98-4082', 'laki-laki', '60555 Schimmel Ports\nEast Talon, HI 25175', '+15844683596', 'qhauck@yahoo.com', NULL, '2020-12-09 04:46:06', '2020-12-09 04:46:06'),
('83e3b637-9d1d-4e9c-aef5-aef0d580d5bf', 'Destini Lubowitz', 'dr-hugh-mosciski-iii', '030-48-9470', 'perempuan', '55455 McDermott Underpass Apt. 737\nPort Franco, WA 63977', '1-631-229-7243 x397', 'yhaag@friesen.com', NULL, '2020-12-09 04:46:06', '2020-12-09 04:46:06'),
('e3c3b479-ef3a-4f13-bb48-f0c00ae623d4', 'Concepcion Abernathy', 'danial-gibson-jr', '593-24-3273', 'perempuan', '765 Cortez Crescent Apt. 705\nLake Adolf, IA 56288', '1-690-310-6635 x4299', 'paucek.manley@gmail.com', NULL, '2020-12-09 04:46:06', '2020-12-09 04:46:06'),
('393d8ada-d4f6-4e7c-a94a-49c14be00608', 'Isai Koss III', 'syble-olson', '374-18-4335', 'laki-laki', '152 Linnea Trafficway\nProvidenciberg, MI 64246', '1-419-326-9940', 'pfannerstill.eloisa@lakin.com', NULL, '2020-12-09 04:46:06', '2020-12-09 04:46:06'),
('ccea961a-47ec-4235-8cc7-a558fa8cdf2e', 'Howell VonRueden', 'mrs-kristy-harber', '443-34-9005', 'perempuan', '702 Colin Plains Suite 726\nWest Ericatown, WA 84288-6081', '1-294-506-8915', 'emery66@macejkovic.com', NULL, '2020-12-09 04:46:06', '2020-12-09 04:46:06'),
('ce3dc1a6-61b6-471f-a2be-ff7ed506caa1', 'Miss Myrtis Raynor', 'prof-roxanne-trantow', '717-80-9897', 'laki-laki', '725 Cassin Port Suite 102\nNorth Emmittfurt, LA 79893-1616', '+1 (546) 493-3174', 'terrell45@mckenzie.com', NULL, '2020-12-09 04:46:06', '2020-12-09 04:46:06'),
('889f50d8-6118-4ad4-a4a9-ecc50c038421', 'Nathaniel Paucek', 'ms-shawna-runte-ii', '789-39-5066', 'laki-laki', '9416 Reymundo Road\nNorth Sophie, NV 58584', '(546) 900-3875 x333', 'lehner.erwin@gmail.com', NULL, '2020-12-09 04:46:06', '2020-12-09 04:46:06'),
('493ceaea-dd4d-4c62-a928-387fa6078ee1', 'Eli Hills', 'randal-walsh-md', '563-70-0892', 'perempuan', '631 Lela Drive Suite 285\nJohnsonshire, LA 01028', '1-983-369-6072', 'elnora.beahan@yahoo.com', NULL, '2020-12-09 04:46:06', '2020-12-09 04:46:06'),
('5587056b-c156-4947-a981-76273badb542', 'Mr. Ezekiel Senger DVM', 'marco-daugherty', '634-13-0275', 'perempuan', '160 Callie Greens Suite 322\nHunterhaven, CT 81741', '1-934-746-2107 x088', 'ikub@yahoo.com', NULL, '2020-12-09 04:46:06', '2020-12-09 04:46:06'),
('d1b7890d-cf2e-480b-9063-20ea37dd35ff', 'Precious Upton', 'triston-upton', '749-64-6141', 'perempuan', '762 Kohler Crest Suite 824\nEast Madilynhaven, CT 97514-8040', '(714) 887-2588', 'hand.anderson@oberbrunner.biz', NULL, '2020-12-09 04:46:06', '2020-12-09 04:46:06'),
('3aac3194-c587-4e30-8e78-8c02c37efe34', 'Jeromy Muller MD', 'alverta-bednar', '711-17-1893', 'perempuan', '47509 Schuppe Flat Apt. 193\nJaysonton, VA 06794-2245', '1-359-449-1780 x504', 'alfonzo.quitzon@stark.com', NULL, '2020-12-09 04:46:06', '2020-12-09 04:46:06'),
('4cfe0b2d-aad5-4f09-bfe1-d793a4655e4d', 'Liliane Miller', 'arno-pfannerstill', '862-54-4435', 'laki-laki', '4244 Eulah Lodge Suite 408\nWest Lucilemouth, DC 89095-7751', '(973) 785-8390 x5513', 'emosciski@gmail.com', NULL, '2020-12-09 04:46:06', '2020-12-09 04:46:06'),
('da99a414-1dec-4a3e-bd59-e66be2746b01', 'Kylee Morar', 'mr-edwin-bartoletti-sr', '299-50-2790', 'laki-laki', '27036 Gerhold Views Apt. 121\nRodrigueztown, WA 90185', '1-259-891-1919', 'omohr@hotmail.com', NULL, '2020-12-09 04:46:06', '2020-12-09 04:46:06'),
('520f1dcd-7da2-4f4c-b5b0-c08e62118a2f', 'Loyce Tillman', 'lance-reinger-iv', '295-99-8855', 'perempuan', '9639 Diego Valley\nChetland, AL 76486-7990', '410-451-8510 x372', 'dgrimes@hotmail.com', NULL, '2020-12-09 04:46:06', '2020-12-09 04:46:06'),
('fed53a24-5e4e-4313-856a-3d86042d1b7f', 'Ms. Carlee Swaniawski PhD', 'vida-balistreri-iii', '731-84-3823', 'perempuan', '83493 Zboncak Drive\nSouth Josiah, CT 72452', '731-598-7570 x44568', 'greenholt.darryl@gmail.com', NULL, '2020-12-09 04:46:06', '2020-12-09 04:46:06'),
('d57cdeab-a678-4882-ae72-762f7a1bdbf8', 'Leola Eichmann', 'shawna-von-iii', '363-76-5638', 'laki-laki', '3627 Quigley Landing\nNew Sammieport, MO 51918', '781.540.4312 x885', 'kulas.terry@hotmail.com', NULL, '2020-12-09 04:46:06', '2020-12-09 04:46:06'),
('4c56dcc8-1a25-4d45-926b-ed63ea054bec', 'Miss Mozell Rippin', 'dayton-gleichner', '818-54-3267', 'perempuan', '253 Jovan Groves Apt. 916\nLake Hesterchester, HI 33031', '491-914-9330 x48217', 'clair.beier@gmail.com', NULL, '2020-12-09 04:46:06', '2020-12-09 04:46:06'),
('22eefbbc-1567-4e87-b601-409b949bce65', 'Mrs. Desiree Corwin IV', 'tara-tromp-jr', '053-44-5359', 'perempuan', '19391 Melisa Glen Apt. 630\nMatildeshire, UT 64433', '(306) 757-1309', 'odaugherty@gmail.com', NULL, '2020-12-09 04:46:06', '2020-12-09 04:46:06'),
('a986f9d7-d3b2-4d57-9f94-840151fec458', 'Janice Ratke', 'mallie-schiller', '253-99-8826', 'perempuan', '8819 Shaylee Track\nBurleyton, FL 06279', '+1 (861) 547-5040', 'evandervort@emmerich.biz', NULL, '2020-12-09 04:46:06', '2020-12-09 04:46:06'),
('fb4462ab-87e2-4648-994f-4448363ce5ff', 'Tyler Feil', 'clair-kub', '817-41-5746', 'laki-laki', '735 Pagac Mission\nLinniemouth, AR 15389-3708', '203.298.2716', 'xander48@ryan.org', NULL, '2020-12-09 04:46:06', '2020-12-09 04:46:06'),
('e282b172-67bb-4236-9003-8ec4ac37f3cf', 'Eleonore Torphy', 'raheem-reichel', '674-37-5115', 'laki-laki', '973 Bashirian View Suite 758\nEbertstad, DE 07577', '+1-719-247-7045', 'xarmstrong@yahoo.com', NULL, '2020-12-09 04:46:06', '2020-12-09 04:46:06'),
('f7077939-2ff0-4528-a4b5-0aba490b6f6b', 'Jackson Haag', 'mr-durward-fritsch', '832-84-2635', 'laki-laki', '470 Koepp Views\nKleinfurt, MO 04446-3527', '373.748.6879 x379', 'ortiz.marlin@hotmail.com', NULL, '2020-12-09 04:46:06', '2020-12-09 04:46:06'),
('898969e0-22bd-4c31-bbbe-f5a5fb8a0729', 'Claude Maggio', 'june-oreilly', '738-15-8044', 'laki-laki', '82254 Hassan Hills Suite 073\nMiabury, WA 60136-3230', '257.662.3524 x9847', 'cordia.orn@brown.net', NULL, '2020-12-09 04:46:06', '2020-12-09 04:46:06'),
('62082138-12cb-43be-af61-f259ce68d7ef', 'Prof. Leone Barrows III', 'ilene-walker', '614-48-6070', 'laki-laki', '30364 Aufderhar Rapid\nSchimmelchester, NV 14835', '+12243728066', 'aquigley@kassulke.com', NULL, '2020-12-09 04:46:06', '2020-12-09 04:46:06'),
('8490023d-030e-4c44-998b-858b26d91ed1', 'Jaleel Koelpin', 'shyann-schaden-iii', '418-16-4746', 'laki-laki', '82045 Lind Ramp Apt. 006\nBauchberg, CT 10240', '(780) 310-2982 x5112', 'hauck.dorcas@gmail.com', NULL, '2020-12-09 04:46:06', '2020-12-09 04:46:06'),
('04cd3e3d-c622-4e38-828a-4baa7dd0bd08', 'Celine Reichert', 'bonita-bahringer', '446-82-5469', 'perempuan', '1144 Toy Rapid\nHarberport, WI 62333-2723', '320-524-7082 x163', 'devonte.conroy@will.com', NULL, '2020-12-09 04:46:06', '2020-12-09 04:46:06'),
('85d63db9-1d77-435c-8467-745b360e1fff', 'Janessa Breitenberg', 'ewald-stroman', '563-69-4978', 'perempuan', '60009 Dach Forest Apt. 893\nGutmannfort, DC 27357-7314', '321.249.4890 x808', 'arianna.roob@hotmail.com', NULL, '2020-12-09 04:46:06', '2020-12-09 04:46:06'),
('8d880350-fb6c-4a50-875e-07d60a3fee85', 'Sigrid Moore', 'holden-kirlin', '733-27-0920', 'laki-laki', '30432 Eichmann Field\nAlanisport, NV 17234-4893', '967.570.1594', 'pmante@yahoo.com', NULL, '2020-12-09 04:46:06', '2020-12-09 04:46:06'),
('c4619dab-c655-4090-9eac-3c5733f53a5c', 'Dr. Saul Runolfsdottir', 'mathias-kub', '632-57-6480', 'perempuan', '599 Bernadine Mews Apt. 215\nVaughnchester, MS 49415', '+1-523-996-9697', 'alexandra63@hotmail.com', NULL, '2020-12-09 04:46:06', '2020-12-09 04:46:06'),
('f1f33cea-05a0-4bc1-bb29-950785c601e0', 'Lourdes Bode', 'lolita-buckridge', '183-21-7380', 'laki-laki', '375 Jena Fork\nSamland, KY 19824-2535', '+1 (225) 789-9919', 'myra24@cummings.biz', NULL, '2020-12-09 04:46:06', '2020-12-09 04:46:06'),
('6d8ac314-d8a3-44a1-a57c-af8e256afd39', 'Mrs. Melissa Gibson', 'prof-sarina-dickens-iii', '261-19-9392', 'perempuan', '8519 Katelyn Common Suite 716\nLake Josiemouth, LA 12528', '950.595.0130 x6379', 'austen.price@maggio.biz', NULL, '2020-12-09 04:46:06', '2020-12-09 04:46:06'),
('4ab08290-3b4a-477d-b18a-dbb1c7323f59', 'Krystal Jast', 'mr-alejandrin-rolfson-iv', '621-10-2232', 'laki-laki', '6300 Flatley Falls\nNorth Trystanborough, FL 16251', '631-856-8902', 'lorenz07@frami.net', NULL, '2020-12-09 04:46:06', '2020-12-09 04:46:06'),
('0b2dbb96-0713-4a74-8984-d07249e9da24', 'Scot Breitenberg', 'creola-runolfsdottir', '744-10-2029', 'laki-laki', '31658 Macejkovic Crossroad Suite 989\nSallieburgh, CA 85348', '(897) 782-0087 x4133', 'gutkowski.micheal@boehm.com', NULL, '2020-12-09 04:46:06', '2020-12-09 04:46:06'),
('f6abfd64-7988-4cec-86d6-075b961fa9c5', 'Prof. Alyson Conroy II', 'olaf-runolfsson-i', '817-12-6444', 'perempuan', '259 Heathcote Point Apt. 148\nEast Meta, AL 60236', '(315) 373-0030', 'cierra33@yahoo.com', NULL, '2020-12-09 04:46:06', '2020-12-09 04:46:06'),
('d1ff3632-25b4-4853-be8f-e79e45d41b19', 'Jeanne Carroll', 'emilia-lehner', '149-32-5331', 'perempuan', '48372 Sauer Corners\nStromanside, WV 12223-6889', '239.428.4138 x72569', 'geo.dare@jakubowski.com', NULL, '2020-12-09 04:46:06', '2020-12-09 04:46:06'),
('147e937f-22ed-431c-b5e6-b458e6277d15', 'Dr. Orion Reichert MD', 'carlotta-torp-phd', '415-64-0113', 'perempuan', '54861 O\'Conner Vista\nToyhaven, SD 77035', '1-209-629-2710 x953', 'whauck@gmail.com', NULL, '2020-12-09 04:46:06', '2020-12-09 04:46:06'),
('a267d340-fd98-4920-9421-c1af275241c5', 'Ansel Kirlin III', 'theresia-rath', '467-54-7720', 'perempuan', '48555 Lehner Causeway\nIsaiahchester, UT 29905-4227', '858-443-5515 x86636', 'vmueller@gutkowski.org', NULL, '2020-12-09 04:46:06', '2020-12-09 04:46:06'),
('d0b6ce6f-cf39-42ea-9484-69be2fb4de7e', 'Moriah Boyer', 'prof-ethel-crona-ii', '472-36-9546', 'laki-laki', '56119 Emmerich Plains Apt. 911\nFannyville, ME 60724-8156', '1-679-845-8858 x022', 'winifred.harris@stanton.com', NULL, '2020-12-09 04:46:06', '2020-12-09 04:46:06'),
('5527c6ea-b1c9-4b03-86e6-b43a4a28fac3', 'Freddie Krajcik', 'keara-breitenberg', '636-16-8347', 'perempuan', '7998 Jamal Meadows\nReichelside, AK 81466', '(640) 726-0710 x1584', 'sherwood.strosin@hotmail.com', NULL, '2020-12-09 04:46:06', '2020-12-09 04:46:06'),
('6e7dd4f4-fb8d-497c-bc95-b47f76aae38c', 'Telly Heidenreich', 'yazmin-sanford', '626-29-2883', 'perempuan', '755 Stiedemann Light Suite 886\nMarcelinaport, AR 12058', '+15022535051', 'wuckert.william@waelchi.com', NULL, '2020-12-09 04:46:06', '2020-12-09 04:46:06'),
('981c10be-a1e1-4fb1-8887-f8a3521f9f0e', 'Conor Mann MD', 'geovanny-effertz', '035-36-3309', 'laki-laki', '36486 Gorczany Ferry\nTyrelfort, IL 62578', '1-813-201-3129', 'schmitt.davion@gmail.com', NULL, '2020-12-09 04:46:06', '2020-12-09 04:46:06'),
('87d15ef2-6e00-42bc-8639-c973bcf96659', 'Reed Harber', 'nora-hand', '355-61-5299', 'laki-laki', '8140 Micheal Meadow Apt. 766\nLake Daphneville, NM 04477', '936.661.0821 x415', 'runolfsson.janessa@hotmail.com', NULL, '2020-12-09 04:46:06', '2020-12-09 04:46:06'),
('6e1d6bea-c716-4820-b818-3f282e183934', 'Dr. Randi Lehner I', 'maci-bruen', '894-39-0048', 'laki-laki', '822 Edyth Springs\nArchside, KS 36851', '206.591.5596 x876', 'jazmyne36@stoltenberg.com', NULL, '2020-12-09 04:46:06', '2020-12-09 04:46:06'),
('dff73351-19c2-4690-8054-27dc176f449e', 'Bill Kovacek', 'webster-hermiston', '568-20-3821', 'laki-laki', '1675 Labadie Stravenue Apt. 157\nDarronbury, KS 89762', '678-354-6897', 'joan41@hotmail.com', NULL, '2020-12-09 04:46:06', '2020-12-09 04:46:06'),
('3fdb9aa9-443c-40f4-a5fc-b864ef3b970f', 'Salvador Stark II', 'wilburn-treutel', '819-84-2584', 'laki-laki', '3719 Harber Via\nKiehnside, AZ 36155', '406.202.6747', 'lilyan11@hotmail.com', NULL, '2020-12-09 04:46:06', '2020-12-09 04:46:06'),
('fdf36fb9-112c-479b-8860-ba44a91da38a', 'Dr. Jasper Lesch', 'eve-smitham', '821-28-3513', 'perempuan', '884 McDermott Lodge\nNew Kian, GA 57648-8130', '952-533-1408 x697', 'shania44@gmail.com', NULL, '2020-12-09 04:46:06', '2020-12-09 04:46:06'),
('222afc9b-38db-4e09-9823-e52a55d6b6d1', 'Kimberly Conroy', 'margaret-cronin', '217-65-0437', 'perempuan', '13332 Dorian Extensions\nJosianefort, WA 52014', '(635) 369-7377 x518', 'leonard39@pacocha.info', NULL, '2020-12-09 04:46:06', '2020-12-09 04:46:06'),
('78ef7ed3-b595-49d2-9c85-5c5903b62870', 'Dr. Robb Schinner', 'ari-mosciski', '653-93-9726', 'perempuan', '18121 Hintz Crest Suite 925\nDorismouth, TN 17851-5442', '475.498.2067', 'dzulauf@gmail.com', NULL, '2020-12-09 04:46:06', '2020-12-09 04:46:06'),
('0690aee3-c7e9-4594-9848-fc4f65e54711', 'Elyssa Gusikowski', 'linnea-zieme', '831-66-7236', 'laki-laki', '1046 Runte Views Apt. 212\nWest Josefa, NJ 59975-1054', '341.374.2283', 'uarmstrong@gmail.com', NULL, '2020-12-09 04:46:06', '2020-12-09 04:46:06'),
('3be66d63-40f7-42e0-8849-73260a52a377', 'Damon Bogisich PhD', 'jana-boyer', '104-03-6026', 'perempuan', '5522 Ryan Spur Apt. 763\nLake Beulah, VA 48938', '1-491-254-3921', 'lizeth11@romaguera.com', NULL, '2020-12-09 04:46:06', '2020-12-09 04:46:06'),
('f2fdc2f7-9c3f-4abb-9d78-e8c226f92b58', 'Prof. Clare O\'Hara', 'sigrid-langosh', '720-63-3170', 'laki-laki', '8389 Monty Brook\nElisaton, AR 95945-0476', '(882) 584-3553 x0597', 'ellis.streich@gmail.com', NULL, '2020-12-09 04:46:06', '2020-12-09 04:46:06'),
('ef5f9c84-243d-4e35-9712-8a466df8647e', 'Dr. Hollis Kozey', 'miss-sophie-olson', '033-01-7829', 'perempuan', '496 DuBuque Trafficway\nEast Ricardoview, MN 51598', '+1-996-379-7267', 'nikki91@hotmail.com', NULL, '2020-12-09 04:46:06', '2020-12-09 04:46:06'),
('17b87d75-e4c0-4b09-be85-8bb5b2475055', 'Dulce Bradtke', 'conner-langworth', '760-72-0078', 'laki-laki', '8276 Haley Lane\nPort Ewell, NC 53221-0680', '+1-848-663-8403', 'joel.waters@wisoky.net', NULL, '2020-12-09 04:46:06', '2020-12-09 04:46:06'),
('3a35c130-0ad7-4002-a22c-32acb28f4106', 'Jon Kerluke', 'mr-lexus-walker-iv', '462-76-4466', 'perempuan', '134 Pfannerstill Fields\nEast Lisaport, PA 36311-2040', '(230) 873-2706 x203', 'lcorwin@goyette.com', NULL, '2020-12-09 04:46:06', '2020-12-09 04:46:06'),
('047869c8-e940-4f77-9e0f-2af8da79fbfa', 'Eliezer Bahringer', 'dr-ramon-altenwerth-i', '265-82-2086', 'perempuan', '3887 Royal Bridge\nDelphinemouth, CO 69169-0139', '+12568368606', 'nbayer@wilkinson.com', NULL, '2020-12-09 04:46:06', '2020-12-09 04:46:06'),
('c657bb1d-7028-4370-a0b7-ae2e34820415', 'Malinda O\'Connell', 'tyree-glover-phd', '483-17-7979', 'laki-laki', '15960 Myrl Well\nBoyertown, MS 42396', '+1.471.913.8704', 'abdiel.murphy@gmail.com', NULL, '2020-12-09 04:46:06', '2020-12-09 04:46:06'),
('8cb2b4ab-a891-43a4-9738-5a479e496f18', 'Kelli Emard', 'prof-heidi-veum', '460-29-9626', 'laki-laki', '183 Smitham Valleys Apt. 737\nLake Brianne, MD 79199', '+1-342-355-2347', 'kemmer.carley@hotmail.com', NULL, '2020-12-09 04:46:06', '2020-12-09 04:46:06'),
('20a0ab0b-40da-428b-8a31-1863b2119629', 'Leanna Green MD', 'ms-donna-heller', '836-87-1160', 'perempuan', '8118 Bernice Ways Apt. 444\nLake Joel, WI 60423', '+1-595-389-8210', 'hegmann.jacquelyn@yahoo.com', NULL, '2020-12-09 04:46:06', '2020-12-09 04:46:06');
INSERT INTO `customers` (`id`, `name`, `slug`, `nik`, `sex`, `address`, `phone_number`, `email`, `deleted_at`, `created_at`, `updated_at`) VALUES
('70422fcd-7088-4767-ba86-24b881cc74ab', 'Mariam Lowe', 'prof-hassan-hermann-phd', '896-06-7904', 'laki-laki', '8233 Deborah Estates\nNew Fatimaberg, ND 40820', '1-951-457-8121 x8445', 'konopelski.marcellus@hotmail.com', NULL, '2020-12-09 04:46:06', '2020-12-09 04:46:06'),
('c303c5dd-3725-4a7d-ba5c-771811299961', 'Regan Leannon', 'gardner-macejkovic', '198-81-5927', 'perempuan', '547 Labadie Well\nJimmieshire, MA 79191-7182', '(646) 527-9122', 'hrussel@gmail.com', NULL, '2020-12-09 04:46:06', '2020-12-09 04:46:06'),
('c41df911-4be5-4363-a31d-68fcdba4fe3d', 'Nikolas Abshire Jr.', 'don-oberbrunner', '500-76-8596', 'laki-laki', '3132 Jordan Parks Apt. 887\nWehnerland, DE 34427', '(576) 973-3049', 'audreanne40@gmail.com', NULL, '2020-12-09 04:46:06', '2020-12-09 04:46:06'),
('15113cf0-1a95-4195-b854-9a5b7b9340c7', 'Hiram Zieme', 'juwan-littel', '725-60-8256', 'perempuan', '2561 Everett Flat\nReingershire, FL 40379', '780.806.5813 x272', 'citlalli.anderson@gmail.com', NULL, '2020-12-09 04:46:06', '2020-12-09 04:46:06'),
('7345fb28-1c38-4150-b3c7-dd23c552a45d', 'Constantin Stehr', 'river-ankunding-ii', '482-06-4133', 'laki-laki', '379 Lubowitz Creek\nWest Jorgeberg, TN 40289', '(371) 419-2311', 'serenity.witting@gmail.com', NULL, '2020-12-09 04:46:06', '2020-12-09 04:46:06'),
('e9fc93a8-d819-4cf8-8dfb-54acde168c2a', 'Dr. Richie Welch MD', 'reyes-macejkovic', '138-70-9191', 'perempuan', '649 Ivah Knolls Apt. 408\nKozeyborough, WY 46520', '1-450-253-6114 x60965', 'keyon42@gmail.com', NULL, '2020-12-09 04:46:06', '2020-12-09 04:46:06'),
('c43d5943-aec3-40e5-a51a-f56200c0960e', 'Theodore Bailey IV', 'prof-cory-conn', '702-26-3432', 'laki-laki', '40833 Cruickshank Field Suite 867\nWest Jazmyn, CT 56130', '(285) 820-6483 x9301', 'rohan.shanna@kulas.biz', NULL, '2020-12-09 04:46:06', '2020-12-09 04:46:06'),
('2d759e22-da34-4577-9c22-9f7529b03e2d', 'Okey Hegmann', 'clotilde-ullrich-v', '262-21-9448', 'laki-laki', '283 Parisian Shores\nBoyerchester, TN 72861', '1-747-297-6233 x84827', 'mcglynn.john@gmail.com', NULL, '2020-12-09 04:46:06', '2020-12-09 04:46:06'),
('64996ec5-0da4-46bf-991d-0e7a87871a38', 'Miss Tania Mayer', 'dr-shirley-klein-sr', '591-43-1121', 'perempuan', '41697 Cassin Plains Apt. 065\nPacochafort, ND 51398', '+14253338306', 'xframi@yahoo.com', NULL, '2020-12-09 04:46:06', '2020-12-09 04:46:06'),
('08a8031d-6458-4cea-ba1a-a26532b1052b', 'Michaela Thiel', 'lura-hintz', '564-20-2135', 'perempuan', '42202 Hauck Junction Apt. 944\nNew Rosa, MT 52021', '+1-226-319-7820', 'dooley.clair@yahoo.com', NULL, '2020-12-09 04:46:06', '2020-12-09 04:46:06'),
('2ccdb41d-c557-4a60-a650-29fba1424018', 'Allan O\'Reilly', 'prof-micah-mcglynn-dvm', '673-24-6754', 'laki-laki', '53302 Etha Pike Suite 748\nNew Russell, WY 03971', '657.528.1909', 'verdie70@dickens.com', NULL, '2020-12-09 04:46:06', '2020-12-09 04:46:06'),
('a21739ef-9458-4b2e-8f60-302777a2e9c4', 'Karolann Kuphal', 'ewell-jast', '717-65-2717', 'perempuan', '165 Cole Neck Suite 076\nMurphyland, MT 83970', '+12923792897', 'labadie.gabe@hotmail.com', NULL, '2020-12-09 04:46:06', '2020-12-09 04:46:06'),
('b50c92a0-bfcf-41e6-a396-becd108c3283', 'Cynthia Donnelly', 'laurine-davis', '805-16-4563', 'perempuan', '8281 Gleichner Pines\nPort Jackside, IL 68809', '775.925.2817 x10474', 'jsanford@yahoo.com', NULL, '2020-12-09 04:46:06', '2020-12-09 04:46:06'),
('22368a2d-4c6f-4b0c-a4e7-8ebd21a0195a', 'Coy Miller', 'prof-lilly-thompson', '185-53-9384', 'laki-laki', '3496 Rosenbaum Mountains Apt. 252\nMollieland, NC 84307-0097', '445.959.9252 x2361', 'regan19@hotmail.com', NULL, '2020-12-09 04:46:06', '2020-12-09 04:46:06'),
('5196307c-dcca-4c30-9bfa-4f8c50e6ce9e', 'Miss Autumn Turcotte', 'daphnee-price', '148-42-9342', 'perempuan', '14577 Vada Street\nWiegandview, WV 14544', '1-267-922-5749', 'tyrell.becker@gmail.com', NULL, '2020-12-09 04:46:06', '2020-12-09 04:46:06'),
('3c0e123f-1710-4f46-90c2-d0fb1d479e30', 'Marcos Daugherty', 'jailyn-pagac', '378-56-5795', 'laki-laki', '4971 Schowalter Crossing\nLake Madge, OK 61230', '617.218.7387 x9674', 'devon.west@yahoo.com', NULL, '2020-12-09 04:46:06', '2020-12-09 04:46:06'),
('d627ba40-7396-4386-9150-d63b296d9ded', 'Blaze Wunsch', 'prof-leonie-schumm', '691-03-0418', 'laki-laki', '59920 Graham Station\nLake Deanfurt, AZ 89722-2003', '894.309.9590 x1962', 'jasper49@hahn.com', NULL, '2020-12-09 04:46:06', '2020-12-09 04:46:06'),
('4f6f1698-1e87-42f6-ae7e-4ac68b114286', 'Prof. Nolan Fadel Jr.', 'shawna-jacobs-ii', '762-94-1673', 'perempuan', '303 Mante Ridge\nPort Juneland, CT 86715-2624', '(932) 461-9316 x8108', 'maximillia75@macejkovic.com', NULL, '2020-12-09 04:46:06', '2020-12-09 04:46:06'),
('d5e5ecfe-8c0a-4080-97f0-e8031a71c5d8', 'Melody Hodkiewicz', 'shanon-ebert', '007-64-5588', 'laki-laki', '8838 Sonia Views Suite 416\nGretchenburgh, AZ 22402-1962', '1-230-463-4776', 'wlarson@yahoo.com', NULL, '2020-12-09 04:46:06', '2020-12-09 04:46:06'),
('6980505e-b861-4fc8-a922-f820b4b080b9', 'Mrs. Kirstin Towne MD', 'ms-name-funk', '825-23-9895', 'perempuan', '72972 Norberto Dale Apt. 379\nVickieburgh, ID 53088-9985', '975.825.4656 x340', 'corine.schinner@feil.info', NULL, '2020-12-09 04:46:06', '2020-12-09 04:46:06'),
('c4c4606f-d168-4f5c-80e5-6ea02a29b7f5', 'Ms. Alanna Armstrong', 'francis-ryan', '847-87-4832', 'perempuan', '899 Lesch Islands Suite 257\nVeronatown, VT 25937', '1-436-650-7088', 'nya90@miller.com', NULL, '2020-12-09 04:46:06', '2020-12-09 04:46:06'),
('0b7705b6-73f4-498f-bf33-d6b3bb911b72', 'Prof. Roman Champlin', 'obie-brakus-dds', '812-62-9045', 'perempuan', '34178 Gutmann Mission Apt. 253\nWindlerchester, OK 58783-8281', '1-238-842-8023', 'giovanna68@yahoo.com', NULL, '2020-12-09 04:46:06', '2020-12-09 04:46:06'),
('60a0252e-b7e5-4971-ba17-a5239ddeb5f8', 'Garret Beahan', 'dr-frank-kuvalis-i', '047-44-5021', 'perempuan', '58824 Alayna Plaza Suite 633\nWest Abdullah, KS 82525', '(602) 647-4778', 'schowalter.carmella@hotmail.com', NULL, '2020-12-09 04:46:06', '2020-12-09 04:46:06'),
('cd2b9515-74e1-4c8e-bf88-fd6a31ba02e3', 'Liana Schuppe', 'mrs-frederique-langosh-dvm', '420-79-6428', 'perempuan', '8901 Haley Estates Suite 276\nLake Orie, SD 27447-3751', '1-502-584-6754 x61834', 'jada.renner@pagac.info', NULL, '2020-12-09 04:46:06', '2020-12-09 04:46:06'),
('842fcc3c-0a59-40e0-af59-d423a2dc5c49', 'Ms. Sarai Gislason Jr.', 'quincy-heller', '138-84-0421', 'perempuan', '56760 Eleonore Course Suite 855\nEast Mohamed, HI 89978-1470', '626.473.7304 x072', 'keegan.osinski@gmail.com', NULL, '2020-12-09 04:46:06', '2020-12-09 04:46:06'),
('56e40cb5-a06d-4980-b1dd-2471a1b67a7f', 'Hunter Hoeger', 'jackie-koepp-md', '234-63-9784', 'laki-laki', '8627 Estell Lodge Apt. 597\nEbertport, GA 31050-7675', '+1.885.377.7711', 'maye.stokes@gmail.com', NULL, '2020-12-09 04:46:06', '2020-12-09 04:46:06'),
('3981cb95-4e58-488c-8973-a1fafd2a700e', 'Dexter Mills', 'arnold-rutherford', '702-91-9606', 'perempuan', '3065 Abby Plaza\nTomasport, SD 65333-4694', '867.897.7189 x84686', 'bobby91@yahoo.com', NULL, '2020-12-09 04:46:06', '2020-12-09 04:46:06'),
('d789ce59-f2ba-463d-a851-d6c0b5191478', 'Lorenza Strosin', 'cortez-frami', '862-75-3675', 'perempuan', '1015 Brown Forks Apt. 973\nTurcottefurt, LA 08427-5228', '1-779-990-8282', 'kelsie90@white.com', NULL, '2020-12-09 04:46:06', '2020-12-09 04:46:06'),
('9f5288fb-9eb8-4c4f-89bb-1b3360dd831b', 'Prof. Nadia Collins DDS', 'tanner-reichel', '542-99-5722', 'perempuan', '78288 Arden Way Apt. 139\nEast Lizaborough, FL 44499-8748', '809.745.8301 x812', 'towne.jennings@hotmail.com', NULL, '2020-12-09 04:46:06', '2020-12-09 04:46:06'),
('e5de10fe-c663-405e-979e-55d4c480367e', 'Joanny Windler Sr.', 'prof-pasquale-rosenbaum-dvm', '896-89-1772', 'perempuan', '722 Rath Union Suite 096\nPort Juwanmouth, MN 51690-0399', '+1 (356) 934-2617', 'alverta.rodriguez@yahoo.com', NULL, '2020-12-09 04:46:06', '2020-12-09 04:46:06'),
('83dd6009-0efa-4270-9aed-722ddf27a1e0', 'Justus Shanahan', 'priscilla-gulgowski', '673-17-7981', 'laki-laki', '87656 Orpha Ramp Apt. 825\nDelphiamouth, MO 76723', '531.814.4537 x14412', 'erica.willms@hotmail.com', NULL, '2020-12-09 04:46:06', '2020-12-09 04:46:06'),
('1b235157-d24b-431f-b1a6-9cce1891962b', 'Mackenzie Blanda', 'trinity-howe', '262-12-5447', 'perempuan', '1423 Odessa Motorway Suite 269\nPort Titusberg, OR 71388', '1-717-314-0798', 'brekke.jillian@corwin.biz', NULL, '2020-12-09 04:46:06', '2020-12-09 04:46:06'),
('215c3420-e90c-46c0-8f26-17d58812d861', 'Mr. Trystan Donnelly Sr.', 'alexandra-russel', '272-36-5604', 'laki-laki', '14153 Sawayn Glen Apt. 766\nPort Stoneside, MA 55583', '+1 (857) 706-7871', 'vokuneva@gmail.com', NULL, '2020-12-09 04:46:06', '2020-12-09 04:46:06'),
('0d837d11-f67f-42a2-93bf-48c28a78a894', 'Dana Fisher', 'cayla-wiegand', '036-69-9890', 'perempuan', '229 Fay Ports\nEast Linneatown, VA 61351-2566', '617.812.6510 x8002', 'heller.annette@yahoo.com', NULL, '2020-12-09 04:46:06', '2020-12-09 04:46:06'),
('3cf941f6-0a9e-4da8-85a5-c54f2f25b5f3', 'Reid Buckridge IV', 'elissa-pfeffer', '460-77-0564', 'laki-laki', '7763 Maddison Union Apt. 186\nLake Clifford, MA 89628-2821', '391.321.7744 x730', 'madge.bode@mraz.info', NULL, '2020-12-09 04:46:06', '2020-12-09 04:46:06'),
('e06fcaab-accb-4f3b-abab-58d91a41fa37', 'Ike Hackett Sr.', 'ima-windler', '681-88-5108', 'laki-laki', '692 Missouri Overpass Apt. 435\nAbbottmouth, WI 87510-7150', '1-585-821-5802 x30245', 'wbeier@huel.com', NULL, '2020-12-09 04:46:06', '2020-12-09 04:46:06'),
('6af13be7-678c-4d9e-a987-2083af3bc311', 'Jon Stokes', 'jarrett-zboncak', '383-56-6745', 'laki-laki', '2147 Kassulke Cape Apt. 822\nOndrickafurt, KS 99121-7329', '952-887-3846 x814', 'reese96@hotmail.com', NULL, '2020-12-09 04:46:06', '2020-12-09 04:46:06'),
('04205bf4-ba7e-4bf3-a0fc-53007deef0fc', 'Mrs. Christiana Towne', 'carmella-dickens', '876-68-6402', 'perempuan', '69777 Lula Skyway Suite 392\nCassinfurt, CA 16484-5040', '850.860.5700', 'trantow.joan@hotmail.com', NULL, '2020-12-09 04:46:06', '2020-12-09 04:46:06'),
('33e95f58-6959-41ac-92af-bc6b2cfc6c31', 'Peter Bayer', 'eleonore-schimmel', '010-61-3771', 'perempuan', '13586 Brown Trail Apt. 405\nWest Justus, OK 74411', '+1-265-383-9908', 'spinka.crystel@gottlieb.com', NULL, '2020-12-09 04:46:06', '2020-12-09 04:46:06'),
('bc2b143b-f01c-491e-b2bc-a43ce516a4b7', 'Norberto Ryan Sr.', 'hayden-block', '860-69-9200', 'perempuan', '257 Meagan Viaduct Suite 924\nSouth Sigurdstad, FL 87382', '869.373.1547 x89277', 'rgreen@west.net', NULL, '2020-12-09 04:46:06', '2020-12-09 04:46:06'),
('8f9f71cf-1f31-4ff7-abcc-8693027500f4', 'Fabiola Gleason MD', 'anika-hills-iii', '726-17-7081', 'laki-laki', '9786 Brain Forges\nNew Nikolas, OR 01643', '390.581.1376 x9562', 'sibyl89@bahringer.com', NULL, '2020-12-09 04:46:06', '2020-12-09 04:46:06'),
('6104ddbf-81a6-43c7-83fc-503130209783', 'Madisyn Parisian', 'jeanette-jacobs', '688-74-4036', 'laki-laki', '4070 Boyer Wall Apt. 754\nJacobsonport, MO 34820-3949', '952-275-8287 x14024', 'palma50@stanton.com', NULL, '2020-12-09 04:46:06', '2020-12-09 04:46:06'),
('007225b1-7076-4849-9990-c6e6887abdb4', 'Jasmin Kessler Sr.', 'jodie-legros-i', '848-16-2754', 'perempuan', '825 Jevon Fords Suite 716\nHammesburgh, MO 90209-5482', '(753) 990-6910 x856', 'xnader@yahoo.com', NULL, '2020-12-09 04:46:06', '2020-12-09 04:46:06'),
('b83e978c-e99b-4de9-839c-4eca6c5c243d', 'Jettie Pollich', 'robin-ernser-v', '851-15-5263', 'perempuan', '30862 Robel Lodge Apt. 100\nVandervortborough, WY 79457', '(584) 279-6083', 'tanya15@yahoo.com', NULL, '2020-12-09 04:46:06', '2020-12-09 04:46:06'),
('bb8f817e-7cf8-4bbb-a4ad-9e28f97a9605', 'Prof. Rene Gottlieb II', 'mr-ian-turcotte', '808-62-9183', 'laki-laki', '5787 Rice Stravenue\nHesselshire, MN 35943', '1-739-803-9215 x4946', 'alysa.nader@rowe.com', NULL, '2020-12-09 04:46:06', '2020-12-09 04:46:06'),
('ee81119f-ad31-4da0-9db3-ce1c715656ed', 'Brenna Bednar', 'clinton-bailey', '398-77-6588', 'laki-laki', '6201 Koepp Port\nLake Stephen, TX 29458', '+1 (423) 793-4877', 'pklein@yahoo.com', NULL, '2020-12-09 04:46:06', '2020-12-09 04:46:06'),
('8de270f7-fada-452b-be2a-66b076af7ace', 'Teresa Hammes', 'kurt-zulauf', '269-75-4658', 'laki-laki', '4188 Dovie Wells\nBoganview, LA 71717', '+1-517-743-1288', 'anienow@yahoo.com', NULL, '2020-12-09 04:46:06', '2020-12-09 04:46:06'),
('3904cc57-fefe-47ad-9089-01ec3dec82c0', 'Mr. Barney Muller DDS', 'hilario-trantow', '557-39-9634', 'perempuan', '246 Waters Bridge Apt. 099\nNorth Amani, SC 65169', '910-238-8450', 'treutel.katlynn@nitzsche.org', NULL, '2020-12-09 04:46:06', '2020-12-09 04:46:06'),
('dbe23a98-7079-44d1-83dc-960ba5a198dd', 'Dr. Alexandre Kihn II', 'carlie-conroy', '532-83-5899', 'perempuan', '3915 Legros Crescent\nJamaalview, MN 15317', '1-646-498-3576', 'brennan34@kovacek.com', NULL, '2020-12-09 04:46:06', '2020-12-09 04:46:06'),
('5bcb277e-d26c-4c00-a962-87a31a47bb6a', 'Hattie Anderson', 'nathan-stracke', '738-73-6834', 'laki-laki', '23407 Purdy Shores Apt. 938\nSanfordshire, UT 97662-3546', '351-353-9815', 'schmeler.wendell@brekke.com', NULL, '2020-12-09 04:46:06', '2020-12-09 04:46:06'),
('8a734868-81ec-4530-b285-501ec58a1313', 'Noelia Durgan', 'mr-myron-lang-v', '821-50-5884', 'laki-laki', '3059 Kling Mill Apt. 366\nPort Tianna, GA 43331', '(856) 450-4311 x1282', 'laura.pfeffer@adams.info', '2024-01-27 06:53:41', '2020-12-09 04:46:06', '2024-01-27 06:53:41'),
('e3b77c14-007c-4ea5-b1fa-ab74436159f9', 'Keyshawn Wisoky MD', 'mr-kevon-harber', '564-21-9973', 'laki-laki', '19519 Stark Oval Suite 364\nMatildaburgh, NM 26879', '1-804-946-8574', 'nyasia51@kreiger.com', NULL, '2020-12-09 04:46:06', '2020-12-09 04:46:06'),
('5697e384-9288-4cde-80d4-bf4c420b8b4c', 'Dr. Jarred Gutmann', 'dr-enrico-schmeler-iii', '752-99-8705', 'perempuan', '6912 Bahringer Lake Apt. 283\nEast Julietmouth, WA 09304-4089', '656.580.4606', 'jordyn32@paucek.info', NULL, '2020-12-09 04:46:06', '2020-12-09 04:46:06'),
('3d7498c6-9d00-4c3e-a4f9-29c0520e4b3f', 'Jaiden Koelpin', 'mohamed-howell', '764-62-1371', 'perempuan', '90862 Agustina Circles Apt. 939\nNorth Gayleview, MT 91054-1770', '729-552-4825 x40081', 'witting.german@gmail.com', '2024-01-27 06:53:38', '2020-12-09 04:46:06', '2024-01-27 06:53:38'),
('c4b4e199-3aa3-4e37-a8d7-dd90f28b9130', 'Ms. Anne VonRueden', 'ms-dianna-considine-phd', '269-36-2810', 'laki-laki', '3367 Clint Point Suite 555\nNew Ada, WA 44619', '(587) 464-3165 x972', 'kcormier@gmail.com', '2024-01-27 06:53:46', '2020-12-09 04:46:06', '2024-01-27 06:53:46'),
('5a30b7ad-f497-4f51-9c8f-afe4d82e7d92', 'Queenie Veum', 'lauretta-eichmann', '021-15-5499', 'laki-laki', '22576 Schimmel Knolls\nEast Magali, KY 78029', '621-413-9786', 'unique.bernier@hotmail.com', NULL, '2020-12-09 04:46:06', '2020-12-09 04:46:06'),
('06881e00-651c-48e9-84f2-0011df0e1628', 'Dr. Okey Hand DDS', 'mr-brandon-treutel', '278-97-7501', 'laki-laki', '315 Runte Landing Apt. 999\nCarrollbury, WI 81018', '531-975-1094', 'wmitchell@ullrich.com', NULL, '2020-12-09 04:46:06', '2020-12-09 04:46:06'),
('24e09648-a53c-477c-a9f9-a015bbced0b0', 'Prof. Paul Osinski', 'dannie-bednar-iv', '851-30-7636', 'laki-laki', '115 Myrtle Islands Apt. 475\nHymanville, RI 11754-2685', '(997) 433-1661 x1996', 'camilla55@kris.com', '2024-01-27 06:53:26', '2020-12-09 04:46:06', '2024-01-27 06:53:26'),
('362dfaee-48ea-476c-b824-e0ec42bcd32c', 'Rebeca Toy PhD', 'dr-raegan-jacobs-iv', '289-46-6134', 'perempuan', '9526 Marcia Islands Suite 182\nRitafort, CA 08434-5371', '256-419-6280', 'ibauch@metz.com', NULL, '2020-12-09 04:46:06', '2020-12-09 04:46:06'),
('eff62704-4fef-45c1-9ab3-84f3c05af52c', 'Prof. Holden McCullough', 'hailee-adams', '072-25-1836', 'laki-laki', '66068 Sim Motorway Apt. 636\nNew Olechester, ME 09906-0512', '+1.776.834.1979', 'grace.cole@hotmail.com', '2024-01-27 06:53:31', '2020-12-09 04:46:06', '2024-01-27 06:53:31'),
('c53273d4-9af9-4134-95db-f12fc392db88', 'Maynard Cruickshank II', 'colin-wunsch', '741-64-6147', 'laki-laki', '38529 Howe Ways Suite 109\nLuzside, IL 14353-2064', '490-594-0148 x27464', 'rhea58@kuhn.com', '2024-01-27 06:53:16', '2020-12-09 04:46:06', '2024-01-27 06:53:16'),
('60b64cc7-3ac1-442b-bca3-202a7b0fc945', 'Mr. Bernard Kuhn Sr.', 'prof-virgil-rodriguez-v', '625-67-1557', 'laki-laki', '2258 Derek Pines Apt. 415\nLake Jonas, CT 67366-1018', '(806) 940-9738 x5379', 'bobbie.robel@kuhic.com', '2024-01-27 06:53:12', '2020-12-09 04:46:06', '2024-01-27 06:53:12'),
('ed1c8004-3669-4e79-8cff-2fbd23a6ae4c', 'Prof. Mabelle Spencer II', 'tavares-mcdermott', '858-99-9634', 'laki-laki', '27309 Okuneva Station\nLake Jon, CA 82179-0016', '786-414-2419 x13748', 'blanche00@gmail.com', '2024-01-27 06:53:19', '2020-12-09 04:46:06', '2024-01-27 06:53:19'),
('1bbd559a-fca5-46a4-bbef-4f5875211c07', 'Mr. Amani Corwin', 'sigurd-swift', '184-04-4437', 'perempuan', '769 Brown Manor\nLethaside, KS 32303', '(345) 792-5365 x18877', 'fadel.addison@heaney.info', '2024-01-27 06:53:09', '2020-12-09 04:46:06', '2024-01-27 06:53:09'),
('3e524624-5ecd-49e7-a4cf-9776b8690245', 'Ms. Vincenza Effertz DDS', 'genevieve-bartell', '717-50-3094', 'perempuan', '9393 Weimann Streets Apt. 225\nEast Stephenside, SD 94994-9166', '902-962-0964', 'queenie63@rutherford.info', NULL, '2020-12-09 04:46:06', '2020-12-09 04:46:06'),
('8995eddf-ffb2-4891-a475-0f7d576923b1', 'Hermina Gusikowski', 'dr-kyleigh-schowalter-phd', '794-65-2228', 'laki-laki', '6779 Lang Island Suite 585\nSpinkaside, AZ 52232-4691', '(986) 513-7423 x611', 'valerie93@yahoo.com', '2024-01-27 06:53:23', '2020-12-09 04:46:06', '2024-01-27 06:53:23'),
('3b33a5ac-d052-4d4a-b865-51b206299516', 'Elise Waters', 'prof-ronny-lesch', '729-95-3317', 'laki-laki', '209 Lemke Trace\nSouth Madalinechester, OH 20483-2919', '845-754-2973', 'wbahringer@hill.com', '2024-01-27 06:53:02', '2020-12-09 04:46:06', '2024-01-27 06:53:02'),
('a4fe80fa-9b85-4353-9bfb-2e781988d7f0', 'Mr. Emmitt Hodkiewicz PhD', 'pedro-roob', '088-37-9891', 'perempuan', '109 Saul Square Apt. 322\nNikoland, IN 85696', '824-394-2243', 'keenan07@cummings.com', '2024-01-27 06:52:58', '2020-12-09 04:46:06', '2024-01-27 06:52:58'),
('c9906831-073e-40a7-8017-68692217eb0a', 'Jamarcus Donnelly', 'alessia-heaney', '482-77-5881', 'perempuan', '9700 Dallin Field\nSouth Javonte, ND 54081', '(739) 227-8549 x6359', 'rdare@hotmail.com', '2024-01-27 06:52:55', '2020-12-09 04:46:06', '2024-01-27 06:52:55'),
('46b87d0c-6915-496a-be27-f927f483252a', 'Dr. Alexandrine Collier III', 'dr-justus-reynolds', '829-49-3210', 'laki-laki', '308 Cole Drives Suite 413\nOsinskiborough, TN 69668-9596', '(635) 791-1572 x1375', 'schroeder.khalid@yahoo.com', '2024-01-27 06:52:52', '2020-12-09 04:46:06', '2024-01-27 06:52:52'),
('f3f77a43-de72-46bc-a185-d43500b9a7af', 'Brannon Carroll', 'madonna-kub-ii', '233-47-9253', 'laki-laki', '118 O\'Reilly Mount Apt. 423\nNew Ashleightown, MS 98229', '+1 (531) 832-9791', 'ufadel@gmail.com', '2024-01-27 06:52:48', '2020-12-09 04:46:06', '2024-01-27 06:52:48');

-- --------------------------------------------------------

--
-- Table structure for table `manufactures`
--

CREATE TABLE `manufactures` (
  `id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT 'text',
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT 'text',
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `manufactures`
--

INSERT INTO `manufactures` (`id`, `name`, `slug`, `deleted_at`, `created_at`, `updated_at`) VALUES
('92ceeaf9-7be2-4fb8-9f1c-7b82c63bb9ac', 'Toyota', 'toyota', NULL, '2020-12-09 04:46:04', '2020-12-09 04:46:04'),
('69f0eaac-f144-4054-ac4f-9359a686d55f', 'Suzuki', 'suzuki', NULL, '2020-12-09 04:46:04', '2020-12-09 04:46:04'),
('a6d967a3-8dec-4eff-8831-c1282ae0358f', 'Honda', 'honda', NULL, '2020-12-09 04:46:04', '2020-12-09 04:46:04'),
('4366e917-94d7-4494-9b96-0f29815a0343', 'Mercedes-Benz', 'mercedes-benz', NULL, '2020-12-09 04:46:04', '2020-12-09 04:46:04'),
('8c1bd3d0-3810-4321-bec5-ccff054ba9d3', 'BMW', 'bmw', NULL, '2020-12-09 04:46:04', '2020-12-09 04:46:04'),
('f09b9509-65f2-4a05-9c07-65ac018338c4', 'Daihatsu', 'daihatsu', NULL, '2020-12-09 04:46:04', '2020-12-09 04:46:04'),
('fe99785c-ea96-4c8a-9bcc-322b10fdff1d', 'Nissan', 'nissan', NULL, '2020-12-09 04:46:04', '2020-12-09 04:46:04'),
('800e7ef0-2877-42f3-8e0a-c66dc30097f8', 'Isuzu', 'isuzu', NULL, '2020-12-09 04:46:04', '2020-12-09 04:46:04'),
('86d14bc1-7f4d-4b0a-b4a4-9d2396dbce20', 'KIA', 'kia', NULL, '2020-12-09 04:46:04', '2020-12-09 04:46:04'),
('378c5a8f-4645-4551-8796-e15fb7039539', 'Mitsubishi', 'mitsubishi', NULL, '2020-12-09 04:46:04', '2020-12-09 04:46:04'),
('20abc1a8-5520-448b-9482-7fe7c396a021', 'Datsun', 'datsun', NULL, '2020-12-09 04:46:04', '2020-12-09 04:46:04'),
('b53ab56b-8a0c-4361-b545-9ac120e5f4af', 'Mazda', 'mazda', NULL, '2020-12-09 04:46:04', '2020-12-09 04:46:04'),
('ccef8d09-2d6b-4c98-ad07-b2651beab0e4', 'Hyundai', 'hyundai', NULL, '2020-12-09 04:46:04', '2020-12-09 04:46:04'),
('702f41f0-9ac0-4da2-9639-72163f8db6b0', 'Chevrolet', 'chevrolet', NULL, '2020-12-09 04:46:04', '2020-12-09 04:46:04');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_04_05_110508_create_roles_table', 1),
(4, '2019_04_27_083809_create_settings_table', 1),
(5, '2019_05_14_082540_create_customers_table', 1),
(6, '2019_05_14_082600_create_transactions_table', 1),
(7, '2019_05_17_143152_create_manufactures_table', 1),
(8, '2019_05_17_143557_create_car_images_table', 1),
(9, '2019_05_17_143613_create_cars_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `slug`, `deleted_at`, `created_at`, `updated_at`) VALUES
('c2744339-3c63-4f3b-9b9e-efc405a756b3', 'Admin', 'admin', NULL, '2020-12-09 04:46:04', '2020-12-09 04:46:04'),
('03002485-28cb-44c4-819a-76d230980a66', 'Super Admin', 'super-admin', NULL, '2020-12-09 04:46:04', '2020-12-09 04:46:04'),
('64420065-cb52-4778-9391-f3016ae61751', 'User', 'user', NULL, '2020-12-09 04:46:04', '2020-12-09 04:46:04');

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `name`, `slug`, `description`, `type`, `deleted_at`, `created_at`, `updated_at`) VALUES
('9e8abd36-5fbb-46fa-a892-2eb6979c0032', 'Nama Toko', 'nama-toko', 'Rental Mobil', 'text', NULL, '2020-12-09 04:46:04', '2020-12-09 04:46:04'),
('18d9e4be-69a6-4719-8ac6-6cc52437d27a', 'Alamat', 'alamat', 'Majalengka', 'text', NULL, '2020-12-09 04:46:04', '2024-01-27 06:12:16'),
('5f7c429e-8b77-41ae-bd4e-5081ce2d79da', 'Nomer Telepon', 'nomer-telepon', '082199275053', 'text', NULL, '2020-12-09 04:46:04', '2024-01-27 06:12:17'),
('e3e1c06b-1052-4c7b-8584-ee4d4597ca59', 'Email', 'email', 'aris.hadisopiyan@gmail.com', 'text', NULL, '2020-12-09 04:46:04', '2024-01-27 06:12:17');

-- --------------------------------------------------------

--
-- Table structure for table `transactions`
--

CREATE TABLE `transactions` (
  `id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `customer_id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `car_id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `invoice_no` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT 'text',
  `rent_date` datetime DEFAULT NULL,
  `back_date` datetime DEFAULT NULL,
  `return_date` datetime DEFAULT NULL,
  `price` int(10) UNSIGNED DEFAULT NULL,
  `amount` int(10) UNSIGNED DEFAULT NULL,
  `penalty` int(10) UNSIGNED DEFAULT NULL,
  `status` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT 'text',
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `transactions`
--

INSERT INTO `transactions` (`id`, `customer_id`, `car_id`, `invoice_no`, `rent_date`, `back_date`, `return_date`, `price`, `amount`, `penalty`, `status`, `deleted_at`, `created_at`, `updated_at`) VALUES
('7dc8abab-d34f-46c7-b672-b1732378fd21', '918fd78d-e5b6-4b5c-9cd5-44a88d167534', 'be1b3755-8ca6-4da7-81d6-99eaf71fc662', 'TRX-270124-00001', '2024-01-26 00:00:00', '2024-01-27 00:00:00', '2024-01-27 00:00:00', 500000, 500000, 0, 'selesai', NULL, '2024-01-27 06:42:51', '2024-01-27 06:43:16'),
('d9b380e3-12e2-4c7d-b63f-16c18164d287', '79d0a8dc-8082-4c4f-b1c0-1a5cbe9318dd', 'be1b3755-8ca6-4da7-81d6-99eaf71fc662', 'TRX-270124-00002', '2024-01-27 00:00:00', '2024-01-27 00:00:00', '2024-01-27 00:00:00', 500000, 0, 0, 'selesai', NULL, '2024-01-27 06:46:51', '2024-01-27 06:46:58'),
('1cd79f86-cb7d-4e68-b6ed-56d86eceaab5', 'c3440b5f-ec11-4463-a3bd-2e23ae76b933', 'be1b3755-8ca6-4da7-81d6-99eaf71fc662', 'TRX-270124-00003', '2024-01-27 00:00:00', '2024-01-27 00:00:00', NULL, 500000, 0, NULL, 'proses', NULL, '2024-01-27 06:47:12', '2024-01-27 06:47:12');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `role_id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `username` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `role_id`, `name`, `username`, `email`, `email_verified_at`, `password`, `remember_token`, `deleted_at`, `created_at`, `updated_at`) VALUES
('3487379f-1b01-4afb-b321-cb80406a1038', 'c2744339-3c63-4f3b-9b9e-efc405a756b3', 'Admin', 'admin', 'admin@google.com', NULL, '$2y$10$M5Vz.GZuTm63Fz1iXfa8T.8Yz4e4hg.v25mI592lmXrObWYmAKMH6', NULL, NULL, '2020-12-09 04:46:04', '2024-01-27 06:16:05'),
('25c376b7-5e33-4d67-9ee1-7752253e4543', '03002485-28cb-44c4-819a-76d230980a66', 'Super Admin', 'super-admin', 'super-admin@google.com', NULL, '$2y$10$IeE.7Q2b0Vmd8GKJVw37LuL08cWfVuxksi7pihyT.LUPuu8O/JrWm', NULL, NULL, '2020-12-09 04:46:04', '2024-01-27 06:15:54'),
('7a6368fd-fa0d-4630-8dbb-1065c89df898', '64420065-cb52-4778-9391-f3016ae61751', 'User', 'user', 'user@google.com', NULL, '$2y$10$h1mABfcVCGPB02H5ujUjMO4MP5AXEIhBx9cfqeCe.1UEde8U1vm66', NULL, NULL, '2020-12-09 04:46:04', '2024-01-27 06:16:13');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
