-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 07, 2020 at 11:22 AM
-- Server version: 10.3.15-MariaDB
-- PHP Version: 7.2.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `cms`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `username` varchar(250) NOT NULL,
  `password` varchar(250) NOT NULL,
  `updationDate` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `username`, `password`, `updationDate`) VALUES
(1, 'Harshil', '25f9e794323b453885f5181f1b624d0b', '23-02-2023 04:18:16'),
(2, 'admin', '25f9e794323b453885f5181f1b624d0b', '14-03-2023 07:03:16 PM');

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `id` int(11) NOT NULL,
  `categoryName` varchar(255) DEFAULT NULL,
  `categoryDescription` longtext DEFAULT NULL,
  `creationDate` timestamp NULL DEFAULT current_timestamp(),
  `updationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id`, `categoryName`, `categoryDescription`, `creationDate`, `updationDate`) VALUES
(1, 'Bal Bhavan', 'Reading Materials', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(2, 'C.N.C.D', 'To Capture The Wandering Dogs', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(3, 'Engineering', 'Storm Water', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(4, 'Estate', 'Parking', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(5, 'Garden', 'Garden>>Garden', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(6, 'Gymnasium', 'Coach&#39;s Behaviour', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(7, 'Health', 'Birth / Death / Marriage Certificate', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(8, 'I.C.D.S', 'Creche / Day Care Centre', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(9, 'Library', 'Librarys Facility', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(10, 'Light', 'Crematorium>>Light', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(11, 'Light Building', 'Light Building Genral', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(12, 'Mid Day Meal', 'Facility Related', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(13, 'Museum', 'Museum Related', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(14, 'Night Round', 'Night Round', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(15, 'Property Tax', 'Property Tax Related', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(16, 'S.W.M', 'Cleaning>>SWM', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(17, 'Smart Toilet SWM', 'Smart Toilet', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(18, 'SRFDCL', 'SRF-light', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(19, 'SVP Hospital', 'CIVIL Engineering', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(20, 'Swimming Pool', 'Non-Availability Of Staff>>Swimming Pool', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(21, 'Town Planning', 'Unauthorised Construction', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(22, 'Traffic Engineering', 'Engineering Traffic Project', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(23, 'U.C.D', 'SHELTER HOUSE', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(24, 'Urban Health Centre', 'Benefits Not Provided', '0000-00-00 00:00:00', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `complaintremark`
--

CREATE TABLE `complaintremark` (
  `id` int(11) NOT NULL,
  `complaintNumber` int(11) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `remark` mediumtext DEFAULT NULL,
  `remarkDate` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `complaintremark`
--

INSERT INTO `complaintremark` (`id`, `complaintNumber`, `status`, `remark`, `remarkDate`) VALUES
(1, 2, 'in process', 'Hi this for demo', '2017-04-01 17:29:19'),
(2, 9, 'in process', 'hiiiiiiiiiiiiiiiiiiii', '2017-04-01 18:37:59'),
(3, 3, 'in process', 'test', '2017-05-02 15:57:43'),
(4, 19, 'closed', 'case solved', '2017-06-11 11:18:33'),
(5, 1, 'closed', 'This sample text for testing', '2018-09-05 17:08:26'),
(6, 5, 'in process', 'test Data', '2019-06-24 07:26:17'),
(7, 23, 'in process', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', '2019-06-24 10:34:47'),
(8, 23, 'closed', 'Issue resolved ', '2019-06-24 10:37:08'),
(9, 6, 'closed', 'sdfrgthy', '2023-02-21 13:09:03'),
(10, 24, 'in process', 'ASDFGHJKLKJHG', '2023-02-21 13:13:48'),
(11, 24, 'closed', 'sdfghm,.', '2023-02-21 13:14:10'),
(12, 25, 'in process', 'It will be done as soon', '2023-02-25 05:07:22'),
(13, 26, 'in process', 'sfsdg', '2023-03-15 08:18:08'),
(14, 27, 'closed', 'efesfed', '2023-03-15 08:21:49'),
(15, 28, 'closed', 'weweweq', '2023-03-15 15:09:23'),
(16, 29, 'in process', 'in 2 week this solve', '2023-03-18 06:01:50'),
(17, 30, 'closed', 'juhgfd', '2023-04-05 07:02:58');


-- --------------------------------------------------------

--
-- Table structure for table `state`
--

CREATE TABLE `state` (
  `id` int(11) NOT NULL,
  `stateName` varchar(255) DEFAULT NULL,
  `stateDescription` tinytext DEFAULT NULL,
  `postingDate` timestamp NULL DEFAULT current_timestamp(),
  `updationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `state`
--

INSERT INTO `state` (`id`, `stateName`, `stateDescription`, `postingDate`, `updationDate`) VALUES
(8, 'Patan', 'Name of Mamlatdar: Shri S R Mehta', '2023-03-18 05:35:13', NULL),
(9, 'Sidhpur', 'Name of Mamlatdar: Shri Kamal Parthibhai Chaudhari', '2023-03-18 05:35:59', NULL),
(10, 'Saraswati', ' Name of Mamlatdar: Shri Kantilal Kalubhai Ranavasiya', '2023-03-18 05:36:27', NULL),
(11, 'Chanasma', 'Name of Mamlatdar: Smt. BHAGAVATIBEN VIRENDRAKUMAR CHAVDA', '2023-03-18 05:36:57', NULL),
(12, 'Harij', 'Name of Mamlatdar: Shri Venaji Okhaji Patel', '2023-03-18 05:37:23', NULL),
(13, 'Sami', 'Name of Mamlatdar: Shri PARMAR NARAYANLAL TOKARBHAI', '2023-03-18 05:37:46', NULL),
(14, 'Shankhesvar', 'Name of Mamlatdar:  Shri B D  Kateria', '2023-03-18 05:38:07', NULL),
(15, 'Radhanpur', 'Name of Mamlatdar: Shri Shri Firoz Munirbhai Bagwan ', '2023-03-18 05:38:40', NULL),
(16, 'Santalpur', 'Name of Mamlatdar: Shri Mahendrabhai Gokalbhai Parmar', '2023-03-18 05:39:02', NULL),
(17, 'Patan-City', 'Name of Mamlatdar: Shri Dayaram Danabhai Parmar', '2023-03-18 05:39:29', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `subcategory`
--

CREATE TABLE `subcategory` (
  `id` int(11) NOT NULL,
  `categoryid` int(11) DEFAULT NULL,
  `subcategory` varchar(255) DEFAULT NULL,
  `creationDate` timestamp NULL DEFAULT current_timestamp(),
  `updationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `subcategory`
--

INSERT INTO `subcategory` (`id`, `categoryid`, `subcategory`, `creationDate`, `updationDate`) VALUES
(1, 1, 'Does not Get Reading Materials on time - Bal Bhavan', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(2, 1, 'Library Opening and Closing Timings - Bal Bhavan', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(3, 2, 'To Capture rabid dogs', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(4, 2, 'To Capture stray dogs for Sterilization and vaccination', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(5, 2, 'To Capture stray cattle like cow', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(6, 2, 'Treatment of ill / sick Animals', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(7, 3, 'Raising the Catch Pit Up To the Road Level', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(8, 3, 'Lowering the Catch pit to Road level', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(9, 3, 'No catch pit cover', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(10, 3, 'Cleaning of catchpit', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(11, 3, 'Inadequate water or low inflow pressure - Eng', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(12, 3, 'Leakage In Pipe Line - Eng', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(13, 3, 'Water timing related - Eng', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(14, 3, 'Water quality-Polluted water - Eng', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(15, 3, 'No Water - Eng', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(16, 3, 'Illegal tapping-motoring by someone - Eng', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(17, 3, 'Water connection not given - Eng', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(18, 3, 'Drain Blockage or Choking on TP road - Eng', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(19, 3, 'Overflowing of main line and distribution line on road - Eng', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(20, 3, 'No Drainage Manhole cover - Eng', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(21, 3, 'Frequent Breakdown & Blockage of Drain - Eng', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(22, 3, 'Illegal Drainage connection - Eng', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(23, 3, 'Pot holes on the Road', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(24, 3, 'Patch work Relaying of a portion of road', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(25, 3, 'Deep Pit - Large settlement of road', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(26, 3, 'Removal of waste-Dust Lying on both side of the road after re surfacing', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(27, 3, 'Footpath Repairing Required', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(28, 3, 'Waterlogged Due To Rain', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(29, 3, 'Catch Pit Repairing', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(30, 3, 'No Water Supply In A Public Building', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(31, 3, 'Public Toilets and Urinals - Repairing of Doors, Windows, Tiles or Sheets', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(32, 3, 'Other Maintenance', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(33, 3, 'Hospitals', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(34, 3, 'Ward Office', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(35, 3, 'Health Centre', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(36, 3, 'Creche', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(37, 3, 'Doss House ( Rain Basera )', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(38, 3, 'Municipal Schools', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(39, 3, 'Public Toilets and Urinals - Drainage Line Blockage or Choking', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(40, 3, 'Public Toilets and Urinals - Drainage Line Breakage', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(41, 3, 'Public Toilets and Urinals - Non-Availability of Water/Cleaning of Water Tank/Broken Tank Cover', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(42, 3, 'Contractor Had not disposed off the Manhole Silt Properly - Eng', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(43, 3, 'Raising the Manhole Cover Up To the Road Level - Eng', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(44, 3, 'Lowering the Manhole cover - Eng', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(45, 4, 'Parking Problem in Commercial Building', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(46, 4, 'Remove Unauthorised Advertisement From Municipal Buildings and Personal Properties', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(47, 4, 'Demolition of Unsafe Buildings and Their Parts', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(48, 4, 'Remove Encroachment From Road', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(49, 4, 'Taking Permits For Municipal Plots and Others', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(50, 4, 'Taking Actions Against Illegal Possessions', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(51, 5, 'No Cleaning At All - Garden', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(52, 5, 'Garden is observed to have hollow grounds. They need levelling. - Garden', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(53, 5, 'Watering is Not Proper/Regular - Garden', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(54, 5, 'Repairing Required (Fountains/Amusement Park Equipments) - Garden', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(55, 5, 'No Proper Security/Not available/Guard is inefficient - Garden', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(56, 5, 'Workers/Gardeners Are Not Available/Insufficient Staffing - Garden', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(57, 5, 'Trimming The Trees in Garden - Garden', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(58, 5, 'No Cleaning At All - Traffic Circle-Central verge', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(59, 5, 'Watering is Not Proper/Regular-Traffic-Central verge', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(60, 5, 'Tree-Guards Have Inclined/Broken/Bent Towards The Road', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(61, 5, 'Trimming/Cutting The Trees at Central Verge', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(62, 5, 'Trimming The Tree Branches On Road Side', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(63, 5, 'Clearing Out The Overgrown Branches or Trees On Road Side', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(64, 5, 'Clearing Off The Cut Out/Dried Out Trees', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(65, 5, 'Complain Against The Tree-Cutting', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(66, 5, 'Tree Falling', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(67, 5, 'Garden - Lights Are Not Working In Garden', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(68, 5, 'Garden toilet cleaning', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(69, 6, 'Coach Is Not Courteous - GYM', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(70, 6, 'Applied For Entry But Still Not Approved - GYM', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(71, 6, 'GYM - Lights Remain Off at Gym, Skating Rink/Sports Centre', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(72, 6, 'Coach Is Irregular/Remains Absent - GYM', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(73, 6, 'Improper Coaching - GYM', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(74, 6, 'Tool Maintenance/Parts Change - GYM', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(75, 7, 'Error In The Entry; Correction Required - Birth/Death/Marriage Certificate', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(76, 7, 'Delay In Issuing The certificates - - Birth/Death/Marriage Certificate', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(77, 7, 'In Charge Not Available - - Birth/Death/Marriage Certificate', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(78, 7, 'Maintain Cleanliness in Crematorium', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(79, 7, 'Woods Are Not Dry in Crematorium', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(80, 7, 'In Charge Not Available - Health', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(81, 7, 'Food-Poisoning cases - Health', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(82, 7, 'Collecting Water Samples - Health', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(83, 7, 'Running The Business Without License', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(84, 7, 'Applied For The License But Not Yet Received', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(85, 7, 'Inferior Quality of Food', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(86, 7, 'Contaminated Water/Dirty Surroundings Causes Mosquito Reproduction', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(87, 7, 'Preventing Malaria/Dengue/Spraying Insecticides/Fogging', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(88, 7, 'Not Providing The Benefits To The Patients As Per The Govt. Guidelines-Health', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(89, 7, 'Doctors/Staffs Not Available/Treatment Is Not Given On Time- MT Hospital', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(90, 7, 'Did not Receive The Registration On Time - Nursing Home', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(91, 7, 'Reaction Observed After Vaccination', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(92, 7, 'Staffs Not Available - Vaccine', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(93, 7, 'Coronavirus infection', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(94, 7, 'Corona Food Related', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(95, 7, 'Corona - Contact with Positive Case', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(96, 8, 'Creche Remains Closed/Does not Open On Time', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(97, 8, 'Not Getting Protein Food As Per The Law/Not Regular', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(98, 8, 'Creche Helpers/Workers Remain Unavailable And Irregular', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(119, 9, 'Daily Cleaning - Library', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(120, 9, 'Does not Come on Time - Mobile Library', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(121, 9, 'Basic Needs Like Water, Light and Fan Repairing - Library', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(122, 9, 'Does not Get Reading Materials on time - Library', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(123, 9, 'Library Opening and Closing Timings - Library', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(124, 10, 'Furnace Not Working in CNG/ Electric Crematorium', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(125, 10, 'Hospitals - Lights and Fans Are Not Working in Hospitals', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(126, 10, 'No Power Supply in Muni. Offices, City Civic Centres, Hospitals, Schools, Swimming Pools, Gyms etc.', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(127, 10, 'Fans and Lights Are Not Working in Muni. Offices, City Civic Centres, Hospitals, Schools, Swimming Pools, Gyms etc.', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(128, 10, 'ACs/Water Coolers Are Not Working in Muni. Offices, City Civic Centres, Hospitals, Swimming Pools, Crematoriums, Schools, Gyms etc.', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(129, 10, 'Pumps Are Not Working in Muni. Office, City Civic Center, Hospitals, Crematoriums, Schools, Swimming Pools, Gyms etc.', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(130, 10, 'Main Road Streetlight Is Off', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(131, 10, 'Streetlight Poles Have Fell Down', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(132, 10, 'Shock Observed Electric On Streetlight', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(133, 10, 'Streetlight Light', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(134, 10, 'High Mast Light Remains Switched On In Day Time', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(135, 10, 'Lights of Societies, Chawls and Streets Are Not Working', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(136, 10, 'High Mast Light Is Off', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(137, 10, 'High Mast Light', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(138, 10, 'Streetlight Switched On In Day Time', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(139, 10, 'High Mast Pole', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(140, 11, 'Light-Fan-Lift (Office bldg-civic cen-school-Gym-Crematoriam)', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(141, 11, 'Light-Fan-Lift Genral Ele.Repairing in Auditorium-Hall', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(142, 11, 'Ac-Fridge-water cooler etc. not working ( Muni Hospital-Office Bldg)', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(143, 11, 'Light-Fan-Wiring Genral Ele. Fault(Sardaben-LG-Dental Hospital)', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(144, 11, 'Light-Fan-Wiring Genral Ele. Fault(Nagari-SVP Hospital)', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(145, 11, 'Any Ele. Problem in Swimminig Pool OR releated Pump,Motor Etc.', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(146, 12, 'Did not get Get Lunch in School - Mid Day Meal', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(147, 12, 'Irregular in Distribution of Food in school - Mid Day Meal', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(148, 12, 'Inferior Quality of Food - Mid Day Meal', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(149, 12, 'Food Is Not As Per The Menu - Mid Day Meal', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(150, 13, 'Museum', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(151, 14, 'GARBAGE & CLEANLINESS-NightRound', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(152, 14, 'STREET LIGHT-Nigth Round', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(153, 14, 'CATTLE NUISANCE-Night Round', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(154, 14, 'ROAD-Water-DRAINAGE AND MANHOLE Night Round', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(155, 14, 'SECURITY- Night Round', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(156, 14, 'DRAINAGE PUMPING STATION/S.T.P -Nigth Round', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(157, 14, 'WATER TREATMENT PLANT-Nigth Round', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(158, 14, 'WATER DISTRIBUTION STATION-Nigth Round', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(159, 14, 'ESTATE/TDO RELATED-Nigth Round', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(160, 14, 'PUBLIC TRANSPORTATION (AMTS)-Nigth Round', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(161, 14, 'SHELTER HOUSE-Nigth Round', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(162, 14, 'Shardaben Chimanlal Lalbhai Municipal General Hospital -Nigth Round', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(163, 14, 'Sheth Lallubhai Gordhandas Municipal General Hospital -Night Round', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(164, 14, 'Sheth C.H.Nagari Eye Hospital- Night Round', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(165, 14, 'Sheth V.S. General Hospital -Night Round', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(166, 14, 'SVP Hospital- Nigth Round', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(167, 14, 'PUBLIC TRANSPORTATION (BRTS)-Nigth Round', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(168, 14, 'Parks & Gardan -Nigth Round', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(169, 14, 'Fire -Nigth Round', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(170, 15, 'Application done but not resolved-Property Tax', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(171, 16, 'Not Cleaning At All - SWM', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(172, 16, 'Cleaners Not Coming - SWM', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(173, 16, 'Public Toilets and Urinals - Daily Cleaning Not Being Done', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(174, 16, 'Clearing off the Dead Animals', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(175, 16, 'Clearing Off The Dust', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(176, 16, 'Emptying The Dustbins', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(177, 16, 'Cleaning Out The Surroundings of The Dustbin', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(178, 16, 'Door-To-Door Solid Waste Management', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(179, 16, 'Cleaning Out The Mud and Water Soaked Soil', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(180, 16, 'Clearing Off The Cow Dung', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(181, 16, 'Burning Of Solid Wastes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(182, 16, 'Spraying Off Insecticides-Powder-Swm', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(183, 16, 'Spitting Or Urinating at public place', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(184, 16, 'Plastic Collection', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(185, 16, 'Using Inferior Quality of Plastic for Tea/Pan/Water pouch/Other Food Items.', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(186, 16, 'Throwing Plastic garbage/Waste', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(187, 16, 'Public Toilets and Urinals - Cleaning Out The Surroundings', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(188, 16, 'Clearing off the Big Dead Animals', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(189, 16, 'Clearing Building Material Debris', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(190, 17, 'SMT-Non Availability of water', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(191, 17, 'SMT-Daily Cleaning not being done', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(192, 17, 'SMT-Automatic Door is not working', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(193, 17, 'SMT-Auto Flushing not working', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(194, 18, 'SRF- Light not working', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(195, 18, 'SRF- Light Poles Have Fell Down', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(196, 18, 'SRF- Electric Shock Observed On light-pole', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(197, 19, 'SVP-Water Supply issue', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(198, 19, 'SVP-Furniture Issue', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(199, 19, 'SVP-Plumbing issue', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(200, 19, 'SVP-Wall Fixture issue', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(201, 19, 'SVP-False Ceiling fallen', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(202, 19, 'SVP-Water Leakage', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(203, 19, 'SVP-AC Temperature Issue', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(204, 19, 'SVP-Electrical Plug issue', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(205, 19, 'SVP-Power Supply issue', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(206, 19, 'SVP-Light Fixture Issue', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(207, 19, 'SVP-HOT WATER issue', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(208, 20, 'Coach is Irregular/Remains Absent - Swimming', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(209, 20, 'Inferior Quality of Water - Swimming', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(210, 20, 'Pipes, Showers, Urine Tub, Tiles etc are broken', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(211, 20, 'Improper Cleaning - Swimming', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(212, 20, 'Application Not Yet Approved - Swimming', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(213, 20, 'No Light/Wiring is open - Swimming', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(214, 20, 'Coach Behaviour is Improper - Swimming', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(215, 20, 'Other Complaints - Swimming', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(216, 20, 'No Proper Training - Swimming', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(217, 21, 'Unauthorised Development Is On/Prevention Steps Not Being Taken', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(218, 21, 'Unauthorised Use/Prevention Steps Not Being Taken', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(219, 21, 'Digging of cellar w/o protective support', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(220, 22, 'Traffic Signal Stop Line', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(221, 23, 'SHELTER HOUSE', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(222, 23, 'No Name in Existing BPL List', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(223, 23, 'Name Change in Existing BPL List', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(224, 23, 'Remove Name from The Existing BPL List', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(225, 24, 'Not Providing The Benefits To The Patients As Per The Govt. Guidelines-UHC', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(226, 24, 'Doctors/Staffs Not Available/Treatment Is Not Given On Time- Doctors/Staffs', '0000-00-00 00:00:00', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `tblcomplaints`
--

CREATE TABLE `tblcomplaints` (
  `complaintNumber` int(11) NOT NULL,
  `userId` int(11) DEFAULT NULL,
  `category` int(11) DEFAULT NULL,
  `subcategory` varchar(255) DEFAULT NULL,
  `complaintType` varchar(255) DEFAULT NULL,
  `state` varchar(255) DEFAULT NULL,
  `noc` varchar(255) DEFAULT NULL,
  `complaintDetails` mediumtext DEFAULT NULL,
  `complaintFile` varchar(255) DEFAULT NULL,
  `regDate` timestamp NULL DEFAULT current_timestamp(),
  `status` varchar(50) DEFAULT NULL,
  `lastUpdationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblcomplaints`
--

INSERT INTO `tblcomplaints` (`complaintNumber`, `userId`, `category`, `subcategory`, `complaintType`, `state`, `noc`, `complaintDetails`, `complaintFile`, `regDate`, `status`, `lastUpdationDate`) VALUES
(26, 2, 1, 'Does not Get Reading Materials on time - Bal Bhavan', ' Complaint', 'Haryana', 'awefghj,', 'rtdafghgdvb', '', '2023-03-15 08:15:18', 'in process', '2023-03-15 08:18:08'),
(27, 2, 2, 'Library Opening and Closing Timings - Bal Bhavan', ' Complaint', 'Haryana', 'wdadww', 'wdasawasd', 'Screenshot 2023-03-09 211504.png', '2023-03-15 08:21:18', 'closed', '2023-03-15 08:21:49'),
(28, 2, 4, 'Select Subcategory', 'General Query', 'Punjab', 'wdawd', 'adwdawdw', 'Zoom_cm_fo4iZ9vvrZo4_m6j9DGSpfbXy9gAWIzeahc-JeeWkVmswWMJ+f@g+LMTyexZdxPOYVR_k906ab93003e5db2e_.exe', '2023-03-15 15:07:51', 'closed', '2023-03-15 15:09:23'),
(29, 2, 3, 'Leakage In Pipe Line - Eng', ' Complaint', 'Patan-City', 'water flow on Road', 'Plz solve as soon as possible this is waste of water', 'dfc10fc8-417c-4c70-82cd-b481a9b187b7.png', '2023-03-18 06:00:20', 'in process', '2023-03-18 06:01:50'),
(30, 2, 3, 'No catch pit cover', ' Complaint', 'Saraswati', 'sdfdf', 'lk,mjhnbgvfcdxs', 'OIP.jpeg', '2023-04-05 07:01:50', 'closed', '2023-04-05 07:02:58'),
(31, 3, 4, 'Demolition of Unsafe Buildings and Their Parts', ' Complaint', 'Sidhpur', 'awefghj,', 'htgrerds', '', '2023-04-11 16:59:11', NULL, NULL),
(32, 3, 4, 'Demolition of Unsafe Buildings and Their Parts', ' Complaint', 'Sidhpur', 'awefghj,', 'htgrerds', '', '2023-04-11 17:00:08', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `userlog`
--

CREATE TABLE `userlog` (
  `id` int(11) NOT NULL,
  `uid` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `userip` binary(16) NOT NULL,
  `loginTime` timestamp NOT NULL DEFAULT current_timestamp(),
  `logout` varchar(255) NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `userlog`
--

INSERT INTO `userlog` (`id`, `uid`, `username`, `userip`, `loginTime`, `logout`, `status`) VALUES
(33, 2, 'a@gmail.com', 0x3a3a3100000000000000000000000000, '2023-02-25 05:04:52', '25-02-2023 10:34:56 AM', 1),
(34, 2, 'a@gmail.com', 0x3a3a3100000000000000000000000000, '2023-02-25 05:05:00', '25-02-2023 10:35:04 AM', 1),
(35, 2, 'a@gmail.com', 0x3a3a3100000000000000000000000000, '2023-02-25 05:05:07', '25-02-2023 10:35:12 AM', 1),
(36, 2, 'A@gmail.com', 0x3a3a3100000000000000000000000000, '2023-03-01 06:55:09', '01-03-2023 12:25:33 PM', 1),
(37, 2, 'A@gmail.com', 0x3a3a3100000000000000000000000000, '2023-03-01 06:55:56', '01-03-2023 12:27:33 PM', 1),
(38, 2, 'A@gmail.com', 0x3a3a3100000000000000000000000000, '2023-03-01 07:12:04', '', 1),
(39, 2, 'A@gmail.com', 0x3a3a3100000000000000000000000000, '2023-03-01 07:12:13', '01-03-2023 12:43:26 PM', 1),
(40, 2, 'A@gmail.com', 0x3a3a3100000000000000000000000000, '2023-03-15 07:17:43', '15-03-2023 12:48:12 PM', 1),
(41, 2, 'A@gmail.com', 0x3a3a3100000000000000000000000000, '2023-03-15 07:57:28', '15-03-2023 01:42:29 PM', 1),
(42, 2, 'A@gmail.com', 0x3a3a3100000000000000000000000000, '2023-03-15 08:12:38', '', 1),
(43, 2, 'A@gmail.com', 0x3a3a3100000000000000000000000000, '2023-03-15 15:06:56', '15-03-2023 08:38:04 PM', 1),
(44, 2, 'A@gmail.com', 0x3a3a3100000000000000000000000000, '2023-03-17 15:21:53', '17-03-2023 08:52:45 PM', 1),
(45, 2, 'A@gmail.com', 0x3a3a3100000000000000000000000000, '2023-03-18 05:58:22', '18-03-2023 11:30:28 AM', 1),
(46, 2, 'A@gmail.com', 0x3a3a3100000000000000000000000000, '2023-03-18 15:12:31', '', 1),
(47, 2, 'A@gmail.com', 0x3a3a3100000000000000000000000000, '2023-03-21 11:12:52', '21-03-2023 04:51:58 PM', 1),
(48, 2, 'A@gmail.com', 0x3a3a3100000000000000000000000000, '2023-03-21 11:22:03', '', 1),
(49, 2, 'A@gmail.com', 0x3a3a3100000000000000000000000000, '2023-03-21 11:40:45', '', 1),
(50, 2, 'A@gmail.com', 0x3a3a3100000000000000000000000000, '2023-03-21 11:48:26', '', 1),
(51, 2, 'A@gmail.com', 0x3a3a3100000000000000000000000000, '2023-03-21 11:51:16', '', 1),
(52, 2, 'A@gmail.com', 0x3a3a3100000000000000000000000000, '2023-03-27 17:32:53', '', 1),
(53, 2, 'A@gmail.com', 0x3a3a3100000000000000000000000000, '2023-03-27 18:08:37', '27-03-2023 11:40:27 PM', 1),
(54, 2, 'A@gmail.com', 0x3a3a3100000000000000000000000000, '2023-03-27 18:10:33', '', 1),
(55, 2, 'A@gmail.com', 0x3a3a3100000000000000000000000000, '2023-03-27 18:11:22', '', 1),
(56, 2, 'A@gmail.com', 0x3a3a3100000000000000000000000000, '2023-03-27 18:18:25', '', 1),
(57, 2, 'A@gmail.com', 0x3a3a3100000000000000000000000000, '2023-03-27 18:26:00', '', 1),
(58, 2, 'A@gmail.com', 0x3a3a3100000000000000000000000000, '2023-03-27 18:29:48', '', 1),
(59, 2, 'A@gmail.com', 0x3a3a3100000000000000000000000000, '2023-03-27 18:30:27', '', 1),
(60, 2, 'A@gmail.com', 0x3a3a3100000000000000000000000000, '2023-03-28 08:49:16', '28-03-2023 02:24:37 PM', 1),
(61, 2, 'A@gmail.com', 0x3a3a3100000000000000000000000000, '2023-03-28 08:54:43', '', 1),
(62, 2, 'A@gmail.com', 0x3a3a3100000000000000000000000000, '2023-03-28 10:10:38', '', 1),
(63, 2, 'A@gmail.com', 0x3a3a3100000000000000000000000000, '2023-03-28 10:14:29', '', 1),
(64, 2, 'A@gmail.com', 0x3a3a3100000000000000000000000000, '2023-03-28 10:16:48', '', 1),
(65, 2, 'A@gmail.com', 0x3a3a3100000000000000000000000000, '2023-03-30 16:54:15', '', 1),
(66, 2, 'A@gmail.com', 0x3a3a3100000000000000000000000000, '2023-04-03 16:50:43', '', 1),
(67, 2, 'A@gmail.com', 0x3a3a3100000000000000000000000000, '2023-04-04 15:25:39', '', 1),
(68, 2, 'A@gmail.com', 0x3a3a3100000000000000000000000000, '2023-04-05 05:58:28', '05-04-2023 11:28:38 AM', 1),
(69, 0, 'Admin', 0x3a3a3100000000000000000000000000, '2023-04-05 06:39:19', '', 0),
(70, 2, 'A@gmail.com', 0x3a3a3100000000000000000000000000, '2023-04-05 06:39:22', '05-04-2023 12:12:24 PM', 1),
(71, 2, 'a@gmail.com', 0x3a3a3100000000000000000000000000, '2023-04-05 06:43:00', '', 1),
(72, 2, 'A@gmail.com', 0x3a3a3100000000000000000000000000, '2023-04-05 06:43:05', '05-04-2023 12:13:10 PM', 1),
(73, 0, 'admin', 0x3a3a3100000000000000000000000000, '2023-04-05 06:43:15', '', 0),
(74, 0, 'Admin', 0x3a3a3100000000000000000000000000, '2023-04-05 06:43:18', '', 0),
(75, 0, 'admin', 0x3a3a3100000000000000000000000000, '2023-04-05 06:43:22', '', 0),
(76, 2, 'A@gmail.com', 0x3a3a3100000000000000000000000000, '2023-04-05 06:43:24', '05-04-2023 12:14:28 PM', 1),
(77, 2, 'A@gmail.com', 0x3a3a3100000000000000000000000000, '2023-04-05 06:48:47', '05-04-2023 12:24:24 PM', 1),
(78, 2, 'A@gmail.com', 0x3a3a3100000000000000000000000000, '2023-04-05 06:55:07', '05-04-2023 12:25:36 PM', 1),
(79, 2, 'A@gmail.com', 0x3a3a3100000000000000000000000000, '2023-04-05 07:00:26', '05-04-2023 12:32:05 PM', 1),
(80, 2, 'A@gmail.com', 0x3a3a3100000000000000000000000000, '2023-04-10 15:14:25', '10-04-2023 08:47:33 PM', 1),
(81, 2, 'A@gmail.com', 0x3a3a3100000000000000000000000000, '2023-04-10 15:21:58', '', 1),
(82, 2, 'A@gmail.com', 0x3a3a3100000000000000000000000000, '2023-04-11 11:45:00', '', 1),
(83, 2, 'A@gmail.com', 0x3a3a3100000000000000000000000000, '2023-04-11 13:52:52', '11-04-2023 07:25:30 PM', 1),
(84, 3, 'b@gmail.com', 0x3a3a3100000000000000000000000000, '2023-04-11 16:44:46', '11-04-2023 10:20:11 PM', 1),
(85, 3, 'b@gmail.com', 0x3a3a3100000000000000000000000000, '2023-04-11 16:58:49', '11-04-2023 10:48:47 PM', 1),
(86, 2, 'A@gmail.com', 0x3a3a3100000000000000000000000000, '2023-04-11 17:46:38', '11-04-2023 11:20:59 PM', 1);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `fullName` varchar(255) DEFAULT NULL,
  `userEmail` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `contactNo` bigint(11) DEFAULT NULL,
  `address` tinytext DEFAULT NULL,
  `State` varchar(255) DEFAULT NULL,
  `country` varchar(255) DEFAULT NULL,
  `pincode` int(6) DEFAULT NULL,
  `userImage` varchar(255) DEFAULT NULL,
  `regDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `updationDate` timestamp NULL DEFAULT NULL,
  `status` int(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `fullName`, `userEmail`, `password`, `contactNo`, `address`, `State`, `country`, `pincode`, `userImage`, `regDate`, `updationDate`, `status`) VALUES
(2, 'Harshil', 'A@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', 1245872145, NULL, NULL, NULL, NULL, 'efe27b4fadd85f8a847b8f3bc5105c24.jpg', '2023-02-21 13:05:28', NULL, 1),
(3, 'Ramesh', 'b@gmail.com', '25d55ad283aa400af464c76d713c07ad', 8745123, NULL, NULL, NULL, NULL, NULL, '2023-04-11 16:44:29', NULL, 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `complaintremark`
--
ALTER TABLE `complaintremark`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `state`
--
ALTER TABLE `state`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `subcategory`
--
ALTER TABLE `subcategory`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblcomplaints`
--
ALTER TABLE `tblcomplaints`
  ADD PRIMARY KEY (`complaintNumber`);

--
-- Indexes for table `userlog`
--
ALTER TABLE `userlog`
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
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `complaintremark`
--
ALTER TABLE `complaintremark`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `state`
--
ALTER TABLE `state`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `subcategory`
--
ALTER TABLE `subcategory`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tblcomplaints`
--
ALTER TABLE `tblcomplaints`
  MODIFY `complaintNumber` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `userlog`
--
ALTER TABLE `userlog`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
