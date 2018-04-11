-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 11, 2018 at 10:14 AM
-- Server version: 10.1.26-MariaDB
-- PHP Version: 7.1.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `atomicsolutions`
--

-- --------------------------------------------------------

--
-- Table structure for table `accounts`
--

CREATE TABLE `accounts` (
  `id` char(36) NOT NULL,
  `name` varchar(150) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `account_type` varchar(50) DEFAULT NULL,
  `industry` varchar(50) DEFAULT NULL,
  `annual_revenue` varchar(100) DEFAULT NULL,
  `phone_fax` varchar(100) DEFAULT NULL,
  `billing_address_street` varchar(150) DEFAULT NULL,
  `billing_address_city` varchar(100) DEFAULT NULL,
  `billing_address_state` varchar(100) DEFAULT NULL,
  `billing_address_postalcode` varchar(20) DEFAULT NULL,
  `billing_address_country` varchar(255) DEFAULT NULL,
  `rating` varchar(100) DEFAULT NULL,
  `phone_office` varchar(100) DEFAULT NULL,
  `phone_alternate` varchar(100) DEFAULT NULL,
  `website` varchar(255) DEFAULT NULL,
  `ownership` varchar(100) DEFAULT NULL,
  `employees` varchar(10) DEFAULT NULL,
  `ticker_symbol` varchar(10) DEFAULT NULL,
  `shipping_address_street` varchar(150) DEFAULT NULL,
  `shipping_address_city` varchar(100) DEFAULT NULL,
  `shipping_address_state` varchar(100) DEFAULT NULL,
  `shipping_address_postalcode` varchar(20) DEFAULT NULL,
  `shipping_address_country` varchar(255) DEFAULT NULL,
  `parent_id` char(36) DEFAULT NULL,
  `sic_code` varchar(10) DEFAULT NULL,
  `campaign_id` char(36) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `accounts`
--

INSERT INTO `accounts` (`id`, `name`, `date_entered`, `date_modified`, `modified_user_id`, `created_by`, `description`, `deleted`, `assigned_user_id`, `account_type`, `industry`, `annual_revenue`, `phone_fax`, `billing_address_street`, `billing_address_city`, `billing_address_state`, `billing_address_postalcode`, `billing_address_country`, `rating`, `phone_office`, `phone_alternate`, `website`, `ownership`, `employees`, `ticker_symbol`, `shipping_address_street`, `shipping_address_city`, `shipping_address_state`, `shipping_address_postalcode`, `shipping_address_country`, `parent_id`, `sic_code`, `campaign_id`) VALUES
('206b1561-8ff0-8fa6-7179-5aa95288c61d', 'sads', '2018-03-14 16:47:19', '2018-03-14 16:47:19', '1', '1', 'test description', 0, '1', NULL, '', '', '465465465', 'test', 'test', 'test', 'test', 'test', NULL, '3453452534', '', 'http://xyz.com', NULL, '', NULL, '', '', '', '', '', '', NULL, ''),
('734c4075-0718-fa26-cfb6-5aa9521c4a82', 'Noon Doo', '2018-03-14 16:50:41', '2018-03-14 16:50:41', '1', '1', 'test', 0, '1', NULL, '', '', '465465465', 'test', 'test', 'test', 'test', 'test', NULL, '3453452534', '', 'http://xyz.com', NULL, '', NULL, '', '', '', '', '', '', NULL, ''),
('a40aba2e-402a-3b35-6153-5aabf9798656', 'Demo Account', '2018-03-16 17:06:13', '2018-03-16 17:06:13', '1', '1', '', 0, '1', NULL, '', '', '', '', '', '', '', '', NULL, '', '', 'http://', NULL, '', NULL, '', '', '', '', '', '', NULL, ''),
('aa244f48-f036-6fe9-c233-5aa95340e88a', 'Loo Moo', '2018-03-14 16:54:42', '2018-03-14 16:54:42', '1', '1', 'asda', 0, '1', NULL, '', '', '465465465', 'as', 'as', 'as', 'as', 'as', NULL, '3453452534', '', 'http://', NULL, '', NULL, '', '', '', '', '', '', NULL, ''),
('c2e21265-268e-ba71-e850-5aa954e2052d', 'Com Jon', '2018-03-14 16:58:06', '2018-03-14 16:58:06', '1', '1', 'demo', 0, '1', NULL, '', '', '465465465', 'demo', 'demo', 'demo', 'demo', 'demo', NULL, '3453452534', '', 'http://', NULL, '', NULL, '', '', '', '', '', '', NULL, ''),
('f30070f4-e846-d94c-512c-5a7c8cf49739', 'Sagar Customer', '2018-02-08 17:43:08', '2018-02-09 08:19:09', '1', '1', NULL, 0, '1', 'vendor', 'Engineering', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '3453452534', NULL, 'http://xyz.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, '');

-- --------------------------------------------------------

--
-- Table structure for table `accounts_audit`
--

CREATE TABLE `accounts_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text,
  `after_value_text` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `accounts_audit`
--

INSERT INTO `accounts_audit` (`id`, `parent_id`, `date_created`, `created_by`, `field_name`, `data_type`, `before_value_string`, `after_value_string`, `before_value_text`, `after_value_text`) VALUES
('54ea05ce-87b7-1ce3-005f-5a7c8c4bfe02', 'f30070f4-e846-d94c-512c-5a7c8cf49739', '2018-02-08 17:44:20', '1', 'name', 'name', 'Sagar Vendow', 'Sagar Vendor', NULL, NULL),
('cbd400ce-9dc2-5ba9-1b15-5a7d593cfd67', 'f30070f4-e846-d94c-512c-5a7c8cf49739', '2018-02-09 08:19:09', '1', 'name', 'name', 'Sagar Vendor', 'Sagar Customer', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `accounts_bugs`
--

CREATE TABLE `accounts_bugs` (
  `id` varchar(36) NOT NULL,
  `account_id` varchar(36) DEFAULT NULL,
  `bug_id` varchar(36) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `accounts_cases`
--

CREATE TABLE `accounts_cases` (
  `id` varchar(36) NOT NULL,
  `account_id` varchar(36) DEFAULT NULL,
  `case_id` varchar(36) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `accounts_contacts`
--

CREATE TABLE `accounts_contacts` (
  `id` varchar(36) NOT NULL,
  `contact_id` varchar(36) DEFAULT NULL,
  `account_id` varchar(36) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `accounts_contacts`
--

INSERT INTO `accounts_contacts` (`id`, `contact_id`, `account_id`, `date_modified`, `deleted`) VALUES
('291a2f63-d10f-bb9f-e104-5ac9f79e0549', '657b58ac-ece1-3ecb-81b0-5ac9f7e5a9a5', 'c2e21265-268e-ba71-e850-5aa954e2052d', '2018-04-08 11:04:45', 0),
('9b980993-6908-6e18-da42-5a7fd471b951', '744a98de-033e-85c2-a97d-5a7fd473764f', 'f30070f4-e846-d94c-512c-5a7c8cf49739', '2018-02-11 05:27:28', 0);

-- --------------------------------------------------------

--
-- Table structure for table `accounts_cstm`
--

CREATE TABLE `accounts_cstm` (
  `id_c` char(36) NOT NULL,
  `jjwg_maps_lng_c` float(11,8) DEFAULT '0.00000000',
  `jjwg_maps_lat_c` float(10,8) DEFAULT '0.00000000',
  `jjwg_maps_geocode_status_c` varchar(255) DEFAULT NULL,
  `jjwg_maps_address_c` varchar(255) DEFAULT NULL,
  `customer_id_c` varchar(255) DEFAULT NULL,
  `customer_number_c` int(255) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `accounts_cstm`
--

INSERT INTO `accounts_cstm` (`id_c`, `jjwg_maps_lng_c`, `jjwg_maps_lat_c`, `jjwg_maps_geocode_status_c`, `jjwg_maps_address_c`, `customer_id_c`, `customer_number_c`) VALUES
('206b1561-8ff0-8fa6-7179-5aa95288c61d', 0.00000000, 0.00000000, NULL, NULL, 'ACC-S-1234', 1234),
('734c4075-0718-fa26-cfb6-5aa9521c4a82', 0.00000000, 0.00000000, NULL, NULL, 'ACC-ND-1234', 1234),
('a40aba2e-402a-3b35-6153-5aabf9798656', 0.00000000, 0.00000000, NULL, NULL, 'ACC-DA-1237', 1237),
('aa244f48-f036-6fe9-c233-5aa95340e88a', 0.00000000, 0.00000000, NULL, NULL, 'ACC-LM-1235', 1235),
('c2e21265-268e-ba71-e850-5aa954e2052d', 0.00000000, 0.00000000, NULL, NULL, 'ACC-CJ-1236', 1236),
('f30070f4-e846-d94c-512c-5a7c8cf49739', 0.00000000, 0.00000000, '', '', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `accounts_opportunities`
--

CREATE TABLE `accounts_opportunities` (
  `id` varchar(36) NOT NULL,
  `opportunity_id` varchar(36) DEFAULT NULL,
  `account_id` varchar(36) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `acl_actions`
--

CREATE TABLE `acl_actions` (
  `id` char(36) NOT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `name` varchar(150) DEFAULT NULL,
  `category` varchar(100) DEFAULT NULL,
  `acltype` varchar(100) DEFAULT NULL,
  `aclaccess` int(3) DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `acl_actions`
--

INSERT INTO `acl_actions` (`id`, `date_entered`, `date_modified`, `modified_user_id`, `created_by`, `name`, `category`, `acltype`, `aclaccess`, `deleted`) VALUES
('11007b68-be39-6ef8-8c70-5a7c87bc72b8', '2018-02-08 17:24:14', '2018-02-08 17:24:14', '1', '', 'view', 'AOR_Reports', 'module', 90, 0),
('1166cada-d629-dae0-d379-5a7c8748f5aa', '2018-02-08 17:24:14', '2018-02-08 17:24:14', '1', '', 'delete', 'EAPM', 'module', 90, 0),
('1183e89a-4484-a183-9f83-5a7c876f3ea0', '2018-02-08 17:24:14', '2018-02-08 17:24:14', '1', '', 'export', 'FP_events', 'module', 90, 0),
('11bb7876-162b-a8c0-5d5e-5a7c87ad2e81', '2018-02-08 17:24:14', '2018-02-08 17:24:14', '1', '', 'edit', 'AOD_Index', 'module', 90, 0),
('121c016b-d5df-7670-2c88-5a7c87388a4b', '2018-02-08 17:24:14', '2018-02-08 17:24:14', '1', '', 'delete', 'Spots', 'module', 90, 0),
('127e4528-a596-1aea-e1d5-5a7c87b6a8d4', '2018-02-08 17:24:14', '2018-02-08 17:24:14', '1', '', 'list', 'Accounts', 'module', 90, 0),
('13bcc5ae-87d3-7424-9a8b-5a7c8714363c', '2018-02-08 17:24:14', '2018-02-08 17:24:14', '1', '', 'view', 'AOS_PDF_Templates', 'module', 90, 0),
('13ec3e79-aa9b-65be-f34a-5a7c875d468e', '2018-02-08 17:24:14', '2018-02-08 17:24:14', '1', '', 'edit', 'Prospects', 'module', 90, 0),
('141b5d84-c8aa-ca2c-eb62-5a7c872d4c46', '2018-02-08 17:24:14', '2018-02-08 17:24:14', '1', '', 'list', 'Users', 'module', 90, 0),
('1480d670-ebb8-1259-72aa-5a9ff8c4e3df', '2018-03-07 14:35:16', '2018-03-07 14:35:16', '1', '1', 'list', 'atomi_invoice_payment_details', 'module', 90, 0),
('14cd877c-1105-91a6-4c24-5a7c88bf39b2', '2018-02-08 17:24:14', '2018-02-08 17:24:14', '1', '', 'delete', 'OutboundEmailAccounts', 'module', 90, 0),
('15036078-1e51-4541-fa8d-5a7c8718adda', '2018-02-08 17:24:14', '2018-02-08 17:24:14', '1', '', 'massupdate', 'AOR_Scheduled_Reports', 'module', 90, 0),
('1524a9f3-428c-c62b-7469-5a7c874f3233', '2018-02-08 17:24:14', '2018-02-08 17:24:14', '1', '', 'export', 'AOK_KnowledgeBase', 'module', 90, 0),
('15c27a27-b278-5a63-ad1e-5a7c88257c18', '2018-02-08 17:24:14', '2018-02-08 17:24:14', '1', '', 'export', 'SecurityGroups', 'module', 90, 0),
('15c37323-28a4-d9ba-fd2c-5a7c87824363', '2018-02-08 17:24:14', '2018-02-08 17:24:14', '1', '', 'massupdate', 'FP_events', 'module', 90, 0),
('15defde2-91e6-1258-70c4-5a7c8723aee8', '2018-02-08 17:24:14', '2018-02-08 17:24:14', '1', '', 'list', 'AOR_Reports', 'module', 90, 0),
('1653369c-6d32-abe0-0d0b-5a7c888eb977', '2018-02-08 17:24:14', '2018-02-08 17:24:14', '1', '', 'list', 'AOS_Quotes', 'module', 90, 0),
('173e0cc3-6bb8-2faf-8e0b-5a7c87f32f04', '2018-02-08 17:24:14', '2018-02-08 17:24:14', '1', '', 'massupdate', 'AOK_Knowledge_Base_Categories', 'module', 90, 0),
('177eaab7-b158-b342-3067-5a7c878ddfee', '2018-02-08 17:24:14', '2018-02-08 17:24:14', '1', '', 'delete', 'Cases', 'module', 90, 0),
('17870f27-978d-89b1-9cb8-5a7c87f24f4f', '2018-02-08 17:24:14', '2018-02-08 17:24:14', '1', '', 'import', 'EAPM', 'module', 90, 0),
('17b30aab-5eaf-9e9c-de3a-5a7c873bfb4b', '2018-02-08 17:24:14', '2018-02-08 17:24:14', '1', '', 'access', 'AOD_Index', 'module', 89, 0),
('17b33426-c92e-a842-918f-5a7c87ebab2d', '2018-02-08 17:24:14', '2018-02-08 17:24:14', '1', '', 'delete', 'AOD_Index', 'module', 90, 0),
('1878e649-7dc7-dfd8-f82d-5a7c88b715b5', '2018-02-08 17:24:14', '2018-02-08 17:24:14', '1', '', 'access', 'jjwg_Areas', 'module', 89, 0),
('18a18239-3852-7473-d978-5a9ff82f9308', '2018-03-07 14:35:16', '2018-03-07 14:35:16', '1', '1', 'massupdate', 'atomi_invoice_payment_details', 'module', 90, 0),
('19980d8b-687e-9412-295d-5a7c8765c5f2', '2018-02-08 17:24:14', '2018-02-08 17:24:14', '1', '', 'edit', 'Users', 'module', 90, 0),
('19d4bc4c-ff90-d3b9-779a-5a7c87f15fef', '2018-02-08 17:24:14', '2018-02-08 17:24:14', '1', '', 'delete', 'Prospects', 'module', 90, 0),
('1ac83296-2013-c1f2-4b20-5a7c87d9c0fa', '2018-02-08 17:24:14', '2018-02-08 17:24:14', '1', '', 'edit', 'Accounts', 'module', 90, 0),
('1ba5e1e4-c2d5-0ccb-06da-5a7c8772c796', '2018-02-08 17:24:14', '2018-02-08 17:24:14', '1', '', 'massupdate', 'AOS_Invoices', 'module', 90, 0),
('1c1e8171-148a-4985-c09e-5a7c8777189e', '2018-02-08 17:24:14', '2018-02-08 17:24:14', '1', '', 'export', 'EAPM', 'module', 90, 0),
('1c2b8271-8ff1-eb15-07b6-5a7c87d0eb1f', '2018-02-08 17:24:14', '2018-02-08 17:24:14', '1', '', 'import', 'AOD_Index', 'module', 90, 0),
('1c98b9ff-5afc-dbc7-f4a9-5a7c88040237', '2018-02-08 17:24:14', '2018-02-08 17:24:14', '1', '', 'export', 'Calls_Reschedule', 'module', 90, 0),
('1cdbfd8d-ec54-d119-7963-5a7c87132685', '2018-02-08 17:24:14', '2018-02-08 17:24:14', '1', '', 'import', 'Spots', 'module', 90, 0),
('1d0c86d7-f228-b9da-fce1-5a7c873e4eb4', '2018-02-08 17:24:14', '2018-02-08 17:24:14', '1', '', 'massupdate', 'AOK_KnowledgeBase', 'module', 90, 0),
('1d1500af-3ffd-925d-653d-5a7c877a614c', '2018-02-08 17:24:14', '2018-02-08 17:24:14', '1', '', 'edit', 'Bugs', 'module', 90, 0),
('1d200e84-5612-031e-b0a7-5a7c87c2a21a', '2018-02-08 17:24:14', '2018-02-08 17:24:14', '1', '', 'list', 'AOS_Products', 'module', 90, 0),
('1d837d74-6f23-48bd-d8d4-5a7c87fe44b3', '2018-02-08 17:24:14', '2018-02-08 17:24:14', '1', '', 'delete', 'EmailTemplates', 'module', 90, 0),
('1eb277d1-99ce-6f8d-8f62-5a7c87139a2a', '2018-02-08 17:24:14', '2018-02-08 17:24:14', '1', '', 'import', 'Prospects', 'module', 90, 0),
('1ec48e24-b394-4022-222f-5a7c87e72fe3', '2018-02-08 17:24:14', '2018-02-08 17:24:14', '1', '', 'import', 'Cases', 'module', 90, 0),
('1f873d26-6c1f-ee88-0857-5a7c88e1b673', '2018-02-08 17:24:14', '2018-02-08 17:24:14', '1', '', 'import', 'OutboundEmailAccounts', 'module', 90, 0),
('1fc29651-d997-c47b-4000-5a7c87203da5', '2018-02-08 17:24:14', '2018-02-08 17:24:14', '1', '', 'massupdate', 'ProspectLists', 'module', 90, 0),
('20c006f1-97d9-cb68-5d6a-5a7c874f4ffc', '2018-02-08 17:24:14', '2018-02-08 17:24:14', '1', '', 'access', 'FP_Event_Locations', 'module', 89, 0),
('2167daeb-c183-1c6e-29f7-5a7c88863ee8', '2018-02-08 17:24:14', '2018-02-08 17:24:14', '1', '', 'import', 'TemplateSectionLine', 'module', 90, 0),
('21f81b6d-fa47-5b39-1c8f-5a7c87fa3cc2', '2018-02-08 17:24:14', '2018-02-08 17:24:14', '1', '', 'edit', 'AOR_Reports', 'module', 90, 0),
('220fe586-eacc-02ae-a75b-5a7c87781a19', '2018-02-08 17:24:14', '2018-02-08 17:24:14', '1', '', 'delete', 'Users', 'module', 90, 0),
('226734b3-f884-bad7-2b64-5a7c8730a381', '2018-02-08 17:24:14', '2018-02-08 17:24:14', '1', '', 'delete', 'Accounts', 'module', 90, 0),
('2292a552-8e16-a99e-2bca-5a7c871127e6', '2018-02-08 17:24:14', '2018-02-08 17:24:14', '1', '', 'export', 'AOD_Index', 'module', 90, 0),
('22a69639-70eb-40f7-8b66-5a7c879b511c', '2018-02-08 17:24:14', '2018-02-08 17:24:14', '1', '', 'massupdate', 'EAPM', 'module', 90, 0),
('231b7a71-845e-b8b6-b5f7-5a7c87e79ebb', '2018-02-08 17:24:14', '2018-02-08 17:24:14', '1', '', 'delete', 'Bugs', 'module', 90, 0),
('233e0d37-50ef-4f82-ccd6-5a7c87c0f63e', '2018-02-08 17:24:14', '2018-02-08 17:24:14', '1', '', 'export', 'AOS_Product_Categories', 'module', 90, 0),
('238fe9d5-c3a3-90d9-f41e-5a7c88a2bab3', '2018-02-08 17:24:14', '2018-02-08 17:24:14', '1', '', 'view', 'jjwg_Areas', 'module', 90, 0),
('24380fbb-bcc0-3ffb-2b59-5a7c884dec9e', '2018-02-08 17:24:14', '2018-02-08 17:24:14', '1', '', 'export', 'OutboundEmailAccounts', 'module', 90, 0),
('2460b6ba-8df3-f3cc-2205-5a7c871d98a6', '2018-02-08 17:24:14', '2018-02-08 17:24:14', '1', '', 'export', 'Prospects', 'module', 90, 0),
('25375aa6-5029-1372-8866-5a7c87ce05a3', '2018-02-08 17:24:14', '2018-02-08 17:24:14', '1', '', 'export', 'Cases', 'module', 90, 0),
('254a2f1c-0125-7f76-06e0-5a7c88607018', '2018-02-08 17:24:14', '2018-02-08 17:24:14', '1', '', 'massupdate', 'SecurityGroups', 'module', 90, 0),
('25f56ab5-137c-1de2-9877-5a7c87989fb9', '2018-02-08 17:24:14', '2018-02-08 17:24:14', '1', '', 'export', 'Spots', 'module', 90, 0),
('264392b1-cbdd-fd65-f687-5a7c87eb4d4e', '2018-02-08 17:24:14', '2018-02-08 17:24:14', '1', '', 'import', 'EmailTemplates', 'module', 90, 0),
('268276ee-761c-d221-54a8-5a7c88c0d852', '2018-02-08 17:24:14', '2018-02-08 17:24:14', '1', '', 'edit', 'AOS_Quotes', 'module', 90, 0),
('26e466b5-e938-a8c5-d8bc-5a7c87070948', '2018-02-08 17:24:14', '2018-02-08 17:24:14', '1', '', 'import', 'Users', 'module', 90, 0),
('2711a07a-49c8-27d8-2075-5a7c8716ece8', '2018-02-08 17:24:14', '2018-02-08 17:24:14', '1', '', 'access', 'Opportunities', 'module', 89, 0),
('271d743a-bdc5-3a54-bb76-5a7c876c3619', '2018-02-08 17:24:14', '2018-02-08 17:24:14', '1', '', 'view', 'Notes', 'module', 90, 0),
('279ff2e0-f3d1-db59-beec-5a7c872290b5', '2018-02-08 17:24:14', '2018-02-08 17:24:14', '1', '', 'import', 'Accounts', 'module', 90, 0),
('27ebd1a5-b67b-baa1-8ba4-5a7c88a75170', '2018-02-08 17:24:14', '2018-02-08 17:24:14', '1', '', 'access', 'jjwg_Address_Cache', 'module', 89, 0),
('289b0a71-f5d6-9f29-484f-5a7c8806e2c7', '2018-02-08 17:24:14', '2018-02-08 17:24:14', '1', '', 'massupdate', 'Calls_Reschedule', 'module', 90, 0),
('298918bf-e441-7082-aa37-5a7c87cca7b3', '2018-02-08 17:24:14', '2018-02-08 17:24:14', '1', '', 'massupdate', 'Cases', 'module', 90, 0),
('29ca0dbf-a0b8-d9c6-a105-5a7c88d74a69', '2018-02-08 17:24:14', '2018-02-08 17:24:14', '1', '', 'edit', 'OutboundEmailAccounts', 'module', 90, 0),
('29e89eda-90e0-9bae-06c0-5a7c87082447', '2018-02-08 17:24:14', '2018-02-08 17:24:14', '1', '', 'access', 'AM_TaskTemplates', 'module', 89, 0),
('29fe2465-b880-1d3c-c204-5a7c8755754e', '2018-02-08 17:24:14', '2018-02-08 17:24:14', '1', '', 'access', 'AOP_Case_Events', 'module', 89, 0),
('2a0671cc-51ce-a7b6-eb85-5a7c87d25772', '2018-02-08 17:24:14', '2018-02-08 17:24:14', '1', '', 'massupdate', 'Prospects', 'module', 90, 0),
('2ae270ed-9bc9-9bbc-0f22-5a7c884a3ed2', '2018-02-08 17:24:14', '2018-02-08 17:24:14', '1', '', 'massupdate', 'OutboundEmailAccounts', 'module', 90, 0),
('2b3fe6d6-52e0-e4a2-e9d9-5a7c87219889', '2018-02-08 17:24:14', '2018-02-08 17:24:14', '1', '', 'list', 'AOS_PDF_Templates', 'module', 90, 0),
('2b65bf2a-3452-f571-8535-5a7c875f5588', '2018-02-08 17:24:14', '2018-02-08 17:24:14', '1', '', 'massupdate', 'Spots', 'module', 90, 0),
('2c656683-c41d-477a-9740-5a7c87033b99', '2018-02-08 17:24:14', '2018-02-08 17:24:14', '1', '', 'massupdate', 'AOD_Index', 'module', 90, 0),
('2cf1d029-d51a-7a4c-b907-5a7c87a1aa73', '2018-02-08 17:24:14', '2018-02-08 17:24:14', '1', '', 'view', 'FP_Event_Locations', 'module', 90, 0),
('2d563ead-86d8-0d1e-2fdc-5a7c87ae5a25', '2018-02-08 17:24:14', '2018-02-08 17:24:14', '1', '', 'massupdate', 'AOS_Product_Categories', 'module', 90, 0),
('2d745a2e-6c95-0ea7-9081-5a7c8744e6b3', '2018-02-08 17:24:14', '2018-02-08 17:24:14', '1', '', 'export', 'Accounts', 'module', 90, 0),
('2e68b35f-012d-23e1-34ce-5a7c871fc7aa', '2018-02-08 17:24:14', '2018-02-08 17:24:14', '1', '', 'view', 'Opportunities', 'module', 90, 0),
('2ed8321f-8ddd-c6ed-6d5d-5a7c87e8a9bc', '2018-02-08 17:24:14', '2018-02-08 17:24:14', '1', '', 'list', 'Notes', 'module', 90, 0),
('2edd68f4-0956-94f2-12f7-5a7c8768f260', '2018-02-08 17:24:14', '2018-02-08 17:24:14', '1', '', 'list', 'Documents', 'module', 90, 0),
('2f2f629d-8fa4-b3da-9597-5a7c87e6cedf', '2018-02-08 17:24:14', '2018-02-08 17:24:14', '1', '', 'delete', 'AOR_Reports', 'module', 90, 0),
('2f407db4-3812-2c96-8296-5a7c87e672ff', '2018-02-08 17:24:14', '2018-02-08 17:24:14', '1', '', 'access', 'EmailMarketing', 'module', 89, 0),
('3010e6e2-80e9-83a8-d2a6-5a7c870b9bcf', '2018-02-08 17:24:14', '2018-02-08 17:24:14', '1', '', 'export', 'Users', 'module', 90, 0),
('3129d46f-6d83-146a-5646-5a7c8806d20e', '2018-02-08 17:24:14', '2018-02-08 17:24:14', '1', '', 'list', 'jjwg_Areas', 'module', 90, 0),
('32787c79-1617-6ef6-3a54-5a7c87616732', '2018-02-08 17:24:14', '2018-02-08 17:24:14', '1', '', 'massupdate', 'Accounts', 'module', 90, 0),
('32e3a6bf-2f76-d3e0-05e0-5a7c88316c2f', '2018-02-08 17:24:14', '2018-02-08 17:24:14', '1', '', 'view', 'jjwg_Address_Cache', 'module', 90, 0),
('33f58ec8-ecd5-026d-69fd-5a7c87f40452', '2018-02-08 17:24:14', '2018-02-08 17:24:14', '1', '', 'view', 'AOP_Case_Events', 'module', 90, 0),
('3413d9d6-b778-8287-a1e1-5a7c8798b81f', '2018-02-08 17:24:14', '2018-02-08 17:24:14', '1', '', 'edit', 'Notes', 'module', 90, 0),
('34442b82-604a-7c08-bf12-5a7c87d00024', '2018-02-08 17:24:14', '2018-02-08 17:24:14', '1', '', 'delete', 'AOS_Products', 'module', 90, 0),
('34af65ce-3ab8-417f-f714-5a7c8757bc39', '2018-02-08 17:24:14', '2018-02-08 17:24:14', '1', '', 'list', 'FP_Event_Locations', 'module', 90, 0),
('355b5f1c-e0f6-42d6-989b-5a7c8889087c', '2018-02-08 17:24:14', '2018-02-08 17:24:14', '1', '', 'export', 'TemplateSectionLine', 'module', 90, 0),
('35d00b65-fea0-2683-19d1-5a7c87a90420', '2018-02-08 17:24:14', '2018-02-08 17:24:14', '1', '', 'list', 'Spots', 'module', 90, 0),
('363b0691-a778-68d8-d6b8-5a7c8885211c', '2018-02-08 17:24:14', '2018-02-08 17:24:14', '1', '', 'edit', 'TemplateSectionLine', 'module', 90, 0),
('36ed07ee-132b-976a-18c4-5a7c8747203c', '2018-02-08 17:24:14', '2018-02-08 17:24:14', '1', '', 'export', 'EmailTemplates', 'module', 90, 0),
('36f577c2-eec9-3bf6-e4da-5a7c8753d0b7', '2018-02-08 17:24:14', '2018-02-08 17:24:14', '1', '', 'massupdate', 'Users', 'module', 90, 0),
('37a70da0-f70b-ec85-31ab-5a7c8743131d', '2018-02-08 17:24:14', '2018-02-08 17:24:14', '1', '', 'view', 'AM_TaskTemplates', 'module', 90, 0),
('396cc314-a48e-1840-891f-5a7c88119ff8', '2018-02-08 17:24:14', '2018-02-08 17:24:14', '1', '', 'list', 'jjwg_Address_Cache', 'module', 90, 0),
('39808814-9d6d-a016-012a-5a7c87596933', '2018-02-08 17:24:14', '2018-02-08 17:24:14', '1', '', 'view', 'EmailMarketing', 'module', 90, 0),
('39b0ff50-11b0-4fb8-b120-5a7c87e2eb80', '2018-02-08 17:24:14', '2018-02-08 17:24:14', '1', '', 'edit', 'AOS_PDF_Templates', 'module', 90, 0),
('3a15b461-3af3-de79-b3c2-5a7c87129996', '2018-02-08 17:24:14', '2018-02-08 17:24:14', '1', '', 'delete', 'Notes', 'module', 90, 0),
('3a7e1bdf-85b4-a725-1b02-5a7c8801825a', '2018-02-08 17:24:14', '2018-02-08 17:24:14', '1', '', 'access', 'AOW_Processed', 'module', 89, 0),
('3aa506b7-e92a-bd20-8b41-5a9ff897a118', '2018-03-07 14:35:16', '2018-03-07 14:35:16', '1', '1', 'import', 'atomi_invoice_payment_details', 'module', 90, 0),
('3be8a7d9-9203-6cd1-27fe-5a7c872fd94c', '2018-02-08 17:24:14', '2018-02-08 17:24:14', '1', '', 'edit', 'FP_Event_Locations', 'module', 90, 0),
('3c0e09dd-98b3-33ae-c637-5a7c87672ffb', '2018-02-08 17:24:14', '2018-02-08 17:24:14', '1', '', 'list', 'EAPM', 'module', 90, 0),
('3c356039-cb4f-04a4-d35d-5a7c87eaa9d9', '2018-02-08 17:24:14', '2018-02-08 17:24:14', '1', '', 'massupdate', 'EmailTemplates', 'module', 90, 0),
('3c3dfef7-5210-cbf5-6e3d-5a7c888d0c9f', '2018-02-08 17:24:14', '2018-02-08 17:24:14', '1', '', 'edit', 'jjwg_Areas', 'module', 90, 0),
('3d010d2e-c96c-6aff-c05d-5a7c876340d4', '2018-02-08 17:24:14', '2018-02-08 17:24:14', '1', '', 'import', 'AOS_Product_Categories', 'module', 90, 0),
('3f0f34c5-dd6c-3518-9b96-5a7c878e02f4', '2018-02-08 17:24:14', '2018-02-08 17:24:14', '1', '', 'import', 'Notes', 'module', 90, 0),
('3f806ce0-96d4-322f-415b-5a7c874b779d', '2018-02-08 17:24:14', '2018-02-08 17:24:14', '1', '', 'list', 'AM_TaskTemplates', 'module', 90, 0),
('3faaaf60-ab2e-4c07-f4e5-5a7c889140f8', '2018-02-08 17:24:14', '2018-02-08 17:24:14', '1', '', 'massupdate', 'TemplateSectionLine', 'module', 90, 0),
('3fcfe32d-067c-ae16-255c-5a7c8874e38e', '2018-02-08 17:24:14', '2018-02-08 17:24:14', '1', '', 'access', 'jjwg_Maps', 'module', 89, 0),
('4000d631-bff4-8fa5-a2c9-5a7c88297cff', '2018-02-08 17:24:14', '2018-02-08 17:24:14', '1', '', 'view', 'AOW_Processed', 'module', 90, 0),
('408f0827-d174-1b31-7bc3-5a7c87e698c1', '2018-02-08 17:24:14', '2018-02-08 17:24:14', '1', '', 'list', 'Cases', 'module', 90, 0),
('423b0090-c8f8-cf99-6040-5a7c87b82e1c', '2018-02-08 17:24:14', '2018-02-08 17:24:14', '1', '', 'delete', 'AOS_PDF_Templates', 'module', 90, 0),
('4267066e-1034-b3c0-23a0-5a7c874f1105', '2018-02-08 17:24:14', '2018-02-08 17:24:14', '1', '', 'massupdate', 'Calls', 'module', 90, 0),
('42c6d20f-8d68-5796-5013-5a7c87db1979', '2018-02-08 17:24:14', '2018-02-08 17:24:14', '1', '', 'list', 'EmailMarketing', 'module', 90, 0),
('4349acca-67f0-0679-04de-5a7c88809c87', '2018-02-08 17:24:14', '2018-02-08 17:24:14', '1', '', 'edit', 'jjwg_Address_Cache', 'module', 90, 0),
('44055a08-5641-5502-ad43-5a7c87b7cf2c', '2018-02-08 17:24:14', '2018-02-08 17:24:14', '1', '', 'list', 'AOP_Case_Events', 'module', 90, 0),
('441d9a84-086d-565d-ee23-5a7c871521f6', '2018-02-08 17:24:14', '2018-02-08 17:24:14', '1', '', 'import', 'AOR_Reports', 'module', 90, 0),
('442cb4e8-46da-6049-d7a1-5a7c87b85fca', '2018-02-08 17:24:14', '2018-02-08 17:24:14', '1', '', 'export', 'Notes', 'module', 90, 0),
('451102cd-5617-bee3-feb8-5a7c87904436', '2018-02-08 17:24:14', '2018-02-08 17:24:14', '1', '', 'access', 'AM_ProjectTemplates', 'module', 89, 0),
('4645f0b4-6baf-48a3-3164-5a7c872ef93b', '2018-02-08 17:24:14', '2018-02-08 17:24:14', '1', '', 'delete', 'FP_Event_Locations', 'module', 90, 0),
('46b53c2b-2980-0c2f-7d54-5a7c87cd8556', '2018-02-08 17:24:14', '2018-02-08 17:24:14', '1', '', 'edit', 'AM_TaskTemplates', 'module', 90, 0),
('4732daf5-e61c-1e18-c05f-5a7c877fba75', '2018-02-08 17:24:14', '2018-02-08 17:24:14', '1', '', 'access', 'AOP_Case_Updates', 'module', 89, 0),
('477d2cba-36d5-1fda-31ae-5a7c88915c19', '2018-02-08 17:24:14', '2018-02-08 17:24:14', '1', '', 'view', 'jjwg_Maps', 'module', 90, 0),
('487fe5a7-b475-bc34-ff83-5a7c88ac3394', '2018-02-08 17:24:14', '2018-02-08 17:24:14', '1', '', 'list', 'AOW_Processed', 'module', 90, 0),
('48b29ec7-75eb-20e1-8bdc-5a7c883c69e7', '2018-02-08 17:24:14', '2018-02-08 17:24:14', '1', '', 'delete', 'AOS_Quotes', 'module', 90, 0),
('48eaed54-57d5-2bfd-5c8d-5a7c875bebc5', '2018-02-08 17:24:14', '2018-02-08 17:24:14', '1', '', 'edit', 'Documents', 'module', 90, 0),
('49527a1e-5280-2cd2-b8ce-5a7c874e141f', '2018-02-08 17:24:14', '2018-02-08 17:24:14', '1', '', 'massupdate', 'Notes', 'module', 90, 0),
('49b15be1-7469-f40f-b538-5a7c87848c15', '2018-02-08 17:24:14', '2018-02-08 17:24:14', '1', '', 'import', 'AOS_PDF_Templates', 'module', 90, 0),
('49fb4b7e-b852-af48-fcc7-5a7c88039102', '2018-02-08 17:24:14', '2018-02-08 17:24:14', '1', '', 'delete', 'jjwg_Address_Cache', 'module', 90, 0),
('4ab7b460-aca1-e9e0-8c0d-5a7c8796b932', '2018-02-08 17:24:14', '2018-02-08 17:24:14', '1', '', 'import', 'AOS_Products', 'module', 90, 0),
('4ad09cc1-e38b-6379-3644-5a7c87a33e71', '2018-02-08 17:24:14', '2018-02-08 17:24:14', '1', '', 'delete', 'AM_TaskTemplates', 'module', 90, 0),
('4b5a3f1d-2762-4a63-d824-5a7c874cfca5', '2018-02-08 17:24:14', '2018-02-08 17:24:14', '1', '', 'edit', 'EmailMarketing', 'module', 90, 0),
('4ba3ebb8-2bde-88c1-d8a9-5a7c872044a1', '2018-02-08 17:24:14', '2018-02-08 17:24:14', '1', '', 'edit', 'AOP_Case_Events', 'module', 90, 0),
('4bb0b02c-75b2-44c6-d56b-5a7c9100a59f', '2018-02-08 18:06:17', '2018-02-08 18:06:17', '1', '1', 'access', 'atomi_vendor', 'module', 89, 0),
('4bdf053c-b645-83e5-cc14-5a7c87093a47', '2018-02-08 17:24:14', '2018-02-08 17:24:14', '1', '', 'edit', 'Spots', 'module', 90, 0),
('4be60bb1-dcc8-0457-1447-5a7c877b2925', '2018-02-08 17:24:14', '2018-02-08 17:24:14', '1', '', 'delete', 'AOK_KnowledgeBase', 'module', 90, 0),
('4d0ecbe1-8c0f-fca0-c03b-5a7c87641752', '2018-02-08 17:24:14', '2018-02-08 17:24:14', '1', '', 'import', 'FP_Event_Locations', 'module', 90, 0),
('4d796614-7604-f242-9ede-5a7c886a1c7a', '2018-02-08 17:24:14', '2018-02-08 17:24:14', '1', '', 'edit', 'AOW_Processed', 'module', 90, 0),
('4d8cafb3-c697-f427-b9f8-5a7c87c0856a', '2018-02-08 17:24:14', '2018-02-08 17:24:14', '1', '', 'view', 'AM_ProjectTemplates', 'module', 90, 0),
('4dad1eca-2f3c-b235-848d-5a7c87fd0a9b', '2018-02-08 17:24:14', '2018-02-08 17:24:14', '1', '', 'list', 'Opportunities', 'module', 90, 0),
('4e1160c2-4c9b-6dec-30de-5a7c87776353', '2018-02-08 17:24:14', '2018-02-08 17:24:14', '1', '', 'access', 'Leads', 'module', 89, 0),
('4f3d7a06-89fa-a247-6c5e-5a7c88efc258', '2018-02-08 17:24:14', '2018-02-08 17:24:14', '1', '', 'list', 'jjwg_Maps', 'module', 90, 0),
('51c1cc80-91db-3d6e-a6d0-5a7c878450d3', '2018-02-08 17:24:14', '2018-02-08 17:24:14', '1', '', 'export', 'AOR_Reports', 'module', 90, 0),
('53220607-f3e4-50fe-1efc-5a7c87db3208', '2018-02-08 17:24:14', '2018-02-08 17:24:14', '1', '', 'massupdate', 'Meetings', 'module', 90, 0),
('534a6158-52ca-b352-47f5-5a7c870d3530', '2018-02-08 17:24:14', '2018-02-08 17:24:14', '1', '', 'delete', 'EmailMarketing', 'module', 90, 0),
('5381709e-0bca-410b-8817-5a7c88980448', '2018-02-08 17:24:14', '2018-02-08 17:24:14', '1', '', 'delete', 'AOW_Processed', 'module', 90, 0),
('5457040a-abaa-87b2-4ac9-5ab90277add5', '2018-03-26 14:23:26', '2018-03-26 14:23:26', '1', '1', 'view', 'atomi_Invoice_Commission_Report', 'module', 90, 0),
('54bf41f7-072c-6705-ec11-5a7c87ad0d6c', '2018-02-08 17:24:14', '2018-02-08 17:24:14', '1', '', 'export', 'FP_Event_Locations', 'module', 90, 0),
('5530a39a-f16f-76a0-05c7-5a7c8776e42f', '2018-02-08 17:24:14', '2018-02-08 17:24:14', '1', '', 'delete', 'Documents', 'module', 90, 0),
('5571f40a-c472-1291-3268-5a7c878699bf', '2018-02-08 17:24:14', '2018-02-08 17:24:14', '1', '', 'view', 'AOP_Case_Updates', 'module', 90, 0),
('55b1cb29-2875-348d-eb2a-5ab902564687', '2018-03-26 14:23:26', '2018-03-26 14:23:26', '1', '1', 'list', 'atomi_Invoice_Commission_Report', 'module', 90, 0),
('570a8585-1c43-399f-d98e-5a7c885523ad', '2018-02-08 17:24:14', '2018-02-08 17:24:14', '1', '', 'edit', 'jjwg_Maps', 'module', 90, 0),
('578be139-16e2-1e54-e2c4-5a7c87645ab2', '2018-02-08 17:24:14', '2018-02-08 17:24:14', '1', '', 'delete', 'AOP_Case_Events', 'module', 90, 0),
('582e6331-7020-84e2-fcb9-5a7c88c9ba5b', '2018-02-08 17:24:14', '2018-02-08 17:24:14', '1', '', 'import', 'AOW_Processed', 'module', 90, 0),
('58db61a9-af49-9f68-f80f-5a7c8779fcb0', '2018-02-08 17:24:14', '2018-02-08 17:24:14', '1', '', 'massupdate', 'FP_Event_Locations', 'module', 90, 0),
('58db6e43-1e0b-1d23-b144-5a7c880aeedb', '2018-02-08 17:24:14', '2018-02-08 17:24:14', '1', '', 'access', 'AOW_WorkFlow', 'module', 89, 0),
('599d0104-4e3a-7865-2bfc-5a7c88803928', '2018-02-08 17:24:14', '2018-02-08 17:24:14', '1', '', 'import', 'AOS_Quotes', 'module', 90, 0),
('5a2c17c1-b8ee-8c70-3fe2-5a7c874ceca0', '2018-02-08 17:24:14', '2018-02-08 17:24:14', '1', '', 'list', 'AOP_Case_Updates', 'module', 90, 0),
('5b463807-16d4-93de-0cf5-5a7c889e468e', '2018-02-08 17:24:14', '2018-02-08 17:24:14', '1', '', 'access', 'Calls_Reschedule', 'module', 89, 0),
('5b77bc38-9127-0d37-de06-5a7c879f8135', '2018-02-08 17:24:14', '2018-02-08 17:24:14', '1', '', 'import', 'EmailMarketing', 'module', 90, 0),
('5d4497f0-a1c9-79a5-99f7-5a7c87615b2e', '2018-02-08 17:24:14', '2018-02-08 17:24:14', '1', '', 'import', 'AOP_Case_Events', 'module', 90, 0),
('5e1bbb69-1d6b-7c37-884e-5a7c8816d92d', '2018-02-08 17:24:14', '2018-02-08 17:24:14', '1', '', 'delete', 'jjwg_Areas', 'module', 90, 0),
('5e373ad8-4948-b1c4-6961-5a7c88d2ca1b', '2018-02-08 17:24:14', '2018-02-08 17:24:14', '1', '', 'export', 'AOW_Processed', 'module', 90, 0),
('5e867219-ec5f-507d-5827-5a7c873afd6f', '2018-02-08 17:24:14', '2018-02-08 17:24:14', '1', '', 'export', 'AOS_Products', 'module', 90, 0),
('5f0c1939-e33d-0c2d-9e92-5a7c88d57921', '2018-02-08 17:24:14', '2018-02-08 17:24:14', '1', '', 'view', 'AOW_WorkFlow', 'module', 90, 0),
('5f1a37ee-e15f-b7b8-109a-5a7c88eb49ae', '2018-02-08 17:24:14', '2018-02-08 17:24:14', '1', '', 'export', 'AOS_Quotes', 'module', 90, 0),
('5f66b142-4dcb-f25d-9322-5a7c87e69664', '2018-02-08 17:24:14', '2018-02-08 17:24:14', '1', '', 'list', 'AM_ProjectTemplates', 'module', 90, 0),
('5f7a0cb9-8b4b-3dd5-5278-5a7c8753a2de', '2018-02-08 17:24:14', '2018-02-08 17:24:14', '1', '', 'delete', 'FP_events', 'module', 90, 0),
('5fe11b01-9b26-0a61-624e-5a7c8769d5ac', '2018-02-08 17:24:14', '2018-02-08 17:24:14', '1', '', 'massupdate', 'AOR_Reports', 'module', 90, 0),
('601af6a2-fd30-2ce9-842d-5a7c878e3a48', '2018-02-08 17:24:14', '2018-02-08 17:24:14', '1', '', 'import', 'AM_TaskTemplates', 'module', 90, 0),
('6112018b-d4f6-5050-a95f-5a7c87893497', '2018-02-08 17:24:14', '2018-02-08 17:24:14', '1', '', 'access', 'AOS_PDF_Templates', 'module', 89, 0),
('61154215-a467-e544-5b8e-5a7c873aa0ee', '2018-02-08 17:24:14', '2018-02-08 17:24:14', '1', '', 'edit', 'Opportunities', 'module', 90, 0),
('626e7fe0-b5c7-7593-35bb-5a7c88cceb7d', '2018-02-08 17:24:14', '2018-02-08 17:24:14', '1', '', 'import', 'jjwg_Address_Cache', 'module', 90, 0),
('6277049d-0ae8-c154-9a7c-5a7c875c5215', '2018-02-08 17:24:14', '2018-02-08 17:24:14', '1', '', 'massupdate', 'AOD_IndexEvent', 'module', 90, 0),
('62a73034-acbd-8b32-76f9-5a7c871b8a33', '2018-02-08 17:24:14', '2018-02-08 17:24:14', '1', '', 'access', 'Alerts', 'module', 89, 0),
('63216bd0-65b7-b960-c708-5a7c87e4b5d0', '2018-02-08 17:24:14', '2018-02-08 17:24:14', '1', '', 'export', 'EmailMarketing', 'module', 90, 0),
('63226928-0bb9-9aec-843c-5a7c870a9ac4', '2018-02-08 17:24:14', '2018-02-08 17:24:14', '1', '', 'export', 'AOP_Case_Events', 'module', 90, 0),
('63641f1e-a00c-4b03-bf4b-5a7c88e85e6b', '2018-02-08 17:24:14', '2018-02-08 17:24:14', '1', '', 'massupdate', 'AOW_Processed', 'module', 90, 0),
('643054f4-09e8-400f-79e4-5a7c88119c0f', '2018-02-08 17:24:14', '2018-02-08 17:24:14', '1', '', 'list', 'AOW_WorkFlow', 'module', 90, 0),
('6480f2a4-a9ba-96c6-273a-5a7c885b59d3', '2018-02-08 17:24:14', '2018-02-08 17:24:14', '1', '', 'massupdate', 'AOS_Quotes', 'module', 90, 0),
('65566383-5624-89e7-f9dd-5a7c87b64dd6', '2018-02-08 17:24:14', '2018-02-08 17:24:14', '1', '', 'edit', 'AOP_Case_Updates', 'module', 90, 0),
('666824be-a067-1d4e-f647-5a7c87c671a0', '2018-02-08 17:24:14', '2018-02-08 17:24:14', '1', '', 'massupdate', 'AOS_Products', 'module', 90, 0),
('66a301a8-1998-e819-cf82-5a7c879291d2', '2018-02-08 17:24:14', '2018-02-08 17:24:14', '1', '', 'import', 'Bugs', 'module', 90, 0),
('67d5d7be-b61d-3118-7d97-5a7c87e8da93', '2018-02-08 17:24:14', '2018-02-08 17:24:14', '1', '', 'massupdate', 'EmailMarketing', 'module', 90, 0),
('67eceb27-7e04-1ff5-7fc4-5a7c87f75dad', '2018-02-08 17:24:14', '2018-02-08 17:24:14', '1', '', 'massupdate', 'AOP_Case_Events', 'module', 90, 0),
('682f677b-27ae-245f-e66d-5a7c9109a2db', '2018-02-08 18:06:17', '2018-02-08 18:06:17', '1', '1', 'view', 'atomi_vendor', 'module', 90, 0),
('68411685-91a6-98f7-c654-5a7c88be47ff', '2018-02-08 17:24:14', '2018-02-08 17:24:14', '1', '', 'import', 'jjwg_Areas', 'module', 90, 0),
('68d179e8-657f-3cb7-a31f-5a7c87cd45cd', '2018-02-08 17:24:14', '2018-02-08 17:24:14', '1', '', 'view', 'Alerts', 'module', 90, 0),
('6b347041-b625-a46e-35c3-5a7c87238cc5', '2018-02-08 17:24:14', '2018-02-08 17:24:14', '1', '', 'access', 'Campaigns', 'module', 89, 0),
('6b3f7c20-10f2-10f8-d1c2-5a7c87b9893b', '2018-02-08 17:24:14', '2018-02-08 17:24:14', '1', '', 'import', 'Documents', 'module', 90, 0),
('6b800e26-e67a-8f0f-7ed5-5a7c8720489c', '2018-02-08 17:24:14', '2018-02-08 17:24:14', '1', '', 'view', 'AOD_Index', 'module', 90, 0),
('6b827943-1d12-d71f-d433-5a7c87bf7737', '2018-02-08 17:24:14', '2018-02-08 17:24:14', '1', '', 'export', 'AM_TaskTemplates', 'module', 90, 0),
('6ba8456f-5914-9356-066a-5a7c87d88d16', '2018-02-08 17:24:14', '2018-02-08 17:24:14', '1', '', 'edit', 'AM_ProjectTemplates', 'module', 90, 0),
('6caf4978-8970-5215-b6fd-5a7c882fa958', '2018-02-08 17:24:14', '2018-02-08 17:24:14', '1', '', 'export', 'jjwg_Address_Cache', 'module', 90, 0),
('6d76bc8f-8f0a-2a0e-3ab8-5a7c91b68286', '2018-02-08 18:06:17', '2018-02-08 18:06:17', '1', '1', 'list', 'atomi_vendor', 'module', 90, 0),
('6e320d8e-ebd3-1c52-452b-5a7c87e0812c', '2018-02-08 17:24:14', '2018-02-08 17:24:14', '1', '', 'edit', 'EmailTemplates', 'module', 90, 0),
('702f4976-e8d9-1e16-ecb3-5a7c87c17e95', '2018-02-08 17:24:14', '2018-02-08 17:24:14', '1', '', 'delete', 'AOP_Case_Updates', 'module', 90, 0),
('705bdcf8-7648-eedf-8d42-5a7c87d51c13', '2018-02-08 17:24:14', '2018-02-08 17:24:14', '1', '', 'list', 'Alerts', 'module', 90, 0),
('70bb07ca-9c06-c189-90cb-5a7c87ffc69b', '2018-02-08 17:24:14', '2018-02-08 17:24:14', '1', '', 'import', 'AOK_Knowledge_Base_Categories', 'module', 90, 0),
('72a87941-df9a-78bf-4a53-5a7c8705f065', '2018-02-08 17:24:14', '2018-02-08 17:24:14', '1', '', 'view', 'Campaigns', 'module', 90, 0),
('72f8ed03-22b1-084c-df84-5a7c88102e08', '2018-02-08 17:24:14', '2018-02-08 17:24:14', '1', '', 'export', 'jjwg_Areas', 'module', 90, 0),
('73521617-3fc7-4495-8e81-5a7c8776a5ee', '2018-02-08 17:24:14', '2018-02-08 17:24:14', '1', '', 'delete', 'Opportunities', 'module', 90, 0),
('73569bb1-e694-66ee-3ecf-5a7c91c67706', '2018-02-08 18:06:17', '2018-02-08 18:06:17', '1', '1', 'edit', 'atomi_vendor', 'module', 90, 0),
('74748f3e-97d8-edae-9ac0-5a7c87bd647e', '2018-02-08 17:24:14', '2018-02-08 17:24:14', '1', '', 'massupdate', 'AM_TaskTemplates', 'module', 90, 0),
('748e226f-5fd9-c8f9-9568-5a7c87df7528', '2018-02-08 17:24:14', '2018-02-08 17:24:14', '1', '', 'delete', 'AM_ProjectTemplates', 'module', 90, 0),
('74a730a9-83bc-06b2-3fda-5a7c8791d6e8', '2018-02-08 17:24:14', '2018-02-08 17:24:14', '1', '', 'access', 'Contacts', 'module', 89, 0),
('7530d1e8-983d-ba1a-7ac6-5a7c87f8c430', '2018-02-08 17:24:14', '2018-02-08 17:24:14', '1', '', 'edit', 'Alerts', 'module', 90, 0),
('7733958a-d26d-0297-35f9-5a7c87ff6d1c', '2018-02-08 17:24:14', '2018-02-08 17:24:14', '1', '', 'access', 'Project', 'module', 89, 0),
('77cc0e47-cfba-1a9c-8226-5a7c888082fa', '2018-02-08 17:24:14', '2018-02-08 17:24:14', '1', '', 'massupdate', 'jjwg_Areas', 'module', 90, 0),
('78bb130c-a5e0-c3d6-4ce7-5a7c8717cf91', '2018-02-08 17:24:14', '2018-02-08 17:24:14', '1', '', 'import', 'Opportunities', 'module', 90, 0),
('78f9671a-a19a-07e1-022d-5a7c871842cb', '2018-02-08 17:24:14', '2018-02-08 17:24:14', '1', '', 'access', 'ProjectTask', 'module', 89, 0),
('79fba363-87eb-66d9-2694-5a7c91e3e5d5', '2018-02-08 18:06:17', '2018-02-08 18:06:17', '1', '1', 'delete', 'atomi_vendor', 'module', 90, 0),
('7a756f74-e9e2-b051-4414-5a7c88ac72ce', '2018-02-08 17:24:14', '2018-02-08 17:24:14', '1', '', 'massupdate', 'jjwg_Address_Cache', 'module', 90, 0),
('7b380ac3-8817-3d34-ea13-5a7c87a58609', '2018-02-08 17:24:14', '2018-02-08 17:24:14', '1', '', 'import', 'ProspectLists', 'module', 90, 0),
('7b8a86cc-2126-6006-7857-5a7c875fb50e', '2018-02-08 17:24:14', '2018-02-08 17:24:14', '1', '', 'import', 'AM_ProjectTemplates', 'module', 90, 0),
('7c0c2ffd-4711-0eb6-b5c9-5a7c8717c557', '2018-02-08 17:24:14', '2018-02-08 17:24:14', '1', '', 'delete', 'Alerts', 'module', 90, 0),
('7e1c5b0f-3d9f-6eba-1144-5a7c87129198', '2018-02-08 17:24:14', '2018-02-08 17:24:14', '1', '', 'export', 'Opportunities', 'module', 90, 0),
('7fd93bbe-9f14-2fee-e8b5-5a7c884ccefb', '2018-02-08 17:24:14', '2018-02-08 17:24:14', '1', '', 'edit', 'AOW_WorkFlow', 'module', 90, 0),
('8048b564-eb10-8b9f-7d76-5a7c87d6631d', '2018-02-08 17:24:14', '2018-02-08 17:24:14', '1', '', 'view', 'ProjectTask', 'module', 90, 0),
('8067adcd-2431-c729-2057-5a7c87818377', '2018-02-08 17:24:14', '2018-02-08 17:24:14', '1', '', 'access', 'AOD_IndexEvent', 'module', 89, 0),
('80694aef-eceb-73af-9931-5a7c87be1dad', '2018-02-08 17:24:14', '2018-02-08 17:24:14', '1', '', 'import', 'AOP_Case_Updates', 'module', 90, 0),
('80c20770-d0aa-ade2-231c-5a7c872a7bd9', '2018-02-08 17:24:14', '2018-02-08 17:24:14', '1', '', 'edit', 'AOS_Products', 'module', 90, 0),
('81e8b692-182b-7433-f19a-5a7c87f022f4', '2018-02-08 17:24:14', '2018-02-08 17:24:14', '1', '', 'view', 'Project', 'module', 90, 0),
('8309964a-8f4d-824c-d349-5a7c91e350c4', '2018-02-08 18:06:17', '2018-02-08 18:06:17', '1', '1', 'import', 'atomi_vendor', 'module', 90, 0),
('832f0980-6373-df38-b9f2-5a7c886f4490', '2018-02-08 17:24:14', '2018-02-08 17:24:14', '1', '', 'access', 'jjwg_Markers', 'module', 89, 0),
('83cc1865-d9ef-1ec0-7094-5a7c8741d56e', '2018-02-08 17:24:14', '2018-02-08 17:24:14', '1', '', 'massupdate', 'Opportunities', 'module', 90, 0),
('84188245-b749-9ee6-796a-5a7c87cc0b1b', '2018-02-08 17:24:14', '2018-02-08 17:24:14', '1', '', 'import', 'Alerts', 'module', 90, 0),
('84c66c0d-3c07-572c-c19d-5a7c879680f0', '2018-02-08 17:24:14', '2018-02-08 17:24:14', '1', '', 'export', 'AM_ProjectTemplates', 'module', 90, 0),
('84eaa1a2-baff-9685-962c-5a7c88a60371', '2018-02-08 17:24:14', '2018-02-08 17:24:14', '1', '', 'view', 'Calls_Reschedule', 'module', 90, 0),
('84fc5a50-a4ce-fbc8-d1fb-5a7c87d3cd15', '2018-02-08 17:24:14', '2018-02-08 17:24:14', '1', '', 'export', 'Bugs', 'module', 90, 0),
('850b9918-b117-ff19-cd08-5a9ff8cbc277', '2018-03-07 14:35:16', '2018-03-07 14:35:16', '1', '1', 'access', 'atomi_invoice_payment_details', 'module', 89, 0),
('859bc9b9-7d09-f469-75dd-5a7c870715d6', '2018-02-08 17:24:14', '2018-02-08 17:24:14', '1', '', 'access', 'AOS_Contracts', 'module', 89, 0),
('87d25431-ed77-b9b3-432c-5a7c87b9363e', '2018-02-08 17:24:14', '2018-02-08 17:24:14', '1', '', 'list', 'ProjectTask', 'module', 90, 0),
('87e3baa2-a6f6-631c-1319-5a7c87221204', '2018-02-08 17:24:14', '2018-02-08 17:24:14', '1', '', 'access', 'AOS_Invoices', 'module', 89, 0),
('88a7a798-8a49-3024-7016-5a7c875fa391', '2018-02-08 17:24:14', '2018-02-08 17:24:14', '1', '', 'export', 'Documents', 'module', 90, 0),
('88c99d8d-4650-05b3-1c91-5a7c8746cbdf', '2018-02-08 17:24:14', '2018-02-08 17:24:14', '1', '', 'list', 'Project', 'module', 90, 0),
('88ff008b-ab24-2338-bdb6-5a7c887ef19d', '2018-02-08 17:24:14', '2018-02-08 17:24:14', '1', '', 'view', 'AOS_Quotes', 'module', 90, 0),
('894e9f7a-0e31-addc-5458-5ab902cc13b2', '2018-03-26 14:23:26', '2018-03-26 14:23:26', '1', '1', 'edit', 'atomi_Invoice_Commission_Report', 'module', 90, 0),
('8989d2bb-e019-1312-8710-5a9ff8be38b0', '2018-03-07 14:35:16', '2018-03-07 14:35:16', '1', '1', 'edit', 'atomi_invoice_payment_details', 'module', 90, 0),
('8afe5a26-1b27-a34a-115b-5a7c91ece3dd', '2018-02-08 18:06:17', '2018-02-08 18:06:17', '1', '1', 'export', 'atomi_vendor', 'module', 90, 0),
('8c6e6242-c5c3-4146-0155-5a7c87dfa419', '2018-02-08 17:24:14', '2018-02-08 17:24:14', '1', '', 'view', 'Contacts', 'module', 90, 0),
('8c935996-bdbd-e0fc-f20d-5a7c87d09a26', '2018-02-08 17:24:14', '2018-02-08 17:24:14', '1', '', 'view', 'AOS_Contracts', 'module', 90, 0),
('8cd0e196-9c85-1a09-fb97-5a7c877f806f', '2018-02-08 17:24:14', '2018-02-08 17:24:14', '1', '', 'massupdate', 'AM_ProjectTemplates', 'module', 90, 0),
('8cdcc346-24c8-327a-5812-5a7c87a4f08b', '2018-02-08 17:24:14', '2018-02-08 17:24:14', '1', '', 'edit', 'ProjectTask', 'module', 90, 0),
('8cf2b0d4-13d4-49fd-c998-5a7c88fa6fd8', '2018-02-08 17:24:14', '2018-02-08 17:24:14', '1', '', 'delete', 'AOW_WorkFlow', 'module', 90, 0),
('8d495bee-9bf6-9604-fe60-5a7c8732bbc6', '2018-02-08 17:24:14', '2018-02-08 17:24:14', '1', '', 'list', 'Campaigns', 'module', 90, 0),
('8db33728-1e09-34ba-8f97-5a7c88559ec5', '2018-02-08 17:24:14', '2018-02-08 17:24:14', '1', '', 'view', 'jjwg_Markers', 'module', 90, 0),
('8e9b00dc-20fe-a623-a20f-5a7c8799e833', '2018-02-08 17:24:14', '2018-02-08 17:24:14', '1', '', 'export', 'AOR_Scheduled_Reports', 'module', 90, 0),
('90658fd5-56d1-9753-725b-5ab90203b7ff', '2018-03-26 14:23:26', '2018-03-26 14:23:26', '1', '1', 'access', 'atomi_Invoice_Commission_Report', 'module', 89, 0),
('90d5d91e-3ee1-67cd-7d33-5a7c875617c1', '2018-02-08 17:24:14', '2018-02-08 17:24:14', '1', '', 'list', 'AOS_Contracts', 'module', 90, 0),
('91239ff5-683d-6f3a-30ad-5a7c878169a9', '2018-02-08 17:24:14', '2018-02-08 17:24:14', '1', '', 'edit', 'Project', 'module', 90, 0),
('912545f4-7e3a-a123-a7f3-5a7c8828469e', '2018-02-08 17:24:14', '2018-02-08 17:24:14', '1', '', 'delete', 'jjwg_Maps', 'module', 90, 0),
('92586ec6-ae8d-138b-4a6e-5a7c8769f8e6', '2018-02-08 17:24:14', '2018-02-08 17:24:14', '1', '', 'view', 'Leads', 'module', 90, 0),
('9299f743-54c3-37ed-5696-5a7c873bb17a', '2018-02-08 17:24:14', '2018-02-08 17:24:14', '1', '', 'delete', 'ProjectTask', 'module', 90, 0),
('938046da-5e36-eacb-fc10-5a7c912e04c5', '2018-02-08 18:06:17', '2018-02-08 18:06:17', '1', '1', 'massupdate', 'atomi_vendor', 'module', 90, 0),
('93858629-e4f9-ddd0-106d-5a7c8724e21b', '2018-02-08 17:24:14', '2018-02-08 17:24:14', '1', '', 'massupdate', 'Documents', 'module', 90, 0),
('943536db-32af-33e3-f34d-5a7c87f07710', '2018-02-08 17:24:14', '2018-02-08 17:24:14', '1', '', 'access', 'AOS_Product_Categories', 'module', 89, 0),
('9466f328-c4a3-57a0-ca21-5a7c88d49001', '2018-02-08 17:24:14', '2018-02-08 17:24:14', '1', '', 'list', 'jjwg_Markers', 'module', 90, 0),
('950138ae-7af6-8f4b-07a2-5a7c87de1ce5', '2018-02-08 17:24:14', '2018-02-08 17:24:14', '1', '', 'export', 'AOS_PDF_Templates', 'module', 90, 0),
('96d7bdf1-2d82-901a-0674-5a7c8742f099', '2018-02-08 17:24:14', '2018-02-08 17:24:14', '1', '', 'access', 'Tasks', 'module', 89, 0),
('97e1dfea-b993-0a67-b28f-5a7c871cea0b', '2018-02-08 17:24:14', '2018-02-08 17:24:14', '1', '', 'import', 'ProjectTask', 'module', 90, 0),
('997ffcd5-2ae4-d854-9037-5a7c8706fdaf', '2018-02-08 17:24:14', '2018-02-08 17:24:14', '1', '', 'list', 'Contacts', 'module', 90, 0),
('9a1ec2b8-6122-b21f-2a89-5a7c879fd3bd', '2018-02-08 17:24:14', '2018-02-08 17:24:14', '1', '', 'delete', 'Project', 'module', 90, 0),
('9a3f34b9-3c49-5d5e-5e50-5a7c87039f35', '2018-02-08 17:24:14', '2018-02-08 17:24:14', '1', '', 'view', 'AOS_Invoices', 'module', 90, 0),
('9b70040c-a922-77b9-3b57-5a7c87915474', '2018-02-08 17:24:14', '2018-02-08 17:24:14', '1', '', 'export', 'AOP_Case_Updates', 'module', 90, 0),
('9c138b00-6d8a-b70b-f583-5a7c874883a7', '2018-02-08 17:24:14', '2018-02-08 17:24:14', '1', '', 'export', 'Alerts', 'module', 90, 0),
('9c71c8d3-30f0-bcab-0cf2-5a7c88b56e57', '2018-02-08 17:24:14', '2018-02-08 17:24:14', '1', '', 'import', 'jjwg_Maps', 'module', 90, 0),
('9d00e1d2-a3d7-6eca-c740-5a7c8752611e', '2018-02-08 17:24:14', '2018-02-08 17:24:14', '1', '', 'massupdate', 'AOS_PDF_Templates', 'module', 90, 0),
('9d2d67d1-559e-8513-cbf5-5a7c881cd755', '2018-02-08 17:24:14', '2018-02-08 17:24:14', '1', '', 'list', 'Calls_Reschedule', 'module', 90, 0),
('9d490b9d-331c-30ed-a148-5a7c87257dae', '2018-02-08 17:24:14', '2018-02-08 17:24:14', '1', '', 'view', 'AOD_IndexEvent', 'module', 90, 0),
('9d634bea-a98d-5dc7-edc5-5a7c887a3d5e', '2018-02-08 17:24:14', '2018-02-08 17:24:14', '1', '', 'edit', 'jjwg_Markers', 'module', 90, 0),
('9d64018e-8b10-6518-4638-5a7c87028ea2', '2018-02-08 17:24:14', '2018-02-08 17:24:14', '1', '', 'view', 'Tasks', 'module', 90, 0),
('9d779c95-3aa4-d93d-f95e-5a7c87030d4c', '2018-02-08 17:24:14', '2018-02-08 17:24:14', '1', '', 'export', 'ProjectTask', 'module', 90, 0),
('9dc17434-c5ca-92eb-0578-5a7c88a1afb3', '2018-02-08 17:24:14', '2018-02-08 17:24:14', '1', '', 'import', 'AOW_WorkFlow', 'module', 90, 0),
('a049ec9a-d9dd-a8d5-2ac7-5a7c874cf906', '2018-02-08 17:24:14', '2018-02-08 17:24:14', '1', '', 'import', 'Project', 'module', 90, 0),
('a0800131-376c-fa6a-c419-5a7c87386486', '2018-02-08 17:24:14', '2018-02-08 17:24:14', '1', '', 'access', 'Documents', 'module', 89, 0),
('a0a1c377-6dd5-5303-1a83-5a7c8711b1b7', '2018-02-08 17:24:14', '2018-02-08 17:24:14', '1', '', 'view', 'AOS_Product_Categories', 'module', 90, 0),
('a127bec6-d401-5542-3fb7-5a7c88ba0aab', '2018-02-08 17:24:14', '2018-02-08 17:24:14', '1', '', 'export', 'jjwg_Maps', 'module', 90, 0),
('a26f69b2-aef7-74f6-3810-5a7c8779d461', '2018-02-08 17:24:14', '2018-02-08 17:24:14', '1', '', 'massupdate', 'ProjectTask', 'module', 90, 0),
('a29831ce-ec01-2cab-9c7b-5a7c872468ad', '2018-02-08 17:24:14', '2018-02-08 17:24:14', '1', '', 'edit', 'Campaigns', 'module', 90, 0),
('a45bdb66-d8f4-e7c1-f988-5a7c87aa6dd8', '2018-02-08 17:24:14', '2018-02-08 17:24:14', '1', '', 'edit', 'Contacts', 'module', 90, 0),
('a4eccf03-a4a5-619b-2dfa-5a7c88428a1a', '2018-02-08 17:24:14', '2018-02-08 17:24:14', '1', '', 'delete', 'jjwg_Markers', 'module', 90, 0),
('a6fa1f9a-0cae-f6a3-4a16-5a7c88d78fb0', '2018-02-08 17:24:14', '2018-02-08 17:24:14', '1', '', 'massupdate', 'jjwg_Maps', 'module', 90, 0),
('a8962b43-91fc-31e3-0ecb-5a7c87dcdea3', '2018-02-08 17:24:14', '2018-02-08 17:24:14', '1', '', 'list', 'Tasks', 'module', 90, 0),
('a8a224ad-11b0-72ab-a292-5a7c8711a441', '2018-02-08 17:24:14', '2018-02-08 17:24:14', '1', '', 'list', 'AOS_Invoices', 'module', 90, 0),
('a8b1ecbf-2f5a-690a-d098-5a7c8813fbd7', '2018-02-08 17:24:14', '2018-02-08 17:24:14', '1', '', 'export', 'AOW_WorkFlow', 'module', 90, 0),
('a998927d-50e7-a811-8ff1-5a7c87b65e32', '2018-02-08 17:24:14', '2018-02-08 17:24:14', '1', '', 'massupdate', 'AOP_Case_Updates', 'module', 90, 0),
('a9a5dcfd-23a7-801a-0d52-5ab9021815a3', '2018-03-26 14:23:26', '2018-03-26 14:23:26', '1', '1', 'delete', 'atomi_Invoice_Commission_Report', 'module', 90, 0),
('aa3f96f2-fb1b-785f-0f76-5a7c873160ec', '2018-02-08 17:24:14', '2018-02-08 17:24:14', '1', '', 'list', 'Leads', 'module', 90, 0),
('ab1875fb-508e-b68d-b1c1-5a7c87ecabd2', '2018-02-08 17:24:14', '2018-02-08 17:24:14', '1', '', 'list', 'AOS_Product_Categories', 'module', 90, 0),
('ac2345d1-213c-07d2-3cdc-5a7c8798204c', '2018-02-08 17:24:14', '2018-02-08 17:24:14', '1', '', 'export', 'Project', 'module', 90, 0),
('ac891384-539c-8ba7-90ce-5a7c8711281a', '2018-02-08 17:24:14', '2018-02-08 17:24:14', '1', '', 'delete', 'Contacts', 'module', 90, 0),
('acaa001e-8b4f-ab7a-d789-5a7c8787494c', '2018-02-08 17:24:14', '2018-02-08 17:24:14', '1', '', 'view', 'Accounts', 'module', 90, 0),
('ad81617a-5b43-cf73-6bad-5a7c873e7453', '2018-02-08 17:24:14', '2018-02-08 17:24:14', '1', '', 'delete', 'Campaigns', 'module', 90, 0),
('adcacc11-15c5-7704-b1ff-5a7c8749baae', '2018-02-08 17:24:14', '2018-02-08 17:24:14', '1', '', 'access', 'AOR_Scheduled_Reports', 'module', 89, 0),
('add32553-16d4-f763-202a-5a7c88697314', '2018-02-08 17:24:14', '2018-02-08 17:24:14', '1', '', 'import', 'jjwg_Markers', 'module', 90, 0),
('ae2806b3-eea7-f703-13ba-5a7c879828fb', '2018-02-08 17:24:14', '2018-02-08 17:24:14', '1', '', 'import', 'FP_events', 'module', 90, 0),
('aee113f9-a0cb-1b32-a173-5a7c87604ffe', '2018-02-08 17:24:14', '2018-02-08 17:24:14', '1', '', 'massupdate', 'Alerts', 'module', 90, 0),
('aef3083e-8802-a400-b0f8-5a9ff84a792d', '2018-03-07 14:35:16', '2018-03-07 14:35:16', '1', '1', 'view', 'atomi_invoice_payment_details', 'module', 90, 0),
('b01c0df5-9eee-3071-a4cf-5a7c8730083c', '2018-02-08 17:24:14', '2018-02-08 17:24:14', '1', '', 'massupdate', 'AOS_Contracts', 'module', 90, 0),
('b0b8aba1-e82e-577d-58f7-5a7c875df315', '2018-02-08 17:24:14', '2018-02-08 17:24:14', '1', '', 'edit', 'Tasks', 'module', 90, 0),
('b1414c02-2e60-2b05-da09-5a7c875c5da1', '2018-02-08 17:24:14', '2018-02-08 17:24:14', '1', '', 'edit', 'AOS_Contracts', 'module', 90, 0),
('b2150d2f-b2fe-a6c5-86a1-5a7c88412e3c', '2018-02-08 17:24:14', '2018-02-08 17:24:14', '1', '', 'delete', 'TemplateSectionLine', 'module', 90, 0),
('b2f806a6-90ab-e1e4-bd68-5a7c879e618c', '2018-02-08 17:24:14', '2018-02-08 17:24:14', '1', '', 'import', 'Contacts', 'module', 90, 0),
('b3cbfc1f-172b-f145-96eb-5a7c8791c73e', '2018-02-08 17:24:14', '2018-02-08 17:24:14', '1', '', 'massupdate', 'Project', 'module', 90, 0),
('b577acf5-fbd3-d2e7-4c6b-5a7c888a762b', '2018-02-08 17:24:14', '2018-02-08 17:24:14', '1', '', 'edit', 'Calls_Reschedule', 'module', 90, 0),
('b7f36947-b73e-d6d9-7d20-5a7c8709640b', '2018-02-08 17:24:14', '2018-02-08 17:24:14', '1', '', 'edit', 'AOS_Product_Categories', 'module', 90, 0),
('b86573b4-ba19-bbc3-b7d1-5a7c87d87926', '2018-02-08 17:24:14', '2018-02-08 17:24:14', '1', '', 'access', 'Meetings', 'module', 89, 0),
('b88f0144-a4c3-0dd2-7bbe-5a7c876061b5', '2018-02-08 17:24:14', '2018-02-08 17:24:14', '1', '', 'list', 'AOD_IndexEvent', 'module', 90, 0),
('b8b7475d-9328-8dbb-7165-5a7c87ace94a', '2018-02-08 17:24:14', '2018-02-08 17:24:14', '1', '', 'delete', 'Tasks', 'module', 90, 0),
('b8bd437c-439a-f262-336b-5a7c8768f1dc', '2018-02-08 17:24:14', '2018-02-08 17:24:14', '1', '', 'export', 'Contacts', 'module', 90, 0),
('b9980889-60b3-da5d-74df-5a7c87154393', '2018-02-08 17:24:14', '2018-02-08 17:24:14', '1', '', 'access', 'ProspectLists', 'module', 89, 0),
('b9db7939-5481-c051-d428-5a7c87b277c4', '2018-02-08 17:24:14', '2018-02-08 17:24:14', '1', '', 'edit', 'Leads', 'module', 90, 0),
('baef5a41-eb70-ebd3-d2ba-5a7c88ccd238', '2018-02-08 17:24:14', '2018-02-08 17:24:14', '1', '', 'massupdate', 'AOW_WorkFlow', 'module', 90, 0),
('bd914942-c399-c3c9-7ba6-5a7c87df5675', '2018-02-08 17:24:14', '2018-02-08 17:24:14', '1', '', 'massupdate', 'Contacts', 'module', 90, 0),
('c0e70cc4-f593-1f4c-90b9-5a7c88329385', '2018-02-08 17:24:14', '2018-02-08 17:24:14', '1', '', 'access', 'TemplateSectionLine', 'module', 89, 0),
('c0fcae98-c2d8-87a5-0fee-5a7c87dcae86', '2018-02-08 17:24:14', '2018-02-08 17:24:14', '1', '', 'import', 'Tasks', 'module', 90, 0),
('c100217c-b0a8-8fc1-9af5-5a7c87c35f17', '2018-02-08 17:24:14', '2018-02-08 17:24:14', '1', '', 'access', 'Calls', 'module', 89, 0),
('c10330a2-bceb-029f-c863-5a7c87b68e9c', '2018-02-08 17:24:14', '2018-02-08 17:24:14', '1', '', 'view', 'ProspectLists', 'module', 90, 0),
('c1d80cc1-0bc4-c638-83e2-5a7c87579e75', '2018-02-08 17:24:14', '2018-02-08 17:24:14', '1', '', 'edit', 'AOS_Invoices', 'module', 90, 0),
('c2a70903-196a-260e-e2df-5a7c87f02579', '2018-02-08 17:24:14', '2018-02-08 17:24:14', '1', '', 'access', 'Notes', 'module', 89, 0),
('c2d97833-914f-f7b0-aa96-5a7c87aeeee1', '2018-02-08 17:24:14', '2018-02-08 17:24:14', '1', '', 'delete', 'Leads', 'module', 90, 0),
('c4536826-d0d1-cf5a-4a75-5ab90297eb79', '2018-03-26 14:23:26', '2018-03-26 14:23:26', '1', '1', 'import', 'atomi_Invoice_Commission_Report', 'module', 90, 0),
('c59b532a-ceb3-c581-ff8d-5a7c87192866', '2018-02-08 17:24:14', '2018-02-08 17:24:14', '1', '', 'view', 'AOR_Scheduled_Reports', 'module', 90, 0),
('c637f0ae-7c2c-ba17-b965-5a7c871e8874', '2018-02-08 17:24:14', '2018-02-08 17:24:14', '1', '', 'access', 'AOK_KnowledgeBase', 'module', 89, 0),
('c64e94ae-1ee4-4282-22a7-5a7c870c805f', '2018-02-08 17:24:14', '2018-02-08 17:24:14', '1', '', 'access', 'AOK_Knowledge_Base_Categories', 'module', 89, 0),
('c7de1776-145b-01b7-8510-5a7c87e63107', '2018-02-08 17:24:14', '2018-02-08 17:24:14', '1', '', 'view', 'Calls', 'module', 90, 0),
('c7e7136e-80df-37db-7b58-5a7c876327e8', '2018-02-08 17:24:14', '2018-02-08 17:24:14', '1', '', 'access', 'Emails', 'module', 89, 0),
('c8263453-18c3-ee9f-0461-5a7c87dcfcd8', '2018-02-08 17:24:14', '2018-02-08 17:24:14', '1', '', 'list', 'ProspectLists', 'module', 90, 0),
('c8adefde-32be-c350-5d63-5a7c87312b48', '2018-02-08 17:24:14', '2018-02-08 17:24:14', '1', '', 'export', 'Tasks', 'module', 90, 0),
('c8c9b28b-01a5-8ed0-808a-5a7c87b2c056', '2018-02-08 17:24:14', '2018-02-08 17:24:14', '1', '', 'view', 'Meetings', 'module', 90, 0),
('c8ff8b24-4c2e-49c3-8b81-5a7c87fb2ace', '2018-02-08 17:24:14', '2018-02-08 17:24:14', '1', '', 'delete', 'AOS_Contracts', 'module', 90, 0),
('cb240e9c-237a-e509-28a4-5a7c87287654', '2018-02-08 17:24:14', '2018-02-08 17:24:14', '1', '', 'list', 'AOD_Index', 'module', 90, 0),
('cb250386-17f1-91a1-ec21-5a7c877b28db', '2018-02-08 17:24:14', '2018-02-08 17:24:14', '1', '', 'import', 'AOK_KnowledgeBase', 'module', 90, 0),
('cc6b1b92-3679-866c-b599-5a7c87296d04', '2018-02-08 17:24:14', '2018-02-08 17:24:14', '1', '', 'import', 'Leads', 'module', 90, 0),
('cce224b3-621b-b08d-f08c-5a7c871d8a5f', '2018-02-08 17:24:14', '2018-02-08 17:24:14', '1', '', 'edit', 'ProspectLists', 'module', 90, 0),
('cdf07e75-e14b-8897-148a-5a7c8700e635', '2018-02-08 17:24:14', '2018-02-08 17:24:14', '1', '', 'import', 'Campaigns', 'module', 90, 0),
('ce7811a3-09c3-4eac-dcd1-5a7c88061e53', '2018-02-08 17:24:14', '2018-02-08 17:24:14', '1', '', 'export', 'jjwg_Markers', 'module', 90, 0),
('ce97e2e2-d425-9e92-bad2-5a7c87cd5f8c', '2018-02-08 17:24:14', '2018-02-08 17:24:14', '1', '', 'view', 'Emails', 'module', 90, 0),
('cf5c56a1-4802-0c32-b9ae-5a7c879ac69b', '2018-02-08 17:24:14', '2018-02-08 17:24:14', '1', '', 'list', 'Calls', 'module', 90, 0),
('cfda369c-b088-9de1-963b-5a7c8774f219', '2018-02-08 17:24:14', '2018-02-08 17:24:14', '1', '', 'edit', 'AOD_IndexEvent', 'module', 90, 0),
('d18c0b5a-2936-edad-39cc-5a7c87fc250a', '2018-02-08 17:24:14', '2018-02-08 17:24:14', '1', '', 'view', 'Users', 'module', 90, 0),
('d1c2fab3-250c-4a22-b026-5a7c8749db95', '2018-02-08 17:24:14', '2018-02-08 17:24:14', '1', '', 'access', 'Prospects', 'module', 89, 0),
('d1e21186-4ade-3a7c-0a8c-5a7c875b8d25', '2018-02-08 17:24:14', '2018-02-08 17:24:14', '1', '', 'list', 'Meetings', 'module', 90, 0),
('d2709f5a-0d40-3342-8009-5a7c8874dfaf', '2018-02-08 17:24:14', '2018-02-08 17:24:14', '1', '', 'access', 'SecurityGroups', 'module', 89, 0),
('d28d756f-d96b-cd20-132a-5a7c8731d164', '2018-02-08 17:24:14', '2018-02-08 17:24:14', '1', '', 'list', 'AOR_Scheduled_Reports', 'module', 90, 0),
('d29e5e53-9909-1820-65c5-5a7c87507146', '2018-02-08 17:24:14', '2018-02-08 17:24:14', '1', '', 'export', 'Leads', 'module', 90, 0),
('d3795b19-e7ea-1434-ede0-5a7c87699bdd', '2018-02-08 17:24:14', '2018-02-08 17:24:14', '1', '', 'delete', 'AOS_Product_Categories', 'module', 90, 0),
('d3d59019-8751-8289-b83a-5a7c87423dd1', '2018-02-08 17:24:14', '2018-02-08 17:24:14', '1', '', 'delete', 'AOS_Invoices', 'module', 90, 0),
('d408b019-d7ea-b1b6-dfb4-5ab9029b414f', '2018-03-26 14:23:26', '2018-03-26 14:23:26', '1', '1', 'export', 'atomi_Invoice_Commission_Report', 'module', 90, 0),
('d44cafaf-cc5d-7917-f18d-5a7c8777cd78', '2018-02-08 17:24:14', '2018-02-08 17:24:14', '1', '', 'access', 'Cases', 'module', 89, 0),
('d64fb0b2-720d-2028-adad-5a7c87406e3d', '2018-02-08 17:24:14', '2018-02-08 17:24:14', '1', '', 'list', 'Emails', 'module', 90, 0),
('d6b86f4a-3b98-f762-effe-5a7c878c864d', '2018-02-08 17:24:14', '2018-02-08 17:24:14', '1', '', 'access', 'AOS_Products', 'module', 89, 0),
('d794e83f-8921-5cdd-ff4b-5a7c871fe923', '2018-02-08 17:24:14', '2018-02-08 17:24:14', '1', '', 'edit', 'Calls', 'module', 90, 0),
('d7b5f8d6-a5b0-e92d-9da8-5a7c87ce91cc', '2018-02-08 17:24:14', '2018-02-08 17:24:14', '1', '', 'view', 'AOK_Knowledge_Base_Categories', 'module', 90, 0),
('d7c39482-f2e4-8853-e0e3-5a7c8824ab8a', '2018-02-08 17:24:14', '2018-02-08 17:24:14', '1', '', 'view', 'SecurityGroups', 'module', 90, 0),
('d7d80ae5-dd9c-22ed-8f59-5a7c87fe7425', '2018-02-08 17:24:14', '2018-02-08 17:24:14', '1', '', 'edit', 'EAPM', 'module', 90, 0),
('da28493d-19a5-c21f-d3ed-5a7c8868ec20', '2018-02-08 17:24:14', '2018-02-08 17:24:14', '1', '', 'access', 'OutboundEmailAccounts', 'module', 89, 0),
('da3f2472-f276-5bad-faa8-5a7c872a89e0', '2018-02-08 17:24:14', '2018-02-08 17:24:14', '1', '', 'access', 'Bugs', 'module', 89, 0),
('daffd85f-9cf5-3709-654a-5a7c87488ba6', '2018-02-08 17:24:14', '2018-02-08 17:24:14', '1', '', 'access', 'FP_events', 'module', 89, 0);
INSERT INTO `acl_actions` (`id`, `date_entered`, `date_modified`, `modified_user_id`, `created_by`, `name`, `category`, `acltype`, `aclaccess`, `deleted`) VALUES
('db798d69-8b65-658f-5f7b-5a7c88d71ac0', '2018-02-08 17:24:14', '2018-02-08 17:24:14', '1', '', 'delete', 'Calls_Reschedule', 'module', 90, 0),
('db8c5272-61e2-734d-c294-5a7c87eecb8a', '2018-02-08 17:24:14', '2018-02-08 17:24:14', '1', '', 'edit', 'Emails', 'module', 90, 0),
('dd3d0033-f9e5-6584-0dc8-5a7c87ea0f7b', '2018-02-08 17:24:14', '2018-02-08 17:24:14', '1', '', 'import', 'AOS_Contracts', 'module', 90, 0),
('dde8253e-254c-f8a1-1a7f-5a7c874f6df0', '2018-02-08 17:24:14', '2018-02-08 17:24:14', '1', '', 'edit', 'AOR_Scheduled_Reports', 'module', 90, 0),
('dec69123-5608-9024-38be-5a7c87bae8ab', '2018-02-08 17:24:14', '2018-02-08 17:24:14', '1', '', 'view', 'AOK_KnowledgeBase', 'module', 90, 0),
('df9e386a-7426-cb84-5057-5a7c884fd8bf', '2018-02-08 17:24:14', '2018-02-08 17:24:14', '1', '', 'view', 'OutboundEmailAccounts', 'module', 90, 0),
('dfa47206-8963-eec4-d313-5a7c888e8a06', '2018-02-08 17:24:14', '2018-02-08 17:24:14', '1', '', 'access', 'AOS_Quotes', 'module', 89, 0),
('dff2ac46-9f42-a5bd-469f-5a7c879bc7f8', '2018-02-08 17:24:14', '2018-02-08 17:24:14', '1', '', 'delete', 'Calls', 'module', 90, 0),
('e0a3e99b-51bd-fbbc-cb29-5a7c883d0865', '2018-02-08 17:24:14', '2018-02-08 17:24:14', '1', '', 'view', 'TemplateSectionLine', 'module', 90, 0),
('e0eece78-8888-a938-a7a0-5a7c87be0b23', '2018-02-08 17:24:14', '2018-02-08 17:24:14', '1', '', 'edit', 'Meetings', 'module', 90, 0),
('e10d2832-5200-9455-2fea-5a7c87849a40', '2018-02-08 17:24:14', '2018-02-08 17:24:14', '1', '', 'export', 'Campaigns', 'module', 90, 0),
('e15c51b5-7744-aa4b-5190-5a7c882cf770', '2018-02-08 17:24:14', '2018-02-08 17:24:14', '1', '', 'list', 'SecurityGroups', 'module', 90, 0),
('e1a2e9b7-d875-7703-28d4-5a7c8701ea6e', '2018-02-08 17:24:14', '2018-02-08 17:24:14', '1', '', 'delete', 'Emails', 'module', 90, 0),
('e1bef19b-5ae3-db17-410c-5a7c871c6ff8', '2018-02-08 17:24:14', '2018-02-08 17:24:14', '1', '', 'delete', 'AOD_IndexEvent', 'module', 90, 0),
('e273f879-22e5-ab97-35a6-5a7c879c9dac', '2018-02-08 17:24:14', '2018-02-08 17:24:14', '1', '', 'massupdate', 'Tasks', 'module', 90, 0),
('e292732e-3e00-f796-6d85-5a7c87713407', '2018-02-08 17:24:14', '2018-02-08 17:24:14', '1', '', 'delete', 'AOR_Scheduled_Reports', 'module', 90, 0),
('e327792d-b03b-cf2d-6f66-5ab902810be7', '2018-03-26 14:23:26', '2018-03-26 14:23:26', '1', '1', 'massupdate', 'atomi_Invoice_Commission_Report', 'module', 90, 0),
('e330a281-4968-7e3d-fc09-5a7c8777b131', '2018-02-08 17:24:14', '2018-02-08 17:24:14', '1', '', 'massupdate', 'Leads', 'module', 90, 0),
('e3b46486-c011-c358-0d7f-5a7c87b0f633', '2018-02-08 17:24:14', '2018-02-08 17:24:14', '1', '', 'access', 'Spots', 'module', 89, 0),
('e3f2a0d1-190d-81dd-5341-5a7c879ec3f0', '2018-02-08 17:24:14', '2018-02-08 17:24:14', '1', '', 'view', 'Bugs', 'module', 90, 0),
('e45c8f5c-4047-8df3-a11d-5a7c87041849', '2018-02-08 17:24:14', '2018-02-08 17:24:14', '1', '', 'access', 'EmailTemplates', 'module', 89, 0),
('e5a96972-def9-faa0-93e5-5a7c870b7102', '2018-02-08 17:24:14', '2018-02-08 17:24:14', '1', '', 'list', 'AOK_Knowledge_Base_Categories', 'module', 90, 0),
('e5ac4c57-994c-6395-a769-5a7c872c8933', '2018-02-08 17:24:14', '2018-02-08 17:24:14', '1', '', 'delete', 'Meetings', 'module', 90, 0),
('e5d12e3e-7fcf-12d1-11b7-5a7c87549cc3', '2018-02-08 17:24:14', '2018-02-08 17:24:14', '1', '', 'view', 'FP_events', 'module', 90, 0),
('e64eb971-ebf9-b4d2-8bf8-5a7c88e324b1', '2018-02-08 17:24:14', '2018-02-08 17:24:14', '1', '', 'list', 'OutboundEmailAccounts', 'module', 90, 0),
('e675233f-eceb-e935-9126-5a7c87e9687f', '2018-02-08 17:24:14', '2018-02-08 17:24:14', '1', '', 'import', 'Emails', 'module', 90, 0),
('e6f68c8c-e027-a613-ad45-5a7c8722c43c', '2018-02-08 17:24:14', '2018-02-08 17:24:14', '1', '', 'massupdate', 'Bugs', 'module', 90, 0),
('e70d1da3-b328-9293-59ba-5a9ff8ad95c1', '2018-03-07 14:35:16', '2018-03-07 14:35:16', '1', '1', 'delete', 'atomi_invoice_payment_details', 'module', 90, 0),
('e72a755c-0b40-7624-43ef-5a7c872c213f', '2018-02-08 17:24:14', '2018-02-08 17:24:14', '1', '', 'import', 'AOS_Invoices', 'module', 90, 0),
('e79e9f12-89f3-4509-9d6f-5a7c882671ae', '2018-02-08 17:24:14', '2018-02-08 17:24:14', '1', '', 'massupdate', 'jjwg_Markers', 'module', 90, 0),
('e7bcc11f-40c9-1bf5-9bca-5a7c8711daea', '2018-02-08 17:24:14', '2018-02-08 17:24:14', '1', '', 'import', 'Calls', 'module', 90, 0),
('e8a38f4a-e2a6-c4f6-05b5-5a7c881b1992', '2018-02-08 17:24:14', '2018-02-08 17:24:14', '1', '', 'edit', 'SecurityGroups', 'module', 90, 0),
('e8b67723-e3c9-2196-0344-5a7c877e85a5', '2018-02-08 17:24:14', '2018-02-08 17:24:14', '1', '', 'massupdate', 'Campaigns', 'module', 90, 0),
('e91a304b-60bb-f08d-8ee1-5a7c874fdbec', '2018-02-08 17:24:14', '2018-02-08 17:24:14', '1', '', 'delete', 'ProspectLists', 'module', 90, 0),
('e9c91482-036a-b1db-9c56-5a7c872178fa', '2018-02-08 17:24:14', '2018-02-08 17:24:14', '1', '', 'access', 'EAPM', 'module', 89, 0),
('ea121e18-c14b-2d8b-8169-5a7c870a1985', '2018-02-08 17:24:14', '2018-02-08 17:24:14', '1', '', 'import', 'AOD_IndexEvent', 'module', 90, 0),
('eabf1466-a49f-26cd-2b48-5a7c872cfe94', '2018-02-08 17:24:14', '2018-02-08 17:24:14', '1', '', 'list', 'AOK_KnowledgeBase', 'module', 90, 0),
('eafdb4df-13aa-afe9-b726-5a7c87edeb32', '2018-02-08 17:24:14', '2018-02-08 17:24:14', '1', '', 'view', 'EmailTemplates', 'module', 90, 0),
('eb8d9651-b764-8b69-1e4c-5a7c87f57062', '2018-02-08 17:24:14', '2018-02-08 17:24:14', '1', '', 'list', 'Bugs', 'module', 90, 0),
('eb92e6f0-1603-6fed-e5d0-5a7c8746346e', '2018-02-08 17:24:14', '2018-02-08 17:24:14', '1', '', 'import', 'Meetings', 'module', 90, 0),
('ebab7366-dd9c-807f-1d18-5a7c87dbbdc7', '2018-02-08 17:24:14', '2018-02-08 17:24:14', '1', '', 'view', 'AOS_Products', 'module', 90, 0),
('ebd00602-45ce-407b-4661-5a7c878bf5be', '2018-02-08 17:24:14', '2018-02-08 17:24:14', '1', '', 'export', 'Emails', 'module', 90, 0),
('ecc08265-a2e6-3c97-3678-5a7c87218a78', '2018-02-08 17:24:14', '2018-02-08 17:24:14', '1', '', 'view', 'Cases', 'module', 90, 0),
('ed00b246-9ddb-736d-38cc-5a7c87fac1e1', '2018-02-08 17:24:14', '2018-02-08 17:24:14', '1', '', 'edit', 'AOK_Knowledge_Base_Categories', 'module', 90, 0),
('ed020df1-d392-2243-b778-5a7c8702867b', '2018-02-08 17:24:14', '2018-02-08 17:24:14', '1', '', 'list', 'FP_events', 'module', 90, 0),
('ed9acb0c-7f14-a450-b323-5a7c88070cc6', '2018-02-08 17:24:14', '2018-02-08 17:24:14', '1', '', 'delete', 'SecurityGroups', 'module', 90, 0),
('edbcec32-ba1e-5783-7254-5a7c87e5ad27', '2018-02-08 17:24:14', '2018-02-08 17:24:14', '1', '', 'access', 'Accounts', 'module', 89, 0),
('edc09e63-39c6-3beb-b430-5a7c870ba997', '2018-02-08 17:24:14', '2018-02-08 17:24:14', '1', '', 'import', 'AOR_Scheduled_Reports', 'module', 90, 0),
('ee4d5029-0c05-d9e7-ad69-5a7c871e9c1d', '2018-02-08 17:24:14', '2018-02-08 17:24:14', '1', '', 'view', 'Spots', 'module', 90, 0),
('eec2b2da-a4b5-4e9e-3d2e-5a7c88e2be59', '2018-02-08 17:24:14', '2018-02-08 17:24:14', '1', '', 'list', 'TemplateSectionLine', 'module', 90, 0),
('ef540b36-f9c4-4652-ac20-5a7c87f04749', '2018-02-08 17:24:14', '2018-02-08 17:24:14', '1', '', 'list', 'Prospects', 'module', 90, 0),
('efdfef6a-1dfa-63e1-8dd9-5a7c871e8233', '2018-02-08 17:24:14', '2018-02-08 17:24:14', '1', '', 'export', 'Calls', 'module', 90, 0),
('f0506cac-8ac6-3cb9-23c1-5a7c872755d6', '2018-02-08 17:24:14', '2018-02-08 17:24:14', '1', '', 'export', 'AOS_Contracts', 'module', 90, 0),
('f07677fc-df72-6c77-72a8-5a7c876e45ab', '2018-02-08 17:24:14', '2018-02-08 17:24:14', '1', '', 'export', 'AOS_Invoices', 'module', 90, 0),
('f0afe7d9-2854-7ce6-3ddb-5a7c884e28a2', '2018-02-08 17:24:14', '2018-02-08 17:24:14', '1', '', 'import', 'Calls_Reschedule', 'module', 90, 0),
('f11beeb7-5d13-aec6-252f-5a7c87f59c45', '2018-02-08 17:24:14', '2018-02-08 17:24:14', '1', '', 'export', 'Meetings', 'module', 90, 0),
('f13f028b-813c-df21-da54-5a7c87512bbe', '2018-02-08 17:24:14', '2018-02-08 17:24:14', '1', '', 'view', 'Documents', 'module', 90, 0),
('f1502a00-8217-9c3d-3876-5a7c87929f05', '2018-02-08 17:24:14', '2018-02-08 17:24:14', '1', '', 'view', 'Prospects', 'module', 90, 0),
('f19d4ae7-8da8-f9e3-edd0-5a7c87484ca2', '2018-02-08 17:24:14', '2018-02-08 17:24:14', '1', '', 'edit', 'FP_events', 'module', 90, 0),
('f1d078de-6873-0cd1-3a99-5a7c879497a3', '2018-02-08 17:24:14', '2018-02-08 17:24:14', '1', '', 'edit', 'AOK_KnowledgeBase', 'module', 90, 0),
('f212f3bc-6165-5e22-e98d-5a7c872d95db', '2018-02-08 17:24:14', '2018-02-08 17:24:14', '1', '', 'export', 'AOD_IndexEvent', 'module', 90, 0),
('f265b754-be15-9e24-4801-5a7c87c45a6b', '2018-02-08 17:24:14', '2018-02-08 17:24:14', '1', '', 'massupdate', 'Emails', 'module', 90, 0),
('f2e40948-2a11-338b-c09d-5a7c87a8c794', '2018-02-08 17:24:14', '2018-02-08 17:24:14', '1', '', 'access', 'AOR_Reports', 'module', 89, 0),
('f2eb4b08-9c9f-c614-e236-5a7c87067d1f', '2018-02-08 17:24:14', '2018-02-08 17:24:14', '1', '', 'list', 'EmailTemplates', 'module', 90, 0),
('f315079c-4c41-c2ec-f4dc-5a7c87ab8f45', '2018-02-08 17:24:14', '2018-02-08 17:24:14', '1', '', 'edit', 'Cases', 'module', 90, 0),
('f31ab525-04f8-db41-65e7-5a7c87632323', '2018-02-08 17:24:14', '2018-02-08 17:24:14', '1', '', 'view', 'EAPM', 'module', 90, 0),
('f31ebcda-d50e-865f-9f5c-5a7c87a000a8', '2018-02-08 17:24:14', '2018-02-08 17:24:14', '1', '', 'delete', 'AOK_Knowledge_Base_Categories', 'module', 90, 0),
('f3a4ddff-2602-31ab-fdfe-5a7c88c4f76b', '2018-02-08 17:24:14', '2018-02-08 17:24:14', '1', '', 'import', 'SecurityGroups', 'module', 90, 0),
('f3e79672-4514-bf1c-a8ee-5a7c87eb3e9e', '2018-02-08 17:24:14', '2018-02-08 17:24:14', '1', '', 'access', 'Users', 'module', 89, 0),
('f7be00ba-26f7-1305-2380-5a7c877c97dd', '2018-02-08 17:24:14', '2018-02-08 17:24:14', '1', '', 'export', 'AOK_Knowledge_Base_Categories', 'module', 90, 0),
('fb610124-1b92-cd9a-15ca-5a7c8705f8c7', '2018-02-08 17:24:14', '2018-02-08 17:24:14', '1', '', 'export', 'ProspectLists', 'module', 90, 0),
('fdec038b-ecc2-e1e5-0a87-5a9ff8974066', '2018-03-07 14:35:16', '2018-03-07 14:35:16', '1', '1', 'export', 'atomi_invoice_payment_details', 'module', 90, 0);

-- --------------------------------------------------------

--
-- Table structure for table `acl_roles`
--

CREATE TABLE `acl_roles` (
  `id` char(36) NOT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `name` varchar(150) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `acl_roles`
--

INSERT INTO `acl_roles` (`id`, `date_entered`, `date_modified`, `modified_user_id`, `created_by`, `name`, `description`, `deleted`) VALUES
('3a1a72f5-d5ba-b5e7-ef69-5a9af3949ab6', '2018-03-03 19:12:23', '2018-03-03 19:12:23', '1', '1', 'Super Admin', 'Super Admin, All Modules Data Access', 0),
('f33b6a10-a642-275e-77b6-5a9af450670d', '2018-03-03 19:14:34', '2018-03-03 19:21:34', '1', '1', 'Account Mgr', 'Account Manager, With having limited access.', 0);

-- --------------------------------------------------------

--
-- Table structure for table `acl_roles_actions`
--

CREATE TABLE `acl_roles_actions` (
  `id` varchar(36) NOT NULL,
  `role_id` varchar(36) DEFAULT NULL,
  `action_id` varchar(36) DEFAULT NULL,
  `access_override` int(3) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `acl_roles_actions`
--

INSERT INTO `acl_roles_actions` (`id`, `role_id`, `action_id`, `access_override`, `date_modified`, `deleted`) VALUES
('109eaf9b-8b9c-6957-ad13-5a9af4b16d41', 'f33b6a10-a642-275e-77b6-5a9af450670d', 'f1d078de-6873-0cd1-3a99-5a7c879497a3', 0, '2018-03-03 20:11:10', 0),
('11c29a02-e2d2-4414-0d58-5a9af4e67ad4', 'f33b6a10-a642-275e-77b6-5a9af450670d', 'd1c2fab3-250c-4a22-b026-5a7c8749db95', 0, '2018-03-03 20:11:10', 0),
('12b2000e-9cc8-8b91-e03b-5a9af443d6cf', 'f33b6a10-a642-275e-77b6-5a9af450670d', 'c8c9b28b-01a5-8ed0-808a-5a7c87b2c056', 0, '2018-03-03 20:11:10', 0),
('12bfb4c9-0d34-b825-d2aa-5a9af44365f7', 'f33b6a10-a642-275e-77b6-5a9af450670d', 'db798d69-8b65-658f-5f7b-5a7c88d71ac0', 0, '2018-03-03 20:11:10', 0),
('134002b2-6365-2029-9a4c-5a9af47b23dd', 'f33b6a10-a642-275e-77b6-5a9af450670d', '9c138b00-6d8a-b70b-f583-5a7c874883a7', 0, '2018-03-03 20:11:10', 0),
('13d5b2d0-9e4b-3edd-d851-5a9af4edce60', 'f33b6a10-a642-275e-77b6-5a9af450670d', '42c6d20f-8d68-5796-5013-5a7c87db1979', 0, '2018-03-03 20:11:10', 0),
('14307a8f-2db4-d954-3576-5a9af4e44a74', 'f33b6a10-a642-275e-77b6-5a9af450670d', 'e1bef19b-5ae3-db17-410c-5a7c871c6ff8', 0, '2018-03-03 20:11:10', 0),
('14a896be-f6ed-8cb8-06d4-5a9af42acd65', 'f33b6a10-a642-275e-77b6-5a9af450670d', 'dd3d0033-f9e5-6584-0dc8-5a7c87ea0f7b', 0, '2018-03-03 20:11:10', 0),
('15ecc5dd-b4b9-ecca-9a3a-5a9af4bb5b76', 'f33b6a10-a642-275e-77b6-5a9af450670d', 'b3cbfc1f-172b-f145-96eb-5a7c8791c73e', 0, '2018-03-03 20:11:10', 0),
('165e617d-b20d-8416-3365-5a9af40ebe45', 'f33b6a10-a642-275e-77b6-5a9af450670d', '6ba8456f-5914-9356-066a-5a7c87d88d16', 0, '2018-03-03 20:11:10', 0),
('169b572c-802d-b2be-2cf5-5a9af4bf04d5', 'f33b6a10-a642-275e-77b6-5a9af450670d', '1524a9f3-428c-c62b-7469-5a7c874f3233', 0, '2018-03-03 20:11:10', 0),
('16fb0ed4-4e5e-47c2-2a68-5a9af437a9fb', 'f33b6a10-a642-275e-77b6-5a9af450670d', '938046da-5e36-eacb-fc10-5a7c912e04c5', 0, '2018-03-03 20:11:10', 0),
('1767c076-2b29-bfb3-6b49-5a9af4e7c13d', 'f33b6a10-a642-275e-77b6-5a9af450670d', 'c2a70903-196a-260e-e2df-5a7c87f02579', 0, '2018-03-03 20:11:10', 0),
('17e3835c-9dd3-eb1b-a089-5a9af44c17eb', 'f33b6a10-a642-275e-77b6-5a9af450670d', 'dde8253e-254c-f8a1-1a7f-5a7c874f6df0', 0, '2018-03-03 20:11:10', 0),
('18351750-f8ea-0fb3-c784-5a9af4c61336', 'f33b6a10-a642-275e-77b6-5a9af450670d', '254a2f1c-0125-7f76-06e0-5a7c88607018', 0, '2018-03-03 20:11:10', 0),
('188fb40a-1916-edd9-3f35-5a9af429fe52', 'f33b6a10-a642-275e-77b6-5a9af450670d', '19d4bc4c-ff90-d3b9-779a-5a7c87f15fef', 0, '2018-03-03 20:11:10', 0),
('18f2b818-3949-6f7b-232b-5a9af4ecde5a', 'f33b6a10-a642-275e-77b6-5a9af450670d', 'cfda369c-b088-9de1-963b-5a7c8774f219', 0, '2018-03-03 20:11:10', 0),
('1a115b7c-dc3c-e2ee-a0f1-5a9af4481db0', 'f33b6a10-a642-275e-77b6-5a9af450670d', '90d5d91e-3ee1-67cd-7d33-5a7c875617c1', 0, '2018-03-03 20:11:10', 0),
('1d8861b6-4eb0-83e8-4d4d-5a9af411ec01', 'f33b6a10-a642-275e-77b6-5a9af450670d', '3a15b461-3af3-de79-b3c2-5a7c87129996', 0, '2018-03-03 20:11:10', 0),
('1db7b882-20a2-c25a-977c-5a9af49d86b2', 'f33b6a10-a642-275e-77b6-5a9af450670d', '682f677b-27ae-245f-e66d-5a7c9109a2db', 0, '2018-03-03 20:11:10', 0),
('1ee7623d-2425-5d2c-31c8-5a9af4e91a48', 'f33b6a10-a642-275e-77b6-5a9af450670d', 'cb250386-17f1-91a1-ec21-5a7c877b28db', 0, '2018-03-03 20:11:10', 0),
('1f007c06-6afa-d144-17b3-5a9af4390c40', 'f33b6a10-a642-275e-77b6-5a9af450670d', 'f212f3bc-6165-5e22-e98d-5a7c872d95db', 0, '2018-03-03 20:11:10', 0),
('1f54f983-d89b-0008-6e19-5a9af4cc9afb', 'f33b6a10-a642-275e-77b6-5a9af450670d', '13ec3e79-aa9b-65be-f34a-5a7c875d468e', 0, '2018-03-03 20:11:10', 0),
('1f8a1daf-7622-8d5c-fe1f-5a9af4f9f164', 'f33b6a10-a642-275e-77b6-5a9af450670d', 'b01c0df5-9eee-3071-a4cf-5a7c8730083c', 0, '2018-03-03 20:11:10', 0),
('1fc0b73b-955d-9e03-adc1-5a9af4da7083', 'f33b6a10-a642-275e-77b6-5a9af450670d', '84c66c0d-3c07-572c-c19d-5a7c879680f0', 0, '2018-03-03 20:11:10', 0),
('2067d6e3-9483-eed2-a612-5a9af425e8f5', 'f33b6a10-a642-275e-77b6-5a9af450670d', 'f2e40948-2a11-338b-c09d-5a7c87a8c794', 0, '2018-03-03 20:11:10', 0),
('212920b4-ed3b-1079-323c-5a9af47efa94', 'f33b6a10-a642-275e-77b6-5a9af450670d', 'd7c39482-f2e4-8853-e0e3-5a7c8824ab8a', 0, '2018-03-03 20:11:10', 0),
('222d358f-1007-9c87-1f21-5a9af4f4efd2', 'f33b6a10-a642-275e-77b6-5a9af450670d', '3413d9d6-b778-8287-a1e1-5a7c8798b81f', 0, '2018-03-03 20:11:10', 0),
('22845842-8291-268d-0659-5a9af4d20572', 'f33b6a10-a642-275e-77b6-5a9af450670d', '9b70040c-a922-77b9-3b57-5a7c87915474', 0, '2018-03-03 20:11:10', 0),
('22a407e8-404a-81e3-8ba1-5a9af4e4c676', 'f33b6a10-a642-275e-77b6-5a9af450670d', '4b5a3f1d-2762-4a63-d824-5a7c874cfca5', 0, '2018-03-03 20:11:10', 0),
('2374c192-9824-cc2c-5fe6-5a9af414c903', 'f33b6a10-a642-275e-77b6-5a9af450670d', 'eabf1466-a49f-26cd-2b48-5a7c872cfe94', 0, '2018-03-03 20:11:10', 0),
('23c7d2e5-fc10-304e-d980-5a9af4d3409f', 'f33b6a10-a642-275e-77b6-5a9af450670d', 'ea121e18-c14b-2d8b-8169-5a7c870a1985', 0, '2018-03-03 20:11:10', 0),
('24abfe1b-7f6e-e063-b377-5a9af406ff77', 'f33b6a10-a642-275e-77b6-5a9af450670d', '67d5d7be-b61d-3118-7d97-5a7c87e8da93', 0, '2018-03-03 20:11:10', 0),
('261d76b5-e16c-6abb-84c5-5a9af4a5bbb2', 'f33b6a10-a642-275e-77b6-5a9af450670d', '2460b6ba-8df3-f3cc-2205-5a7c871d98a6', 0, '2018-03-03 20:11:10', 0),
('264f0556-df30-b6f8-88a6-5a9af46ecf0c', 'f33b6a10-a642-275e-77b6-5a9af450670d', '4267066e-1034-b3c0-23a0-5a7c874f1105', 0, '2018-03-03 20:11:10', 0),
('27becb48-2c5d-ed2d-357b-5a9af422b3a5', 'f33b6a10-a642-275e-77b6-5a9af450670d', 'e3b46486-c011-c358-0d7f-5a7c87b0f633', 0, '2018-03-03 20:11:10', 0),
('27e27a4a-acfc-7e8e-ca8c-5a9af4b492f3', 'f33b6a10-a642-275e-77b6-5a9af450670d', '80694aef-eceb-73af-9931-5a7c87be1dad', 0, '2018-03-03 20:11:10', 0),
('282ba760-768c-1363-6ea9-5a9af4004a06', 'f33b6a10-a642-275e-77b6-5a9af450670d', 'd6b86f4a-3b98-f762-effe-5a7c878c864d', 0, '2018-03-03 20:11:10', 0),
('282f7547-7643-0e23-8bd3-5a9af47fd54e', 'f33b6a10-a642-275e-77b6-5a9af450670d', 'b577acf5-fbd3-d2e7-4c6b-5a7c888a762b', 0, '2018-03-03 20:11:10', 0),
('28493025-f465-b02c-85e6-5a9af4cbd5e2', 'f33b6a10-a642-275e-77b6-5a9af450670d', '442cb4e8-46da-6049-d7a1-5a7c87b85fca', 0, '2018-03-03 20:11:10', 0),
('296c6765-87c0-da6b-fb4e-5a9af4248b27', 'f33b6a10-a642-275e-77b6-5a9af450670d', '2d745a2e-6c95-0ea7-9081-5a7c8744e6b3', 0, '2018-03-03 20:11:10', 0),
('298bf3ab-dc05-ccc3-fb43-5a9af4469328', 'f33b6a10-a642-275e-77b6-5a9af450670d', '1d0c86d7-f228-b9da-fce1-5a7c873e4eb4', 0, '2018-03-03 20:11:10', 0),
('2b7ff866-53c6-7c3d-d39f-5a9af4fe125f', 'f33b6a10-a642-275e-77b6-5a9af450670d', '84188245-b749-9ee6-796a-5a7c87cc0b1b', 0, '2018-03-03 20:11:10', 0),
('2c8b9bf5-c456-4a6c-5bbb-5a9af40c8cbe', 'f33b6a10-a642-275e-77b6-5a9af450670d', 'b88f0144-a4c3-0dd2-7bbe-5a7c876061b5', 0, '2018-03-03 20:11:10', 0),
('2cce5e0d-bd8d-ecbb-86aa-5a9af42fab90', 'f33b6a10-a642-275e-77b6-5a9af450670d', '39808814-9d6d-a016-012a-5a7c87596933', 0, '2018-03-03 20:11:10', 0),
('2cea084c-31cb-5c26-aa00-5a9af4a43871', 'f33b6a10-a642-275e-77b6-5a9af450670d', '1eb277d1-99ce-6f8d-8f62-5a7c87139a2a', 0, '2018-03-03 20:11:10', 0),
('2d0afbee-bb78-69ba-f8ea-5a9af46ec640', 'f33b6a10-a642-275e-77b6-5a9af450670d', '4349acca-67f0-0679-04de-5a7c88809c87', 0, '2018-03-03 20:11:10', 0),
('2d1542ef-be3f-0999-7cc9-5a9af4bdc7ae', 'f33b6a10-a642-275e-77b6-5a9af450670d', '3f0f34c5-dd6c-3518-9b96-5a7c878e02f4', 0, '2018-03-03 20:11:10', 0),
('2d5614f9-e384-bc76-d2b4-5a9af4393ec3', 'f33b6a10-a642-275e-77b6-5a9af450670d', '5a2c17c1-b8ee-8c70-3fe2-5a7c874ceca0', 0, '2018-03-03 20:11:10', 0),
('2d7c0a17-71db-55d1-7dd0-5a9af4b44548', 'f33b6a10-a642-275e-77b6-5a9af450670d', '68d179e8-657f-3cb7-a31f-5a7c87cd45cd', 0, '2018-03-03 20:11:10', 0),
('2d94a628-6558-96d4-5e11-5a9af43365d9', 'f33b6a10-a642-275e-77b6-5a9af450670d', '1c98b9ff-5afc-dbc7-f4a9-5a7c88040237', 0, '2018-03-03 20:11:10', 0),
('2db20d01-3d3a-3579-fd3e-5a9af4a3a02d', 'f33b6a10-a642-275e-77b6-5a9af450670d', '2c656683-c41d-477a-9740-5a7c87033b99', 0, '2018-03-03 20:11:10', 0),
('2e190598-4139-edf8-aac0-5a9af424ba22', 'f33b6a10-a642-275e-77b6-5a9af450670d', 'dec69123-5608-9024-38be-5a7c87bae8ab', 0, '2018-03-03 20:11:10', 0),
('2eaab024-6d1f-44a0-9ec7-5a9af46c4af0', 'f33b6a10-a642-275e-77b6-5a9af450670d', '121c016b-d5df-7670-2c88-5a7c87388a4b', 0, '2018-03-03 20:11:10', 0),
('3181fafb-0497-854a-c44e-5a9af45ef1fc', 'f33b6a10-a642-275e-77b6-5a9af450670d', '279ff2e0-f3d1-db59-beec-5a7c872290b5', 0, '2018-03-03 20:11:10', 0),
('31c5e7a8-9bb5-c804-ba83-5a9af45077f7', 'f33b6a10-a642-275e-77b6-5a9af450670d', '7b8a86cc-2126-6006-7857-5a7c875fb50e', 0, '2018-03-03 20:11:10', 0),
('32302ba2-c4c6-4538-5a79-5a9af4b20ea4', 'f33b6a10-a642-275e-77b6-5a9af450670d', 'e45c8f5c-4047-8df3-a11d-5a7c87041849', 0, '2018-03-03 20:11:10', 0),
('32c27776-ac1a-50f9-4748-5a9af4a893f1', 'f33b6a10-a642-275e-77b6-5a9af450670d', 'a998927d-50e7-a811-8ff1-5a7c87b65e32', 0, '2018-03-03 20:11:10', 0),
('3331fa0f-1cc5-8e7c-9bb9-5a9af4dd4437', 'f33b6a10-a642-275e-77b6-5a9af450670d', '2ed8321f-8ddd-c6ed-6d5d-5a7c87e8a9bc', 0, '2018-03-03 20:11:10', 0),
('336935f4-cbbd-4beb-e240-5a9af4eee2c2', 'f33b6a10-a642-275e-77b6-5a9af450670d', 'f0afe7d9-2854-7ce6-3ddb-5a7c884e28a2', 0, '2018-03-03 20:11:10', 0),
('33a0fc3d-a71e-502d-1baf-5a9af49861ba', 'f33b6a10-a642-275e-77b6-5a9af450670d', 'ef540b36-f9c4-4652-ac20-5a7c87f04749', 0, '2018-03-03 20:11:10', 0),
('344d32cb-b590-d912-1bbb-5a9af4568479', 'f33b6a10-a642-275e-77b6-5a9af450670d', '4e1160c2-4c9b-6dec-30de-5a7c87776353', 0, '2018-03-03 20:11:10', 0),
('34be67cf-0037-77ba-9273-5a9af4f8681c', 'f33b6a10-a642-275e-77b6-5a9af450670d', '58db6e43-1e0b-1d23-b144-5a7c880aeedb', 0, '2018-03-03 20:11:10', 0),
('34c5763f-febb-a05e-b274-5a9af457906e', 'f33b6a10-a642-275e-77b6-5a9af450670d', 'access', 0, '2018-03-03 20:11:10', 0),
('3560e4a1-7eac-4542-be9b-5a9af40a30ee', 'f33b6a10-a642-275e-77b6-5a9af450670d', '4bdf053c-b645-83e5-cc14-5a7c87093a47', 0, '2018-03-03 20:11:10', 0),
('35a30197-8877-67f2-9f4d-5a9af42e7056', 'f33b6a10-a642-275e-77b6-5a9af450670d', '13bcc5ae-87d3-7424-9a8b-5a7c8714363c', 0, '2018-03-03 20:11:10', 0),
('370958df-0190-8dd0-6612-5a9af48977b0', 'f33b6a10-a642-275e-77b6-5a9af450670d', '127e4528-a596-1aea-e1d5-5a7c87b6a8d4', 0, '2018-03-03 20:11:10', 0),
('370ed68a-a1a1-6955-b4f4-5a9af4a7a9b4', 'f33b6a10-a642-275e-77b6-5a9af450670d', '1d837d74-6f23-48bd-d8d4-5a7c87fe44b3', 0, '2018-03-03 20:11:10', 0),
('37df7dd8-dc79-ee38-7bd8-5a9af47466ab', 'f33b6a10-a642-275e-77b6-5a9af450670d', '49527a1e-5280-2cd2-b8ce-5a7c874e141f', 0, '2018-03-03 20:11:10', 0),
('38334b50-afec-9cd0-8163-5a9af454aee3', 'f33b6a10-a642-275e-77b6-5a9af450670d', '5571f40a-c472-1291-3268-5a7c878699bf', 0, '2018-03-03 20:11:10', 0),
('3839a7a0-c048-9da2-70e9-5a9af4d6d587', 'f33b6a10-a642-275e-77b6-5a9af450670d', '9d2d67d1-559e-8513-cbf5-5a7c881cd755', 0, '2018-03-03 20:11:10', 0),
('39070111-5cd2-277f-6ac1-5a9af400c003', 'f33b6a10-a642-275e-77b6-5a9af450670d', 'c2d97833-914f-f7b0-aa96-5a7c87aeeee1', 0, '2018-03-03 20:11:10', 0),
('3a2e8fa6-24a0-a950-33c3-5a9af400fa5a', 'f33b6a10-a642-275e-77b6-5a9af450670d', '3a7e1bdf-85b4-a725-1b02-5a7c8801825a', 0, '2018-03-03 20:11:10', 0),
('3ad98992-2ee2-eacd-364c-5a9af45a532d', 'f33b6a10-a642-275e-77b6-5a9af450670d', '5f66b142-4dcb-f25d-9322-5a7c87e69664', 0, '2018-03-03 20:11:10', 0),
('3b825a19-fdda-7d21-496b-5a9af47216a6', 'f33b6a10-a642-275e-77b6-5a9af450670d', '8cf2b0d4-13d4-49fd-c998-5a7c88fa6fd8', 0, '2018-03-03 20:11:10', 0),
('3c0feef3-1881-5362-c263-5a9af4290edb', 'f33b6a10-a642-275e-77b6-5a9af450670d', '81e8b692-182b-7433-f19a-5a7c87f022f4', 0, '2018-03-03 20:11:10', 0),
('3c5715be-6a0f-79b4-77a2-5a9af476863e', 'f33b6a10-a642-275e-77b6-5a9af450670d', '32787c79-1617-6ef6-3a54-5a7c87616732', 0, '2018-03-03 20:11:10', 0),
('3ce3e74c-d769-cb46-ccd0-5a9af40dcac7', 'f33b6a10-a642-275e-77b6-5a9af450670d', '2f2f629d-8fa4-b3da-9597-5a7c87e6cedf', 0, '2018-03-03 20:11:10', 0),
('3d1a5dad-f1e4-d2a4-7772-5a9af4bffff1', 'f33b6a10-a642-275e-77b6-5a9af450670d', '6e320d8e-ebd3-1c52-452b-5a7c87e0812c', 0, '2018-03-03 20:11:10', 0),
('3d1f2a78-ccfe-8dfa-6401-5a9af448b5a2', 'f33b6a10-a642-275e-77b6-5a9af450670d', '2a0671cc-51ce-a7b6-eb85-5a7c87d25772', 0, '2018-03-03 20:11:10', 0),
('3dd91142-b74b-eab5-7cdc-5a9af497d5c7', 'f33b6a10-a642-275e-77b6-5a9af450670d', '289b0a71-f5d6-9f29-484f-5a7c8806e2c7', 0, '2018-03-03 20:11:10', 0),
('3f20751b-c8eb-6731-c069-5a9af4ceac0d', 'f33b6a10-a642-275e-77b6-5a9af450670d', 'b9db7939-5481-c051-d428-5a7c87b277c4', 0, '2018-03-03 20:11:10', 0),
('3f436419-ac86-057e-5ecb-5a9af43db77b', 'f33b6a10-a642-275e-77b6-5a9af450670d', 'delete', 0, '2018-03-03 20:11:10', 0),
('3ffb03a2-3c14-874d-6b7d-5a9af4fcab82', 'f33b6a10-a642-275e-77b6-5a9af450670d', '25f56ab5-137c-1de2-9877-5a7c87989fb9', 0, '2018-03-03 20:11:10', 0),
('401b4299-39b3-ab0b-391e-5a9af4c5445b', 'f33b6a10-a642-275e-77b6-5a9af450670d', '9d634bea-a98d-5dc7-edc5-5a7c887a3d5e', 0, '2018-03-03 20:11:10', 0),
('40782f02-878d-7ea7-d6e2-5a9af402c936', 'f33b6a10-a642-275e-77b6-5a9af450670d', '5381709e-0bca-410b-8817-5a7c88980448', 0, '2018-03-03 20:11:10', 0),
('40c18aba-3606-86af-94db-5a9af45fd7cd', 'f33b6a10-a642-275e-77b6-5a9af450670d', '271d743a-bdc5-3a54-bb76-5a7c876c3619', 0, '2018-03-03 20:11:10', 0),
('417cf2aa-e30e-c38f-95c1-5a9af45bd378', 'f33b6a10-a642-275e-77b6-5a9af450670d', '6277049d-0ae8-c154-9a7c-5a7c875c5215', 0, '2018-03-03 20:11:10', 0),
('41dfe378-eb48-053b-9472-5a9af4398596', 'f33b6a10-a642-275e-77b6-5a9af450670d', '36ed07ee-132b-976a-18c4-5a7c8747203c', 0, '2018-03-03 20:11:10', 0),
('423b26be-15d4-faee-22fd-5a9af4a5a000', 'f33b6a10-a642-275e-77b6-5a9af450670d', '8e9b00dc-20fe-a623-a20f-5a7c8799e833', 0, '2018-03-03 20:11:10', 0),
('42460dd1-5a02-6f56-6f73-5a9af4087aba', 'f33b6a10-a642-275e-77b6-5a9af450670d', '7fd93bbe-9f14-2fee-e8b5-5a7c884ccefb', 0, '2018-03-03 20:11:10', 0),
('43c4315d-9017-a7e6-48f7-5a9af47f5b2c', 'f33b6a10-a642-275e-77b6-5a9af450670d', 'd29e5e53-9909-1820-65c5-5a7c87507146', 0, '2018-03-03 20:11:10', 0),
('43c94bed-11f8-bef4-b46e-5a9af4df8404', 'f33b6a10-a642-275e-77b6-5a9af450670d', '84eaa1a2-baff-9685-962c-5a7c88a60371', 0, '2018-03-03 20:11:10', 0),
('43e9ab21-0e00-f71d-8833-5a9af4440ba1', 'f33b6a10-a642-275e-77b6-5a9af450670d', 'f1502a00-8217-9c3d-3876-5a7c87929f05', 0, '2018-03-03 20:11:10', 0),
('44a8c401-e1d8-f213-5d8b-5a9af46b6d6e', 'f33b6a10-a642-275e-77b6-5a9af450670d', 'edit', 0, '2018-03-03 20:11:10', 0),
('4505b5fe-cc80-b9c4-bac4-5a9af4daf249', 'f33b6a10-a642-275e-77b6-5a9af450670d', '4d796614-7604-f242-9ede-5a7c886a1c7a', 0, '2018-03-03 20:11:10', 0),
('453c0bf1-100a-6e9b-a3c1-5a9af47d45db', 'f33b6a10-a642-275e-77b6-5a9af450670d', '1fc29651-d997-c47b-4000-5a7c87203da5', 0, '2018-03-03 20:11:10', 0),
('45d00f2f-a726-d4f4-f385-5a9af4f4e00a', 'f33b6a10-a642-275e-77b6-5a9af450670d', 'c8ff8b24-4c2e-49c3-8b81-5a7c87fb2ace', 0, '2018-03-03 20:11:10', 0),
('47e6a82d-0bc0-8e19-b7fc-5a9af4c8fe4c', 'f33b6a10-a642-275e-77b6-5a9af450670d', '264392b1-cbdd-fd65-f687-5a7c87eb4d4e', 0, '2018-03-03 20:11:10', 0),
('485647e7-24c6-3d30-2323-5a9af4afedf2', 'f33b6a10-a642-275e-77b6-5a9af450670d', '6b347041-b625-a46e-35c3-5a7c87238cc5', 0, '2018-03-03 20:11:10', 0),
('4894cc71-6926-1ed4-4732-5a9af4a85a05', 'f33b6a10-a642-275e-77b6-5a9af450670d', 'ce7811a3-09c3-4eac-dcd1-5a7c88061e53', 0, '2018-03-03 20:11:10', 0),
('48f93bef-1fab-ed62-b863-5a9af4ccebdf', 'f33b6a10-a642-275e-77b6-5a9af450670d', 'a8b1ecbf-2f5a-690a-d098-5a7c8813fbd7', 0, '2018-03-03 20:11:10', 0),
('4ab4a1cf-82e8-81a0-4f58-5a9af4c0b76c', 'f33b6a10-a642-275e-77b6-5a9af450670d', '96d7bdf1-2d82-901a-0674-5a7c8742f099', 0, '2018-03-03 20:11:10', 0),
('4b04dbac-2a13-7bd7-2654-5a9af40be128', 'f33b6a10-a642-275e-77b6-5a9af450670d', '34442b82-604a-7c08-bf12-5a7c87d00024', -99, '2018-03-03 20:11:10', 0),
('4b1d80eb-b054-6099-835b-5a9af4da7a68', 'f33b6a10-a642-275e-77b6-5a9af450670d', '8cd0e196-9c85-1a09-fb97-5a7c877f806f', 0, '2018-03-03 20:11:10', 0),
('4b447b95-cbb7-fbc9-62b2-5a9af45248e3', 'f33b6a10-a642-275e-77b6-5a9af450670d', '5e373ad8-4948-b1c4-6961-5a7c88d2ca1b', 0, '2018-03-03 20:11:10', 0),
('4cb5131a-54af-5fa9-53ab-5a9af4b0d64e', 'f33b6a10-a642-275e-77b6-5a9af450670d', 'cc6b1b92-3679-866c-b599-5a7c87296d04', 0, '2018-03-03 20:11:10', 0),
('4ccb93ed-dab3-255b-4b13-5a9af4db6372', 'f33b6a10-a642-275e-77b6-5a9af450670d', 'f2eb4b08-9c9f-c614-e236-5a7c87067d1f', 0, '2018-03-03 20:11:10', 0),
('4d792924-379e-cf08-ef14-5a9af41df313', 'f33b6a10-a642-275e-77b6-5a9af450670d', 'dfa47206-8963-eec4-d313-5a7c888e8a06', 0, '2018-03-03 20:11:10', 0),
('4e91c674-68d9-339f-c7a8-5a9af40350cc', 'f33b6a10-a642-275e-77b6-5a9af450670d', 'add32553-16d4-f763-202a-5a7c88697314', 0, '2018-03-03 20:11:10', 0),
('4f9dc652-fa09-c7ed-5992-5a9af4c76fe1', 'f33b6a10-a642-275e-77b6-5a9af450670d', '80c20770-d0aa-ade2-231c-5a7c872a7bd9', -99, '2018-03-03 20:11:10', 0),
('4fcfdd5a-3e7b-756b-632c-5a9af400e6e7', 'f33b6a10-a642-275e-77b6-5a9af450670d', '9dc17434-c5ca-92eb-0578-5a7c88a1afb3', 0, '2018-03-03 20:11:10', 0),
('50dc3596-69b5-78a0-f9c9-5a9af49ef96c', 'f33b6a10-a642-275e-77b6-5a9af450670d', 'ad81617a-5b43-cf73-6bad-5a7c873e7453', 0, '2018-03-03 20:11:10', 0),
('51538c21-bdba-9ec9-6fa7-5a9af486066f', 'f33b6a10-a642-275e-77b6-5a9af450670d', '231b7a71-845e-b8b6-b5f7-5a7c87e79ebb', 0, '2018-03-03 20:11:10', 0),
('515599ae-4553-23d8-b9e1-5a9af4339515', 'f33b6a10-a642-275e-77b6-5a9af450670d', 'aa3f96f2-fb1b-785f-0f76-5a7c873160ec', 0, '2018-03-03 20:11:10', 0),
('516b270b-0e20-c2a1-fa4d-5a9af4447904', 'f33b6a10-a642-275e-77b6-5a9af450670d', 'b8b7475d-9328-8dbb-7165-5a7c87ace94a', 0, '2018-03-03 20:11:10', 0),
('51780ddc-fed4-c25c-8582-5a9af4367b48', 'f33b6a10-a642-275e-77b6-5a9af450670d', 'd1e21186-4ade-3a7c-0a8c-5a7c875b8d25', 0, '2018-03-03 20:11:10', 0),
('51c7e0df-aeed-b586-b343-5a9af48ad074', 'f33b6a10-a642-275e-77b6-5a9af450670d', '9d490b9d-331c-30ed-a148-5a7c87257dae', 0, '2018-03-03 20:11:10', 0),
('52cfb3f7-eff5-dbb7-b15a-5a9af41226a0', 'f33b6a10-a642-275e-77b6-5a9af450670d', '3c356039-cb4f-04a4-d35d-5a7c87eaa9d9', 0, '2018-03-03 20:11:10', 0),
('534563b2-6201-726e-c840-5a9af4552d58', 'f33b6a10-a642-275e-77b6-5a9af450670d', '9466f328-c4a3-57a0-ca21-5a7c88d49001', 0, '2018-03-03 20:11:10', 0),
('5378a5b6-6b9b-41fd-3504-5a9af4100085', 'f33b6a10-a642-275e-77b6-5a9af450670d', '582e6331-7020-84e2-fcb9-5a7c88c9ba5b', 0, '2018-03-03 20:11:10', 0),
('55e5afea-68a4-4b74-fc3d-5a9af4910623', 'f33b6a10-a642-275e-77b6-5a9af450670d', 'a29831ce-ec01-2cab-9c7b-5a7c872468ad', 0, '2018-03-03 20:11:10', 0),
('5692a517-8ecb-ee9b-0563-5a9af4b25d1b', 'f33b6a10-a642-275e-77b6-5a9af450670d', '643054f4-09e8-400f-79e4-5a7c88119c0f', 0, '2018-03-03 20:11:10', 0),
('5745a943-615f-a8ef-b023-5a9af4284f08', 'f33b6a10-a642-275e-77b6-5a9af450670d', '1cdbfd8d-ec54-d119-7963-5a7c87132685', 0, '2018-03-03 20:11:10', 0),
('577b199d-2e8d-9ec3-042b-5a9af4fa33e3', 'f33b6a10-a642-275e-77b6-5a9af450670d', 'e330a281-4968-7e3d-fc09-5a7c8777b131', 0, '2018-03-03 20:11:10', 0),
('57e92745-2c17-fd36-bd6e-5a9af4b081ad', 'f33b6a10-a642-275e-77b6-5a9af450670d', '87e3baa2-a6f6-631c-1319-5a7c87221204', 0, '2018-03-03 20:11:10', 0),
('58234d0b-96c8-e2cd-46e7-5a9af4a3bee4', 'f33b6a10-a642-275e-77b6-5a9af450670d', '487fe5a7-b475-bc34-ff83-5a7c88ac3394', 0, '2018-03-03 20:11:10', 0),
('583f6d3a-6f49-2e03-a088-5a9af4b746fa', 'f33b6a10-a642-275e-77b6-5a9af450670d', 'b0b8aba1-e82e-577d-58f7-5a7c875df315', 0, '2018-03-03 20:11:10', 0),
('586181b0-85df-1af3-7215-5a9af44fbd90', 'f33b6a10-a642-275e-77b6-5a9af450670d', '8c935996-bdbd-e0fc-f20d-5a7c87d09a26', 0, '2018-03-03 20:11:10', 0),
('59761906-ebc1-f051-1b75-5a9af4123efc', 'f33b6a10-a642-275e-77b6-5a9af450670d', 'e79e9f12-89f3-4509-9d6f-5a7c882671ae', 0, '2018-03-03 20:11:10', 0),
('5adf84d1-619d-eb78-8520-5a9af485d64d', 'f33b6a10-a642-275e-77b6-5a9af450670d', 'export', 0, '2018-03-03 20:11:10', 0),
('5aeb57cb-78c6-4fe8-01db-5a9af478038e', 'f33b6a10-a642-275e-77b6-5a9af450670d', 'eafdb4df-13aa-afe9-b726-5a7c87edeb32', 0, '2018-03-03 20:11:10', 0),
('5afb5ed6-5aee-6973-c94f-5a9af4d19adf', 'f33b6a10-a642-275e-77b6-5a9af450670d', '2711a07a-49c8-27d8-2075-5a7c8716ece8', 0, '2018-03-03 20:11:10', 0),
('5b1730a0-66fb-0b0a-a8f9-5a9af4b8ffb7', 'f33b6a10-a642-275e-77b6-5a9af450670d', '5e867219-ec5f-507d-5827-5a7c873afd6f', 0, '2018-03-03 20:11:10', 0),
('5ba402b7-93a2-c073-9785-5a9af4b31eec', 'f33b6a10-a642-275e-77b6-5a9af450670d', 'c637f0ae-7c2c-ba17-b965-5a7c871e8874', 0, '2018-03-03 20:11:10', 0),
('5c372414-b344-cce9-1964-5a9af4098f72', 'f33b6a10-a642-275e-77b6-5a9af450670d', '92586ec6-ae8d-138b-4a6e-5a7c8769f8e6', 0, '2018-03-03 20:11:10', 0),
('5c8d42ea-d74a-cf61-0648-5a9af4a5c81c', 'f33b6a10-a642-275e-77b6-5a9af450670d', 'd3d59019-8751-8289-b83a-5a7c87423dd1', 0, '2018-03-03 20:11:10', 0),
('5d021f63-3746-a905-b8ed-5a9af4f50662', 'f33b6a10-a642-275e-77b6-5a9af450670d', 'e10d2832-5200-9455-2fea-5a7c87849a40', 0, '2018-03-03 20:11:10', 0),
('5e12bc9e-bac1-74b2-21ff-5a9af45e529e', 'f33b6a10-a642-275e-77b6-5a9af450670d', '4d8cafb3-c697-f427-b9f8-5a7c87c0856a', 0, '2018-03-03 20:11:10', 0),
('5e1ccdec-a9d2-705e-fe27-5a9af478d415', 'f33b6a10-a642-275e-77b6-5a9af450670d', '8db33728-1e09-34ba-8f97-5a7c88559ec5', 0, '2018-03-03 20:11:10', 0),
('5e38f4e3-28a4-4d7d-39f1-5a9af48b8ddb', 'f33b6a10-a642-275e-77b6-5a9af450670d', '63641f1e-a00c-4b03-bf4b-5a7c88e85e6b', 0, '2018-03-03 20:11:10', 0),
('5f1d01f0-21a8-069a-5ef3-5a9af4b73fa3', 'f33b6a10-a642-275e-77b6-5a9af450670d', 'a4eccf03-a4a5-619b-2dfa-5a7c88428a1a', 0, '2018-03-03 20:11:10', 0),
('5fd8a370-62b7-5617-fedd-5a9af4174857', 'f33b6a10-a642-275e-77b6-5a9af450670d', '4ab7b460-aca1-e9e0-8c0d-5a7c8796b932', -99, '2018-03-03 20:11:10', 0),
('5fe9bb10-965f-165d-f030-5a9af4b5e57c', 'f33b6a10-a642-275e-77b6-5a9af450670d', 'c7e7136e-80df-37db-7b58-5a7c876327e8', 0, '2018-03-03 20:11:10', 0),
('601715c2-9ee0-58cb-8b73-5a9af4f9eaa6', 'f33b6a10-a642-275e-77b6-5a9af450670d', 'baef5a41-eb70-ebd3-d2ba-5a7c88ccd238', 0, '2018-03-03 20:11:10', 0),
('6069085d-ae13-062a-4d7c-5a9af4e05401', 'f33b6a10-a642-275e-77b6-5a9af450670d', 'e15c51b5-7744-aa4b-5190-5a7c882cf770', 0, '2018-03-03 20:11:10', 0),
('60770386-b7e3-e905-5e4c-5a9af4695b27', 'f33b6a10-a642-275e-77b6-5a9af450670d', '48b29ec7-75eb-20e1-8bdc-5a7c883c69e7', 0, '2018-03-03 20:11:10', 0),
('608c6a78-df4c-5837-2b9c-5a9af443d2d4', 'f33b6a10-a642-275e-77b6-5a9af450670d', 'a0800131-376c-fa6a-c419-5a7c87386486', 0, '2018-03-03 20:11:10', 0),
('60dd3cf5-6c87-a03b-9755-5a9af4de4f67', 'f33b6a10-a642-275e-77b6-5a9af450670d', 'cdf07e75-e14b-8897-148a-5a7c8700e635', 0, '2018-03-03 20:11:10', 0),
('6170853b-e6e1-b05d-f4c0-5a9af4663fe9', 'f33b6a10-a642-275e-77b6-5a9af450670d', '21f81b6d-fa47-5b39-1c8f-5a7c87fa3cc2', 0, '2018-03-03 20:11:10', 0),
('627b56bb-5692-8214-8ed8-5a9af4e87612', 'f33b6a10-a642-275e-77b6-5a9af450670d', '20c006f1-97d9-cb68-5d6a-5a7c874f4ffc', 0, '2018-03-03 20:11:10', 0),
('62b4468d-b886-b771-f4e6-5a9af429462a', 'f33b6a10-a642-275e-77b6-5a9af450670d', 'c1d80cc1-0bc4-c638-83e2-5a7c87579e75', 0, '2018-03-03 20:11:10', 0),
('63755dd9-648f-8f57-d27c-5a9af4273764', 'f33b6a10-a642-275e-77b6-5a9af450670d', '73521617-3fc7-4495-8e81-5a7c8776a5ee', 0, '2018-03-03 20:11:10', 0),
('65b32351-9135-59b6-b455-5a9af49d433d', 'f33b6a10-a642-275e-77b6-5a9af450670d', 'e1a2e9b7-d875-7703-28d4-5a7c8701ea6e', 0, '2018-03-03 20:11:10', 0),
('65f28b97-ad1e-6f6c-dacc-5a9af4c6a2d1', 'f33b6a10-a642-275e-77b6-5a9af450670d', '5530a39a-f16f-76a0-05c7-5a7c8776e42f', 0, '2018-03-03 20:11:10', 0),
('65f32a03-9ebf-4aa0-a9bf-5a9af4b9c7fe', 'f33b6a10-a642-275e-77b6-5a9af450670d', '6caf4978-8970-5215-b6fd-5a7c882fa958', 0, '2018-03-03 20:11:10', 0),
('66034da4-0dff-fa39-a26d-5a9af4e6d6ab', 'f33b6a10-a642-275e-77b6-5a9af450670d', '1d200e84-5612-031e-b0a7-5a7c87c2a21a', 0, '2018-03-03 20:11:10', 0),
('66a82bce-7eb0-01e7-7079-5a9af4d0ad25', 'f33b6a10-a642-275e-77b6-5a9af450670d', '8d495bee-9bf6-9604-fe60-5a7c8732bbc6', 0, '2018-03-03 20:11:10', 0),
('66cc6d6f-a83c-e79e-5ed9-5a9af43f346e', 'f33b6a10-a642-275e-77b6-5a9af450670d', '5f0c1939-e33d-0c2d-9e92-5a7c88d57921', 0, '2018-03-03 20:11:10', 0),
('66f98fc7-a7d3-17e3-6ac4-5a9af4aa8c56', 'f33b6a10-a642-275e-77b6-5a9af450670d', '3fcfe32d-067c-ae16-255c-5a7c8874e38e', 0, '2018-03-03 20:11:10', 0),
('6740b07c-ae5d-d51d-0f4a-5a9af4c39170', 'f33b6a10-a642-275e-77b6-5a9af450670d', '4645f0b4-6baf-48a3-3164-5a7c872ef93b', 0, '2018-03-03 20:11:10', 0),
('677685e7-a637-921d-a210-5a9af477c8aa', 'f33b6a10-a642-275e-77b6-5a9af450670d', 'f07677fc-df72-6c77-72a8-5a7c876e45ab', 0, '2018-03-03 20:11:10', 0),
('694ef24c-c4e3-07c7-4917-5a9af49729ff', 'f33b6a10-a642-275e-77b6-5a9af450670d', '61154215-a467-e544-5b8e-5a7c873aa0ee', 0, '2018-03-03 20:11:10', 0),
('6ab33e20-6689-c080-f5ed-5a9af48223a8', 'f33b6a10-a642-275e-77b6-5a9af450670d', '666824be-a067-1d4e-f647-5a7c87c671a0', -99, '2018-03-03 20:11:10', 0),
('6aee0819-4738-ff18-f60b-5a9af418b0c5', 'f33b6a10-a642-275e-77b6-5a9af450670d', '8309964a-8f4d-824c-d349-5a7c91e350c4', 0, '2018-03-03 20:11:10', 0),
('6b2c2152-c47d-240b-7af7-5a9af4c2c5ac', 'f33b6a10-a642-275e-77b6-5a9af450670d', 'db8c5272-61e2-734d-c294-5a7c87eecb8a', 0, '2018-03-03 20:11:10', 0),
('6b550cca-561d-a10d-12f1-5a9af4f0d43f', 'f33b6a10-a642-275e-77b6-5a9af450670d', '48eaed54-57d5-2bfd-5c8d-5a7c875bebc5', 0, '2018-03-03 20:11:10', 0),
('6ba843ef-42a9-0f4e-1d1a-5a9af4bed5ae', 'f33b6a10-a642-275e-77b6-5a9af450670d', 'd44cafaf-cc5d-7917-f18d-5a7c8777cd78', 0, '2018-03-03 20:11:10', 0),
('6bb0b6de-23c5-b7f7-c116-5a9af4fe6590', 'f33b6a10-a642-275e-77b6-5a9af450670d', '912545f4-7e3a-a123-a7f3-5a7c8828469e', 0, '2018-03-03 20:11:10', 0),
('6c9e479f-fc45-25ce-24f9-5a9af42a6b25', 'f33b6a10-a642-275e-77b6-5a9af450670d', '705bdcf8-7648-eedf-8d42-5a7c87d51c13', 0, '2018-03-03 20:11:10', 0),
('6cfcae0d-11d0-535f-a804-5a9af4755a25', 'f33b6a10-a642-275e-77b6-5a9af450670d', 'acaa001e-8b4f-ab7a-d789-5a7c8787494c', 0, '2018-03-03 20:11:10', 0),
('6d4afe8a-0631-502c-2ff3-5a9af4f8e85b', 'f33b6a10-a642-275e-77b6-5a9af450670d', '3be8a7d9-9203-6cd1-27fe-5a7c872fd94c', 0, '2018-03-03 20:11:10', 0),
('6d8d71f0-e18c-2391-4823-5a9af4fe329e', 'f33b6a10-a642-275e-77b6-5a9af450670d', 'e72a755c-0b40-7624-43ef-5a7c872c213f', 0, '2018-03-03 20:11:10', 0),
('6db16436-c942-47e9-f7ca-5a9af4df322f', 'f33b6a10-a642-275e-77b6-5a9af450670d', 'e8b67723-e3c9-2196-0344-5a7c877e85a5', 0, '2018-03-03 20:11:10', 0),
('6e4f41a9-efd0-c457-d159-5a9af4f90342', 'f33b6a10-a642-275e-77b6-5a9af450670d', '7733958a-d26d-0297-35f9-5a7c87ff6d1c', 0, '2018-03-03 20:11:10', 0),
('6eee7ca3-ee2e-1c31-fa4d-5a9af49405f2', 'f33b6a10-a642-275e-77b6-5a9af450670d', '626e7fe0-b5c7-7593-35bb-5a7c88cceb7d', 0, '2018-03-03 20:11:10', 0),
('6f385d80-a27f-9830-1fee-5a9af41b15bf', 'f33b6a10-a642-275e-77b6-5a9af450670d', 'c8adefde-32be-c350-5d63-5a7c87312b48', 0, '2018-03-03 20:11:10', 0),
('6ff937da-36a9-7827-9f9b-5a9af47c343c', 'f33b6a10-a642-275e-77b6-5a9af450670d', 'ebd00602-45ce-407b-4661-5a7c878bf5be', 0, '2018-03-03 20:11:10', 0),
('70807130-e94b-3b5d-86d6-5a9af45d66d4', 'f33b6a10-a642-275e-77b6-5a9af450670d', '7e1c5b0f-3d9f-6eba-1144-5a7c87129198', 0, '2018-03-03 20:11:10', 0),
('70c9d2ed-ab77-89bd-438a-5a9af4de55f0', 'f33b6a10-a642-275e-77b6-5a9af450670d', '88a7a798-8a49-3024-7016-5a7c875fa391', 0, '2018-03-03 20:11:10', 0),
('70e6730e-f4d9-c035-eda3-5a9af417bd6d', 'f33b6a10-a642-275e-77b6-5a9af450670d', 'ebab7366-dd9c-807f-1d18-5a7c87dbbdc7', 0, '2018-03-03 20:11:10', 0),
('71db7121-33c5-6486-46b8-5a9af476ec3a', 'f33b6a10-a642-275e-77b6-5a9af450670d', '570a8585-1c43-399f-d98e-5a7c885523ad', 0, '2018-03-03 20:11:10', 0),
('71e82096-2f1f-16f9-60de-5a9af44a36a9', 'f33b6a10-a642-275e-77b6-5a9af450670d', '54bf41f7-072c-6705-ec11-5a7c87ad0d6c', 0, '2018-03-03 20:11:10', 0),
('72a8321d-b44b-bc5d-a471-5a9af429b88e', 'f33b6a10-a642-275e-77b6-5a9af450670d', 'edc09e63-39c6-3beb-b430-5a7c870ba997', 0, '2018-03-03 20:11:10', 0),
('7486e57c-6706-c41c-fd30-5a9af4104811', 'f33b6a10-a642-275e-77b6-5a9af450670d', '4000d631-bff4-8fa5-a2c9-5a7c88297cff', 0, '2018-03-03 20:11:10', 0),
('749e3f42-6d7f-b569-ac81-5a9af448b9d3', 'f33b6a10-a642-275e-77b6-5a9af450670d', '72a87941-df9a-78bf-4a53-5a7c8705f065', 0, '2018-03-03 20:11:10', 0),
('758086d4-8e5b-bacd-39eb-5a9af4e8ce40', 'f33b6a10-a642-275e-77b6-5a9af450670d', '29e89eda-90e0-9bae-06c0-5a7c87082447', 0, '2018-03-03 20:11:10', 0),
('75ffd251-dfc3-116e-6a23-5a9af414bae0', 'f33b6a10-a642-275e-77b6-5a9af450670d', 'c0fcae98-c2d8-87a5-0fee-5a7c87dcae86', 0, '2018-03-03 20:11:10', 0),
('7600d78a-896b-1ce4-b06c-5a9af4fa2407', 'f33b6a10-a642-275e-77b6-5a9af450670d', 'e675233f-eceb-e935-9126-5a7c87e9687f', 0, '2018-03-03 20:11:10', 0),
('76311c03-7e51-c71b-c880-5a9af4f067b6', 'f33b6a10-a642-275e-77b6-5a9af450670d', '6b3f7c20-10f2-10f8-d1c2-5a7c87b9893b', 0, '2018-03-03 20:11:10', 0),
('767c6cf0-d1d4-f3e9-849f-5a9af44c1b97', 'f33b6a10-a642-275e-77b6-5a9af450670d', 'a127bec6-d401-5542-3fb7-5a7c88ba0aab', 0, '2018-03-03 20:11:10', 0),
('76e5dfa7-c0f7-df0d-b494-5a9af4f0a6d9', 'f33b6a10-a642-275e-77b6-5a9af450670d', '78bb130c-a5e0-c3d6-4ce7-5a7c8717cf91', 0, '2018-03-03 20:11:10', 0),
('7794c7dd-243e-8066-3941-5a9af4bc4835', 'f33b6a10-a642-275e-77b6-5a9af450670d', '396cc314-a48e-1840-891f-5a7c88119ff8', 0, '2018-03-03 20:11:10', 0),
('78693329-5946-8efd-34a0-5a9af458f664', 'f33b6a10-a642-275e-77b6-5a9af450670d', 'a8a224ad-11b0-72ab-a292-5a7c8711a441', 0, '2018-03-03 20:11:10', 0),
('79270d95-db98-245a-4cde-5a9af4574bd7', 'f33b6a10-a642-275e-77b6-5a9af450670d', '29fe2465-b880-1d3c-c204-5a7c8755754e', 0, '2018-03-03 20:11:10', 0),
('7a950f95-8594-714b-5030-5a9af42f480f', 'f33b6a10-a642-275e-77b6-5a9af450670d', '88c99d8d-4650-05b3-1c91-5a7c8746cbdf', 0, '2018-03-03 20:11:10', 0),
('7ac00d4d-16ef-64e0-42f5-5a9af4c4a184', 'f33b6a10-a642-275e-77b6-5a9af450670d', 'd64fb0b2-720d-2028-adad-5a7c87406e3d', 0, '2018-03-03 20:11:10', 0),
('7ac2f13d-82f0-c937-ec2f-5a9af4a30b21', 'f33b6a10-a642-275e-77b6-5a9af450670d', '4d0ecbe1-8c0f-fca0-c03b-5a7c87641752', 0, '2018-03-03 20:11:10', 0),
('7aed0053-25a9-986a-11d0-5a9af4e9bea4', 'f33b6a10-a642-275e-77b6-5a9af450670d', 'c7de1776-145b-01b7-8510-5a7c87e63107', 0, '2018-03-03 20:11:10', 0),
('7b9e1985-7fcc-0643-c77f-5a9af443c614', 'f33b6a10-a642-275e-77b6-5a9af450670d', '2edd68f4-0956-94f2-12f7-5a7c8768f260', 0, '2018-03-03 20:11:10', 0),
('7ba89d08-b808-2e1f-0028-5a9af478f21d', 'f33b6a10-a642-275e-77b6-5a9af450670d', '4dad1eca-2f3c-b235-848d-5a7c87fd0a9b', 0, '2018-03-03 20:11:10', 0),
('7bb502cb-c4ca-605a-8c31-5a9af4d74b43', 'f33b6a10-a642-275e-77b6-5a9af450670d', '4ad09cc1-e38b-6379-3644-5a7c87a33e71', 0, '2018-03-03 20:11:10', 0),
('7c888c62-162b-bb33-f2a9-5a9af4f8d54c', 'f33b6a10-a642-275e-77b6-5a9af450670d', '7a756f74-e9e2-b051-4414-5a7c88ac72ce', 0, '2018-03-03 20:11:10', 0),
('7cb865fb-cda3-875b-2953-5a9af40f2cdb', 'f33b6a10-a642-275e-77b6-5a9af450670d', '9c71c8d3-30f0-bcab-0cf2-5a7c88b56e57', 0, '2018-03-03 20:11:10', 0),
('7cc6a539-8f50-efeb-89aa-5a9af4964171', 'f33b6a10-a642-275e-77b6-5a9af450670d', 'a8962b43-91fc-31e3-0ecb-5a7c87dcdea3', 0, '2018-03-03 20:11:10', 0),
('7d58284d-30ac-8972-58db-5a9af4be8e81', 'f33b6a10-a642-275e-77b6-5a9af450670d', '1ba5e1e4-c2d5-0ccb-06da-5a7c8772c796', 0, '2018-03-03 20:11:10', 0),
('7df5836a-280f-7e27-f752-5a9af415c740', 'f33b6a10-a642-275e-77b6-5a9af450670d', '268276ee-761c-d221-54a8-5a7c88c0d852', 0, '2018-03-03 20:11:10', 0),
('7f6e8e0e-8f13-3d51-1d32-5a9af418a849', 'f33b6a10-a642-275e-77b6-5a9af450670d', '34af65ce-3ab8-417f-f714-5a7c8757bc39', 0, '2018-03-03 20:11:10', 0),
('805dcdda-8d63-568c-17ed-5a9af4f9fb5e', 'f33b6a10-a642-275e-77b6-5a9af450670d', '46b53c2b-2980-0c2f-7d54-5a7c87cd8556', 0, '2018-03-03 20:11:10', 0),
('809fc27a-1b63-de13-dfe2-5a9af47b7bcf', 'f33b6a10-a642-275e-77b6-5a9af450670d', '177eaab7-b158-b342-3067-5a7c878ddfee', 0, '2018-03-03 20:11:10', 0),
('80c9b6e1-608f-90e3-4962-5a9af42bc0f9', 'f33b6a10-a642-275e-77b6-5a9af450670d', 'f265b754-be15-9e24-4801-5a7c87c45a6b', 0, '2018-03-03 20:11:10', 0),
('810223af-cf60-bd37-280c-5a9af413564e', 'f33b6a10-a642-275e-77b6-5a9af450670d', '93858629-e4f9-ddd0-106d-5a7c8724e21b', 0, '2018-03-03 20:11:10', 0),
('81bba904-37d1-2f92-a5fb-5a9af4f06c8b', 'f33b6a10-a642-275e-77b6-5a9af450670d', '83cc1865-d9ef-1ec0-7094-5a7c8741d56e', 0, '2018-03-03 20:11:10', 0),
('8205c980-da8c-855b-0f24-5a9af4a54e34', 'f33b6a10-a642-275e-77b6-5a9af450670d', '51c1cc80-91db-3d6e-a6d0-5a7c878450d3', 0, '2018-03-03 20:11:10', 0),
('833760ca-02ca-7685-c6eb-5a9af412f9f0', 'f33b6a10-a642-275e-77b6-5a9af450670d', '9a3f34b9-3c49-5d5e-5e50-5a7c87039f35', 0, '2018-03-03 20:11:10', 0),
('843bc0f5-ad8a-08d1-3558-5a9af4e3a024', 'f33b6a10-a642-275e-77b6-5a9af450670d', '578be139-16e2-1e54-e2c4-5a7c87645ab2', 0, '2018-03-03 20:11:10', 0),
('8700806b-093d-be4f-fb3e-5a9af4a722b5', 'f33b6a10-a642-275e-77b6-5a9af450670d', 'd28d756f-d96b-cd20-132a-5a7c8731d164', 0, '2018-03-03 20:11:10', 0),
('87d18ce4-f59b-e0a8-3270-5a9af4f6249e', 'f33b6a10-a642-275e-77b6-5a9af450670d', '32e3a6bf-2f76-d3e0-05e0-5a7c88316c2f', 0, '2018-03-03 20:11:10', 0),
('8817d6d1-2195-d12e-5807-5a9af4ed2ab6', 'f33b6a10-a642-275e-77b6-5a9af450670d', 'c64e94ae-1ee4-4282-22a7-5a7c870c805f', 0, '2018-03-03 20:11:10', 0),
('88fb848a-287e-f0b5-9dad-5a9af4b8090a', 'f33b6a10-a642-275e-77b6-5a9af450670d', 'e273f879-22e5-ab97-35a6-5a7c879c9dac', 0, '2018-03-03 20:11:10', 0),
('8925c799-d94a-e17c-7a31-5a9af4f15479', 'f33b6a10-a642-275e-77b6-5a9af450670d', 'f13f028b-813c-df21-da54-5a7c87512bbe', 0, '2018-03-03 20:11:10', 0),
('893df761-857f-79cc-f417-5a9af4142610', 'f33b6a10-a642-275e-77b6-5a9af450670d', '6b827943-1d12-d71f-d433-5a7c87bf7737', 0, '2018-03-03 20:11:10', 0),
('8a4d1968-da7d-544a-9c00-5a9af4b63b2c', 'f33b6a10-a642-275e-77b6-5a9af450670d', '62a73034-acbd-8b32-76f9-5a7c871b8a33', 0, '2018-03-03 20:11:10', 0),
('8b8d2aa5-645b-94f2-dc52-5a9af47c5429', 'f33b6a10-a642-275e-77b6-5a9af450670d', '4ba3ebb8-2bde-88c1-d8a9-5a7c872044a1', 0, '2018-03-03 20:11:10', 0),
('8bb35f09-b2fa-484e-1277-5a9af46afee3', 'f33b6a10-a642-275e-77b6-5a9af450670d', 'ce97e2e2-d425-9e92-bad2-5a7c87cd5f8c', 0, '2018-03-03 20:11:10', 0),
('8c2d6a8e-1596-bb80-e2e6-5a9af4befb39', 'f33b6a10-a642-275e-77b6-5a9af450670d', '9a1ec2b8-6122-b21f-2a89-5a7c879fd3bd', 0, '2018-03-03 20:11:10', 0),
('8ca59f7d-ffa2-8ffc-537c-5a9af4f7713b', 'f33b6a10-a642-275e-77b6-5a9af450670d', '2e68b35f-012d-23e1-34ce-5a7c871fc7aa', 0, '2018-03-03 20:11:10', 0),
('8d4a2f88-c836-50a7-94ef-5a9af4703186', 'f33b6a10-a642-275e-77b6-5a9af450670d', '1878e649-7dc7-dfd8-f82d-5a7c88b715b5', 0, '2018-03-03 20:11:10', 0),
('8deff33c-5b89-b081-46f8-5a9af4b3340f', 'f33b6a10-a642-275e-77b6-5a9af450670d', '601af6a2-fd30-2ce9-842d-5a7c878e3a48', 0, '2018-03-03 20:11:10', 0),
('8e1456f1-3eeb-7629-e7b5-5a9af4f18299', 'f33b6a10-a642-275e-77b6-5a9af450670d', 'f31ebcda-d50e-865f-9f5c-5a7c87a000a8', 0, '2018-03-03 20:11:10', 0),
('8ea44abf-540a-e257-bef4-5a9af47c127c', 'f33b6a10-a642-275e-77b6-5a9af450670d', 'e9c91482-036a-b1db-9c56-5a7c872178fa', 0, '2018-03-03 20:11:10', 0),
('90758574-7a90-2484-1802-5a9af4019688', 'f33b6a10-a642-275e-77b6-5a9af450670d', '15036078-1e51-4541-fa8d-5a7c8718adda', 0, '2018-03-03 20:11:10', 0),
('90cc2f63-5823-f24b-449a-5a9af44643b0', 'f33b6a10-a642-275e-77b6-5a9af450670d', 'import', 0, '2018-03-03 20:11:10', 0),
('913c5467-7c12-37b8-8b38-5a9af418d124', 'f33b6a10-a642-275e-77b6-5a9af450670d', 'da28493d-19a5-c21f-d3ed-5a7c8868ec20', 0, '2018-03-03 20:11:10', 0),
('91599614-7ed2-1a29-1a97-5a9af4348ab2', 'f33b6a10-a642-275e-77b6-5a9af450670d', '35d00b65-fea0-2683-19d1-5a7c87a90420', 0, '2018-03-03 20:11:10', 0),
('927c2bca-cc8b-8c7e-f5f3-5a9af4757e22', 'f33b6a10-a642-275e-77b6-5a9af450670d', '9d64018e-8b10-6518-4638-5a7c87028ea2', 0, '2018-03-03 20:11:10', 0),
('94597883-33a9-764c-0496-5a9af4459db2', 'f33b6a10-a642-275e-77b6-5a9af450670d', 'f315079c-4c41-c2ec-f4dc-5a7c87ab8f45', 0, '2018-03-03 20:11:10', 0),
('94fa0ad2-6ccb-1eba-ae7a-5a9af45db879', 'f33b6a10-a642-275e-77b6-5a9af450670d', '6b800e26-e67a-8f0f-7ed5-5a7c8720489c', 0, '2018-03-03 20:11:10', 0),
('986808aa-3cf2-2030-1d23-5a9af4d47c79', 'f33b6a10-a642-275e-77b6-5a9af450670d', '63216bd0-65b7-b960-c708-5a7c87e4b5d0', 0, '2018-03-03 20:11:10', 0),
('9912571b-80b8-8ada-4991-5a9af4669e1d', 'f33b6a10-a642-275e-77b6-5a9af450670d', 'list', 0, '2018-03-03 20:11:10', 0),
('994b19ae-3ee6-64ea-ddc7-5a9af482e9c8', 'f33b6a10-a642-275e-77b6-5a9af450670d', '441d9a84-086d-565d-ee23-5a7c871521f6', 0, '2018-03-03 20:11:10', 0),
('9bc96f96-13e3-8a42-c67b-5a9af407f04f', 'f33b6a10-a642-275e-77b6-5a9af450670d', '943536db-32af-33e3-f34d-5a7c87f07710', 0, '2018-03-03 20:11:10', 0),
('9bdf0cce-d5eb-c96c-178d-5a9af4c7479e', 'f33b6a10-a642-275e-77b6-5a9af450670d', 'daffd85f-9cf5-3709-654a-5a7c87488ba6', 0, '2018-03-03 20:11:10', 0),
('9c1a5162-90fa-05d3-c4f3-5a9af4edfb44', 'f33b6a10-a642-275e-77b6-5a9af450670d', '1166cada-d629-dae0-d379-5a7c8748f5aa', 0, '2018-03-03 20:11:10', 0),
('9c850de4-c253-9578-e0a6-5a9af4e1f724', 'f33b6a10-a642-275e-77b6-5a9af450670d', 'b1414c02-2e60-2b05-da09-5a7c875c5da1', 0, '2018-03-03 20:11:10', 0),
('9cbf2922-fc9a-7d68-fa5e-5a9af4da0e9c', 'f33b6a10-a642-275e-77b6-5a9af450670d', '63226928-0bb9-9aec-843c-5a7c870a9ac4', 0, '2018-03-03 20:11:10', 0),
('9d409cf7-1b09-1cc9-7564-5a9af4aff2fd', 'f33b6a10-a642-275e-77b6-5a9af450670d', '1d1500af-3ffd-925d-653d-5a7c877a614c', 0, '2018-03-03 20:11:10', 0),
('9da525bd-9fdc-c146-d6d5-5a9af45e0ea8', 'f33b6a10-a642-275e-77b6-5a9af450670d', '58db61a9-af49-9f68-f80f-5a7c8779fcb0', 0, '2018-03-03 20:11:10', 0),
('9dec0890-9165-df9a-3246-5a9af4ad39d2', 'f33b6a10-a642-275e-77b6-5a9af450670d', '53220607-f3e4-50fe-1efc-5a7c87db3208', 0, '2018-03-03 20:11:10', 0),
('9e51c7d4-cd3c-9bea-8fcf-5a9af4634b84', 'f33b6a10-a642-275e-77b6-5a9af450670d', 'ed00b246-9ddb-736d-38cc-5a7c87fac1e1', 0, '2018-03-03 20:11:10', 0),
('9ee53fa2-fb72-c954-fe46-5a9af4a070f9', 'f33b6a10-a642-275e-77b6-5a9af450670d', '3f806ce0-96d4-322f-415b-5a7c874b779d', 0, '2018-03-03 20:11:10', 0),
('9f46d2af-ac56-b463-65fb-5a9af44b19be', 'f33b6a10-a642-275e-77b6-5a9af450670d', 'c59b532a-ceb3-c581-ff8d-5a7c87192866', 0, '2018-03-03 20:11:10', 0),
('a3f05849-5edd-c87a-dbbf-5a9af418b32b', 'f33b6a10-a642-275e-77b6-5a9af450670d', 'c0e70cc4-f593-1f4c-90b9-5a7c88329385', 0, '2018-03-03 20:11:10', 0),
('a4a32cd5-0d81-a1e6-7a26-5a9af4fee274', 'f33b6a10-a642-275e-77b6-5a9af450670d', '5f1a37ee-e15f-b7b8-109a-5a7c88eb49ae', 0, '2018-03-03 20:11:10', 0),
('a51c5897-53e3-d8ad-c3a8-5a9af4563764', 'f33b6a10-a642-275e-77b6-5a9af450670d', '14cd877c-1105-91a6-4c24-5a7c88bf39b2', 0, '2018-03-03 20:11:10', 0),
('a5886da0-ef53-96e5-ca70-5a9af434c8ad', 'f33b6a10-a642-275e-77b6-5a9af450670d', 'aee113f9-a0cb-1b32-a173-5a7c87604ffe', 0, '2018-03-03 20:11:10', 0),
('a6bf4e43-8c0c-3a22-58dc-5a9af4bb71e1', 'f33b6a10-a642-275e-77b6-5a9af450670d', '5f7a0cb9-8b4b-3dd5-5278-5a7c8753a2de', 0, '2018-03-03 20:11:10', 0),
('a6f6f7d5-9a44-aeca-99b7-5a9af4b36ddd', 'f33b6a10-a642-275e-77b6-5a9af450670d', '2b65bf2a-3452-f571-8535-5a7c875f5588', 0, '2018-03-03 20:11:10', 0),
('a6fdf6c0-4b92-863e-93f5-5a9af4b1415f', 'f33b6a10-a642-275e-77b6-5a9af450670d', 'd7d80ae5-dd9c-22ed-8f59-5a7c87fe7425', 0, '2018-03-03 20:11:10', 0),
('a735157e-1136-8cba-4ad2-5a9af4704ac8', 'f33b6a10-a642-275e-77b6-5a9af450670d', '25375aa6-5029-1372-8866-5a7c87ce05a3', 0, '2018-03-03 20:11:10', 0),
('a8d90898-b96a-b147-44bb-5a9af49a94cf', 'f33b6a10-a642-275e-77b6-5a9af450670d', 'e292732e-3e00-f796-6d85-5a7c87713407', 0, '2018-03-03 20:11:10', 0),
('a9390dc2-d628-73de-98a7-5a9af43c399f', 'f33b6a10-a642-275e-77b6-5a9af450670d', 'f7be00ba-26f7-1305-2380-5a7c877c97dd', 0, '2018-03-03 20:11:10', 0),
('a9c0f826-1b69-aa1c-e432-5a9af40b811f', 'f33b6a10-a642-275e-77b6-5a9af450670d', '74748f3e-97d8-edae-9ac0-5a7c87bd647e', 0, '2018-03-03 20:11:10', 0),
('ab996fcc-8b2d-a126-72c9-5a9af452f60e', 'f33b6a10-a642-275e-77b6-5a9af450670d', 'd2709f5a-0d40-3342-8009-5a7c8874dfaf', 0, '2018-03-03 20:11:10', 0),
('abb4e39f-8aa2-4dbb-57fe-5a9af4ed8be2', 'f33b6a10-a642-275e-77b6-5a9af450670d', 'f19d4ae7-8da8-f9e3-edd0-5a7c87484ca2', 0, '2018-03-03 20:11:10', 0),
('abcbe053-6169-f362-2652-5a9af41dddc1', 'f33b6a10-a642-275e-77b6-5a9af450670d', '1c1e8171-148a-4985-c09e-5a7c8777189e', 0, '2018-03-03 20:11:10', 0),
('abfc4886-0b4a-0007-d23f-5a9af4d2312c', 'f33b6a10-a642-275e-77b6-5a9af450670d', '91239ff5-683d-6f3a-30ad-5a7c878169a9', 0, '2018-03-03 20:11:10', 0),
('aca31146-e3cb-ada5-dda8-5a9af439d118', 'f33b6a10-a642-275e-77b6-5a9af450670d', '1ec48e24-b394-4022-222f-5a7c87e72fe3', 0, '2018-03-03 20:11:10', 0),
('ad51bd96-60de-9613-68e4-5a9af46c7742', 'f33b6a10-a642-275e-77b6-5a9af450670d', '5e1bbb69-1d6b-7c37-884e-5a7c8816d92d', 0, '2018-03-03 20:11:10', 0),
('ad920cda-4f1b-8a84-5378-5a9af47f18c3', 'f33b6a10-a642-275e-77b6-5a9af450670d', 'b2150d2f-b2fe-a6c5-86a1-5a7c88412e3c', 0, '2018-03-03 20:11:10', 0),
('ae8c6a70-dab2-d437-36cc-5a9af48c9886', 'f33b6a10-a642-275e-77b6-5a9af450670d', '37a70da0-f70b-ec85-31ab-5a7c8743131d', 0, '2018-03-03 20:11:10', 0),
('af19046e-bbb8-05e4-ea62-5a9af491ddbe', 'f33b6a10-a642-275e-77b6-5a9af450670d', '88ff008b-ab24-2338-bdb6-5a7c887ef19d', 0, '2018-03-03 20:11:10', 0),
('af756c7b-c4be-2376-d102-5a9af416f92d', 'f33b6a10-a642-275e-77b6-5a9af450670d', '4f3d7a06-89fa-a247-6c5e-5a7c88efc258', 0, '2018-03-03 20:11:10', 0),
('af8afa27-705a-6e87-4b7e-5a9af4976b65', 'f33b6a10-a642-275e-77b6-5a9af450670d', 'd3795b19-e7ea-1434-ede0-5a7c87699bdd', 0, '2018-03-03 20:11:10', 0),
('afec07f1-77b8-630e-a6bc-5a9af42cf73a', 'f33b6a10-a642-275e-77b6-5a9af450670d', 'c10330a2-bceb-029f-c863-5a7c87b68e9c', 0, '2018-03-03 20:11:10', 0),
('afed018f-7ff2-ebbe-5234-5a9af423f0b1', 'f33b6a10-a642-275e-77b6-5a9af450670d', '29ca0dbf-a0b8-d9c6-a105-5a7c88d74a69', 0, '2018-03-03 20:11:10', 0),
('b0947914-7690-978b-73d6-5a9af48746cf', 'f33b6a10-a642-275e-77b6-5a9af450670d', 'ee4d5029-0c05-d9e7-ad69-5a7c871e9c1d', 0, '2018-03-03 20:11:10', 0),
('b185663c-52e5-293b-5a3d-5a9af40318b0', 'f33b6a10-a642-275e-77b6-5a9af450670d', '70bb07ca-9c06-c189-90cb-5a7c87ffc69b', 0, '2018-03-03 20:11:10', 0),
('b1982103-9e7e-50f2-b939-5a9af47e2b27', 'f33b6a10-a642-275e-77b6-5a9af450670d', '1183e89a-4484-a183-9f83-5a7c876f3ea0', 0, '2018-03-03 20:11:10', 0),
('b1cd5957-c78f-3606-d9b4-5a9af424b2f9', 'f33b6a10-a642-275e-77b6-5a9af450670d', '17870f27-978d-89b1-9cb8-5a7c87f24f4f', 0, '2018-03-03 20:11:10', 0),
('b20d04f3-330d-6769-da89-5a9af4822c3f', 'f33b6a10-a642-275e-77b6-5a9af450670d', '408f0827-d174-1b31-7bc3-5a7c87e698c1', 0, '2018-03-03 20:11:10', 0),
('b2552f8d-bb63-029d-0c9b-5a9af45889ce', 'f33b6a10-a642-275e-77b6-5a9af450670d', '5d4497f0-a1c9-79a5-99f7-5a7c87615b2e', 0, '2018-03-03 20:11:10', 0),
('b25d4182-52e6-53bf-289c-5a9af4c2b6ea', 'f33b6a10-a642-275e-77b6-5a9af450670d', 'ed9acb0c-7f14-a450-b323-5a7c88070cc6', 0, '2018-03-03 20:11:10', 0),
('b2fd0e92-0a56-7456-fab3-5a9af4478070', 'f33b6a10-a642-275e-77b6-5a9af450670d', '49fb4b7e-b852-af48-fcc7-5a7c88039102', 0, '2018-03-03 20:11:10', 0),
('b379b95b-65c3-11bb-a3d4-5a9af407adcb', 'f33b6a10-a642-275e-77b6-5a9af450670d', '15defde2-91e6-1258-70c4-5a7c8723aee8', 0, '2018-03-03 20:11:10', 0),
('b45f500c-d631-c08a-dcbc-5a9af45b2a05', 'f33b6a10-a642-275e-77b6-5a9af450670d', '363b0691-a778-68d8-d6b8-5a7c8885211c', 0, '2018-03-03 20:11:10', 0),
('b4ac1442-7e4b-c60d-b27a-5a9af4af68cb', 'f33b6a10-a642-275e-77b6-5a9af450670d', '24380fbb-bcc0-3ffb-2b59-5a7c884dec9e', 0, '2018-03-03 20:11:10', 0),
('b4bfe7b3-9818-9061-3f79-5a9af47d0523', 'f33b6a10-a642-275e-77b6-5a9af450670d', '78f9671a-a19a-07e1-022d-5a7c871842cb', 0, '2018-03-03 20:11:10', 0),
('b6ff6819-e99e-5055-0cd4-5a9af4deb1b7', 'f33b6a10-a642-275e-77b6-5a9af450670d', 'ae2806b3-eea7-f703-13ba-5a7c879828fb', 0, '2018-03-03 20:11:10', 0),
('b740cf40-2373-65f3-dd5f-5a9af4d95dd4', 'f33b6a10-a642-275e-77b6-5a9af450670d', '3c0e09dd-98b3-33ae-c637-5a7c87672ffb', 0, '2018-03-03 20:11:10', 0),
('b7889d5f-d555-b97a-6761-5a9af4e931ec', 'f33b6a10-a642-275e-77b6-5a9af450670d', '298918bf-e441-7082-aa37-5a7c87cca7b3', 0, '2018-03-03 20:11:10', 0),
('b7c5f871-979a-76b2-78d3-5a9af48830dd', 'f33b6a10-a642-275e-77b6-5a9af450670d', '44055a08-5641-5502-ad43-5a7c87b7cf2c', 0, '2018-03-03 20:11:10', 0),
('b838280b-1c2b-a4c9-0ad6-5a9af47ff4dc', 'f33b6a10-a642-275e-77b6-5a9af450670d', '84fc5a50-a4ce-fbc8-d1fb-5a7c87d3cd15', 0, '2018-03-03 20:11:10', 0),
('b928584b-2436-3cd7-e304-5a9af466a469', 'f33b6a10-a642-275e-77b6-5a9af450670d', 'e8a38f4a-e2a6-c4f6-05b5-5a7c881b1992', 0, '2018-03-03 20:11:10', 0),
('b98cfe2c-fa56-6855-76ec-5a9af496b0f0', 'f33b6a10-a642-275e-77b6-5a9af450670d', '9299f743-54c3-37ed-5696-5a7c873bb17a', 0, '2018-03-03 20:11:10', 0),
('ba5fa5a3-5c90-f2f7-3e03-5a9af47573d9', 'f33b6a10-a642-275e-77b6-5a9af450670d', 'b7f36947-b73e-d6d9-7d20-5a7c8709640b', 0, '2018-03-03 20:11:10', 0),
('baba2fca-0a21-9254-f95b-5a9af43a9f40', 'f33b6a10-a642-275e-77b6-5a9af450670d', '1f873d26-6c1f-ee88-0857-5a7c88e1b673', 0, '2018-03-03 20:11:10', 0),
('bb1da37c-5f7f-1bfa-7164-5a9af428c4d4', 'f33b6a10-a642-275e-77b6-5a9af450670d', '355b5f1c-e0f6-42d6-989b-5a7c8889087c', 0, '2018-03-03 20:11:10', 0),
('bb57356e-a64e-82e5-2ff7-5a9af4b30f77', 'f33b6a10-a642-275e-77b6-5a9af450670d', '3c3dfef7-5210-cbf5-6e3d-5a7c888d0c9f', 0, '2018-03-03 20:11:10', 0),
('bbe90a1d-ac36-acee-dd1c-5a9af4f6bc72', 'f33b6a10-a642-275e-77b6-5a9af450670d', 'a0a1c377-6dd5-5303-1a83-5a7c8711b1b7', 0, '2018-03-03 20:11:10', 0),
('bc4409bb-8aff-f47c-79d4-5a9af479f6c9', 'f33b6a10-a642-275e-77b6-5a9af450670d', '4be60bb1-dcc8-0457-1447-5a7c877b2925', 0, '2018-03-03 20:11:10', 0),
('bc9ac809-7d93-1deb-7ccf-5a9af4e9d993', 'f33b6a10-a642-275e-77b6-5a9af450670d', '22a69639-70eb-40f7-8b66-5a7c879b511c', 0, '2018-03-03 20:11:10', 0),
('bcf9cb4f-9bcb-2ec1-3376-5a9af4c22366', 'f33b6a10-a642-275e-77b6-5a9af450670d', 'ecc08265-a2e6-3c97-3678-5a7c87218a78', 0, '2018-03-03 20:11:10', 0),
('bd27b5eb-b07e-753d-2f7f-5a9af40bf686', 'f33b6a10-a642-275e-77b6-5a9af450670d', '67eceb27-7e04-1ff5-7fc4-5a7c87f75dad', 0, '2018-03-03 20:11:10', 0),
('bdda618f-1251-6eb5-3192-5a9af442d581', 'f33b6a10-a642-275e-77b6-5a9af450670d', '66a301a8-1998-e819-cf82-5a7c879291d2', 0, '2018-03-03 20:11:10', 0),
('be027a61-2f55-53ad-d0d7-5a9af4cbdfcd', 'f33b6a10-a642-275e-77b6-5a9af450670d', 'e5a96972-def9-faa0-93e5-5a7c870b7102', 0, '2018-03-03 20:11:10', 0),
('be2cbcbf-429d-7f54-d00b-5a9af4cb9fe7', 'f33b6a10-a642-275e-77b6-5a9af450670d', '7c0c2ffd-4711-0eb6-b5c9-5a7c8717c557', 0, '2018-03-03 20:11:10', 0),
('bf16e2c1-ca8e-2c25-dd31-5a9af4664bba', 'f33b6a10-a642-275e-77b6-5a9af450670d', '599d0104-4e3a-7865-2bfc-5a7c88803928', 0, '2018-03-03 20:11:10', 0),
('bf81301a-2a8a-b77e-cb3d-5a9af4de8837', 'f33b6a10-a642-275e-77b6-5a9af450670d', 'e64eb971-ebf9-b4d2-8bf8-5a7c88e324b1', 0, '2018-03-03 20:11:10', 0),
('bf8d89cd-4dcb-0281-370f-5a9af411ce5a', 'f33b6a10-a642-275e-77b6-5a9af450670d', '8cdcc346-24c8-327a-5812-5a7c87a4f08b', 0, '2018-03-03 20:11:10', 0),
('bfebc422-9039-364b-d5ef-5a9af4445740', 'f33b6a10-a642-275e-77b6-5a9af450670d', '15c27a27-b278-5a63-ad1e-5a7c88257c18', 0, '2018-03-03 20:11:10', 0),
('c01382ac-d0cc-7581-2381-5a9af4bda8b1', 'f33b6a10-a642-275e-77b6-5a9af450670d', '72f8ed03-22b1-084c-df84-5a7c88102e08', 0, '2018-03-03 20:11:10', 0),
('c1cd0ec5-28e9-0404-a747-5a9af4030abf', 'f33b6a10-a642-275e-77b6-5a9af450670d', 'ed020df1-d392-2243-b778-5a7c8702867b', 0, '2018-03-03 20:11:10', 0),
('c1eaf016-8f14-17e0-a506-5a9af4102c37', 'f33b6a10-a642-275e-77b6-5a9af450670d', '2167daeb-c183-1c6e-29f7-5a7c88863ee8', 0, '2018-03-03 20:11:10', 0),
('c2ab82e7-3c69-3e3c-406f-5a9af4b1c64a', 'f33b6a10-a642-275e-77b6-5a9af450670d', '33f58ec8-ecd5-026d-69fd-5a7c87f40452', 0, '2018-03-03 20:11:10', 0),
('c2f9b2ba-924c-3e1b-297b-5a9af4857f92', 'f33b6a10-a642-275e-77b6-5a9af450670d', '5fe11b01-9b26-0a61-624e-5a7c8769d5ac', 0, '2018-03-03 20:11:10', 0),
('c31bd785-1e3d-d12c-24f9-5a9af46ead51', 'f33b6a10-a642-275e-77b6-5a9af450670d', 'a6fa1f9a-0cae-f6a3-4a16-5a7c88d78fb0', 0, '2018-03-03 20:11:10', 0),
('c31eef24-ba01-b335-85fe-5a9af4cc3581', 'f33b6a10-a642-275e-77b6-5a9af450670d', 'eb8d9651-b764-8b69-1e4c-5a7c87f57062', 0, '2018-03-03 20:11:10', 0),
('c513762b-1cba-9d36-289a-5a9af4b173bf', 'f33b6a10-a642-275e-77b6-5a9af450670d', '74a730a9-83bc-06b2-3fda-5a7c8791d6e8', 0, '2018-03-03 20:11:10', 0),
('c517dcfb-98fa-1e50-8e33-5a9af43e30e1', 'f33b6a10-a642-275e-77b6-5a9af450670d', 'f31ab525-04f8-db41-65e7-5a7c87632323', 0, '2018-03-03 20:11:10', 0),
('c5711c14-4bb4-06c3-6de7-5a9af4639e49', 'f33b6a10-a642-275e-77b6-5a9af450670d', '2ae270ed-9bc9-9bbc-0f22-5a7c884a3ed2', 0, '2018-03-03 20:11:10', 0),
('c61bc364-5b22-e69b-0d9a-5a9af40e832b', 'f33b6a10-a642-275e-77b6-5a9af450670d', '68411685-91a6-98f7-c654-5a7c88be47ff', 0, '2018-03-03 20:11:10', 0),
('c7361d6d-2872-22bb-bdcb-5a9af47658ff', 'f33b6a10-a642-275e-77b6-5a9af450670d', '15c37323-28a4-d9ba-fd2c-5a7c87824363', 0, '2018-03-03 20:11:10', 0),
('c821131b-071c-0b79-008e-5a9af4e34586', 'f33b6a10-a642-275e-77b6-5a9af450670d', '4732daf5-e61c-1e18-c05f-5a7c877fba75', 0, '2018-03-03 20:11:10', 0),
('c862f81f-72f8-e436-777b-5a9af4ad7eb0', 'f33b6a10-a642-275e-77b6-5a9af450670d', 'e6f68c8c-e027-a613-ad45-5a7c8722c43c', 0, '2018-03-03 20:11:10', 0),
('c8a6259a-80f6-5ca6-e5af-5a9af4c6b51b', 'f33b6a10-a642-275e-77b6-5a9af450670d', 'eec2b2da-a4b5-4e9e-3d2e-5a7c88e2be59', 0, '2018-03-03 20:11:10', 0),
('c9152d16-6482-e134-7238-5a9af4cdd02b', 'f33b6a10-a642-275e-77b6-5a9af450670d', '7530d1e8-983d-ba1a-7ac6-5a7c87f8c430', 0, '2018-03-03 20:11:10', 0),
('c9c24fe6-6c99-79c3-69a1-5a9af4bc6041', 'f33b6a10-a642-275e-77b6-5a9af450670d', '9d779c95-3aa4-d93d-f95e-5a7c87030d4c', 0, '2018-03-03 20:11:10', 0),
('ca9f5e1b-d5ca-98b0-2778-5a9af4a77ad6', 'f33b6a10-a642-275e-77b6-5a9af450670d', 'ac891384-539c-8ba7-90ce-5a7c8711281a', 0, '2018-03-03 20:11:10', 0),
('caec08c6-b0e8-9c5c-a5da-5a9af466ae88', 'f33b6a10-a642-275e-77b6-5a9af450670d', '3129d46f-6d83-146a-5646-5a7c8806d20e', 0, '2018-03-03 20:11:10', 0),
('cc1181c2-23a5-7338-d032-5a9af4794bb0', 'f33b6a10-a642-275e-77b6-5a9af450670d', 'e5d12e3e-7fcf-12d1-11b7-5a7c87549cc3', 0, '2018-03-03 20:11:10', 0),
('ccb409a4-1584-a516-19f5-5a9af4469e19', 'f33b6a10-a642-275e-77b6-5a9af450670d', '748e226f-5fd9-c8f9-9568-5a7c87df7528', 0, '2018-03-03 20:11:10', 0),
('ccc76cf9-c378-6b99-167a-5a9af4e0c49f', 'f33b6a10-a642-275e-77b6-5a9af450670d', '1653369c-6d32-abe0-0d0b-5a7c888eb977', 0, '2018-03-03 20:11:10', 0),
('cd1800f1-07db-11d9-bce1-5a9af4894dfa', 'f33b6a10-a642-275e-77b6-5a9af450670d', 'b9980889-60b3-da5d-74df-5a7c87154393', 0, '2018-03-03 20:11:10', 0),
('cd9d6a86-59b6-f146-99f3-5a9af41f2ab2', 'f33b6a10-a642-275e-77b6-5a9af450670d', 'df9e386a-7426-cb84-5057-5a7c884fd8bf', 0, '2018-03-03 20:11:10', 0);
INSERT INTO `acl_roles_actions` (`id`, `role_id`, `action_id`, `access_override`, `date_modified`, `deleted`) VALUES
('cdd5d34e-a832-25e7-d958-5a9af46827c5', 'f33b6a10-a642-275e-77b6-5a9af450670d', 'e3f2a0d1-190d-81dd-5341-5a7c879ec3f0', 0, '2018-03-03 20:11:10', 0),
('cdf3a35a-0efb-8081-2b1e-5a9af458a505', 'f33b6a10-a642-275e-77b6-5a9af450670d', '477d2cba-36d5-1fda-31ae-5a7c88915c19', 0, '2018-03-03 20:11:10', 0),
('ce4efad7-63ea-8ccf-705a-5a9af461e7ae', 'f33b6a10-a642-275e-77b6-5a9af450670d', 'ac2345d1-213c-07d2-3cdc-5a7c8798204c', 0, '2018-03-03 20:11:10', 0),
('ceed39e4-c988-cf7e-b7bf-5a9af4f18393', 'f33b6a10-a642-275e-77b6-5a9af450670d', 'massupdate', 0, '2018-03-03 20:11:10', 0),
('cfde46b0-44f5-dad3-1863-5a9af4c8f049', 'f33b6a10-a642-275e-77b6-5a9af450670d', 'a45bdb66-d8f4-e7c1-f988-5a7c87aa6dd8', 0, '2018-03-03 20:11:10', 0),
('d03c6806-9dea-bf91-7f76-5a9af499f7b0', 'f33b6a10-a642-275e-77b6-5a9af450670d', '97e1dfea-b993-0a67-b28f-5a7c871cea0b', 0, '2018-03-03 20:11:10', 0),
('d0ef6eae-d8c3-392c-6acb-5a9af42bbc92', 'f33b6a10-a642-275e-77b6-5a9af450670d', '77cc0e47-cfba-1a9c-8226-5a7c888082fa', 0, '2018-03-03 20:11:10', 0),
('d11e0477-177d-b2d3-00a6-5a9af422c2b2', 'f33b6a10-a642-275e-77b6-5a9af450670d', '5b463807-16d4-93de-0cf5-5a7c889e468e', 0, '2018-03-03 20:11:10', 0),
('d17e8b4a-a5c5-1fee-5763-5a9af4384bb5', 'f33b6a10-a642-275e-77b6-5a9af450670d', '2f407db4-3812-2c96-8296-5a7c87e672ff', 0, '2018-03-03 20:11:10', 0),
('d223a16a-cb93-3acd-b6b0-5a9af4995ae2', 'f33b6a10-a642-275e-77b6-5a9af450670d', '17b30aab-5eaf-9e9c-de3a-5a7c873bfb4b', 0, '2018-03-03 20:11:10', 0),
('d22cab46-d349-9c82-5131-5a9af43b404d', 'f33b6a10-a642-275e-77b6-5a9af450670d', '3faaaf60-ab2e-4c07-f4e5-5a7c889140f8', 0, '2018-03-03 20:11:10', 0),
('d2387b0a-117d-206b-a817-5a9af49f1aa9', 'f33b6a10-a642-275e-77b6-5a9af450670d', '6112018b-d4f6-5050-a95f-5a7c87893497', 0, '2018-03-03 20:11:10', 0),
('d2c046a4-9ed8-639f-6848-5a9af47a9577', 'f33b6a10-a642-275e-77b6-5a9af450670d', 'b86573b4-ba19-bbc3-b7d1-5a7c87d87926', 0, '2018-03-03 20:11:10', 0),
('d33e82af-d76e-9846-c5f6-5a9af40259b9', 'f33b6a10-a642-275e-77b6-5a9af450670d', 'c100217c-b0a8-8fc1-9af5-5a7c87c35f17', 0, '2018-03-03 20:11:10', 0),
('d356eb93-a1dd-3bbd-5da5-5a9af4151535', 'f33b6a10-a642-275e-77b6-5a9af450670d', '233e0d37-50ef-4f82-ccd6-5a7c87c0f63e', 0, '2018-03-03 20:11:10', 0),
('d3de0378-a812-9e42-feaa-5a9af4c594fa', 'f33b6a10-a642-275e-77b6-5a9af450670d', 'e91a304b-60bb-f08d-8ee1-5a7c874fdbec', 0, '2018-03-03 20:11:10', 0),
('d4a1a1d5-ce32-47c9-6d41-5a9af4d3da0f', 'f33b6a10-a642-275e-77b6-5a9af450670d', 'view', 0, '2018-03-03 20:11:10', 0),
('d55738f5-e1a8-d44a-5240-5a9af4debe62', 'f33b6a10-a642-275e-77b6-5a9af450670d', 'b8bd437c-439a-f262-336b-5a7c8768f1dc', 0, '2018-03-03 20:11:10', 0),
('d60a0e1e-3e44-4a77-2324-5a9af458f8ea', 'f33b6a10-a642-275e-77b6-5a9af450670d', '238fe9d5-c3a3-90d9-f41e-5a7c88a2bab3', 0, '2018-03-03 20:11:10', 0),
('d62f40b8-ad23-35c9-9782-5a9af40b4572', 'f33b6a10-a642-275e-77b6-5a9af450670d', '11007b68-be39-6ef8-8c70-5a7c87bc72b8', 0, '2018-03-03 20:11:10', 0),
('d6e3bd1c-130f-e495-34c3-5a9af4e8c496', 'f33b6a10-a642-275e-77b6-5a9af450670d', '17b33426-c92e-a842-918f-5a7c87ebab2d', 0, '2018-03-03 20:11:10', 0),
('d73aa5ec-7661-6ab7-e86a-5a9af433d8de', 'f33b6a10-a642-275e-77b6-5a9af450670d', '87d25431-ed77-b9b3-432c-5a7c87b9363e', 0, '2018-03-03 20:11:10', 0),
('d7485f68-220c-27d2-2c11-5a9af4731cf9', 'f33b6a10-a642-275e-77b6-5a9af450670d', '173e0cc3-6bb8-2faf-8e0b-5a7c87f32f04', 0, '2018-03-03 20:11:10', 0),
('d77a0c4c-6bb3-3556-0caa-5a9af4e2f28b', 'f33b6a10-a642-275e-77b6-5a9af450670d', '6d76bc8f-8f0a-2a0e-3ab8-5a7c91b68286', 0, '2018-03-03 20:11:10', 0),
('d85d71bc-ab41-7e92-e503-5a9af4431173', 'f33b6a10-a642-275e-77b6-5a9af450670d', '702f4976-e8d9-1e16-ecb3-5a7c87c17e95', 0, '2018-03-03 20:11:10', 0),
('d8d59aac-5298-4a85-c143-5a9af441aa18', 'f33b6a10-a642-275e-77b6-5a9af450670d', 'dff2ac46-9f42-a5bd-469f-5a7c879bc7f8', 0, '2018-03-03 20:11:10', 0),
('d8f5bd84-2e59-5671-3a26-5a9af4f8051e', 'f33b6a10-a642-275e-77b6-5a9af450670d', 'e0a3e99b-51bd-fbbc-cb29-5a7c883d0865', 0, '2018-03-03 20:11:10', 0),
('da182c2f-5a6a-b353-aa10-5a9af45029ea', 'f33b6a10-a642-275e-77b6-5a9af450670d', 'edbcec32-ba1e-5783-7254-5a7c87e5ad27', 0, '2018-03-03 20:11:10', 0),
('da8cda90-1617-1cc4-a0e5-5a9af40129e0', 'f33b6a10-a642-275e-77b6-5a9af450670d', 'cce224b3-621b-b08d-f08c-5a7c871d8a5f', 0, '2018-03-03 20:11:10', 0),
('dab546b6-ac18-e3ef-efd7-5a9af4b89dc4', 'f33b6a10-a642-275e-77b6-5a9af450670d', 'b2f806a6-90ab-e1e4-bd68-5a7c879e618c', 0, '2018-03-03 20:11:10', 0),
('db2246c6-c01d-d731-a76b-5a9af4c2eaf1', 'f33b6a10-a642-275e-77b6-5a9af450670d', '423b0090-c8f8-cf99-6040-5a7c87b82e1c', 0, '2018-03-03 20:11:10', 0),
('dba06d07-7e6a-c016-32a5-5a9af4706f93', 'f33b6a10-a642-275e-77b6-5a9af450670d', '2cf1d029-d51a-7a4c-b907-5a7c87a1aa73', 0, '2018-03-03 20:11:10', 0),
('dcebdb6c-3580-cc8a-1035-5a9af4b90cd2', 'f33b6a10-a642-275e-77b6-5a9af450670d', '11bb7876-162b-a8c0-5d5e-5a7c87ad2e81', 0, '2018-03-03 20:11:10', 0),
('dd6004b7-81e6-8ffd-56b7-5a9af431d427', 'f33b6a10-a642-275e-77b6-5a9af450670d', 'd7b5f8d6-a5b0-e92d-9da8-5a7c87ce91cc', 0, '2018-03-03 20:11:10', 0),
('ddcbd344-a8a9-6580-5662-5a9af499608f', 'f33b6a10-a642-275e-77b6-5a9af450670d', '65566383-5624-89e7-f9dd-5a7c87b64dd6', 0, '2018-03-03 20:11:10', 0),
('de906ebf-9c47-1917-2291-5a9af47a2c30', 'f33b6a10-a642-275e-77b6-5a9af450670d', '832f0980-6373-df38-b9f2-5a7c886f4490', 0, '2018-03-03 20:11:10', 0),
('df5dbdd0-6f6b-d018-409d-5a9af44b9fec', 'f33b6a10-a642-275e-77b6-5a9af450670d', '226734b3-f884-bad7-2b64-5a7c8730a381', 0, '2018-03-03 20:11:10', 0),
('dfb198cc-c054-9def-78b0-5a9af493466a', 'f33b6a10-a642-275e-77b6-5a9af450670d', '4bb0b02c-75b2-44c6-d56b-5a7c9100a59f', 0, '2018-03-03 20:11:10', 0),
('dfbf6c70-278f-3806-ce3d-5a9af4839318', 'f33b6a10-a642-275e-77b6-5a9af450670d', '39b0ff50-11b0-4fb8-b120-5a7c87e2eb80', 0, '2018-03-03 20:11:10', 0),
('e0275d58-2f43-7a14-2fc1-5a9af4cf774d', 'f33b6a10-a642-275e-77b6-5a9af450670d', '997ffcd5-2ae4-d854-9037-5a7c8706fdaf', 0, '2018-03-03 20:11:10', 0),
('e0567b16-4669-c8b1-bee7-5a9af4611343', 'f33b6a10-a642-275e-77b6-5a9af450670d', 'a26f69b2-aef7-74f6-3810-5a7c8779d461', 0, '2018-03-03 20:11:10', 0),
('e10528fa-ee9f-e1f6-863e-5a9af46b8bf5', 'f33b6a10-a642-275e-77b6-5a9af450670d', 'd794e83f-8921-5cdd-ff4b-5a7c871fe923', 0, '2018-03-03 20:11:10', 0),
('e15903ba-ade6-a083-da5b-5a9af43e6fa2', 'f33b6a10-a642-275e-77b6-5a9af450670d', 'fb610124-1b92-cd9a-15ca-5a7c8705f8c7', 0, '2018-03-03 20:11:10', 0),
('e1b95489-33cc-5ee2-ad88-5a9af4500ce3', 'f33b6a10-a642-275e-77b6-5a9af450670d', '2292a552-8e16-a99e-2bca-5a7c871127e6', 0, '2018-03-03 20:11:10', 0),
('e2240ea6-ab1b-f0f3-f75f-5a9af4cd658a', 'f33b6a10-a642-275e-77b6-5a9af450670d', '8067adcd-2431-c729-2057-5a7c87818377', 0, '2018-03-03 20:11:10', 0),
('e294fd6a-dd75-ff87-9e48-5a9af4eca35e', 'f33b6a10-a642-275e-77b6-5a9af450670d', '534a6158-52ca-b352-47f5-5a7c870d3530', 0, '2018-03-03 20:11:10', 0),
('e39c7f41-be5e-ebd6-6a28-5a9af400114e', 'f33b6a10-a642-275e-77b6-5a9af450670d', 'e5ac4c57-994c-6395-a769-5a7c872c8933', 0, '2018-03-03 20:11:10', 0),
('e4e40ff5-d8b0-000a-9c44-5a9af42b8750', 'f33b6a10-a642-275e-77b6-5a9af450670d', '1ac83296-2013-c1f2-4b20-5a7c87d9c0fa', 0, '2018-03-03 20:11:10', 0),
('e5720a03-8f26-a3f8-c7e5-5a9af49e372a', 'f33b6a10-a642-275e-77b6-5a9af450670d', '3d010d2e-c96c-6aff-c05d-5a7c876340d4', 0, '2018-03-03 20:11:10', 0),
('e5947d45-bbcb-c428-e9c2-5a9af4cbf5bb', 'f33b6a10-a642-275e-77b6-5a9af450670d', 'bd914942-c399-c3c9-7ba6-5a7c87df5675', 0, '2018-03-03 20:11:10', 0),
('e61c5823-d0e5-2392-dd6a-5a9af440024d', 'f33b6a10-a642-275e-77b6-5a9af450670d', 'efdfef6a-1dfa-63e1-8dd9-5a7c871e8233', 0, '2018-03-03 20:11:10', 0),
('e61f2f72-6188-9148-d6ce-5a9af43aff0d', 'f33b6a10-a642-275e-77b6-5a9af450670d', '950138ae-7af6-8f4b-07a2-5a7c87de1ce5', 0, '2018-03-03 20:11:10', 0),
('e688491f-6e56-b0d9-48e4-5a9af42cbed1', 'f33b6a10-a642-275e-77b6-5a9af450670d', '27ebd1a5-b67b-baa1-8ba4-5a7c88a75170', 0, '2018-03-03 20:11:10', 0),
('e689378e-47cb-f279-cfb7-5a9af4b65445', 'f33b6a10-a642-275e-77b6-5a9af450670d', '79fba363-87eb-66d9-2694-5a7c91e3e5d5', 0, '2018-03-03 20:11:10', 0),
('e6d845a9-66a4-b43d-dab8-5a9af4715e5e', 'f33b6a10-a642-275e-77b6-5a9af450670d', 'a049ec9a-d9dd-a8d5-2ac7-5a7c874cf906', 0, '2018-03-03 20:11:10', 0),
('e7690d86-eed0-c824-109d-5a9af43e01bd', 'f33b6a10-a642-275e-77b6-5a9af450670d', '8048b564-eb10-8b9f-7d76-5a7c87d6631d', 0, '2018-03-03 20:11:10', 0),
('e7be9f8c-5474-bdf0-8e22-5a9af45e1077', 'f33b6a10-a642-275e-77b6-5a9af450670d', '1c2b8271-8ff1-eb15-07b6-5a7c87d0eb1f', 0, '2018-03-03 20:11:10', 0),
('e8208958-47b0-e448-5c65-5a9af497e2b2', 'f33b6a10-a642-275e-77b6-5a9af450670d', '7b380ac3-8817-3d34-ea13-5a7c87a58609', 0, '2018-03-03 20:11:10', 0),
('e85394a9-ee3c-6b18-7bb1-5a9af427636a', 'f33b6a10-a642-275e-77b6-5a9af450670d', 'e0eece78-8888-a938-a7a0-5a7c87be0b23', 0, '2018-03-03 20:11:10', 0),
('e9b6baf3-7aac-0f73-e86a-5a9af4d77386', 'f33b6a10-a642-275e-77b6-5a9af450670d', '6480f2a4-a9ba-96c6-273a-5a7c885b59d3', 0, '2018-03-03 20:11:10', 0),
('ea7fca73-b407-699c-bd5b-5a9af46b517e', 'f33b6a10-a642-275e-77b6-5a9af450670d', '8c6e6242-c5c3-4146-0155-5a7c87dfa419', 0, '2018-03-03 20:11:10', 0),
('eb4d0f72-fc81-82d9-ae20-5a9af4b50928', 'f33b6a10-a642-275e-77b6-5a9af450670d', 'adcacc11-15c5-7704-b1ff-5a7c8749baae', 0, '2018-03-03 20:11:10', 0),
('eb98313f-63e4-78e6-fbe4-5a9af49202b5', 'f33b6a10-a642-275e-77b6-5a9af450670d', 'e7bcc11f-40c9-1bf5-9bca-5a7c8711daea', 0, '2018-03-03 20:11:10', 0),
('eca43bf9-e19a-be84-f65c-5a9af4928339', 'f33b6a10-a642-275e-77b6-5a9af450670d', 'f3a4ddff-2602-31ab-fdfe-5a7c88c4f76b', 0, '2018-03-03 20:11:10', 0),
('ed3cb20e-b456-6570-3993-5a9af4a3c896', 'f33b6a10-a642-275e-77b6-5a9af450670d', '73569bb1-e694-66ee-3ecf-5a7c91c67706', 0, '2018-03-03 20:11:10', 0),
('edd69e22-1d27-35a2-acea-5a9af4066db9', 'f33b6a10-a642-275e-77b6-5a9af450670d', 'ab1875fb-508e-b68d-b1c1-5a7c87ecabd2', 0, '2018-03-03 20:11:10', 0),
('ee24a85c-998d-0a96-4d33-5a9af4a605aa', 'f33b6a10-a642-275e-77b6-5a9af450670d', '49b15be1-7469-f40f-b538-5a7c87848c15', 0, '2018-03-03 20:11:10', 0),
('ee79aa93-2a57-a100-e9a1-5a9af48b3066', 'f33b6a10-a642-275e-77b6-5a9af450670d', 'f11beeb7-5d13-aec6-252f-5a7c87f59c45', 0, '2018-03-03 20:11:10', 0),
('ef10dd08-c036-5626-edfc-5a9af4221f48', 'f33b6a10-a642-275e-77b6-5a9af450670d', 'c8263453-18c3-ee9f-0461-5a7c87dcfcd8', 0, '2018-03-03 20:11:10', 0),
('ef570d38-73ae-d6d4-8d05-5a9af422e56c', 'f33b6a10-a642-275e-77b6-5a9af450670d', '5b77bc38-9127-0d37-de06-5a7c879f8135', 0, '2018-03-03 20:11:10', 0),
('eff3735a-384f-42c6-bd7c-5a9af43e757b', 'f33b6a10-a642-275e-77b6-5a9af450670d', 'cb240e9c-237a-e509-28a4-5a7c87287654', 0, '2018-03-03 20:11:10', 0),
('f0899dce-9e58-c264-a5af-5a9af478be95', 'f33b6a10-a642-275e-77b6-5a9af450670d', '451102cd-5617-bee3-feb8-5a7c87904436', 0, '2018-03-03 20:11:10', 0),
('f1067a29-3e9d-d6d4-4dff-5a9af4919507', 'f33b6a10-a642-275e-77b6-5a9af450670d', 'cf5c56a1-4802-0c32-b9ae-5a7c879ac69b', 0, '2018-03-03 20:11:10', 0),
('f291ab46-97b4-7d69-cb27-5a9af4aedc31', 'f33b6a10-a642-275e-77b6-5a9af450670d', '2d563ead-86d8-0d1e-2fdc-5a7c87ae5a25', 0, '2018-03-03 20:11:10', 0),
('f2e4db52-5abc-3409-e300-5a9af4095459', 'f33b6a10-a642-275e-77b6-5a9af450670d', '2b3fe6d6-52e0-e4a2-e9d9-5a7c87219889', 0, '2018-03-03 20:11:10', 0),
('f31ce940-d5e1-2a29-a618-5a9af4371e57', 'f33b6a10-a642-275e-77b6-5a9af450670d', '859bc9b9-7d09-f469-75dd-5a7c870715d6', 0, '2018-03-03 20:11:10', 0),
('f329f131-5b49-a96d-61f2-5a9af49481df', 'f33b6a10-a642-275e-77b6-5a9af450670d', 'eb92e6f0-1603-6fed-e5d0-5a7c8746346e', 0, '2018-03-03 20:11:10', 0),
('f3670813-1669-a594-88a5-5a9af43de6aa', 'f33b6a10-a642-275e-77b6-5a9af450670d', 'f0506cac-8ac6-3cb9-23c1-5a7c872755d6', 0, '2018-03-03 20:11:10', 0),
('f402cc15-6d19-ea70-a082-5a9af4191c0c', 'f33b6a10-a642-275e-77b6-5a9af450670d', '8afe5a26-1b27-a34a-115b-5a7c91ece3dd', 0, '2018-03-03 20:11:10', 0),
('f75b0ec0-88f3-63b6-4c1b-5a9af4a87567', 'f33b6a10-a642-275e-77b6-5a9af450670d', '9d00e1d2-a3d7-6eca-c740-5a7c8752611e', 0, '2018-03-03 20:11:10', 0),
('ff80090f-3105-a68c-c141-5a9af4675be7', 'f33b6a10-a642-275e-77b6-5a9af450670d', 'da3f2472-f276-5bad-faa8-5a7c872a89e0', 0, '2018-03-03 20:11:10', 0);

-- --------------------------------------------------------

--
-- Table structure for table `acl_roles_users`
--

CREATE TABLE `acl_roles_users` (
  `id` varchar(36) NOT NULL,
  `role_id` varchar(36) DEFAULT NULL,
  `user_id` varchar(36) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `acl_roles_users`
--

INSERT INTO `acl_roles_users` (`id`, `role_id`, `user_id`, `date_modified`, `deleted`) VALUES
('35d18828-3208-88cb-cfbd-5a9af53641e4', 'f33b6a10-a642-275e-77b6-5a9af450670d', '4668226f-4e70-347c-9740-5a9af48bdd5f', '2018-03-03 19:21:34', 0);

-- --------------------------------------------------------

--
-- Table structure for table `address_book`
--

CREATE TABLE `address_book` (
  `assigned_user_id` char(36) NOT NULL,
  `bean` varchar(50) DEFAULT NULL,
  `bean_id` char(36) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `alerts`
--

CREATE TABLE `alerts` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `is_read` tinyint(1) DEFAULT NULL,
  `target_module` varchar(255) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `url_redirect` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `am_projecttemplates`
--

CREATE TABLE `am_projecttemplates` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `status` varchar(100) DEFAULT 'Draft',
  `priority` varchar(100) DEFAULT 'High',
  `override_business_hours` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `am_projecttemplates_audit`
--

CREATE TABLE `am_projecttemplates_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text,
  `after_value_text` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `am_projecttemplates_contacts_1_c`
--

CREATE TABLE `am_projecttemplates_contacts_1_c` (
  `id` varchar(36) NOT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `am_projecttemplates_ida` varchar(36) DEFAULT NULL,
  `contacts_idb` varchar(36) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `am_projecttemplates_project_1_c`
--

CREATE TABLE `am_projecttemplates_project_1_c` (
  `id` varchar(36) NOT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `am_projecttemplates_project_1am_projecttemplates_ida` varchar(36) DEFAULT NULL,
  `am_projecttemplates_project_1project_idb` varchar(36) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `am_projecttemplates_users_1_c`
--

CREATE TABLE `am_projecttemplates_users_1_c` (
  `id` varchar(36) NOT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `am_projecttemplates_ida` varchar(36) DEFAULT NULL,
  `users_idb` varchar(36) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `am_tasktemplates`
--

CREATE TABLE `am_tasktemplates` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `status` varchar(100) DEFAULT 'Not Started',
  `priority` varchar(100) DEFAULT 'High',
  `percent_complete` int(255) DEFAULT '0',
  `predecessors` int(255) DEFAULT NULL,
  `milestone_flag` tinyint(1) DEFAULT '0',
  `relationship_type` varchar(100) DEFAULT 'FS',
  `task_number` int(255) DEFAULT NULL,
  `order_number` int(255) DEFAULT NULL,
  `estimated_effort` int(255) DEFAULT NULL,
  `utilization` varchar(100) DEFAULT '0',
  `duration` int(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `am_tasktemplates_am_projecttemplates_c`
--

CREATE TABLE `am_tasktemplates_am_projecttemplates_c` (
  `id` varchar(36) NOT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `am_tasktemplates_am_projecttemplatesam_projecttemplates_ida` varchar(36) DEFAULT NULL,
  `am_tasktemplates_am_projecttemplatesam_tasktemplates_idb` varchar(36) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `am_tasktemplates_audit`
--

CREATE TABLE `am_tasktemplates_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text,
  `after_value_text` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `aobh_businesshours`
--

CREATE TABLE `aobh_businesshours` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `opening_hours` varchar(100) DEFAULT '1',
  `closing_hours` varchar(100) DEFAULT '1',
  `open` tinyint(1) DEFAULT NULL,
  `day` varchar(100) DEFAULT 'monday'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `aod_index`
--

CREATE TABLE `aod_index` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `last_optimised` datetime DEFAULT NULL,
  `location` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `aod_index`
--

INSERT INTO `aod_index` (`id`, `name`, `date_entered`, `date_modified`, `modified_user_id`, `created_by`, `description`, `deleted`, `assigned_user_id`, `last_optimised`, `location`) VALUES
('1', 'Index', '2018-02-08 17:27:26', '2018-02-08 17:27:26', '1', '1', NULL, 0, NULL, NULL, 'modules/AOD_Index/Index/Index');

-- --------------------------------------------------------

--
-- Table structure for table `aod_indexevent`
--

CREATE TABLE `aod_indexevent` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `error` varchar(255) DEFAULT NULL,
  `success` tinyint(1) DEFAULT '0',
  `record_id` char(36) DEFAULT NULL,
  `record_module` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `aod_indexevent`
--

INSERT INTO `aod_indexevent` (`id`, `name`, `date_entered`, `date_modified`, `modified_user_id`, `created_by`, `description`, `deleted`, `assigned_user_id`, `error`, `success`, `record_id`, `record_module`) VALUES
('12e075a3-5e38-9a18-965d-5aa97ad78882', '', '2018-03-14 19:39:10', '2018-03-14 19:39:10', '1', '1', NULL, 0, NULL, NULL, 1, '8fefaaee-fee7-8a0c-42fb-5aa97ab60472', 'atomi_invoice_payment_details'),
('14811235-780d-914f-a4fe-5aa38ef57829', '', '2018-03-10 07:50:05', '2018-03-10 07:50:05', '1', '1', NULL, 0, NULL, NULL, 1, '7a639f10-f90f-b46b-ab4f-5aa38e907c7d', 'atomi_invoice_payment_details'),
('15ab277e-b971-19a9-8b0b-5aa953e983d3', 'Loo Moo', '2018-03-14 16:54:43', '2018-03-14 16:54:43', '1', '1', NULL, 0, NULL, NULL, 1, 'aa244f48-f036-6fe9-c233-5aa95340e88a', 'Accounts'),
('1634309a-a580-d479-0fae-5aa03cdc6ae3', '', '2018-03-07 19:26:42', '2018-03-07 19:26:42', '1', '1', NULL, 0, NULL, NULL, 1, '7c014d2c-6587-5ae4-fb1b-5aa03ceb30d0', 'atomi_invoice_payment_details'),
('190e6341-0d84-c225-2579-5aabfa761f51', '', '2018-03-16 17:12:08', '2018-03-16 17:12:08', '1', '1', NULL, 0, NULL, NULL, 1, '8b7cb068-bb02-30c5-eed1-5aabfa17112f', 'atomi_invoice_payment_details'),
('1e08e943-6f87-9298-7f3f-5aa03566f5eb', '', '2018-03-07 18:55:39', '2018-03-07 18:55:39', '1', '1', NULL, 0, NULL, NULL, 1, '5367fb98-6b2a-9ac7-ded0-5aa03589942c', 'atomi_invoice_payment_details'),
('248bd6a2-f6f0-bb8e-787a-5aa3c9aa0306', '', '2018-03-10 12:02:15', '2018-03-10 12:02:15', '1', '1', NULL, 0, NULL, NULL, 1, '1ca154a3-193d-7f8e-4f7f-5aa3c97df003', 'atomi_invoice_payment_details'),
('26a63b86-d2fb-397c-d582-5aa518d12982', '', '2018-03-11 11:53:52', '2018-03-11 11:53:52', '1', '1', NULL, 0, NULL, NULL, 1, 'a8ef5cf5-2eff-0d20-2671-5aa518663409', 'atomi_invoice_payment_details'),
('276be1b0-84ab-8ce7-15e6-5aa77877b753', '', '2018-03-13 07:08:46', '2018-03-13 07:08:46', '1', '1', NULL, 0, NULL, NULL, 1, 'cf9c32ac-e05e-581e-1666-5aa778390d1b', 'atomi_invoice_payment_details'),
('2824d13f-a45d-66c4-b382-5aa8123a46af', '', '2018-03-13 18:05:16', '2018-03-13 18:05:16', '1', '1', NULL, 0, NULL, NULL, 1, '88d73b1a-e7a4-eac2-8144-5aa81207634c', 'atomi_invoice_payment_details'),
('2ab2b3b5-6f4c-e8fd-7615-5aa03ae59e70', '', '2018-03-07 19:17:48', '2018-03-07 19:17:48', '1', '1', NULL, 0, NULL, NULL, 1, '93e435b5-3bdb-70bc-9fc8-5aa03aa10c5a', 'atomi_invoice_payment_details'),
('2b0d0bee-3683-0c43-2777-5aa81b5d78de', '', '2018-03-13 18:40:16', '2018-03-13 18:40:16', '1', '1', NULL, 0, NULL, NULL, 1, '8b4f16fe-2749-d989-bef8-5aa81bbdf451', 'atomi_invoice_payment_details'),
('2b270571-91b2-f142-37cb-5aa97a06787c', '', '2018-03-14 19:40:41', '2018-03-14 19:40:41', '1', '1', NULL, 0, NULL, NULL, 1, '6c7a6567-b802-707a-ded7-5aa97a50a696', 'atomi_invoice_payment_details'),
('2c5e17b3-39c1-c8e1-d2eb-5aa38ab602df', '', '2018-03-10 07:32:50', '2018-03-10 07:32:50', '1', '1', NULL, 0, NULL, NULL, 1, '917c243c-8763-87de-f04b-5aa38a0d13c8', 'atomi_invoice_payment_details'),
('2d01f577-35d3-d3ec-caa7-5aa8199545ba', '', '2018-03-13 18:32:47', '2018-03-13 18:32:47', '1', '1', NULL, 0, NULL, NULL, 1, '866b928e-b949-fa11-3a91-5aa819780630', 'atomi_invoice_payment_details'),
('2ebce088-849d-fa41-bbff-5ac8d27d1b80', '', '2018-04-07 14:16:38', '2018-04-07 14:16:38', '1', '1', NULL, 0, NULL, NULL, 1, '4cd59974-b156-69d2-a4b1-5ac8d2c65fd6', 'atomi_invoice_payment_details'),
('33037be8-a212-4186-ac51-5aa51bedb8d2', '', '2018-03-11 12:05:34', '2018-03-11 12:05:34', '1', '1', NULL, 0, NULL, NULL, 1, '9e4a914a-effa-aff9-4c82-5aa51bdfab4f', 'atomi_invoice_payment_details'),
('3606207f-28cc-38b0-977a-5aa0397ed2ef', '', '2018-03-07 19:12:27', '2018-03-07 19:12:27', '1', '1', NULL, 0, NULL, NULL, 1, '9a6a899c-41d4-3ac3-ec1e-5aa039997b23', 'atomi_invoice_payment_details'),
('366b15de-1b01-d3a5-c37c-5ac9f75fc611', '', '2018-04-08 11:05:03', '2018-04-08 11:05:03', '1', '1', NULL, 0, NULL, NULL, 1, 'b5a3f56a-8a01-62d1-235f-5ac9f7ef518f', 'atomi_invoice_payment_details'),
('371e3adf-c080-b22c-6bde-5aabf931ccb2', 'Demo Account', '2018-03-16 17:06:14', '2018-03-16 17:06:14', '1', '1', NULL, 0, NULL, NULL, 1, 'a40aba2e-402a-3b35-6153-5aabf9798656', 'Accounts'),
('38ac6e98-52a9-2035-2ef3-5aa800215c30', '', '2018-03-13 16:47:01', '2018-03-13 16:47:01', '1', '1', NULL, 0, NULL, NULL, 1, '2fe08358-7edd-7c0c-0b9c-5aa800574edb', 'atomi_invoice_payment_details'),
('39cca26f-386b-bad1-ae1e-5aa5172c8e72', '', '2018-03-11 11:49:49', '2018-03-11 11:49:49', '1', '1', NULL, 0, NULL, NULL, 1, 'beeddb73-5482-a375-ca3e-5aa517a32457', 'atomi_invoice_payment_details'),
('3acdad27-3bd5-f835-2a6f-5aa517a2bd00', '', '2018-03-11 11:49:49', '2018-03-11 11:49:49', '1', '1', NULL, 0, NULL, NULL, 1, 'cca8db7e-68b6-fc63-092a-5aa51792f68e', 'atomi_invoice_payment_details'),
('3beb2606-b17f-0c6e-6aab-5aa0358513f0', '', '2018-03-07 18:55:39', '2018-03-07 18:55:39', '1', '1', NULL, 0, NULL, NULL, 1, 'e53dc521-0f85-8704-05e3-5aa035bef4c0', 'atomi_invoice_payment_details'),
('3cc26b45-eb14-f4be-6e92-5ac8d25e96d5', '', '2018-04-07 14:16:37', '2018-04-07 14:16:37', '1', '1', NULL, 0, NULL, NULL, 1, '200a636b-598a-8e6d-80b2-5ac8d23cf356', 'atomi_invoice_payment_details'),
('3f9d51bc-f04f-0ba2-481a-5aa173e08833', '', '2018-03-08 17:31:06', '2018-03-08 17:31:06', '1', '1', NULL, 0, NULL, NULL, 1, '939ad1d4-b2aa-bda3-54d5-5aa1733a5f79', 'atomi_invoice_payment_details'),
('3fb97de1-e1ca-6319-e452-5aa3cac31a6c', '', '2018-03-10 12:07:43', '2018-03-10 12:07:43', '1', '1', NULL, 0, NULL, NULL, 1, '713312a2-b0fb-5477-1287-5aa3ca8630df', 'atomi_invoice_payment_details'),
('401ad54c-8ba5-9dd1-ffe9-5aa036e0918e', '', '2018-03-07 19:00:59', '2018-03-07 19:00:59', '1', '1', NULL, 0, NULL, NULL, 1, 'bd476f7d-7573-6982-e200-5aa0363923b7', 'atomi_invoice_payment_details'),
('41e0a470-7ac8-cc2d-007d-5aa952062bb9', 'Noon Doo', '2018-03-14 16:50:42', '2018-03-14 16:50:42', '1', '1', NULL, 0, NULL, NULL, 1, '734c4075-0718-fa26-cfb6-5aa9521c4a82', 'Accounts'),
('42478796-58b6-a1f9-b236-5aa039a4bc16', '', '2018-03-07 19:10:03', '2018-03-07 19:10:03', '1', '1', NULL, 0, NULL, NULL, 1, '850f5ceb-ee05-2020-aaef-5aa0390d9b95', 'atomi_invoice_payment_details'),
('4417d822-ab64-f496-b9fe-5ac678be48e8', '', '2018-04-05 19:27:32', '2018-04-05 19:27:32', '1', '1', NULL, 0, NULL, NULL, 1, '16c62764-2888-e32e-490a-5ac678cffa60', 'atomi_invoice_payment_details'),
('460a46d1-690d-6b0b-ce26-5ac675726bb4', 'new contract', '2018-04-05 19:15:06', '2018-04-05 19:15:06', '1', '1', NULL, 0, NULL, NULL, 1, '3a81d122-0e13-836c-885c-5ac6757efed9', 'AOS_Contracts'),
('4cac3f88-d9ca-e80c-0203-5aa0392fd81c', '', '2018-03-07 19:14:05', '2018-03-07 19:14:05', '1', '1', NULL, 0, NULL, NULL, 1, 'de97a022-0627-2f48-fda3-5aa0398f66db', 'atomi_invoice_payment_details'),
('51f72b71-ea4b-5e7e-be77-5aa38ac11454', '', '2018-03-10 07:32:45', '2018-03-10 07:32:45', '1', '1', NULL, 0, NULL, NULL, 1, 'bc4d7993-c6b1-26e7-cc46-5aa38a1274b4', 'atomi_invoice_payment_details'),
('552f7aa2-724a-6dfa-b7d0-5ac9f746c49b', 'Mr. New Contact Last', '2018-04-08 11:04:47', '2018-04-08 11:04:47', '1', '1', NULL, 0, NULL, NULL, 1, '657b58ac-ece1-3ecb-81b0-5ac9f7e5a9a5', 'Contacts'),
('58d4e783-ca74-f280-aeaf-5aa518f97d50', '', '2018-03-11 11:53:51', '2018-03-11 11:53:51', '1', '1', NULL, 0, NULL, NULL, 1, 'f0063a9d-c45b-3d1e-5c4b-5aa518bd0bd5', 'atomi_invoice_payment_details'),
('58db08a5-324d-8540-2554-5aa978350bd7', '', '2018-03-14 19:32:09', '2018-03-14 19:32:09', '1', '1', NULL, 0, NULL, NULL, 1, '7977b58c-179d-06b3-459b-5aa9786be60d', 'atomi_invoice_payment_details'),
('592ffa92-6e46-9a68-9b8e-5aa036a19290', '', '2018-03-07 18:58:18', '2018-03-07 18:58:18', '1', '1', NULL, 0, NULL, NULL, 1, '9216e1b7-f203-2c36-b0c2-5aa0364dd510', 'atomi_invoice_payment_details'),
('5a0efb87-bf00-4af6-dc8c-5aa3cac21277', '', '2018-03-10 12:07:42', '2018-03-10 12:07:42', '1', '1', NULL, 0, NULL, NULL, 1, '2506a702-0f08-e4c9-98bc-5aa3cab6e37f', 'atomi_invoice_payment_details'),
('5e4383d5-5dbe-424e-6bc8-5aa802091434', '', '2018-03-13 16:57:23', '2018-03-13 16:57:23', '1', '1', NULL, 0, NULL, NULL, 1, '6d5da1d5-fab9-cdbb-ca12-5aa802104ce0', 'atomi_invoice_payment_details'),
('608dc030-d0b9-4f2a-c877-5a7c8ce30b1b', 'Sagar Customer', '2018-02-08 17:43:09', '2018-02-09 08:19:10', '1', '1', NULL, 0, '', NULL, 1, 'f30070f4-e846-d94c-512c-5a7c8cf49739', 'Accounts'),
('61446c02-ed96-69a2-4d66-5ac28a3b584a', '', '2018-04-02 19:56:07', '2018-04-02 19:56:07', '1', '1', NULL, 0, NULL, NULL, 1, 'accf5c10-c86e-ec90-b916-5ac28a344cf2', 'atomi_invoice_payment_details'),
('62b856e1-ef8c-70c3-6ada-5aa817b87824', '', '2018-03-13 18:24:55', '2018-03-13 18:24:55', '1', '1', NULL, 0, NULL, NULL, 1, 'b928c882-88cf-bec3-54c5-5aa8178aa22a', 'atomi_invoice_payment_details'),
('6a97e951-881a-addf-0e40-5aa03cf75c01', '', '2018-03-07 19:26:41', '2018-03-07 19:26:41', '1', '1', NULL, 0, NULL, NULL, 1, 'b912d912-14f3-789f-4503-5aa03cc8ed31', 'atomi_invoice_payment_details'),
('6aef3993-983f-9419-b0ee-5aa03958ef2d', '', '2018-03-07 19:10:03', '2018-03-07 19:10:03', '1', '1', NULL, 0, NULL, NULL, 1, 'd417a6cd-f68d-d4b3-724d-5aa039c888e4', 'atomi_invoice_payment_details'),
('6df22d5e-986e-ae6e-1f36-5aa0017ee6cc', 'test', '2018-03-07 15:13:45', '2018-03-07 18:33:07', '1', '1', NULL, 0, '', NULL, 1, 'a94b9e71-362e-f629-893f-5aa001e9dddf', 'atomi_invoice_payment_details'),
('6f7ceed3-c41f-ebc7-7b8d-5aa81c5487c1', '', '2018-03-13 18:44:57', '2018-03-13 18:44:57', '1', '1', NULL, 0, NULL, NULL, 1, 'bce581a3-9de2-edd0-b374-5aa81c9f6a06', 'atomi_invoice_payment_details'),
('72cb8808-a463-7129-b385-5aa77b73e732', '', '2018-03-13 07:20:51', '2018-03-13 07:20:51', '1', '1', NULL, 0, NULL, NULL, 1, 'b1a10a3b-9a07-b645-dcd2-5aa77ba52e74', 'atomi_invoice_payment_details'),
('764c05f3-738a-4d45-0b57-5aa81e072228', '', '2018-03-13 18:56:10', '2018-03-13 18:56:10', '1', '1', NULL, 0, NULL, NULL, 1, 'f3c80d83-3f4f-ec17-a27e-5aa81e52af08', 'atomi_invoice_payment_details'),
('765c0e40-e3d6-babf-ba5e-5accee8cf40a', '', '2018-04-10 17:04:44', '2018-04-10 17:04:44', '1', '1', NULL, 0, NULL, NULL, 1, '626bd7eb-d338-e6c4-70d0-5acceeee1791', 'atomi_invoice_payment_details'),
('78cf2f19-60f7-bf7b-1c1a-5aa38a2facbe', '', '2018-03-10 07:32:50', '2018-03-10 07:32:50', '1', '1', NULL, 0, NULL, NULL, 1, 'c0fd710d-3027-15c2-de8a-5aa38a9766d5', 'atomi_invoice_payment_details'),
('790cf8e0-b29d-047e-e3d6-5aa38a1eb1e1', '', '2018-03-10 07:32:52', '2018-03-10 07:32:52', '1', '1', NULL, 0, NULL, NULL, 1, 'd45c3ea2-77e3-cb6e-8f00-5aa38a09e3f9', 'atomi_invoice_payment_details'),
('7d9dcfbd-1bee-d95c-7d18-5aa81c28b97f', '', '2018-03-13 18:47:57', '2018-03-13 18:47:57', '1', '1', NULL, 0, NULL, NULL, 1, 'cf8e77c9-5551-33ff-e6e7-5aa81c20560a', 'atomi_invoice_payment_details'),
('7ef258d1-fe1a-e235-6137-5aa952c0edec', 'sads', '2018-03-14 16:47:24', '2018-03-14 16:47:24', '1', '1', NULL, 0, NULL, NULL, 1, '206b1561-8ff0-8fa6-7179-5aa95288c61d', 'Accounts'),
('7f3eee57-89f9-779f-353c-5aa173023243', '', '2018-03-08 17:31:03', '2018-03-08 17:31:03', '1', '1', NULL, 0, NULL, NULL, 1, '15445960-4742-2371-303d-5aa173c3f0b5', 'atomi_invoice_payment_details'),
('80480d33-bb56-ede9-0167-5aa03a34cc01', '', '2018-03-07 19:17:48', '2018-03-07 19:17:48', '1', '1', NULL, 0, NULL, NULL, 1, '201f3e58-1c08-4cc2-74bd-5aa03aef13fd', 'atomi_invoice_payment_details'),
('82a48976-6ba3-0da5-085e-5aa0393ab612', '', '2018-03-07 19:12:27', '2018-03-07 19:12:27', '1', '1', NULL, 0, NULL, NULL, 1, '19d41b1a-60cb-0520-a9ac-5aa0394aa205', 'atomi_invoice_payment_details'),
('833178a6-bd0b-0537-58a8-5aa036e6519e', '', '2018-03-07 19:00:59', '2018-03-07 19:00:59', '1', '1', NULL, 0, NULL, NULL, 1, 'b0b90571-b942-0b1a-f5fc-5aa0368f62e7', 'atomi_invoice_payment_details'),
('83d30945-ae13-fee0-7e2f-5aa036c8dba3', '', '2018-03-07 18:58:17', '2018-03-07 18:58:17', '1', '1', NULL, 0, NULL, NULL, 1, 'eb91b04b-e4b2-019b-54d8-5aa036fa9839', 'atomi_invoice_payment_details'),
('843d8a16-f38a-6db0-be27-5aa1738745ad', '', '2018-03-08 17:31:06', '2018-03-08 17:31:06', '1', '1', NULL, 0, NULL, NULL, 1, 'a9c244a1-6453-f183-14d7-5aa173b6d5f9', 'atomi_invoice_payment_details'),
('86580b32-fe14-ce9a-b930-5aa173d24201', '', '2018-03-08 17:31:07', '2018-03-08 17:31:07', '1', '1', NULL, 0, NULL, NULL, 1, '51c91b5d-56c2-8ca7-ef3c-5aa173297581', 'atomi_invoice_payment_details'),
('89dd5ebd-ee2f-5a8e-1231-5aa3c95bd5e4', '', '2018-03-10 12:04:29', '2018-03-10 12:04:29', '1', '1', NULL, 0, NULL, NULL, 1, '3aa248e5-2d66-ef69-02e3-5aa3c98f95a4', 'atomi_invoice_payment_details'),
('8a01fd67-af4b-1fc3-ca54-5aa7f63c569d', '', '2018-03-13 16:05:55', '2018-03-13 16:05:55', '1', '1', NULL, 0, NULL, NULL, 1, '37d6d1b0-7262-bd9a-d300-5aa7f65d80ed', 'atomi_invoice_payment_details'),
('8ae0a895-1f5d-762f-f8aa-5a7c8df658ef', 'Cameras', '2018-02-08 17:49:55', '2018-02-08 17:49:55', '1', '1', NULL, 0, NULL, NULL, 1, '5e5bc32c-d98d-45b9-8e75-5a7c8d758d96', 'AOS_Product_Categories'),
('8bd5bf52-7362-a79a-f052-5aa51b8a64d0', '', '2018-03-11 12:05:34', '2018-03-11 12:05:34', '1', '1', NULL, 0, NULL, NULL, 1, '878602bf-68ec-09ec-5369-5aa51b235aad', 'atomi_invoice_payment_details'),
('8e771107-d745-43bb-4b3f-5a999546fcee', 'Invoice_Cool.pdf', '2018-03-02 18:17:11', '2018-03-02 18:17:11', '1', '1', NULL, 0, NULL, NULL, 1, 'd367a026-f74d-ff9a-9571-5a99950d1e98', 'Notes'),
('96785f18-654a-a168-919f-5aa38e53bc82', '', '2018-03-10 07:50:07', '2018-03-10 07:50:07', '1', '1', NULL, 0, NULL, NULL, 1, 'f13528ba-2b96-ba87-6ce0-5aa38e7c9998', 'atomi_invoice_payment_details'),
('96fb12c0-6588-8218-878e-5a7fd4a020f3', 'Mr. Sagar Munot', '2018-02-11 05:27:30', '2018-02-11 05:27:30', '1', '1', NULL, 0, NULL, NULL, 1, '744a98de-033e-85c2-a97d-5a7fd473764f', 'Contacts'),
('97e30391-cdef-99bf-dcf4-5ac9f7c6ebc1', '', '2018-04-08 11:05:02', '2018-04-08 11:05:02', '1', '1', NULL, 0, NULL, NULL, 1, 'c87ab0fe-4f86-5d38-bea6-5ac9f722fee0', 'atomi_invoice_payment_details'),
('97ee45b8-6fd9-bc5a-6c4f-5aa51899f8b0', '', '2018-03-11 11:53:52', '2018-03-11 11:53:52', '1', '1', NULL, 0, NULL, NULL, 1, 'e3d9735c-f3c8-8d03-038b-5aa51804196e', 'atomi_invoice_payment_details'),
('99c90f1b-20bd-0a05-b4d5-5aa970c6bb8a', '', '2018-03-14 18:56:23', '2018-03-14 18:56:23', '1', '1', NULL, 0, NULL, NULL, 1, '428c062c-fa14-e1cd-eb17-5aa9707eabf4', 'atomi_invoice_payment_details'),
('9a50e409-90d5-52b1-d1c4-5aa814d3b89e', '', '2018-03-13 18:12:39', '2018-03-13 18:12:39', '1', '1', NULL, 0, NULL, NULL, 1, '16a1d456-08aa-0365-5aeb-5aa8140e9683', 'atomi_invoice_payment_details'),
('9fdb624c-3566-002e-2236-5aba60c51784', '', '2018-03-27 15:16:40', '2018-03-27 15:16:40', '1', '1', NULL, 0, NULL, NULL, 1, '45d3460b-61da-3cc8-bfa8-5aba609d1ba6', 'atomi_invoice_payment_details'),
('a21a45d4-42de-082a-bec1-5aa03c3c36b0', '', '2018-03-07 19:26:41', '2018-03-07 19:26:41', '1', '1', NULL, 0, NULL, NULL, 1, '31041076-5b7b-b7e6-4539-5aa03ce54697', 'atomi_invoice_payment_details'),
('a34ad0d5-5c8d-69cc-8b0c-5aa039f21cf6', '', '2018-03-07 19:14:06', '2018-03-07 19:14:06', '1', '1', NULL, 0, NULL, NULL, 1, '8be00b3a-a02e-9896-dbdd-5aa0394e2dc1', 'atomi_invoice_payment_details'),
('a3cc32dc-23d7-46c6-b9a4-5aa81d9ea06b', '', '2018-03-13 18:48:58', '2018-03-13 18:48:58', '1', '1', NULL, 0, NULL, NULL, 1, 'ef6ad65a-6ddb-15d8-d496-5aa81d52d961', 'atomi_invoice_payment_details'),
('a65c3fa6-d806-3388-1a1c-5aa97015fb0f', '', '2018-03-14 18:56:22', '2018-03-14 18:56:22', '1', '1', NULL, 0, NULL, NULL, 1, '91a8d590-ddb0-5a89-d8ba-5aa970b038cf', 'atomi_invoice_payment_details'),
('a768c999-5702-459f-dd09-5aa7787ae1f8', '', '2018-03-13 07:08:46', '2018-03-13 07:08:46', '1', '1', NULL, 0, NULL, NULL, 1, '35c4cbaf-85dd-679c-7f06-5aa778d78a27', 'atomi_invoice_payment_details'),
('a91b8341-31b1-7ed5-3d87-5aa3c914acb5', '', '2018-03-10 12:04:26', '2018-03-10 12:04:26', '1', '1', NULL, 0, NULL, NULL, 1, 'efc2cdcc-c31a-e925-5f84-5aa3c9729908', 'atomi_invoice_payment_details'),
('ad84665a-a00e-a5f9-75ab-5aa816e5f1a4', '', '2018-03-13 18:20:53', '2018-03-13 18:20:53', '1', '1', NULL, 0, NULL, NULL, 1, '117f7608-ece0-9fe8-18e7-5aa816667566', 'atomi_invoice_payment_details'),
('adfafc11-4a20-e6bf-3fb3-5aa38af7da5e', '', '2018-03-10 07:32:45', '2018-03-10 07:32:45', '1', '1', NULL, 0, NULL, NULL, 1, '2dbe2411-f803-e656-80c3-5aa38aec8e2e', 'atomi_invoice_payment_details'),
('b08b1e1f-c833-f42e-cd92-5ac9f7166933', '', '2018-04-08 11:05:05', '2018-04-08 11:05:05', '1', '1', NULL, 0, NULL, NULL, 1, '7c62f919-eef4-fc22-5c0b-5ac9f7642392', 'atomi_invoice_payment_details'),
('b5430322-f16f-386b-ecf6-5aa979b25046', '', '2018-03-14 19:34:25', '2018-03-14 19:34:25', '1', '1', NULL, 0, NULL, NULL, 1, '5b7481d3-e35d-b82d-a18e-5aa9796ba893', 'atomi_invoice_payment_details'),
('b5c848e2-d1d9-c1f1-e007-5aa039fbc58f', '', '2018-03-07 19:12:28', '2018-03-07 19:12:28', '1', '1', NULL, 0, NULL, NULL, 1, '47266018-6391-b435-ccd9-5aa039a81387', 'atomi_invoice_payment_details'),
('b5ec1f2d-c21d-b4ab-e1ea-5aca0bee2f06', '', '2018-04-08 12:30:55', '2018-04-08 12:30:55', '1', '1', NULL, 0, NULL, NULL, 1, 'dec2ebd3-2e19-c3dc-a451-5aca0bb57a3b', 'atomi_invoice_payment_details'),
('b6a2dd3c-f93d-27ef-3e37-5aa778f6fcff', '', '2018-03-13 07:08:45', '2018-03-13 07:08:45', '1', '1', NULL, 0, NULL, NULL, 1, 'e14cfc09-0b6f-24ff-b1ac-5aa77891754c', 'atomi_invoice_payment_details'),
('b9357759-effd-f700-81c3-5aa3c9536045', '', '2018-03-10 12:02:13', '2018-03-10 12:02:13', '1', '1', NULL, 0, NULL, NULL, 1, '98b3db71-84d8-f537-53da-5aa3c976f6a2', 'atomi_invoice_payment_details'),
('b9afdafa-38d3-a0fc-cdb2-5aa811471093', '', '2018-03-13 17:59:39', '2018-03-13 17:59:39', '1', '1', NULL, 0, NULL, NULL, 1, '95628325-3d93-5680-60cf-5aa811f74bd2', 'atomi_invoice_payment_details'),
('bd070a97-ee69-7914-1572-5ac28bbf42ae', '', '2018-04-02 19:57:37', '2018-04-02 19:57:37', '1', '1', NULL, 0, NULL, NULL, 1, '7fed05c0-3fe1-c5b1-9f3b-5ac28ba2913d', 'atomi_invoice_payment_details'),
('bd41a717-fb57-a5e2-d18c-5aa035f8d435', '', '2018-03-07 18:55:40', '2018-03-07 18:55:40', '1', '1', NULL, 0, NULL, NULL, 1, '35f2b0f6-244d-9ee0-28cd-5aa035815f80', 'atomi_invoice_payment_details'),
('bdaf0be7-c0db-e92d-15d9-5aa80d2370f8', '', '2018-03-13 17:41:26', '2018-03-13 17:41:26', '1', '1', NULL, 0, NULL, NULL, 1, '50974f89-1d30-fddb-4bc8-5aa80dc41db6', 'atomi_invoice_payment_details'),
('bdc65be7-24ca-49d4-7e4d-5aa0390bf4b1', '', '2018-03-07 19:10:02', '2018-03-07 19:10:02', '1', '1', NULL, 0, NULL, NULL, 1, '27dae871-625b-52d4-b780-5aa039c82ef8', 'atomi_invoice_payment_details'),
('c077a068-db93-7f6e-946d-5ac675b61c4a', 'new contract Contract Renewal Reminder', '2018-04-05 19:15:05', '2018-04-05 19:15:08', '1', '1', NULL, 0, '', NULL, 1, 'bb16bf42-221b-c690-7f33-5ac675aa18f7', 'Calls'),
('c1c4ae67-d91c-5987-595f-5aa51766deb2', '', '2018-03-11 11:49:49', '2018-03-11 11:49:49', '1', '1', NULL, 0, NULL, NULL, 1, '52b0227d-7f1a-fb17-0577-5aa517b154e9', 'atomi_invoice_payment_details'),
('c328e8b4-563d-dffb-ca8a-5aca0b63a7e3', '', '2018-04-08 12:30:51', '2018-04-08 12:30:51', '1', '1', NULL, 0, NULL, NULL, 1, 'cc092f8b-c72e-66ea-d0bf-5aca0bb54f76', 'atomi_invoice_payment_details'),
('c4554150-fa7f-cd83-c062-5aa954fbb8ff', 'Com Jon', '2018-03-14 16:58:07', '2018-03-14 16:58:07', '1', '1', NULL, 0, NULL, NULL, 1, 'c2e21265-268e-ba71-e850-5aa954e2052d', 'Accounts'),
('c45c2661-0570-b831-6d7a-5aa80dbb33e9', '', '2018-03-13 17:43:13', '2018-03-13 17:43:13', '1', '1', NULL, 0, NULL, NULL, 1, '15415956-b2e9-f701-ac2b-5aa80dd83873', 'atomi_invoice_payment_details'),
('c478c00d-dbfa-9699-0054-5ac8d217bc08', '', '2018-04-07 14:16:36', '2018-04-07 14:16:36', '1', '1', NULL, 0, NULL, NULL, 1, 'a1f9b302-6731-c6b9-7701-5ac8d22772e7', 'atomi_invoice_payment_details'),
('c4b06c3b-12f5-fb9d-8eb4-5aa80e1a6e57', '', '2018-03-13 17:47:53', '2018-03-13 17:47:53', '1', '1', NULL, 0, NULL, NULL, 1, '33c3fc3e-c142-10d9-45b7-5aa80e5d02af', 'atomi_invoice_payment_details'),
('c794edb1-3ab8-b30a-1926-5a7db0d606f4', 'Laptop', '2018-02-09 14:31:59', '2018-02-09 14:31:59', '1', '1', NULL, 0, NULL, NULL, 1, '41fa8396-98a5-6e4e-8211-5a7db0f485a3', 'AOS_Product_Categories'),
('c81c9110-5fd5-b813-dbd4-5ac28a18af5e', '', '2018-04-02 19:54:13', '2018-04-02 19:54:13', '1', '1', NULL, 0, NULL, NULL, 1, 'd93ef5d8-805e-e0d6-c12c-5ac28a41631b', 'atomi_invoice_payment_details'),
('c87d1e86-433a-aa25-a830-5aa38a3e6374', '', '2018-03-10 07:32:51', '2018-03-10 07:32:51', '1', '1', NULL, 0, NULL, NULL, 1, '39926df4-7ae3-0ac7-5795-5aa38a11586e', 'atomi_invoice_payment_details'),
('caca47c7-161c-c58f-1be0-5aa817bddb07', '', '2018-03-13 18:23:39', '2018-03-13 18:23:39', '1', '1', NULL, 0, NULL, NULL, 1, 'db0bcce1-7154-df43-7a89-5aa817297104', 'atomi_invoice_payment_details'),
('cbfd31e8-f2ea-4db5-f1ea-5ac28bbebb90', '', '2018-04-02 19:57:38', '2018-04-02 19:57:38', '1', '1', NULL, 0, NULL, NULL, 1, 'dc64bbff-b358-96aa-dec1-5ac28b0583ce', 'atomi_invoice_payment_details'),
('cc606b70-dd14-f40a-17ea-5aa97937adfd', '', '2018-03-14 19:36:28', '2018-03-14 19:36:28', '1', '1', NULL, 0, NULL, NULL, 1, '5768fc2f-1cce-8cd9-7f54-5aa979e31703', 'atomi_invoice_payment_details'),
('cd4db60e-606a-8a06-950a-5accee74d1a6', '', '2018-04-10 17:04:45', '2018-04-10 17:04:45', '1', '1', NULL, 0, NULL, NULL, 1, '27072068-f791-b1ef-c649-5accee3092ba', 'atomi_invoice_payment_details'),
('d1f28f6c-d8eb-5f1f-2d64-5aca0b9d914f', '', '2018-04-08 12:30:52', '2018-04-08 12:30:52', '1', '1', NULL, 0, NULL, NULL, 1, 'f0cdf9e4-308d-6fb4-a459-5aca0ba569e7', 'atomi_invoice_payment_details'),
('d3500118-6408-74e4-710f-5aa03ac673cc', '', '2018-03-07 19:17:49', '2018-03-07 19:17:49', '1', '1', NULL, 0, NULL, NULL, 1, '3837917e-606e-09d8-f1b3-5aa03aae4ed8', 'atomi_invoice_payment_details'),
('d4b8aefd-2cdc-28d9-02ae-5a7d59c8739c', 'Vendor 1', '2018-02-09 08:20:45', '2018-02-10 05:47:55', '1', '1', NULL, 0, '', NULL, 1, '89898a84-1e7d-ac82-701e-5a7d59b49b20', 'atomi_vendor'),
('d64f36df-6872-972e-9250-5aa0363a361d', '', '2018-03-07 18:58:16', '2018-03-07 18:58:16', '1', '1', NULL, 0, NULL, NULL, 1, '485279ec-9bd2-c28a-96ce-5aa0365190d6', 'atomi_invoice_payment_details'),
('d683f52f-c4bb-8610-b0de-5aa518044c7c', '', '2018-03-11 11:53:51', '2018-03-11 11:53:51', '1', '1', NULL, 0, NULL, NULL, 1, '6e846dfd-1804-b05a-ece1-5aa5187b6bd4', 'atomi_invoice_payment_details'),
('d6c21ad8-27af-9f60-d0c0-5aa3ca6ddf8d', '', '2018-03-10 12:07:46', '2018-03-10 12:07:46', '1', '1', NULL, 0, NULL, NULL, 1, '4db1c9bf-3f06-8927-8f90-5aa3ca2981da', 'atomi_invoice_payment_details'),
('d7ce4cd9-2d5a-0e61-65ed-5aa036b82da9', '', '2018-03-07 19:01:00', '2018-03-07 19:01:00', '1', '1', NULL, 0, NULL, NULL, 1, '4eee58cd-c675-085d-0bb0-5aa03612b97f', 'atomi_invoice_payment_details'),
('db799db9-1a57-6d6f-6c2f-5aa3c9dd38ce', '', '2018-03-10 12:04:31', '2018-03-10 12:04:31', '1', '1', NULL, 0, NULL, NULL, 1, 'acabd37a-334d-9028-fb81-5aa3c99f7cdb', 'atomi_invoice_payment_details'),
('e04bc2fc-b21b-604d-149c-5aa3ca49b9be', '', '2018-03-10 12:07:41', '2018-03-10 12:07:41', '1', '1', NULL, 0, NULL, NULL, 1, 'e337fecf-b17a-400d-9e94-5aa3ca8e223b', 'atomi_invoice_payment_details'),
('e066ccc2-23a0-cf27-eef5-5aa51beddd61', '', '2018-03-11 12:05:33', '2018-03-11 12:05:33', '1', '1', NULL, 0, NULL, NULL, 1, '86b0a479-f8a4-edb1-0f3c-5aa51b0e878f', 'atomi_invoice_payment_details'),
('e1030204-14a9-07c9-1494-5aba9d063d25', '', '2018-03-27 19:37:59', '2018-03-27 19:37:59', '4668226f-4e70-347c-9740-5a9af48bdd5f', '4668226f-4e70-347c-9740-5a9af48bdd5f', NULL, 0, NULL, NULL, 1, 'b688dabe-3395-2aef-80a5-5aba9dc58dab', 'atomi_invoice_payment_details'),
('e1d59959-676d-5e52-2963-5aa517341a47', '', '2018-03-11 11:49:50', '2018-03-11 11:49:50', '1', '1', NULL, 0, NULL, NULL, 1, '461e86c7-45ce-b412-6dcc-5aa5177e264f', 'atomi_invoice_payment_details'),
('e3b34874-962d-2077-2c61-5aa037749acc', '', '2018-03-07 19:02:30', '2018-03-07 19:02:31', '1', '1', NULL, 0, '', NULL, 1, '862a71c7-acd0-7aab-8f98-5aa0379faf65', 'atomi_invoice_payment_details'),
('e52c8fb4-0f27-cd17-14cb-5aa38ec6ecec', '', '2018-03-10 07:50:06', '2018-03-10 07:50:06', '1', '1', NULL, 0, NULL, NULL, 1, '35949c8c-85d4-51ac-d6c1-5aa38e62dfa5', 'atomi_invoice_payment_details'),
('e6f83208-8ec7-b04e-1a77-5aa38ad533a0', '', '2018-03-10 07:32:46', '2018-03-10 07:32:46', '1', '1', NULL, 0, NULL, NULL, 1, '5e59c2cb-0274-33b2-862d-5aa38a2e73c3', 'atomi_invoice_payment_details'),
('e7affac5-f008-eb0c-6ff3-5a8da515f129', 'Service Category', '2018-02-21 17:00:11', '2018-02-21 17:00:11', '1', '1', NULL, 0, NULL, NULL, 1, 'd89a0a55-baca-7252-187a-5a8da552517d', 'AOS_Product_Categories'),
('ebe22b65-17ad-c45b-882b-5aa3c973c6da', 'Invoice_asdas.pdf', '2018-03-10 12:03:12', '2018-03-10 12:03:12', '1', '1', NULL, 0, NULL, NULL, 1, '2e97ee0f-8ff2-9377-a275-5aa3c92dac6c', 'Notes'),
('ee1a4dce-f2df-84b6-3a4b-5ac678d62dec', '', '2018-04-05 19:27:31', '2018-04-05 19:27:31', '1', '1', NULL, 0, NULL, NULL, 1, '1ac0d254-6080-3bb9-2c5a-5ac678576c92', 'atomi_invoice_payment_details'),
('eeef2d1a-7f26-a9a4-fe27-5aa814a8bfdc', '', '2018-03-13 18:13:24', '2018-03-13 18:13:24', '1', '1', NULL, 0, NULL, NULL, 1, '3e11c29c-3672-30f7-4b6d-5aa814a8fabb', 'atomi_invoice_payment_details'),
('f1a990a9-7420-e915-489d-5aa039ce1eac', '', '2018-03-07 19:14:05', '2018-03-07 19:14:05', '1', '1', NULL, 0, NULL, NULL, 1, '5e381659-d3bd-cae3-b3a0-5aa03958e75b', 'atomi_invoice_payment_details'),
('f1e09af7-4344-0795-2cb4-5aa3c9722a36', '', '2018-03-10 12:04:27', '2018-03-10 12:04:27', '1', '1', NULL, 0, NULL, NULL, 1, 'cc203ae8-a0b4-5118-7dda-5aa3c91cd7be', 'atomi_invoice_payment_details'),
('f336b426-f3b3-18d1-628a-5aa38a844718', '', '2018-03-10 07:32:44', '2018-03-10 07:32:44', '1', '1', NULL, 0, NULL, NULL, 1, 'ca0e4886-3f77-c537-d439-5aa38af357d6', 'atomi_invoice_payment_details'),
('f40bb908-b60b-4a57-8bb7-5aa51b705886', '', '2018-03-11 12:05:35', '2018-03-11 12:05:35', '1', '1', NULL, 0, NULL, NULL, 1, '49444a3c-c482-656c-1930-5aa51b744177', 'atomi_invoice_payment_details'),
('f8d00d25-ec5b-21ff-cd13-5aa3c9501d74', '', '2018-03-10 12:02:14', '2018-03-10 12:02:14', '1', '1', NULL, 0, NULL, NULL, 1, '91ce062f-4b22-f316-cbaf-5aa3c981cfc3', 'atomi_invoice_payment_details');

-- --------------------------------------------------------

--
-- Table structure for table `aod_indexevent_audit`
--

CREATE TABLE `aod_indexevent_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text,
  `after_value_text` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `aod_index_audit`
--

CREATE TABLE `aod_index_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text,
  `after_value_text` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `aok_knowledgebase`
--

CREATE TABLE `aok_knowledgebase` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `status` varchar(100) DEFAULT 'Draft',
  `revision` varchar(255) DEFAULT NULL,
  `additional_info` text,
  `user_id_c` char(36) DEFAULT NULL,
  `user_id1_c` char(36) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `aok_knowledgebase_audit`
--

CREATE TABLE `aok_knowledgebase_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text,
  `after_value_text` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `aok_knowledgebase_categories`
--

CREATE TABLE `aok_knowledgebase_categories` (
  `id` varchar(36) NOT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `aok_knowledgebase_id` varchar(36) DEFAULT NULL,
  `aok_knowledge_base_categories_id` varchar(36) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `aok_knowledge_base_categories`
--

CREATE TABLE `aok_knowledge_base_categories` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `aok_knowledge_base_categories_audit`
--

CREATE TABLE `aok_knowledge_base_categories_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text,
  `after_value_text` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `aop_case_events`
--

CREATE TABLE `aop_case_events` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `case_id` char(36) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `aop_case_events_audit`
--

CREATE TABLE `aop_case_events_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text,
  `after_value_text` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `aop_case_updates`
--

CREATE TABLE `aop_case_updates` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `case_id` char(36) DEFAULT NULL,
  `contact_id` char(36) DEFAULT NULL,
  `internal` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `aop_case_updates_audit`
--

CREATE TABLE `aop_case_updates_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text,
  `after_value_text` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `aor_charts`
--

CREATE TABLE `aor_charts` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `aor_report_id` char(36) DEFAULT NULL,
  `type` varchar(100) DEFAULT NULL,
  `x_field` int(11) DEFAULT NULL,
  `y_field` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `aor_conditions`
--

CREATE TABLE `aor_conditions` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `aor_report_id` char(36) DEFAULT NULL,
  `condition_order` int(255) DEFAULT NULL,
  `logic_op` varchar(255) DEFAULT NULL,
  `parenthesis` varchar(255) DEFAULT NULL,
  `module_path` longtext,
  `field` varchar(100) DEFAULT NULL,
  `operator` varchar(100) DEFAULT NULL,
  `value_type` varchar(100) DEFAULT NULL,
  `value` varchar(255) DEFAULT NULL,
  `parameter` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `aor_fields`
--

CREATE TABLE `aor_fields` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `aor_report_id` char(36) DEFAULT NULL,
  `field_order` int(255) DEFAULT NULL,
  `module_path` longtext,
  `field` varchar(100) DEFAULT NULL,
  `display` tinyint(1) DEFAULT NULL,
  `link` tinyint(1) DEFAULT NULL,
  `label` varchar(255) DEFAULT NULL,
  `field_function` varchar(100) DEFAULT NULL,
  `sort_by` varchar(100) DEFAULT NULL,
  `format` varchar(100) DEFAULT NULL,
  `total` varchar(100) DEFAULT NULL,
  `sort_order` varchar(100) DEFAULT NULL,
  `group_by` tinyint(1) DEFAULT NULL,
  `group_order` varchar(100) DEFAULT NULL,
  `group_display` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `aor_reports`
--

CREATE TABLE `aor_reports` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `report_module` varchar(100) DEFAULT NULL,
  `graphs_per_row` int(11) DEFAULT '2'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `aor_reports_audit`
--

CREATE TABLE `aor_reports_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text,
  `after_value_text` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `aor_scheduled_reports`
--

CREATE TABLE `aor_scheduled_reports` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `schedule` varchar(100) DEFAULT NULL,
  `last_run` datetime DEFAULT NULL,
  `status` varchar(100) DEFAULT NULL,
  `email_recipients` longtext,
  `aor_report_id` char(36) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `aos_contracts`
--

CREATE TABLE `aos_contracts` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `reference_code` varchar(255) DEFAULT NULL,
  `start_date` date DEFAULT NULL,
  `end_date` date DEFAULT NULL,
  `total_contract_value` decimal(26,6) DEFAULT NULL,
  `total_contract_value_usdollar` decimal(26,6) DEFAULT NULL,
  `currency_id` char(36) DEFAULT NULL,
  `status` varchar(100) DEFAULT 'Not Started',
  `customer_signed_date` date DEFAULT NULL,
  `company_signed_date` date DEFAULT NULL,
  `renewal_reminder_date` datetime DEFAULT NULL,
  `contract_type` varchar(100) DEFAULT 'Type',
  `contract_account_id` char(36) DEFAULT NULL,
  `opportunity_id` char(36) DEFAULT NULL,
  `contact_id` char(36) DEFAULT NULL,
  `call_id` char(36) DEFAULT NULL,
  `total_amt` decimal(26,6) DEFAULT NULL,
  `total_amt_usdollar` decimal(26,6) DEFAULT NULL,
  `subtotal_amount` decimal(26,6) DEFAULT NULL,
  `subtotal_amount_usdollar` decimal(26,6) DEFAULT NULL,
  `discount_amount` decimal(26,6) DEFAULT NULL,
  `discount_amount_usdollar` decimal(26,6) DEFAULT NULL,
  `tax_amount` decimal(26,6) DEFAULT NULL,
  `tax_amount_usdollar` decimal(26,6) DEFAULT NULL,
  `shipping_amount` decimal(26,6) DEFAULT NULL,
  `shipping_amount_usdollar` decimal(26,6) DEFAULT NULL,
  `shipping_tax` varchar(100) DEFAULT NULL,
  `shipping_tax_amt` decimal(26,6) DEFAULT NULL,
  `shipping_tax_amt_usdollar` decimal(26,6) DEFAULT NULL,
  `total_amount` decimal(26,6) DEFAULT NULL,
  `total_amount_usdollar` decimal(26,6) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `aos_contracts`
--

INSERT INTO `aos_contracts` (`id`, `name`, `date_entered`, `date_modified`, `modified_user_id`, `created_by`, `description`, `deleted`, `assigned_user_id`, `reference_code`, `start_date`, `end_date`, `total_contract_value`, `total_contract_value_usdollar`, `currency_id`, `status`, `customer_signed_date`, `company_signed_date`, `renewal_reminder_date`, `contract_type`, `contract_account_id`, `opportunity_id`, `contact_id`, `call_id`, `total_amt`, `total_amt_usdollar`, `subtotal_amount`, `subtotal_amount_usdollar`, `discount_amount`, `discount_amount_usdollar`, `tax_amount`, `tax_amount_usdollar`, `shipping_amount`, `shipping_amount_usdollar`, `shipping_tax`, `shipping_tax_amt`, `shipping_tax_amt_usdollar`, `total_amount`, `total_amount_usdollar`) VALUES
('3a81d122-0e13-836c-885c-5ac6757efed9', 'new contract', '2018-04-05 19:15:04', '2018-04-05 19:15:04', '1', '1', 'sadasd', 0, '1', NULL, '2018-04-05', '2019-04-05', '100000.000000', '100000.000000', '-99', 'In Progress', '2018-04-06', '2018-04-07', '2019-03-22 11:00:00', 'Type', 'c2e21265-268e-ba71-e850-5aa954e2052d', '', '744a98de-033e-85c2-a97d-5a7fd473764f', 'bb16bf42-221b-c690-7f33-5ac675aa18f7', '7879.500000', '7879.500000', '7879.500000', '7879.500000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.0', '0.000000', '0.000000', '7879.500000', '7879.500000');

-- --------------------------------------------------------

--
-- Table structure for table `aos_contracts_audit`
--

CREATE TABLE `aos_contracts_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text,
  `after_value_text` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `aos_contracts_documents`
--

CREATE TABLE `aos_contracts_documents` (
  `id` varchar(36) NOT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `aos_contracts_id` varchar(36) DEFAULT NULL,
  `documents_id` varchar(36) DEFAULT NULL,
  `document_revision_id` varchar(36) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `aos_invoices`
--

CREATE TABLE `aos_invoices` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `billing_account_id` char(36) DEFAULT NULL,
  `billing_contact_id` char(36) DEFAULT NULL,
  `billing_address_street` varchar(150) DEFAULT NULL,
  `billing_address_city` varchar(100) DEFAULT NULL,
  `billing_address_state` varchar(100) DEFAULT NULL,
  `billing_address_postalcode` varchar(20) DEFAULT NULL,
  `billing_address_country` varchar(255) DEFAULT NULL,
  `shipping_address_street` varchar(150) DEFAULT NULL,
  `shipping_address_city` varchar(100) DEFAULT NULL,
  `shipping_address_state` varchar(100) DEFAULT NULL,
  `shipping_address_postalcode` varchar(20) DEFAULT NULL,
  `shipping_address_country` varchar(255) DEFAULT NULL,
  `number` int(11) NOT NULL,
  `total_amt` decimal(26,6) DEFAULT NULL,
  `total_amt_usdollar` decimal(26,6) DEFAULT NULL,
  `subtotal_amount` decimal(26,6) DEFAULT NULL,
  `subtotal_amount_usdollar` decimal(26,6) DEFAULT NULL,
  `discount_amount` decimal(26,6) DEFAULT NULL,
  `discount_amount_usdollar` decimal(26,6) DEFAULT NULL,
  `tax_amount` decimal(26,6) DEFAULT NULL,
  `tax_amount_usdollar` decimal(26,6) DEFAULT NULL,
  `shipping_amount` decimal(26,6) DEFAULT NULL,
  `shipping_amount_usdollar` decimal(26,6) DEFAULT NULL,
  `shipping_tax` varchar(100) DEFAULT NULL,
  `shipping_tax_amt` decimal(26,6) DEFAULT NULL,
  `shipping_tax_amt_usdollar` decimal(26,6) DEFAULT NULL,
  `total_amount` decimal(26,6) DEFAULT NULL,
  `total_amount_usdollar` decimal(26,6) DEFAULT NULL,
  `currency_id` char(36) DEFAULT NULL,
  `quote_number` int(11) DEFAULT NULL,
  `quote_date` date DEFAULT NULL,
  `invoice_date` date DEFAULT NULL,
  `due_date` date DEFAULT NULL,
  `status` varchar(100) DEFAULT NULL,
  `template_ddown_c` text,
  `subtotal_tax_amount` decimal(26,6) DEFAULT NULL,
  `subtotal_tax_amount_usdollar` decimal(26,6) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `aos_invoices`
--

INSERT INTO `aos_invoices` (`id`, `name`, `date_entered`, `date_modified`, `modified_user_id`, `created_by`, `description`, `deleted`, `assigned_user_id`, `billing_account_id`, `billing_contact_id`, `billing_address_street`, `billing_address_city`, `billing_address_state`, `billing_address_postalcode`, `billing_address_country`, `shipping_address_street`, `shipping_address_city`, `shipping_address_state`, `shipping_address_postalcode`, `shipping_address_country`, `number`, `total_amt`, `total_amt_usdollar`, `subtotal_amount`, `subtotal_amount_usdollar`, `discount_amount`, `discount_amount_usdollar`, `tax_amount`, `tax_amount_usdollar`, `shipping_amount`, `shipping_amount_usdollar`, `shipping_tax`, `shipping_tax_amt`, `shipping_tax_amt_usdollar`, `total_amount`, `total_amount_usdollar`, `currency_id`, `quote_number`, `quote_date`, `invoice_date`, `due_date`, `status`, `template_ddown_c`, `subtotal_tax_amount`, `subtotal_tax_amount_usdollar`) VALUES
('14cb0270-8b5a-b97f-0fbf-5a8c6075be38', 'BB', '2018-02-20 17:54:38', '2018-03-03 17:34:59', '1', '1', '', 1, '1', '', '', '', '', '', '', '', '', '', '', '', '', 19, '1150.590000', '1150.590000', '1150.590000', '1150.590000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', NULL, NULL, '0.000000', '1150.590000', '1150.590000', '-99', 0, '2018-02-20', '2018-02-20', NULL, 'Paid', NULL, NULL, '0.000000'),
('1b19c503-8f3e-6a34-4efe-5a87f39cb6fe', 'kk', '2018-02-17 09:18:14', '2018-03-03 17:35:18', '1', '1', 'sdf', 1, '1', 'f30070f4-e846-d94c-512c-5a7c8cf49739', '', '', '', '', '', '', '', '', '', '', '', 4, '1150.590000', '1150.590000', '1250.590000', '1250.590000', '100.000000', '100.000000', '230.120000', '230.120000', '0.000000', '0.000000', NULL, NULL, '0.000000', '1480.710000', '1480.710000', '-99', 0, '2018-02-17', '2018-02-17', '2018-02-22', 'Paid', NULL, NULL, '0.000000'),
('1c92664d-e617-d964-32b8-5aa978e031b7', 'Kool', '2018-03-14 19:32:08', '2018-03-14 19:40:40', '1', '1', 'sadasdasd', 0, '1', 'c2e21265-268e-ba71-e850-5aa954e2052d', '', 'demo', 'demo', 'demo', 'demo', 'demo', 'demo', 'demo', 'demo', 'demo', 'demo', 59, '7879.500000', '7879.500000', '7879.500000', '7879.500000', '0.000000', '0.000000', '0.000000', '0.000000', '50.000000', '50.000000', NULL, NULL, '0.000000', '7929.500000', '7929.500000', '-99', 0, '2018-03-14', '2018-03-14', NULL, 'Paid', NULL, NULL, '0.000000'),
('1d6d3a9f-2642-89e5-e7c1-5a8c5ec2416b', 'DDWW', '2018-02-20 17:43:55', '2018-03-03 17:35:18', '1', '1', '', 1, '1', '', '', '', '', '', '', '', '', '', '', '', '', 16, '1150.590000', '1150.590000', '1150.590000', '1150.590000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', NULL, NULL, '0.000000', '1150.590000', '1150.590000', '-99', 0, '2018-02-20', '2018-02-20', NULL, 'Paid', NULL, NULL, '0.000000'),
('20f9fce3-f8b4-4869-6617-5a8c70c69662', 'TT', '2018-02-20 19:02:05', '2018-03-03 17:34:59', '1', '1', '', 1, '1', '', '', '', '', '', '', '', '', '', '', '', '', 28, '5752.950000', '5752.950000', '6002.950000', '6002.950000', '250.000000', '250.000000', '575.300000', '575.300000', '20.000000', '20.000000', NULL, NULL, '0.000000', '6598.250000', '6598.250000', '-99', 0, '2018-02-20', '2018-02-20', NULL, 'Paid', NULL, NULL, '0.000000'),
('22755491-d318-2629-7b7f-5accee168475', 'Todays Invoice', '2018-04-10 17:04:43', '2018-04-10 17:04:43', '1', '1', 'Description', 0, '1', 'c2e21265-268e-ba71-e850-5aa954e2052d', '', 'demo', 'demo', 'demo', 'demo', 'demo', 'demo', 'demo', 'demo', 'demo', 'demo', 67, '780.000000', '780.000000', '770.000000', '770.000000', '10.000000', '10.000000', '67.380000', '67.380000', '50.000000', '50.000000', NULL, NULL, '0.000000', '887.380000', '887.380000', '-99', 444444, '2018-04-10', '2018-04-10', '2018-04-17', 'Paid', NULL, NULL, '0.000000'),
('2613f4cb-db18-a784-2c17-5aa9709c6d59', 'KK invoice', '2018-03-14 18:56:20', '2018-03-14 18:56:20', '1', '1', '', 0, '1', 'c2e21265-268e-ba71-e850-5aa954e2052d', '', 'demo', 'demo', 'demo', 'demo', 'demo', '', '', '', '', '', 54, '18802.500000', '18802.500000', '18782.500000', '18782.500000', '20.000000', '20.000000', '1573.900000', '1573.900000', '0.000000', '0.000000', NULL, NULL, '0.000000', '20356.400000', '20356.400000', '-99', 0, '2018-03-14', '2018-03-14', NULL, 'Paid', NULL, NULL, '0.000000'),
('2926ccd8-fcf4-279c-0d5f-5aa971d3b26e', 'ssdfsdf', '2018-03-14 18:59:46', '2018-03-14 19:00:24', '1', '1', '', 1, '1', '', '', '', '', '', '', '', '', '', '', '', '', 57, '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', NULL, NULL, '0.000000', '0.000000', '0.000000', '-99', 0, '2018-03-14', '2018-03-14', NULL, 'Paid', NULL, NULL, '0.000000'),
('2a4411aa-de09-647f-c9b9-5a966970f2e5', 'Test Invoice', '2018-02-28 08:36:10', '2018-03-03 17:34:59', '1', '1', 'Description', 1, '1', '', '', 'Test', 'test', 'test', 'test', 'test', '', '', '', '', '', 32, '12073.590000', '12073.590000', '12093.590000', '12093.590000', '20.000000', '20.000000', '0.000000', '0.000000', '0.000000', '0.000000', NULL, NULL, '0.000000', '12093.590000', '12093.590000', '-99', 123456, '2018-02-28', '2018-02-28', NULL, 'Paid', NULL, NULL, '0.000000'),
('2a7dab67-6c92-0d11-a2e2-5aa38edb1bbc', 'sdas', '2018-03-10 07:50:04', '2018-03-10 07:50:04', '1', '1', '', 0, '1', '', '', '', '', '', '', '', '', '', '', '', '', 43, '35070.180000', '35070.180000', '34910.180000', '34910.180000', '160.000000', '160.000000', '456.240000', '456.240000', '30.000000', '30.000000', NULL, NULL, '0.000000', '35396.420000', '35396.420000', '-99', 0, '2018-03-10', '2018-03-10', NULL, 'Paid', NULL, NULL, '0.000000'),
('2b2e08d4-ec57-65f4-4b67-5a96dc755616', 'Yoo', '2018-02-28 16:43:50', '2018-03-03 17:34:59', '1', '1', 'Description', 1, '1', '', '', 'Yoo', 'Yoo', 'Yoo', 'Yoo', 'Yoo', '', '', '', '', '', 33, '13224.180000', '13224.180000', '13274.180000', '13274.180000', '50.000000', '50.000000', '458.240000', '458.240000', '200.000000', '200.000000', NULL, NULL, '0.000000', '13932.420000', '13932.420000', '-99', 123, '2018-02-28', '2018-02-28', NULL, 'Paid', NULL, NULL, '0.000000'),
('2ce93268-0818-ae9c-e14d-5a8342abf0d6', 'test', '2018-02-13 19:54:48', '2018-03-03 17:35:18', '1', '1', '', 1, '1', '', '', '', '', '', '', '', '', '', '', '', '', 2, '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.0', '0.000000', '0.000000', '0.000000', '0.000000', '-99', 0, '2018-02-13', '2018-02-13', NULL, 'Paid', NULL, NULL, '0.000000'),
('2e1f9c01-4363-480b-5bec-5ac8d206fbb2', 'Look Awesome', '2018-04-07 14:16:34', '2018-04-08 12:30:49', '1', '1', 'Description Demo', 0, '1', 'c2e21265-268e-ba71-e850-5aa954e2052d', '657b58ac-ece1-3ecb-81b0-5ac9f7e5a9a5', 'demo', 'demo', 'demo', 'demo', 'demo', 'demo', 'demo', 'demo', 'demo', 'demo', 66, '7879.500000', '7879.500000', '7869.500000', '7869.500000', '10.000000', '10.000000', '786.950000', '786.950000', '50.000000', '50.000000', NULL, NULL, '0.000000', '8706.450000', '8706.450000', '-99', 123456, '2018-04-07', '2018-04-07', '2018-04-25', 'Paid', NULL, NULL, '0.000000'),
('31be0d38-09b1-3111-856e-5aa972fe10e1', 'dsf', '2018-03-14 19:06:05', '2018-03-14 19:06:05', '1', '1', '', 0, '1', '', '', '', '', '', '', '', '', '', '', '', '', 58, '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', NULL, NULL, '0.000000', '0.000000', '0.000000', '-99', 0, '2018-03-14', '2018-03-14', NULL, 'Paid', NULL, NULL, '0.000000'),
('31fcbec2-4e08-c3e3-a8a8-5aabfa6047a2', 'Test Inv', '2018-03-16 17:12:07', '2018-03-16 17:12:07', '1', '1', '', 0, '1', 'c2e21265-268e-ba71-e850-5aa954e2052d', '', 'demo', 'demo', 'demo', 'demo', 'demo', 'demo', 'demo', 'demo', 'demo', 'demo', 60, '38227.470000', '38227.470000', '38217.470000', '38217.470000', '10.000000', '10.000000', '114.060000', '114.060000', '20.000000', '20.000000', NULL, NULL, '0.000000', '38351.530000', '38351.530000', '-99', 0, '2018-03-16', '2018-03-16', NULL, 'Paid', NULL, NULL, '0.000000'),
('33b43d8b-ff4e-8845-6c74-5ac28a3df51c', 'Back Date2', '2018-04-02 19:56:05', '2018-04-02 19:56:05', '1', '1', 'asd', 0, '1', '734c4075-0718-fa26-cfb6-5aa9521c4a82', '', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 64, '1150.590000', '1150.590000', '1140.590000', '1140.590000', '10.000000', '10.000000', '228.120000', '228.120000', '35.000000', '35.000000', NULL, NULL, '0.000000', '1403.710000', '1403.710000', '-99', 0, '2018-04-02', '2018-01-17', NULL, 'Paid', NULL, NULL, '0.000000'),
('356a1894-bfa6-c8c3-c9c9-5a87faf9c01a', 'sad', '2018-02-17 09:46:47', '2018-03-03 17:35:18', '1', '1', 'asd', 1, '1', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 9, '1150.590000', '1150.590000', '1160.590000', '1160.590000', '10.000000', '10.000000', '115.060000', '115.060000', '0.000000', '0.000000', NULL, NULL, '0.000000', '1275.650000', '1275.650000', '-99', 0, '2018-02-17', '2018-02-17', NULL, 'Paid', NULL, NULL, '0.000000'),
('377ad549-b0db-4125-d80a-5aa824afe928', 'xzczx', '2018-03-13 19:19:08', '2018-03-13 19:20:43', '1', '1', NULL, 0, '1', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 52, '318.200000', '318.200000', '218.200000', '218.200000', '100.000000', '100.000000', '30.820000', '30.820000', '0.000000', '0.000000', NULL, NULL, '0.000000', '249.020000', '249.020000', '-99', 0, '2018-03-13', '2018-03-13', NULL, 'Paid', NULL, NULL, '0.000000'),
('3d2b4d73-db81-2189-fcac-5aa3c9a104da', 'asdas', '2018-03-10 12:02:11', '2018-03-11 12:05:32', '1', '1', 'sadasdasdasdasda df sdfsd f sdf sdfsd fsd fsdf', 0, '1', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 44, '27598.950000', '27598.950000', '27508.950000', '27508.950000', '90.000000', '90.000000', '574.300000', '574.300000', '30.000000', '30.000000', NULL, NULL, '0.000000', '28113.250000', '28113.250000', '-99', 0, '2018-03-10', '2018-03-10', NULL, 'Paid', NULL, NULL, '0.000000'),
('4515cdab-b602-6926-bd33-5a8c6d0732de', 'FG', '2018-02-20 18:48:18', '2018-03-03 17:34:59', '1', '1', NULL, 1, '1', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 26, '1150.590000', '1150.590000', '1160.590000', '1160.590000', '10.000000', '10.000000', '115.060000', '115.060000', '10.000000', '10.000000', NULL, NULL, '0.000000', '1285.650000', '1285.650000', '-99', 0, '2018-02-20', '2018-02-20', NULL, 'Paid', NULL, NULL, '0.000000'),
('46abeb6e-67cc-a761-0e16-5a9ae35c5046', 'Demo', '2018-03-03 18:05:05', '2018-03-04 10:44:07', '1', '1', 'Description', 0, '1', 'f30070f4-e846-d94c-512c-5a7c8cf49739', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 38, '13224.180000', '13224.180000', '13184.180000', '13184.180000', '40.000000', '40.000000', '1145.590000', '1145.590000', '50.000000', '50.000000', NULL, NULL, '0.000000', '14379.770000', '14379.770000', '-99', 123, '2018-03-03', '2018-03-03', '2018-03-31', 'Paid', NULL, NULL, '0.000000'),
('48b1352c-808a-808c-6bb5-5aa035a363d6', 'Good', '2018-03-07 18:55:19', '2018-03-07 18:55:19', '1', '1', '', 0, '1', '', '', '', '', '', '', '', '', '', '', '', '', 40, '1150.590000', '1150.590000', '1140.590000', '1140.590000', '10.000000', '10.000000', '228.120000', '228.120000', '10.290000', '10.290000', NULL, NULL, '0.000000', '1379.000000', '1379.000000', '-99', 0, '2018-03-07', '2018-03-07', NULL, 'Paid', NULL, NULL, '0.000000'),
('49137101-7b02-ae0e-8af5-5aa8025d27a1', 'Dooo', '2018-03-13 16:57:20', '2018-03-13 18:48:57', '1', '1', 'Dooo', 0, '1', '', '', 'Dooo', 'Dooo', 'Dooo', 'Dooo', 'Dooo', NULL, NULL, NULL, NULL, NULL, 49, '46615.650000', '46615.650000', '46545.650000', '46545.650000', '70.000000', '70.000000', '4486.220000', '4486.220000', '0.000000', '0.000000', NULL, NULL, '0.000000', '51031.870000', '51031.870000', '-99', 444444, '2018-03-13', '2018-03-13', '2018-03-31', 'Paid', NULL, NULL, '0.000000'),
('4ad5f14a-7e95-a9f8-0bbe-5a87e5785af8', 'Test', '2018-02-17 08:19:35', '2018-03-03 17:35:18', '1', '1', 'Test', 1, '1', 'f30070f4-e846-d94c-512c-5a7c8cf49739', '', 'test', 'test', 'test', 'test', 'test', '', '', '', '', '', 3, '1150.590000', '1150.590000', '1160.590000', '1160.590000', '10.000000', '10.000000', '230.120000', '230.120000', '20.000000', '20.000000', NULL, NULL, '0.000000', '1410.710000', '1410.710000', '-99', 123, '2018-02-17', '2018-02-17', '2018-02-23', 'Paid', NULL, NULL, '0.000000'),
('4c634805-e71a-9041-9e4e-5aba9d6b5c43', 'Created By Account Manager', '2018-03-27 19:37:57', '2018-03-27 19:37:57', '4668226f-4e70-347c-9740-5a9af48bdd5f', '4668226f-4e70-347c-9740-5a9af48bdd5f', 'Created By Account Manager', 0, '4668226f-4e70-347c-9740-5a9af48bdd5f', 'c2e21265-268e-ba71-e850-5aa954e2052d', '', 'demo', 'demo', 'demo', 'demo', 'demo', '', '', '', '', '', 62, '997.180000', '997.180000', '987.180000', '987.180000', '10.000000', '10.000000', '197.440000', '197.440000', '20.000000', '20.000000', NULL, NULL, '0.000000', '1204.620000', '1204.620000', '-99', 0, '2018-03-27', '2018-03-27', NULL, 'Paid', NULL, NULL, '0.000000'),
('52ee982a-2d5b-1eb5-1c23-5a8c63459273', 'MM', '2018-02-20 18:03:47', '2018-03-03 17:34:59', '1', '1', '', 1, '1', '', '', '', '', '', '', '', '', '', '', '', '', 20, '1150.590000', '1150.590000', '1150.590000', '1150.590000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', NULL, NULL, '0.000000', '1150.590000', '1150.590000', '-99', 0, '2018-02-20', '2018-02-20', NULL, 'Paid', NULL, NULL, '0.000000'),
('5c2ca62c-612c-4ea6-c7fb-5a8c5e2a3b20', 'DDWW', '2018-02-20 17:43:13', '2018-03-03 17:35:18', '1', '1', '', 1, '1', '', '', '', '', '', '', '', '', '', '', '', '', 15, '1150.590000', '1150.590000', '1150.590000', '1150.590000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', NULL, NULL, '0.000000', '1150.590000', '1150.590000', '-99', 0, '2018-02-20', '2018-02-20', NULL, 'Paid', NULL, NULL, '0.000000'),
('5ce0d2a4-b9c5-158f-f6c8-5a8c5e28aab0', 'DDWW', '2018-02-20 17:42:40', '2018-03-03 17:35:18', '1', '1', '', 1, '1', '', '', '', '', '', '', '', '', '', '', '', '', 14, '1150.590000', '1150.590000', '1150.590000', '1150.590000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', NULL, NULL, '0.000000', '1150.590000', '1150.590000', '-99', 0, '2018-02-20', '2018-02-20', NULL, 'Paid', NULL, NULL, '0.000000'),
('5f366521-463b-5afd-99d3-5aa9633c7c9c', 'test asds', '2018-03-14 18:01:31', '2018-03-14 18:16:47', '1', '1', 'asds', 1, '1', 'c2e21265-268e-ba71-e850-5aa954e2052d', '', 'demo', 'demo', 'demo', 'demo', 'demo', NULL, NULL, NULL, NULL, NULL, 53, '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', NULL, NULL, '0.000000', '0.000000', '0.000000', '-99', 444444, '2018-03-14', '2018-03-14', '2018-03-31', 'Paid', NULL, NULL, '0.000000'),
('5f7a0bde-f976-fa83-a173-5a8c5e00af5e', 'DDWW', '2018-02-20 17:45:13', '2018-03-03 17:35:18', '1', '1', '', 1, '1', '', '', '', '', '', '', '', '', '', '', '', '', 17, '1150.590000', '1150.590000', '1150.590000', '1150.590000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', NULL, NULL, '0.000000', '1150.590000', '1150.590000', '-99', 0, '2018-02-20', '2018-02-20', NULL, 'Paid', NULL, NULL, '0.000000'),
('605862d7-310f-8116-caa6-5a87f3c5f839', 'sad', '2018-02-17 09:20:36', '2018-03-03 17:35:18', '1', '1', 'asd', 1, '1', '', '', '', '', '', '', '', '', '', '', '', '', 5, '1150.590000', '1150.590000', '1160.590000', '1160.590000', '10.000000', '10.000000', '115.060000', '115.060000', '0.000000', '0.000000', NULL, NULL, '0.000000', '1275.650000', '1275.650000', '-99', 0, '2018-02-17', '2018-02-17', NULL, 'Paid', NULL, NULL, '0.000000'),
('62ceca7b-c274-d91b-0b62-5ac28a52ce87', 'Back Date1', '2018-04-02 19:54:11', '2018-04-02 19:54:11', '1', '1', 'sdasd', 0, '1', 'c2e21265-268e-ba71-e850-5aa954e2052d', '', 'demo', 'demo', 'demo', 'demo', 'demo', 'demo', 'demo', 'demo', 'demo', 'demo', 63, '7879.500000', '7879.500000', '7869.500000', '7869.500000', '10.000000', '10.000000', '786.950000', '786.950000', '20.000000', '20.000000', NULL, NULL, '0.000000', '8676.450000', '8676.450000', '-99', 0, '2018-01-07', '2017-11-01', NULL, 'Paid', NULL, NULL, '0.000000'),
('62f3d11c-1125-d41a-ba6d-5a9461282497', 'sdas', '2018-02-26 19:34:48', '2018-03-03 17:34:59', '1', '1', '', 1, '1', '', '', '', '', '', '', '', '', '', '', '', '', 31, '18802.500000', '18802.500000', '18802.500000', '18802.500000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', NULL, NULL, '0.000000', '18802.500000', '18802.500000', '-99', 0, '2018-02-26', '2018-02-26', NULL, 'Paid', NULL, NULL, '0.000000'),
('6b14d6e9-2cb1-9025-4649-5a996336fea7', 'Sagar Test', '2018-03-02 14:46:59', '2018-03-03 17:34:59', '1', '1', '', 1, '1', 'f30070f4-e846-d94c-512c-5a7c8cf49739', '', '', '', '', '', '', '', '', '', '', '', 36, '22996.590000', '22996.590000', '23026.590000', '23026.590000', '30.000000', '30.000000', '114.060000', '114.060000', '100.000000', '100.000000', NULL, NULL, '0.000000', '23240.650000', '23240.650000', '-99', 0, '2018-03-02', '2018-03-02', NULL, 'Paid', NULL, NULL, '0.000000'),
('71420db4-a15f-29b8-d707-5a8c71306b94', 'TT', '2018-02-20 19:04:35', '2018-03-03 17:34:59', '1', '1', '', 1, '1', '', '', '', '', '', '', '', '', '', '', '', '', 29, '5752.950000', '5752.950000', '6002.950000', '6002.950000', '250.000000', '250.000000', '575.300000', '575.300000', '20.000000', '20.000000', NULL, NULL, '0.000000', '6598.250000', '6598.250000', '-99', 0, '2018-02-20', '2018-02-20', NULL, 'Paid', NULL, NULL, '0.000000'),
('75dd5517-28fb-ec02-ddb8-5a8c5fdb38e7', 'BB', '2018-02-20 17:50:09', '2018-03-03 17:34:59', '1', '1', '', 1, '1', '', '', '', '', '', '', '', '', '', '', '', '', 18, '1150.590000', '1150.590000', '1150.590000', '1150.590000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', NULL, NULL, '0.000000', '1150.590000', '1150.590000', '-99', 0, '2018-02-20', '2018-02-20', NULL, 'Paid', NULL, NULL, '0.000000'),
('78b710b2-02a0-31de-6ff1-5a97a4cd0b1c', 'My Invoice', '2018-03-01 06:59:30', '2018-03-03 17:34:59', '1', '1', 'Description', 1, '1', 'f30070f4-e846-d94c-512c-5a7c8cf49739', '', 'test', 'test', 'test', 'test', 'test', NULL, NULL, NULL, NULL, NULL, 35, '14374.770000', '14374.770000', '14724.770000', '14724.770000', '350.000000', '350.000000', '0.000000', '0.000000', '100.000000', '100.000000', NULL, NULL, '0.000000', '14824.770000', '14824.770000', '-99', 444444, '2018-03-01', '2018-03-01', '2018-03-31', 'Paid', NULL, NULL, '0.000000'),
('810f71ca-8449-a336-249f-5aa02a3164f2', 'kkkk', '2018-03-07 18:09:27', '2018-03-07 18:09:50', '1', '1', NULL, 0, '1', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 39, '1150.590000', '1150.590000', '1140.590000', '1140.590000', '10.000000', '10.000000', '114.060000', '114.060000', '10.350000', '10.350000', NULL, NULL, '0.000000', '1265.000000', '1265.000000', '-99', 0, '2018-03-07', '2018-03-07', NULL, 'Paid', NULL, NULL, '0.000000'),
('9222ff14-ade5-2797-099b-5aa778d10069', 'Check Stock', '2018-03-13 07:08:44', '2018-03-13 07:08:44', '1', '1', 'Description Here', 0, '1', 'f30070f4-e846-d94c-512c-5a7c8cf49739', '', 'test', 'test', 'test', 'test', 'test', '', '', '', '', '', 45, '24147.180000', '24147.180000', '24107.180000', '24107.180000', '40.000000', '40.000000', '458.240000', '458.240000', '50.000000', '50.000000', NULL, NULL, '0.000000', '24615.420000', '24615.420000', '-99', 0, '2018-03-13', '2018-03-13', '2018-03-31', 'Paid', NULL, NULL, '0.000000'),
('95b21322-ef59-3966-c660-5a87f96d0761', 'sad', '2018-02-17 09:46:38', '2018-03-03 17:35:18', '1', '1', 'asd', 1, '1', '', '', '', '', '', '', '', '', '', '', '', '', 8, '1150.590000', '1150.590000', '1160.590000', '1160.590000', '10.000000', '10.000000', '115.060000', '115.060000', '0.000000', '0.000000', NULL, NULL, '0.000000', '1275.650000', '1275.650000', '-99', 0, '2018-02-17', '2018-02-17', NULL, 'Paid', NULL, NULL, '0.000000'),
('988ebd91-9570-070d-2a03-5a7fd4a863ed', 'Invoice Product Group', '2018-02-11 05:29:03', '2018-03-03 17:35:18', '1', '1', 'Description', 1, '1', 'f30070f4-e846-d94c-512c-5a7c8cf49739', '744a98de-033e-85c2-a97d-5a7fd473764f', '', '', '', '', '', '', '', '', '', '', 1, '10000.000000', '10000.000000', '9800.000000', '9800.000000', '-200.000000', '-200.000000', '500.000000', '500.000000', '200.000000', '200.000000', '5.0', '10.000000', '10.000000', '10500.000000', '10500.000000', '-99', 123, '2018-02-11', '2018-02-11', '2018-02-14', 'Paid', NULL, NULL, '0.000000'),
('9d974535-0d46-1917-f476-5aa81e3416a1', 'dadas', '2018-03-13 18:56:09', '2018-03-13 18:59:11', '1', '1', NULL, 0, '1', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 50, '24147.180000', '24147.180000', '24107.180000', '24107.180000', '40.000000', '40.000000', '229.120000', '229.120000', '0.000000', '0.000000', NULL, NULL, '0.000000', '24336.300000', '24336.300000', '-99', 0, '2018-03-13', '2018-03-13', NULL, 'Paid', NULL, NULL, '0.000000'),
('9dada791-4f81-c16d-f1a2-5a886facdd7c', 'xzc', '2018-02-17 18:09:10', '2018-03-03 17:35:18', '1', '1', NULL, 1, '1', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 10, '1150.590000', '1150.590000', '1150.590000', '1150.590000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', NULL, NULL, '0.000000', '1150.590000', '1150.590000', '-99', 0, '2018-02-17', '2018-02-17', NULL, 'Paid', NULL, NULL, '0.000000'),
('9df1be15-0fb5-1ff4-9372-5a8c6c092ec0', 'MM', '2018-02-20 18:44:48', '2018-03-03 17:34:59', '1', '1', '', 1, '1', '', '', '', '', '', '', '', '', '', '', '', '', 24, '1150.590000', '1150.590000', '1160.590000', '1160.590000', '10.000000', '10.000000', '115.060000', '115.060000', '0.000000', '0.000000', NULL, NULL, '0.000000', '1275.650000', '1275.650000', '-99', 0, '2018-02-20', '2018-02-20', NULL, 'Paid', NULL, NULL, '0.000000'),
('9f44dde8-f13e-d096-97b6-5a8c70fcd9da', 'GB', '2018-02-20 18:59:21', '2018-03-03 17:34:59', '1', '1', '', 1, '1', '', '', '', '', '', '', '', '', '', '', '', '', 27, '5752.950000', '5752.950000', '5802.950000', '5802.950000', '50.000000', '50.000000', '287.650000', '287.650000', '100.000000', '100.000000', NULL, NULL, '0.000000', '6190.600000', '6190.600000', '-99', 0, '2018-02-20', '2018-02-20', NULL, 'Paid', NULL, NULL, '0.000000'),
('a16ad0ab-0bad-e58d-7208-5aa97052de75', 'dsadas', '2018-03-14 18:56:59', '2018-03-14 18:57:15', '1', '1', '', 1, '1', '', '', '', '', '', '', '', '', '', '', '', '', 55, '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', NULL, NULL, '0.000000', '0.000000', '0.000000', '-99', 0, '2018-03-14', '2018-03-14', NULL, 'Paid', NULL, NULL, '0.000000'),
('a35fec64-ef4d-9a85-860c-5a8c68f185c5', 'MM', '2018-02-20 18:29:12', '2018-03-03 17:34:59', '1', '1', '', 1, '1', '', '', '', '', '', '', '', '', '', '', '', '', 22, '1150.590000', '1150.590000', '1150.590000', '1150.590000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', NULL, NULL, '0.000000', '1150.590000', '1150.590000', '-99', 0, '2018-02-20', '2018-02-20', NULL, 'Paid', NULL, NULL, '0.000000'),
('a599f5e2-8e92-c827-f795-5a8c5d7c973f', 'DDWW', '2018-02-20 17:42:11', '2018-03-03 17:35:18', '1', '1', '', 1, '1', '', '', '', '', '', '', '', '', '', '', '', '', 13, '1150.590000', '1150.590000', '1150.590000', '1150.590000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', NULL, NULL, '0.000000', '1150.590000', '1150.590000', '-99', 0, '2018-02-20', '2018-02-20', NULL, 'Paid', NULL, NULL, '0.000000'),
('aaef6b05-8e6f-d6d6-1154-5a8c6db4f9f7', 'FG', '2018-02-20 18:47:53', '2018-03-03 17:34:59', '1', '1', '', 1, '1', '', '', '', '', '', '', '', '', '', '', '', '', 25, '1150.590000', '1150.590000', '1150.590000', '1150.590000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', NULL, NULL, '0.000000', '1150.590000', '1150.590000', '-99', 0, '2018-02-20', '2018-02-20', NULL, 'Paid', NULL, NULL, '0.000000'),
('aaf5068a-8a1a-e990-969a-5aa8003512a4', 'sdasas', '2018-03-13 16:47:00', '2018-03-13 16:47:00', '1', '1', '', 0, '1', '', '', '', '', '', '', '', '', '', '', '', '', 48, '12073.590000', '12073.590000', '3063.590000', '3063.590000', '9010.000000', '9010.000000', '228.120000', '228.120000', '20.000000', '20.000000', NULL, NULL, '0.000000', '3311.710000', '3311.710000', '-99', 0, '2018-03-13', '2018-03-13', NULL, 'Paid', NULL, NULL, '0.000000'),
('ab1a6d0b-7294-8d23-537b-5aa970af352d', 'asaaaaaaaa', '2018-03-14 18:58:50', '2018-03-14 18:58:58', '1', '1', '', 1, '1', '', '', '', '', '', '', '', '', '', '', '', '', 56, '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', NULL, NULL, '0.000000', '0.000000', '0.000000', '-99', 0, '2018-03-14', '2018-03-14', NULL, 'Paid', NULL, NULL, '0.000000'),
('ae2f5095-c4c0-e9b8-6404-5aba60b3d29d', 'XCCCC', '2018-03-27 15:16:38', '2018-03-27 15:16:38', '1', '1', '', 0, '1', 'c2e21265-268e-ba71-e850-5aa954e2052d', '', 'demo', 'demo', 'demo', 'demo', 'demo', '', '', '', '', '', 61, '7354.200000', '7354.200000', '7334.200000', '7334.200000', '20.000000', '20.000000', '1466.840000', '1466.840000', '50.000000', '50.000000', NULL, NULL, '0.000000', '8851.040000', '8851.040000', '-99', 0, '2018-03-27', '2018-03-27', NULL, 'Paid', NULL, NULL, '0.000000'),
('aebac00a-217c-02cb-8855-5aa0354eaa78', 'Good', '2018-03-07 18:55:38', '2018-03-07 19:17:47', '1', '1', NULL, 0, '1', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 41, '1150.590000', '1150.590000', '1140.590000', '1140.590000', '10.000000', '10.000000', '228.120000', '228.120000', '10.290000', '10.290000', NULL, NULL, '0.000000', '1379.000000', '1379.000000', '-99', 0, '2018-03-07', '2018-03-07', NULL, 'Paid', NULL, NULL, '0.000000'),
('af1161d4-4087-3b7e-2c57-5a8c6816a2b2', 'MM', '2018-02-20 18:29:03', '2018-03-03 17:34:59', '1', '1', '', 1, '1', '', '', '', '', '', '', '', '', '', '', '', '', 21, '1150.590000', '1150.590000', '1150.590000', '1150.590000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', NULL, NULL, '0.000000', '1150.590000', '1150.590000', '-99', 0, '2018-02-20', '2018-02-20', NULL, 'Paid', NULL, NULL, '0.000000'),
('b62979df-5a40-8611-9983-5a88726545fe', 'xzc', '2018-02-17 18:21:55', '2018-03-03 17:35:18', '1', '1', '', 1, '1', '', '', '', '', '', '', '', '', '', '', '', '', 12, '7879.500000', '7879.500000', '7889.500000', '7889.500000', '10.000000', '10.000000', '1575.900000', '1575.900000', '0.000000', '0.000000', NULL, NULL, '0.000000', '9465.400000', '9465.400000', '-99', 0, '2018-02-17', '2018-02-17', NULL, 'Paid', NULL, NULL, '0.000000'),
('bfd9b379-62eb-998f-e1b3-5ac28b70f07d', 'April 2018', '2018-04-02 19:57:36', '2018-04-05 19:27:30', '1', '1', 'asdas', 0, '1', 'c2e21265-268e-ba71-e850-5aa954e2052d', '', 'demo', 'demo', 'demo', 'demo', 'demo', 'demo', 'demo', 'demo', 'demo', 'demo', 65, '7879.500000', '7879.500000', '7859.500000', '7859.500000', '20.000000', '20.000000', '2357.850000', '2357.850000', '15.000000', '15.000000', NULL, NULL, '0.000000', '10232.350000', '10232.350000', '-99', 0, '2018-04-07', '2018-04-10', NULL, 'Paid', NULL, NULL, '0.000000'),
('c5ab8e95-7c6f-67ed-52a2-5a998b4b067f', 'Cool', '2018-03-02 17:35:06', '2018-03-03 17:34:59', '1', '1', 'Description', 1, '1', 'f30070f4-e846-d94c-512c-5a7c8cf49739', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 37, '8738.400000', '8738.400000', '8748.400000', '8748.400000', '10.000000', '10.000000', '0.000000', '0.000000', '200.000000', '200.000000', NULL, NULL, '0.000000', '8948.400000', '8948.400000', '-99', 56465465, '2018-03-02', '2018-03-02', '2018-03-31', 'Paid', NULL, NULL, '0.000000'),
('c6e74937-f842-98dd-de62-5a87f4cf7a9e', 'sad', '2018-02-17 09:24:58', '2018-03-03 17:35:18', '1', '1', 'asd', 1, '1', '', '', '', '', '', '', '', '', '', '', '', '', 6, '1150.590000', '1150.590000', '1160.590000', '1160.590000', '10.000000', '10.000000', '115.060000', '115.060000', '0.000000', '0.000000', NULL, NULL, '0.000000', '1275.650000', '1275.650000', '-99', 0, '2018-02-17', '2018-02-17', NULL, 'Paid', NULL, NULL, '0.000000'),
('c8c3ef30-f398-e1a5-0af2-5a8c69dd099f', 'PP', '2018-02-20 18:29:52', '2018-03-03 17:34:59', '1', '1', '', 1, '1', '', '', '', '', '', '', '', '', '', '', '', '', 23, '1150.590000', '1150.590000', '1150.590000', '1150.590000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', NULL, NULL, '0.000000', '1150.590000', '1150.590000', '-99', 0, '2018-02-20', '2018-02-20', NULL, 'Paid', NULL, NULL, '0.000000'),
('c9996ecb-93a1-3d07-6fd2-5aa77b9682b7', 'Test exp', '2018-03-13 07:20:50', '2018-03-13 07:20:50', '1', '1', '', 0, '1', '', '', '', '', '', '', '', '', '', '', '', '', 46, '5752.950000', '5752.950000', '5702.950000', '5702.950000', '50.000000', '50.000000', '574.300000', '574.300000', '20.000000', '20.000000', NULL, NULL, '0.000000', '6297.250000', '6297.250000', '-99', 0, '2018-03-13', '2018-03-13', NULL, 'Paid', NULL, NULL, '0.000000'),
('c9bade80-498e-1ff4-9a4d-5a87f9147e2f', 'sad', '2018-02-17 09:43:09', '2018-03-03 17:35:18', '1', '1', 'asd', 1, '1', '', '', '', '', '', '', '', '', '', '', '', '', 7, '1150.590000', '1150.590000', '1160.590000', '1160.590000', '10.000000', '10.000000', '115.060000', '115.060000', '0.000000', '0.000000', NULL, NULL, '0.000000', '1275.650000', '1275.650000', '-99', 0, '2018-02-17', '2018-02-17', NULL, 'Paid', NULL, NULL, '0.000000'),
('caba7f6e-bf6c-ad72-23c3-5aa7f68a978d', 'Test Demo', '2018-03-13 16:05:54', '2018-03-13 16:05:54', '1', '1', 'Test Demo', 0, '1', '', '', '', '', '', '', '', '', '', '', '', '', 47, '1150.590000', '1150.590000', '1150.590000', '1150.590000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', NULL, NULL, '0.000000', '1150.590000', '1150.590000', '-99', 123, '2018-03-13', '2018-03-13', NULL, 'Paid', NULL, NULL, '0.000000'),
('d0d2954a-886f-02b7-f731-5a945f574754', 'aaaaaa', '2018-02-26 19:26:15', '2018-03-03 17:34:59', '1', '1', '', 1, '1', '', '', '', '', '', '', '', '', '', '', '', '', 30, '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', NULL, NULL, '0.000000', '0.000000', '0.000000', '-99', 0, '2018-02-26', '2018-02-26', NULL, 'Paid', NULL, NULL, '0.000000'),
('d9e87299-4591-9c83-efac-5a8872ced048', 'xzc', '2018-02-17 18:21:31', '2018-03-03 17:35:18', '1', '1', '', 1, '1', '', '', '', '', '', '', '', '', '', '', '', '', 11, '7879.500000', '7879.500000', '7889.500000', '7889.500000', '10.000000', '10.000000', '1575.900000', '1575.900000', '0.000000', '0.000000', NULL, NULL, '0.000000', '9465.400000', '9465.400000', '-99', 0, '2018-02-17', '2018-02-17', NULL, 'Paid', NULL, NULL, '0.000000'),
('dab57763-968a-6cf7-7c7f-5a96fcf801a3', 'With Type', '2018-02-28 19:01:39', '2018-03-03 17:34:59', '1', '1', '', 1, '1', '', '', '', '', '', '', '', '', '', '', '', '', 34, '12073.590000', '12073.590000', '12083.590000', '12083.590000', '10.000000', '10.000000', '570.300000', '570.300000', '50.000000', '50.000000', NULL, NULL, '0.000000', '12703.890000', '12703.890000', '-99', 0, '2018-02-28', '2018-02-28', NULL, 'Paid', NULL, NULL, '0.000000'),
('ec0d1106-d54f-5aa5-082d-5aa8229ffcc2', 'Test123', '2018-03-13 19:13:01', '2018-03-13 19:15:41', '1', '1', 'sAS', 0, '1', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 51, '73825.770000', '73825.770000', '73725.770000', '73725.770000', '100.000000', '100.000000', '3295.780000', '3295.780000', '0.000000', '0.000000', NULL, NULL, '0.000000', '77021.550000', '77021.550000', '-99', 0, '2018-03-13', '2018-03-13', NULL, 'Paid', NULL, NULL, '0.000000'),
('f4103cac-9c8c-66ea-94e7-5aa03c012a33', 'My New Invoice', '2018-03-07 19:26:40', '2018-03-10 07:32:47', '1', '1', NULL, 0, '1', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 42, '1150.590000', '1150.590000', '1140.590000', '1140.590000', '10.000000', '10.000000', '114.060000', '114.060000', '10.350000', '10.350000', NULL, NULL, '0.000000', '1265.000000', '1265.000000', '-99', 0, '2018-03-07', '2018-03-07', NULL, 'Paid', NULL, NULL, '0.000000');

-- --------------------------------------------------------

--
-- Table structure for table `aos_invoices_atomi_invoice_payment_details_1_c`
--

CREATE TABLE `aos_invoices_atomi_invoice_payment_details_1_c` (
  `id` varchar(36) NOT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `aos_invoices_atomi_invoice_payment_details_1aos_invoices_ida` varchar(36) DEFAULT NULL,
  `aos_invoic9687details_idb` varchar(36) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `aos_invoices_atomi_invoice_payment_details_1_c`
--

INSERT INTO `aos_invoices_atomi_invoice_payment_details_1_c` (`id`, `date_modified`, `deleted`, `aos_invoices_atomi_invoice_payment_details_1aos_invoices_ida`, `aos_invoic9687details_idb`) VALUES
('1299df80-1884-0558-29c4-5aa8168cf16a', '2018-03-13 18:20:52', 0, '49137101-7b02-ae0e-8af5-5aa8025d27a1', '117f7608-ece0-9fe8-18e7-5aa816667566'),
('168bb8d0-3814-1243-e471-5aa80d33b655', '2018-03-13 17:43:12', 0, '49137101-7b02-ae0e-8af5-5aa8025d27a1', '15415956-b2e9-f701-ac2b-5aa80dd83873'),
('179e01df-fcc1-a471-ded8-5ac678db2956', '2018-04-05 19:27:30', 0, 'bfd9b379-62eb-998f-e1b3-5ac28b70f07d', '16c62764-2888-e32e-490a-5ac678cffa60'),
('1aa6805b-1139-1f85-2aa1-5aa039397797', '2018-03-07 19:12:26', 0, 'aebac00a-217c-02cb-8855-5aa0354eaa78', '19d41b1a-60cb-0520-a9ac-5aa0394aa205'),
('1c5f0c33-cc42-c810-b101-5aa3c9907410', '2018-03-10 12:04:25', 0, '3d2b4d73-db81-2189-fcac-5aa3c9a104da', 'efc2cdcc-c31a-e925-5f84-5aa3c9729908'),
('1f218fe5-04ed-2499-ab71-5ac6783315f6', '2018-04-05 19:27:30', 0, 'bfd9b379-62eb-998f-e1b3-5ac28b70f07d', '1ac0d254-6080-3bb9-2c5a-5ac678576c92'),
('1ff1dd58-e44f-dec3-44af-5aa173ce76e9', '2018-03-08 17:31:01', 0, 'f4103cac-9c8c-66ea-94e7-5aa03c012a33', '15445960-4742-2371-303d-5aa173c3f0b5'),
('20f79d5f-8b65-c717-f10e-5aa03aca9a9b', '2018-03-07 19:17:47', 0, 'aebac00a-217c-02cb-8855-5aa0354eaa78', '201f3e58-1c08-4cc2-74bd-5aa03aef13fd'),
('26f7e094-7339-326d-5ece-5aa3ca29676b', '2018-03-10 12:07:40', 0, '3d2b4d73-db81-2189-fcac-5aa3c9a104da', '2506a702-0f08-e4c9-98bc-5aa3cab6e37f'),
('28e16210-96c3-c6a4-504d-5aa039a7ae9d', '2018-03-07 19:10:01', 0, 'aebac00a-217c-02cb-8855-5aa0354eaa78', '27dae871-625b-52d4-b780-5aa039c82ef8'),
('2f3bc7e2-a05f-2413-dc47-5aa38ac15193', '2018-03-10 07:32:42', 0, 'f4103cac-9c8c-66ea-94e7-5aa03c012a33', '2dbe2411-f803-e656-80c3-5aa38aec8e2e'),
('34f4972c-16bf-43f9-0c39-5aa80ebc5f80', '2018-03-13 17:47:52', 0, '49137101-7b02-ae0e-8af5-5aa8025d27a1', '33c3fc3e-c142-10d9-45b7-5aa80e5d02af'),
('38c8853d-5d99-ed3d-a29c-5aa03ab005cc', '2018-03-07 19:17:47', 0, 'aebac00a-217c-02cb-8855-5aa0354eaa78', '3837917e-606e-09d8-f1b3-5aa03aae4ed8'),
('3a4b9aea-8694-83cb-4191-5aa38afa2b3a', '2018-03-10 07:32:47', 0, 'f4103cac-9c8c-66ea-94e7-5aa03c012a33', '39926df4-7ae3-0ac7-5795-5aa38a11586e'),
('3d8d8fc9-0bf2-befb-60f3-5aa3c94b2173', '2018-03-10 12:04:25', 0, '3d2b4d73-db81-2189-fcac-5aa3c9a104da', '3aa248e5-2d66-ef69-02e3-5aa3c98f95a4'),
('3fd6a6c9-afbe-c752-9d61-5aa814c0e687', '2018-03-13 18:13:23', 0, '49137101-7b02-ae0e-8af5-5aa8025d27a1', '3e11c29c-3672-30f7-4b6d-5aa814a8fabb'),
('47b637eb-4b32-0644-ab8d-5aa0398e15b7', '2018-03-07 19:12:26', 0, 'aebac00a-217c-02cb-8855-5aa0354eaa78', '47266018-6391-b435-ccd9-5aa039a81387'),
('490f0bd7-0e18-ffcf-92f1-5aa0361cbb8f', '2018-03-07 18:58:15', 0, 'aebac00a-217c-02cb-8855-5aa0354eaa78', '485279ec-9bd2-c28a-96ce-5aa0365190d6'),
('4ac27194-05bc-8e90-0e58-5aa51b8d0d6f', '2018-03-11 12:05:32', 0, '3d2b4d73-db81-2189-fcac-5aa3c9a104da', '49444a3c-c482-656c-1930-5aa51b744177'),
('4f43dca3-323d-6cff-a762-5aa3ca53f3ca', '2018-03-10 12:07:40', 0, '3d2b4d73-db81-2189-fcac-5aa3c9a104da', '4db1c9bf-3f06-8927-8f90-5aa3ca2981da'),
('4f99fba6-c165-b440-1990-5aa03650d0db', '2018-03-07 19:00:57', 0, 'aebac00a-217c-02cb-8855-5aa0354eaa78', '4eee58cd-c675-085d-0bb0-5aa03612b97f'),
('53025fd1-5168-a849-2ef1-5aa17349dfc7', '2018-03-08 17:31:01', 0, 'f4103cac-9c8c-66ea-94e7-5aa03c012a33', '51c91b5d-56c2-8ca7-ef3c-5aa173297581'),
('58a26b17-98d4-7cd7-1ac8-5aa9797cdda4', '2018-03-14 19:36:27', 0, '1c92664d-e617-d964-32b8-5aa978e031b7', '5768fc2f-1cce-8cd9-7f54-5aa979e31703'),
('5edceaf9-3e4e-fbfa-466f-5aa03945e29b', '2018-03-07 19:14:04', 0, 'aebac00a-217c-02cb-8855-5aa0354eaa78', '5e381659-d3bd-cae3-b3a0-5aa03958e75b'),
('5f54052c-b771-87c5-2d36-5aa38aa0b057', '2018-03-10 07:32:42', 0, 'f4103cac-9c8c-66ea-94e7-5aa03c012a33', '5e59c2cb-0274-33b2-862d-5aa38a2e73c3'),
('6d567167-8051-8f36-43fd-5aa97a26c613', '2018-03-14 19:40:40', 0, '1c92664d-e617-d964-32b8-5aa978e031b7', '6c7a6567-b802-707a-ded7-5aa97a50a696'),
('6f320ac6-7fe1-28ac-74ee-5aa5182f37e0', '2018-03-11 11:53:50', 0, '3d2b4d73-db81-2189-fcac-5aa3c9a104da', '6e846dfd-1804-b05a-ece1-5aa5187b6bd4'),
('73988bb8-593e-64fb-39b5-5aa3cadad9f9', '2018-03-10 12:07:40', 0, '3d2b4d73-db81-2189-fcac-5aa3c9a104da', '713312a2-b0fb-5477-1287-5aa3ca8630df'),
('7de4147c-a826-4228-c09f-5ac9f7b9cd0a', '2018-04-08 11:05:00', 0, '2e1f9c01-4363-480b-5bec-5ac8d206fbb2', '7c62f919-eef4-fc22-5c0b-5ac9f7642392'),
('85e85a4f-a0d8-06d9-2b2c-5aa0393f75de', '2018-03-07 19:10:01', 0, 'aebac00a-217c-02cb-8855-5aa0354eaa78', '850f5ceb-ee05-2020-aaef-5aa0390d9b95'),
('87018454-3cb8-74e6-1768-5aa0379ca248', '2018-03-07 19:02:29', 0, 'aebac00a-217c-02cb-8855-5aa0354eaa78', '862a71c7-acd0-7aab-8f98-5aa0379faf65'),
('87a67b4d-dea7-63b2-ba5d-5aa81985d184', '2018-03-13 18:32:46', 0, '49137101-7b02-ae0e-8af5-5aa8025d27a1', '866b928e-b949-fa11-3a91-5aa819780630'),
('87ecb6d3-e8d9-56f8-1cee-5aa51beaab2e', '2018-03-11 12:05:32', 0, '3d2b4d73-db81-2189-fcac-5aa3c9a104da', '86b0a479-f8a4-edb1-0f3c-5aa51b0e878f'),
('8a370457-faee-c3ed-c9f1-5aa8125aef62', '2018-03-13 18:05:15', 0, '49137101-7b02-ae0e-8af5-5aa8025d27a1', '88d73b1a-e7a4-eac2-8144-5aa81207634c'),
('8c8b04b9-5d88-34f3-98c5-5aa81b6ad55a', '2018-03-13 18:40:15', 0, '49137101-7b02-ae0e-8af5-5aa8025d27a1', '8b4f16fe-2749-d989-bef8-5aa81bbdf451'),
('90c803b3-0754-209e-9129-5aa97a6103ee', '2018-03-14 19:39:09', 0, '1c92664d-e617-d964-32b8-5aa978e031b7', '8fefaaee-fee7-8a0c-42fb-5aa97ab60472'),
('92432493-2ec7-8d21-040b-5aa38afec560', '2018-03-10 07:32:47', 0, 'f4103cac-9c8c-66ea-94e7-5aa03c012a33', '917c243c-8763-87de-f04b-5aa38a0d13c8'),
('92badc17-aa37-064b-a27a-5aa036abaacf', '2018-03-07 18:58:15', 0, 'aebac00a-217c-02cb-8855-5aa0354eaa78', '9216e1b7-f203-2c36-b0c2-5aa0364dd510'),
('943f9e67-464e-73b6-20e3-5aa17319b1c6', '2018-03-08 17:31:01', 0, 'f4103cac-9c8c-66ea-94e7-5aa03c012a33', '939ad1d4-b2aa-bda3-54d5-5aa1733a5f79'),
('94dd00ae-c067-71b9-0806-5aa039c74987', '2018-03-07 19:14:04', 0, 'aebac00a-217c-02cb-8855-5aa0354eaa78', '8be00b3a-a02e-9896-dbdd-5aa0394e2dc1'),
('95017d2f-2013-f93b-229e-5aa03aa8d8f6', '2018-03-07 19:17:47', 0, 'aebac00a-217c-02cb-8855-5aa0354eaa78', '93e435b5-3bdb-70bc-9fc8-5aa03aa10c5a'),
('95d20d1f-da07-8321-423c-5aa51b5990fc', '2018-03-11 12:05:32', 0, '3d2b4d73-db81-2189-fcac-5aa3c9a104da', '878602bf-68ec-09ec-5369-5aa51b235aad'),
('96cb0b3b-8dab-472e-3c21-5aa8117cf6b8', '2018-03-13 17:59:37', 0, '49137101-7b02-ae0e-8af5-5aa8025d27a1', '95628325-3d93-5680-60cf-5aa811f74bd2'),
('9b1bb91c-1703-48c9-2966-5aa039f29b8a', '2018-03-07 19:12:26', 0, 'aebac00a-217c-02cb-8855-5aa0354eaa78', '9a6a899c-41d4-3ac3-ec1e-5aa039997b23'),
('a079afd9-039f-51b8-283d-5aa51b7d4091', '2018-03-11 12:05:32', 0, '3d2b4d73-db81-2189-fcac-5aa3c9a104da', '9e4a914a-effa-aff9-4c82-5aa51bdfab4f'),
('a9fd4dd6-793a-c096-b032-5aa51885e810', '2018-03-11 11:53:50', 0, '3d2b4d73-db81-2189-fcac-5aa3c9a104da', 'a8ef5cf5-2eff-0d20-2671-5aa518663409'),
('aaba5dff-ee9e-82d5-413c-5aa173653d2b', '2018-03-08 17:31:01', 0, 'f4103cac-9c8c-66ea-94e7-5aa03c012a33', 'a9c244a1-6453-f183-14d7-5aa173b6d5f9'),
('af0cb023-0b5b-8a41-15ba-5aa3c9bce4c5', '2018-03-10 12:04:25', 0, '3d2b4d73-db81-2189-fcac-5aa3c9a104da', 'acabd37a-334d-9028-fb81-5aa3c99f7cdb'),
('b6cc69d9-5c71-dcdc-9d58-5ac9f77097d1', '2018-04-08 11:05:00', 0, '2e1f9c01-4363-480b-5bec-5ac8d206fbb2', 'b5a3f56a-8a01-62d1-235f-5ac9f7ef518f'),
('babda261-ab26-7d48-e697-5aa817e9edfc', '2018-03-13 18:24:54', 0, '49137101-7b02-ae0e-8af5-5aa8025d27a1', 'b928c882-88cf-bec3-54c5-5aa8178aa22a'),
('bd0d3fa0-6bf5-4252-4cdc-5aa38aa2c992', '2018-03-10 07:32:42', 0, 'f4103cac-9c8c-66ea-94e7-5aa03c012a33', 'bc4d7993-c6b1-26e7-cc46-5aa38a1274b4'),
('bdedd9de-83e4-86fc-702d-5aa03617367d', '2018-03-07 19:00:57', 0, 'aebac00a-217c-02cb-8855-5aa0354eaa78', 'bd476f7d-7573-6982-e200-5aa0363923b7'),
('be3bc006-d027-2f4e-f76d-5aa81c610bb2', '2018-03-13 18:44:55', 0, '49137101-7b02-ae0e-8af5-5aa8025d27a1', 'bce581a3-9de2-edd0-b374-5aa81c9f6a06'),
('be4c0e52-6276-c4c6-9d13-5aa036aef49d', '2018-03-07 19:00:57', 0, 'aebac00a-217c-02cb-8855-5aa0354eaa78', 'b0b90571-b942-0b1a-f5fc-5aa0368f62e7'),
('c22cbe03-2608-28b2-5449-5aa38a0c3080', '2018-03-10 07:32:47', 0, 'f4103cac-9c8c-66ea-94e7-5aa03c012a33', 'c0fd710d-3027-15c2-de8a-5aa38a9766d5'),
('cd518382-8ef5-02fc-bd67-5aa3c95e805a', '2018-03-10 12:04:25', 0, '3d2b4d73-db81-2189-fcac-5aa3c9a104da', 'cc203ae8-a0b4-5118-7dda-5aa3c91cd7be'),
('cdbe6c87-3b99-d412-3ebd-5aca0b94f3de', '2018-04-08 12:30:49', 0, '2e1f9c01-4363-480b-5bec-5ac8d206fbb2', 'cc092f8b-c72e-66ea-d0bf-5aca0bb54f76'),
('d0c1489b-5e1f-e40f-e65b-5ac9f7231db4', '2018-04-08 11:05:00', 0, '2e1f9c01-4363-480b-5bec-5ac8d206fbb2', 'c87ab0fe-4f86-5d38-bea6-5ac9f722fee0'),
('d0f16cc8-8e2e-360b-1175-5aa81ccbdfb0', '2018-03-13 18:47:56', 0, '49137101-7b02-ae0e-8af5-5aa8025d27a1', 'cf8e77c9-5551-33ff-e6e7-5aa81c20560a'),
('d4a876ef-b58f-1d37-320e-5aa38a0b28bb', '2018-03-10 07:32:42', 0, 'f4103cac-9c8c-66ea-94e7-5aa03c012a33', 'ca0e4886-3f77-c537-d439-5aa38af357d6'),
('d4db0c6a-0359-3ef0-e4ab-5aa039fb9d90', '2018-03-07 19:10:01', 0, 'aebac00a-217c-02cb-8855-5aa0354eaa78', 'd417a6cd-f68d-d4b3-724d-5aa039c888e4'),
('d4f203f8-4d39-3d44-8a72-5aa38a6df2a6', '2018-03-10 07:32:47', 0, 'f4103cac-9c8c-66ea-94e7-5aa03c012a33', 'd45c3ea2-77e3-cb6e-8f00-5aa38a09e3f9'),
('dc306dfe-8b2b-c458-78cd-5aa81748f998', '2018-03-13 18:23:37', 0, '49137101-7b02-ae0e-8af5-5aa8025d27a1', 'db0bcce1-7154-df43-7a89-5aa817297104'),
('df768501-8f97-9375-81ae-5aa039532281', '2018-03-07 19:14:04', 0, 'aebac00a-217c-02cb-8855-5aa0354eaa78', 'de97a022-0627-2f48-fda3-5aa0398f66db'),
('df8415a5-1033-fbeb-f655-5aca0bc9c0a4', '2018-04-08 12:30:49', 0, '2e1f9c01-4363-480b-5bec-5ac8d206fbb2', 'dec2ebd3-2e19-c3dc-a451-5aca0bb57a3b'),
('e45178f2-15fe-9a14-2e3c-5aa3ca3427d0', '2018-03-10 12:07:40', 0, '3d2b4d73-db81-2189-fcac-5aa3c9a104da', 'e337fecf-b17a-400d-9e94-5aa3ca8e223b'),
('e471e6be-d88a-fa27-3291-5aa51866a9fd', '2018-03-11 11:53:50', 0, '3d2b4d73-db81-2189-fcac-5aa3c9a104da', 'e3d9735c-f3c8-8d03-038b-5aa51804196e'),
('ec3e63ff-412e-4b38-268d-5aa0365baef4', '2018-03-07 18:58:15', 0, 'aebac00a-217c-02cb-8855-5aa0354eaa78', 'eb91b04b-e4b2-019b-54d8-5aa036fa9839'),
('f090c5d1-4c60-0d65-2291-5aa81d1d3b23', '2018-03-13 18:48:57', 0, '49137101-7b02-ae0e-8af5-5aa8025d27a1', 'ef6ad65a-6ddb-15d8-d496-5aa81d52d961'),
('f0d16f60-62dd-63a6-cffa-5aa518cf6c8a', '2018-03-11 11:53:50', 0, '3d2b4d73-db81-2189-fcac-5aa3c9a104da', 'f0063a9d-c45b-3d1e-5c4b-5aa518bd0bd5'),
('f304c8dc-7c01-1da6-ca0b-5aca0b2ec863', '2018-04-08 12:30:49', 0, '2e1f9c01-4363-480b-5bec-5ac8d206fbb2', 'f0cdf9e4-308d-6fb4-a459-5aca0ba569e7');

-- --------------------------------------------------------

--
-- Table structure for table `aos_invoices_audit`
--

CREATE TABLE `aos_invoices_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text,
  `after_value_text` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `aos_invoices_audit`
--

INSERT INTO `aos_invoices_audit` (`id`, `parent_id`, `date_created`, `created_by`, `field_name`, `data_type`, `before_value_string`, `after_value_string`, `before_value_text`, `after_value_text`) VALUES
('112a0dfe-403d-e5da-fec6-5a9ae99e3857', '46abeb6e-67cc-a761-0e16-5a9ae35c5046', '2018-03-03 18:28:04', '1', 'total_amount_usdollar', 'currency', '12663.890000', '14379.77', NULL, NULL),
('119e50d7-cd1c-b3f1-9c0a-5a87fad0caa0', '356a1894-bfa6-c8c3-c9c9-5a87faf9c01a', '2018-02-17 09:48:33', '1', 'subtotal_amount', 'currency', '1160.590000', '1150.59', NULL, NULL),
('12e77943-2174-96d4-5920-5aa8147db8c9', '49137101-7b02-ae0e-8af5-5aa8025d27a1', '2018-03-13 18:12:38', '1', 'payment_in_cash_cheque_c', 'currency', '23371.520000', '2739.42', NULL, NULL),
('1467ed69-f7b6-f32d-6800-5aa816f9ff4e', '49137101-7b02-ae0e-8af5-5aa8025d27a1', '2018-03-13 18:20:52', '1', 'total_amount_usdollar', 'currency', '13642.420000', '24565.42', NULL, NULL),
('152a1329-9ca2-648d-5869-5a8c5eaf1ffd', '9dada791-4f81-c16d-f1a2-5a886facdd7c', '2018-02-20 17:46:06', '1', 'tax_amount', 'currency', '1575.900000', '0', NULL, NULL),
('153e0af3-8b7d-9cb0-a8e2-5aa81cb789b9', '49137101-7b02-ae0e-8af5-5aa8025d27a1', '2018-03-13 18:44:55', '1', 'payment_in_wire_transferred_c', 'currency', '62265.550000', '43938.29', NULL, NULL),
('158a6785-4906-2a8d-e844-5aa80dd68b22', '49137101-7b02-ae0e-8af5-5aa8025d27a1', '2018-03-13 17:43:12', '1', 'subtotal_amount_usdollar', 'currency', '20873.680000', '22014.27', NULL, NULL),
('1607e8d1-d9ac-0613-5001-5a9bafc6eae8', '46abeb6e-67cc-a761-0e16-5a9ae35c5046', '2018-03-04 08:35:18', '1', 'billing_account', 'relate', '', 'Sagar Customer', NULL, NULL),
('1608b571-f829-7716-2872-5a9adca6ca4f', 'c5ab8e95-7c6f-67ed-52a2-5a998b4b067f', '2018-03-03 17:32:55', '1', 'subtotal_amount', 'currency', '20363.090000', '8748.4', NULL, NULL),
('16671167-a431-1e10-817f-5aa81dd2c8d6', '49137101-7b02-ae0e-8af5-5aa8025d27a1', '2018-03-13 18:48:57', '1', 'subtotal_amount_usdollar', 'currency', '41983.290000', '46545.65', NULL, NULL),
('169dccbe-396b-0bea-bcf9-5a998f0005dd', 'c5ab8e95-7c6f-67ed-52a2-5a998b4b067f', '2018-03-02 17:51:31', '1', 'total_amount_usdollar', 'currency', '12521.710000', '23454.71', NULL, NULL),
('187b7999-015a-b6d6-a49f-5aa814edcfba', '49137101-7b02-ae0e-8af5-5aa8025d27a1', '2018-03-13 18:12:38', '1', 'payment_in_credit_card_c', 'currency', '24540.100000', '2876.39', NULL, NULL),
('19cb93d4-477f-f942-a8ff-5aa816822f81', '49137101-7b02-ae0e-8af5-5aa8025d27a1', '2018-03-13 18:20:52', '1', 'final_outstanding_balance_c', 'currency', '13622.420000', '24545.42', NULL, NULL),
('1a093ada-ca84-dd55-2bd0-5a8c5ef5300d', '9dada791-4f81-c16d-f1a2-5a886facdd7c', '2018-02-20 17:46:06', '1', 'tax_amount_usdollar', 'currency', '1575.900000', '0', NULL, NULL),
('1b4aaf60-1dca-2957-c7b8-5aa173a0fb80', 'f4103cac-9c8c-66ea-94e7-5aa03c012a33', '2018-03-08 17:31:01', '1', 'final_outstanding_balance_c', 'currency', '1020.000000', '1000', NULL, NULL),
('1b9cbd1f-55be-91e6-c975-5a9adc2da49e', 'c5ab8e95-7c6f-67ed-52a2-5a998b4b067f', '2018-03-03 17:32:55', '1', 'subtotal_amount_usdollar', 'currency', '20363.090000', '8748.4', NULL, NULL),
('1d0d5b7c-b98a-c434-2d33-5aa80da7fd69', '49137101-7b02-ae0e-8af5-5aa8025d27a1', '2018-03-13 17:43:12', '1', 'discount_amount', 'currency', '230.000000', '240', NULL, NULL),
('1d410479-1fd7-c9ea-b5dc-5aa3c9c7fa1f', '3d2b4d73-db81-2189-fcac-5aa3c9a104da', '2018-03-10 12:04:25', '1', 'final_outstanding_balance_c', 'currency', '1220.650000', '1135.15', NULL, NULL),
('1dcfe45c-9732-eb65-38eb-5aa814210fcb', '49137101-7b02-ae0e-8af5-5aa8025d27a1', '2018-03-13 18:12:38', '1', 'payment_in_wire_transferred_c', 'currency', '23386.520000', '2754.42', NULL, NULL),
('1f3459d5-e944-1d6b-ec01-5aa816e814f7', '49137101-7b02-ae0e-8af5-5aa8025d27a1', '2018-03-13 18:20:52', '1', 'payment_in_cash_cheque_c', 'currency', '13642.420000', '24565.42', NULL, NULL),
('1f397dbd-eb4b-7a8e-9679-5aa8179a1a5f', '49137101-7b02-ae0e-8af5-5aa8025d27a1', '2018-03-13 18:23:37', '1', 'subtotal_amount', 'currency', '24107.180000', '19923.09', NULL, NULL),
('2021bfc4-a4b4-623c-fe23-5aa9797f4568', '1c92664d-e617-d964-32b8-5aa978e031b7', '2018-03-14 19:36:27', '1', 'invoice_number_c', 'int', NULL, '5008', NULL, NULL),
('2053896a-c3ca-42ef-baf0-5a9adcb20210', 'c5ab8e95-7c6f-67ed-52a2-5a998b4b067f', '2018-03-03 17:32:55', '1', 'discount_amount', 'currency', '410.000000', '10', NULL, NULL),
('211714c1-1518-d708-e8e0-5a87fab24150', '356a1894-bfa6-c8c3-c9c9-5a87faf9c01a', '2018-02-17 09:48:33', '1', 'subtotal_amount_usdollar', 'currency', '1160.590000', '1150.59', NULL, NULL),
('2161260c-a645-7090-d803-5aa814576c62', '49137101-7b02-ae0e-8af5-5aa8025d27a1', '2018-03-13 18:13:23', '1', 'total_amt', 'currency', '2301.180000', '13224.18', NULL, NULL),
('22ba8aff-9d46-2c5d-ca0d-5a8c5e72e01d', '9dada791-4f81-c16d-f1a2-5a886facdd7c', '2018-02-20 17:46:06', '1', 'total_amount_usdollar', 'currency', '9465.400000', '1150.59', NULL, NULL),
('232eda77-7132-5a78-7409-5aa80d0c0220', '49137101-7b02-ae0e-8af5-5aa8025d27a1', '2018-03-13 17:43:12', '1', 'discount_amount_usdollar', 'currency', '230.000000', '240', NULL, NULL),
('23660718-a6b7-1d5a-4437-5a8c5e0dceab', '9dada791-4f81-c16d-f1a2-5a886facdd7c', '2018-02-20 17:46:06', '1', 'discount_amount', 'currency', '10.000000', '0', NULL, NULL),
('24b42697-8dc6-fdb5-e9c5-5aa816ede28a', '49137101-7b02-ae0e-8af5-5aa8025d27a1', '2018-03-13 18:20:52', '1', 'payment_in_credit_card_c', 'currency', '14324.540000', '25793.69', NULL, NULL),
('24fe6f1f-2807-dd28-ec87-5aa97915b784', '1c92664d-e617-d964-32b8-5aa978e031b7', '2018-03-14 19:36:27', '1', 'payment_in_cash_cheque_c', 'currency', NULL, '7929.5', NULL, NULL),
('25e70351-fd04-f374-22e6-5aa81dd34fed', '49137101-7b02-ae0e-8af5-5aa8025d27a1', '2018-03-13 18:48:57', '1', 'payment_in_cash_cheque_c', 'currency', '44168.330000', '51031.87', NULL, NULL),
('269b979e-1987-3ba5-b488-5a9adc55755c', 'c5ab8e95-7c6f-67ed-52a2-5a998b4b067f', '2018-03-03 17:32:55', '1', 'discount_amount_usdollar', 'currency', '410.000000', '10', NULL, NULL),
('26ccc9e9-b91d-4e63-2732-5a87fa3cdec5', '356a1894-bfa6-c8c3-c9c9-5a87faf9c01a', '2018-02-17 09:48:33', '1', 'discount_amount', 'currency', '10.000000', '0', NULL, NULL),
('27e5440f-724e-a5d7-b809-5aa80deba3d2', '49137101-7b02-ae0e-8af5-5aa8025d27a1', '2018-03-13 17:43:12', '1', 'tax_amount', 'currency', '1129.130000', '1357.25', NULL, NULL),
('27f18fbc-ed95-b05f-4614-5aa814181616', '49137101-7b02-ae0e-8af5-5aa8025d27a1', '2018-03-13 18:13:23', '1', 'total_amt_usdollar', 'currency', '2301.180000', '13224.18', NULL, NULL),
('296c0708-825d-9f93-6260-5aa97a76edcf', '1c92664d-e617-d964-32b8-5aa978e031b7', '2018-03-14 19:40:40', '1', 'final_outstanding_balance_c', 'currency', NULL, '7909.5', NULL, NULL),
('2afb1c86-5990-fe68-3c7a-5aa979125028', '1c92664d-e617-d964-32b8-5aa978e031b7', '2018-03-14 19:36:27', '1', 'payment_in_credit_card_c', 'currency', NULL, '8325.98', NULL, NULL),
('2b428321-5977-242b-944e-5a9adc58da2a', 'c5ab8e95-7c6f-67ed-52a2-5a998b4b067f', '2018-03-03 17:32:55', '1', 'tax_amount', 'currency', '2107.500000', '0', NULL, NULL),
('2be50e15-9690-670b-172f-5a9994426a2a', 'c5ab8e95-7c6f-67ed-52a2-5a998b4b067f', '2018-03-02 18:13:13', '1', 'tax_amount_usdollar', 'currency', '228.120000', '200.12', NULL, NULL),
('2c9b8ed1-d6ee-0c12-88be-5aa97a54c82e', '1c92664d-e617-d964-32b8-5aa978e031b7', '2018-03-14 19:39:09', '1', 'final_outstanding_balance_c', 'currency', NULL, '7909.5', NULL, NULL),
('2cce0526-ca34-7553-0798-5aa814f2aadf', '49137101-7b02-ae0e-8af5-5aa8025d27a1', '2018-03-13 18:12:38', '1', 'tax_amount_usdollar', 'currency', '1357.250000', '458.24', NULL, NULL),
('2df23920-21fd-5317-b62e-5aa80d749323', '49137101-7b02-ae0e-8af5-5aa8025d27a1', '2018-03-13 17:43:12', '1', 'tax_amount_usdollar', 'currency', '1129.130000', '1357.25', NULL, NULL),
('2e520243-3eef-97d6-4b15-5aa817d99909', '49137101-7b02-ae0e-8af5-5aa8025d27a1', '2018-03-13 18:23:37', '1', 'total_amt', 'currency', '24147.180000', '19953.09', NULL, NULL),
('30099540-577f-7ee9-76a2-5aa9795df4fe', '1c92664d-e617-d964-32b8-5aa978e031b7', '2018-03-14 19:36:27', '1', 'payment_in_wire_transferred_c', 'currency', NULL, '7944.5', NULL, NULL),
('314a60b2-7d98-4856-ea9c-5a9adc7a7c0f', 'c5ab8e95-7c6f-67ed-52a2-5a998b4b067f', '2018-03-03 17:32:55', '1', 'tax_amount_usdollar', 'currency', '2107.500000', '0', NULL, NULL),
('315a223c-b83e-81d4-fd84-5aa817ce5fb4', '49137101-7b02-ae0e-8af5-5aa8025d27a1', '2018-03-13 18:23:37', '1', 'subtotal_amount_usdollar', 'currency', '24107.180000', '19923.09', NULL, NULL),
('317aeae7-b2f5-594a-da8b-5a87fa62dff5', '356a1894-bfa6-c8c3-c9c9-5a87faf9c01a', '2018-02-17 09:48:33', '1', 'discount_amount_usdollar', 'currency', '10.000000', '0', NULL, NULL),
('3236e7c7-16f1-42ed-fff1-5aa8165031af', '49137101-7b02-ae0e-8af5-5aa8025d27a1', '2018-03-13 18:20:52', '1', 'payment_in_wire_transferred_c', 'currency', '13657.420000', '24580.42', NULL, NULL),
('32a68270-ef28-cfd4-627c-5aa51bf08083', '3d2b4d73-db81-2189-fcac-5aa3c9a104da', '2018-03-11 12:05:32', '1', 'total_amt', 'currency', '1150.590000', '27598.95', NULL, NULL),
('33cd035f-9a30-4315-b1cf-5a8c6ddd8e02', '4515cdab-b602-6926-bd33-5a8c6d0732de', '2018-02-20 18:49:15', '1', 'subtotal_amount', 'currency', '1150.590000', '1160.59', NULL, NULL),
('357641a7-a5b4-b389-4dee-5aa814e86846', '49137101-7b02-ae0e-8af5-5aa8025d27a1', '2018-03-13 18:13:23', '1', 'subtotal_amount', 'currency', '2281.180000', '13184.18', NULL, NULL),
('35a505be-e62a-2de9-84d5-5aa9797b90f2', '1c92664d-e617-d964-32b8-5aa978e031b7', '2018-03-14 19:36:27', '1', 'final_outstanding_balance_c', 'currency', NULL, '7909.5', NULL, NULL),
('360dbc1e-ef6f-5ff8-6791-5a9adcd40141', 'c5ab8e95-7c6f-67ed-52a2-5a998b4b067f', '2018-03-03 17:32:55', '1', 'total_amount_usdollar', 'currency', '22670.590000', '8948.4', NULL, NULL),
('395ec5fc-876e-d9e8-a53e-5a998d66228c', 'c5ab8e95-7c6f-67ed-52a2-5a998b4b067f', '2018-03-02 17:45:51', '1', 'tax_amount', 'currency', '114.060000', '228.12', NULL, NULL),
('3aec2bad-a7a2-c42b-f326-5aa80da41b19', '49137101-7b02-ae0e-8af5-5aa8025d27a1', '2018-03-13 17:43:12', '1', 'total_amount_usdollar', 'currency', '22002.810000', '23371.52', NULL, NULL),
('3d1b518d-1aa2-5b25-087d-5aa817634f83', '49137101-7b02-ae0e-8af5-5aa8025d27a1', '2018-03-13 18:23:37', '1', 'discount_amount', 'currency', '40.000000', '30', NULL, NULL),
('3dba873a-3a2f-e8ea-d8fa-5aa51b11fd0e', '3d2b4d73-db81-2189-fcac-5aa3c9a104da', '2018-03-11 12:05:32', '1', 'total_amt_usdollar', 'currency', '1150.590000', '27598.95', NULL, NULL),
('3f895d51-59f4-cfb3-5b59-5aa97a027039', '1c92664d-e617-d964-32b8-5aa978e031b7', '2018-03-14 19:39:09', '1', 'invoice_number_c', 'int', NULL, '5008', NULL, NULL),
('405192a8-995c-b3f7-1e1c-5aa814570056', '49137101-7b02-ae0e-8af5-5aa8025d27a1', '2018-03-13 18:13:23', '1', 'subtotal_amount_usdollar', 'currency', '2281.180000', '13184.18', NULL, NULL),
('40ea906e-ed14-39eb-747c-5aa80d865143', '49137101-7b02-ae0e-8af5-5aa8025d27a1', '2018-03-13 17:43:12', '1', 'final_outstanding_balance_c', 'currency', '21982.810000', '23351.52', NULL, NULL),
('424604e3-bd52-6088-7a0d-5aa8165fd3ca', '49137101-7b02-ae0e-8af5-5aa8025d27a1', '2018-03-13 18:20:52', '1', 'total_amt_usdollar', 'currency', '13224.180000', '24147.18', NULL, NULL),
('4428d726-f714-7b31-7e25-5aa51b1447d0', '3d2b4d73-db81-2189-fcac-5aa3c9a104da', '2018-03-11 12:05:32', '1', 'subtotal_amount', 'currency', '1140.590000', '27508.95', NULL, NULL),
('4483271e-3871-ce23-da65-5aa97afc218e', '1c92664d-e617-d964-32b8-5aa978e031b7', '2018-03-14 19:39:09', '1', 'payment_in_cash_cheque_c', 'currency', NULL, '7929.5', NULL, NULL),
('45b929d8-c1bd-b845-f2ff-5aa80dd275a4', '49137101-7b02-ae0e-8af5-5aa8025d27a1', '2018-03-13 17:43:12', '1', 'payment_in_cash_cheque_c', 'currency', '22002.810000', '23371.52', NULL, NULL),
('4875ef38-5f96-bdb9-ffa7-5a998de8c0eb', 'c5ab8e95-7c6f-67ed-52a2-5a998b4b067f', '2018-03-02 17:45:51', '1', 'tax_amount_usdollar', 'currency', '114.060000', '228.12', NULL, NULL),
('488b290d-fc92-8a7c-1f7a-5aa814aa85c9', '49137101-7b02-ae0e-8af5-5aa8025d27a1', '2018-03-13 18:13:23', '1', 'discount_amount', 'currency', '20.000000', '40', NULL, NULL),
('4a8c0f69-81fd-aa99-b191-5aa97aaa65a8', '1c92664d-e617-d964-32b8-5aa978e031b7', '2018-03-14 19:39:09', '1', 'payment_in_credit_card_c', 'currency', NULL, '8325.98', NULL, NULL),
('4be55b97-4000-a965-6e6b-5a87fa28d7bc', '356a1894-bfa6-c8c3-c9c9-5a87faf9c01a', '2018-02-17 09:48:33', '1', 'tax_amount', 'currency', '115.060000', '0', NULL, NULL),
('4d53a748-79ff-23f6-05a1-5aa817c33e76', '49137101-7b02-ae0e-8af5-5aa8025d27a1', '2018-03-13 18:23:37', '1', 'discount_amount_usdollar', 'currency', '40.000000', '30', NULL, NULL),
('4de5eba3-d3fa-117f-5c9e-5aa8147b243c', '49137101-7b02-ae0e-8af5-5aa8025d27a1', '2018-03-13 18:13:23', '1', 'discount_amount_usdollar', 'currency', '20.000000', '40', NULL, NULL),
('4f9a1050-1db9-c57a-254e-5aa97ac7f95d', '1c92664d-e617-d964-32b8-5aa978e031b7', '2018-03-14 19:39:09', '1', 'payment_in_wire_transferred_c', 'currency', NULL, '7944.5', NULL, NULL),
('50731a4e-5d44-61dc-aa68-5aa51b9946e2', '3d2b4d73-db81-2189-fcac-5aa3c9a104da', '2018-03-11 12:05:32', '1', 'subtotal_amount_usdollar', 'currency', '1140.590000', '27508.95', NULL, NULL),
('50c8407d-18df-a930-be23-5aa964b803e3', '5f366521-463b-5afd-99d3-5aa9633c7c9c', '2018-03-14 18:07:02', '1', 'billing_account', 'relate', '', 'Com Jon', NULL, NULL),
('51090d4a-d114-563a-ea93-5ac9f7716d5c', '2e1f9c01-4363-480b-5bec-5ac8d206fbb2', '2018-04-08 11:05:00', '1', 'invoice_number_c', 'int', '5064', '5071', NULL, NULL),
('512d590a-b369-3dec-a46a-5aa80da62c50', '49137101-7b02-ae0e-8af5-5aa8025d27a1', '2018-03-13 17:43:12', '1', 'payment_in_credit_card_c', 'currency', '23102.950000', '24540.1', NULL, NULL),
('51efa6f0-f892-c953-10ce-5a87fa76a93c', '356a1894-bfa6-c8c3-c9c9-5a87faf9c01a', '2018-02-17 09:48:33', '1', 'tax_amount_usdollar', 'currency', '115.060000', '0', NULL, NULL),
('52d95547-15d9-3883-a7fa-5aa81751da64', '49137101-7b02-ae0e-8af5-5aa8025d27a1', '2018-03-13 18:23:37', '1', 'tax_amount', 'currency', '458.240000', '901.01', NULL, NULL),
('540e06c4-1a8d-5355-b49f-5aa814b15c51', '49137101-7b02-ae0e-8af5-5aa8025d27a1', '2018-03-13 18:13:23', '1', 'total_amount_usdollar', 'currency', '2739.420000', '13642.42', NULL, NULL),
('552354c2-4819-e15d-b793-5a8814ea36f7', '356a1894-bfa6-c8c3-c9c9-5a87faf9c01a', '2018-02-17 11:40:49', '1', 'subtotal_amount', 'currency', '1150.590000', '1160.59', NULL, NULL),
('5580a285-1e66-5186-4bb1-5aa02a59045e', '810f71ca-8449-a336-249f-5aa02a3164f2', '2018-03-07 18:09:50', '1', 'final_outstanding_balance_c', 'currency', '1080.000000', '1265', NULL, NULL),
('559efa2f-0d32-25b7-c0c0-5a998ded8b93', 'c5ab8e95-7c6f-67ed-52a2-5a998b4b067f', '2018-03-02 17:45:51', '1', 'total_amount_usdollar', 'currency', '12407.650000', '12521.71', NULL, NULL),
('55fdba78-3f3f-8f44-0b5f-5aa80dc773c6', '49137101-7b02-ae0e-8af5-5aa8025d27a1', '2018-03-13 17:43:12', '1', 'payment_in_wire_transferred_c', 'currency', '22017.810000', '23386.52', NULL, NULL),
('56c7d833-01ba-5d38-8a1c-5a87fab6e223', '356a1894-bfa6-c8c3-c9c9-5a87faf9c01a', '2018-02-17 09:48:33', '1', 'total_amount_usdollar', 'currency', '1275.650000', '1150.59', NULL, NULL),
('575520dd-f162-b7ed-9d3b-5aa51b4341d0', '3d2b4d73-db81-2189-fcac-5aa3c9a104da', '2018-03-11 12:05:32', '1', 'discount_amount', 'currency', '10.000000', '90', NULL, NULL),
('58b02281-1fe5-d87f-1a5f-5aa814c90492', '49137101-7b02-ae0e-8af5-5aa8025d27a1', '2018-03-13 18:13:23', '1', 'final_outstanding_balance_c', 'currency', '2719.420000', '13622.42', NULL, NULL),
('5945b510-c71d-6f5d-4526-5aa8171d8d88', '49137101-7b02-ae0e-8af5-5aa8025d27a1', '2018-03-13 18:23:37', '1', 'tax_amount_usdollar', 'currency', '458.240000', '901.01', NULL, NULL),
('59b5542c-8a19-0c5f-bb79-5a8c6d7ac04f', '4515cdab-b602-6926-bd33-5a8c6d0732de', '2018-02-20 18:49:15', '1', 'subtotal_amount_usdollar', 'currency', '1150.590000', '1160.59', NULL, NULL),
('5ba4cd40-6090-807f-4f6e-5aa81d29559d', '49137101-7b02-ae0e-8af5-5aa8025d27a1', '2018-03-13 18:48:57', '1', 'discount_amount', 'currency', '30.000000', '70', NULL, NULL),
('5c360896-5f00-062b-6cb6-5a998f87f842', 'c5ab8e95-7c6f-67ed-52a2-5a998b4b067f', '2018-03-02 17:51:31', '1', 'discount_amount', 'currency', '20.000000', '30', NULL, NULL),
('5c595554-1224-8003-4c93-5aa03927090f', 'aebac00a-217c-02cb-8855-5aa0354eaa78', '2018-03-07 19:10:01', '1', 'final_outstanding_balance_c', 'currency', '1335.000000', '1310', NULL, NULL),
('5e60f1aa-f453-d091-9e19-5aa814a0b833', '49137101-7b02-ae0e-8af5-5aa8025d27a1', '2018-03-13 18:13:23', '1', 'payment_in_cash_cheque_c', 'currency', '2739.420000', '13642.42', NULL, NULL),
('5e839337-ecaa-4cc7-6e7e-5aa51bee35e1', '3d2b4d73-db81-2189-fcac-5aa3c9a104da', '2018-03-11 12:05:32', '1', 'discount_amount_usdollar', 'currency', '10.000000', '90', NULL, NULL),
('5e8b0121-1158-bfa5-70d9-5aa964426b2f', '5f366521-463b-5afd-99d3-5aa9633c7c9c', '2018-03-14 18:07:02', '1', 'invoice_number_c', 'int', '5001', '5008', NULL, NULL),
('604becea-e527-0f11-7d65-5aa817be55f1', '49137101-7b02-ae0e-8af5-5aa8025d27a1', '2018-03-13 18:23:37', '1', 'total_amount_usdollar', 'currency', '24565.420000', '20824.1', NULL, NULL),
('63872811-2787-7912-4e74-5a8814e1af37', '356a1894-bfa6-c8c3-c9c9-5a87faf9c01a', '2018-02-17 11:40:49', '1', 'subtotal_amount_usdollar', 'currency', '1150.590000', '1160.59', NULL, NULL),
('63aefb82-cdcd-48e9-d801-5aa8143242fe', '49137101-7b02-ae0e-8af5-5aa8025d27a1', '2018-03-13 18:13:23', '1', 'payment_in_credit_card_c', 'currency', '2876.390000', '14324.54', NULL, NULL),
('64fc5871-2938-4e98-881e-5aa51ba6bb69', '3d2b4d73-db81-2189-fcac-5aa3c9a104da', '2018-03-11 12:05:32', '1', 'tax_amount', 'currency', '114.060000', '574.3', NULL, NULL),
('65aa88e1-5391-81ff-ac28-5aa817be32b9', '49137101-7b02-ae0e-8af5-5aa8025d27a1', '2018-03-13 18:23:37', '1', 'final_outstanding_balance_c', 'currency', '24545.420000', '20804.1', NULL, NULL),
('661b62a7-444d-c8a2-90d6-5aa97a78ca76', '1c92664d-e617-d964-32b8-5aa978e031b7', '2018-03-14 19:40:40', '1', 'invoice_number_c', 'int', NULL, '5008', NULL, NULL),
('67c4d5be-816e-cf1f-dd02-5a8c6d4e3860', '4515cdab-b602-6926-bd33-5a8c6d0732de', '2018-02-20 18:49:15', '1', 'discount_amount', 'currency', '0.000000', '10', NULL, NULL),
('689f9ce2-4228-b629-f12a-5a88141347a9', '356a1894-bfa6-c8c3-c9c9-5a87faf9c01a', '2018-02-17 11:40:49', '1', 'discount_amount', 'currency', '0.000000', '10', NULL, NULL),
('690c0bfc-3bcd-d066-38ca-5aa814b7c2c8', '49137101-7b02-ae0e-8af5-5aa8025d27a1', '2018-03-13 18:13:23', '1', 'payment_in_wire_transferred_c', 'currency', '2754.420000', '13657.42', NULL, NULL),
('69cf65d0-3175-4ea8-ef2b-5a99945c93d7', 'c5ab8e95-7c6f-67ed-52a2-5a998b4b067f', '2018-03-02 18:14:30', '1', 'total_amt', 'currency', '12073.590000', '19953.09', NULL, NULL),
('69def9f8-88a7-e773-14e7-5ac678ffbd0a', 'bfd9b379-62eb-998f-e1b3-5ac28b70f07d', '2018-04-05 19:27:30', '1', 'invoice_number_c', 'int', '5050', '5057', NULL, NULL),
('6b157958-9dbb-e23f-a65e-5aa817c5c0bd', '49137101-7b02-ae0e-8af5-5aa8025d27a1', '2018-03-13 18:23:37', '1', 'payment_in_cash_cheque_c', 'currency', '24565.420000', '20824.1', NULL, NULL),
('6bc2572f-83d3-68c5-7a4a-5aa51be5b700', '3d2b4d73-db81-2189-fcac-5aa3c9a104da', '2018-03-11 12:05:32', '1', 'tax_amount_usdollar', 'currency', '114.060000', '574.3', NULL, NULL),
('7004c2cf-2adf-3856-ebe3-5a999461b2b1', 'c5ab8e95-7c6f-67ed-52a2-5a998b4b067f', '2018-03-02 18:14:30', '1', 'total_amt_usdollar', 'currency', '12073.590000', '19953.09', NULL, NULL),
('702e0efd-e42d-6ec4-474a-5aa81d57301d', '49137101-7b02-ae0e-8af5-5aa8025d27a1', '2018-03-13 18:48:57', '1', 'payment_in_credit_card_c', 'currency', '46376.750000', '53583.46', NULL, NULL),
('723fdd1e-afff-3de5-d2ea-5aa51b420bcc', '3d2b4d73-db81-2189-fcac-5aa3c9a104da', '2018-03-11 12:05:32', '1', 'total_amount_usdollar', 'currency', '1284.650000', '28113.25', NULL, NULL),
('72ac7179-3ba8-66e4-1c9e-5aa8240c4728', '377ad549-b0db-4125-d80a-5aa824afe928', '2018-03-13 19:20:43', '1', 'total_amt', 'currency', '127.280000', '318.2', NULL, NULL),
('759fa671-fcac-7d40-6717-5a9994887adb', 'c5ab8e95-7c6f-67ed-52a2-5a998b4b067f', '2018-03-02 18:14:30', '1', 'subtotal_amount', 'currency', '12233.590000', '20363.09', NULL, NULL),
('77d6b05d-b18e-7f5c-4dd6-5a8c6d52a837', '4515cdab-b602-6926-bd33-5a8c6d0732de', '2018-02-20 18:49:15', '1', 'discount_amount_usdollar', 'currency', '0.000000', '10', NULL, NULL),
('78d64a59-d5b3-5bb7-dacc-5aa036892853', 'aebac00a-217c-02cb-8855-5aa0354eaa78', '2018-03-07 18:58:15', '1', 'final_outstanding_balance_c', 'currency', '1150.950000', '1300', NULL, NULL),
('7924dc33-3ed6-67a7-7b8b-5a88146895a2', '356a1894-bfa6-c8c3-c9c9-5a87faf9c01a', '2018-02-17 11:40:49', '1', 'discount_amount_usdollar', 'currency', '0.000000', '10', NULL, NULL),
('794df039-c3a4-e11f-69ad-5aa51bde3756', '3d2b4d73-db81-2189-fcac-5aa3c9a104da', '2018-03-11 12:05:32', '1', 'final_outstanding_balance_c', 'currency', '1135.150000', '27963.75', NULL, NULL),
('7bb4b429-49d5-97c8-3164-5aa979f403c1', '1c92664d-e617-d964-32b8-5aa978e031b7', '2018-03-14 19:34:24', '1', 'final_outstanding_balance_c', 'currency', NULL, '7909.5', NULL, NULL),
('7c18c774-d9b7-b304-6d25-5aa97a98f661', '1c92664d-e617-d964-32b8-5aa978e031b7', '2018-03-14 19:40:40', '1', 'payment_in_cash_cheque_c', 'currency', NULL, '7929.5', NULL, NULL),
('7d43a301-d8bb-d44b-d329-5aa817c377c9', '49137101-7b02-ae0e-8af5-5aa8025d27a1', '2018-03-13 18:23:37', '1', 'payment_in_credit_card_c', 'currency', '25793.690000', '21865.31', NULL, NULL),
('7ebeb3cf-0489-a5ab-b666-5aa824465926', '377ad549-b0db-4125-d80a-5aa824afe928', '2018-03-13 19:20:43', '1', 'total_amt_usdollar', 'currency', '127.280000', '318.2', NULL, NULL),
('7fd7d513-a226-01e4-f474-5aa51b19146b', '3d2b4d73-db81-2189-fcac-5aa3c9a104da', '2018-03-11 12:05:32', '1', 'payment_in_cash_cheque_c', 'currency', '1284.650000', '28113.25', NULL, NULL),
('8074270c-b295-4c9b-f87f-5a999443177d', 'c5ab8e95-7c6f-67ed-52a2-5a998b4b067f', '2018-03-02 18:14:30', '1', 'subtotal_amount_usdollar', 'currency', '12233.590000', '20363.09', NULL, NULL),
('818801ee-05f9-6425-fb26-5aa814c7cc30', '49137101-7b02-ae0e-8af5-5aa8025d27a1', '2018-03-13 18:12:38', '1', 'total_amount_usdollar', 'currency', '23371.520000', '2739.42', NULL, NULL),
('81f005d1-bab2-4f5e-a3b6-5a99943df63b', 'c5ab8e95-7c6f-67ed-52a2-5a998b4b067f', '2018-03-02 18:13:13', '1', 'total_amount_usdollar', 'currency', '23454.710000', '12633.71', NULL, NULL),
('820ba5c7-df89-b671-2aff-5aa81dbc2aea', '49137101-7b02-ae0e-8af5-5aa8025d27a1', '2018-03-13 18:48:57', '1', 'tax_amount_usdollar', 'currency', '2185.040000', '4486.22', NULL, NULL),
('83617c5d-8452-bac0-0f3e-5aa82414e508', '377ad549-b0db-4125-d80a-5aa824afe928', '2018-03-13 19:20:43', '1', 'subtotal_amount', 'currency', '87.280000', '218.2', NULL, NULL),
('859226d2-79e3-254e-e905-5a8c6de72832', '4515cdab-b602-6926-bd33-5a8c6d0732de', '2018-02-20 18:49:15', '1', 'tax_amount', 'currency', '0.000000', '115.06', NULL, NULL),
('86c13bd1-7964-b1a1-bc9c-5aa51b79bfd2', '3d2b4d73-db81-2189-fcac-5aa3c9a104da', '2018-03-11 12:05:32', '1', 'payment_in_credit_card_c', 'currency', '1348.880000', '29518.91', NULL, NULL),
('8706ee60-e7fd-0276-774a-5aa979644ded', '1c92664d-e617-d964-32b8-5aa978e031b7', '2018-03-14 19:34:24', '1', 'invoice_number_c', 'int', NULL, '5008', NULL, NULL),
('88324460-84af-4a44-82e8-5aa817b28453', '49137101-7b02-ae0e-8af5-5aa8025d27a1', '2018-03-13 18:24:54', '1', 'total_amt', 'currency', '19953.090000', '60601.59', NULL, NULL),
('8997773c-3940-37ca-8743-5aa824d44168', '377ad549-b0db-4125-d80a-5aa824afe928', '2018-03-13 19:20:43', '1', 'subtotal_amount_usdollar', 'currency', '87.280000', '218.2', NULL, NULL),
('8b5191f3-597b-3501-cff4-5aa82384d477', 'ec0d1106-d54f-5aa5-082d-5aa8229ffcc2', '2018-03-13 19:15:41', '1', 'total_amt', 'currency', '51979.770000', '73825.77', NULL, NULL),
('8c23ebb3-e7d2-3b09-890d-5aa97921358d', '1c92664d-e617-d964-32b8-5aa978e031b7', '2018-03-14 19:34:24', '1', 'payment_in_cash_cheque_c', 'currency', NULL, '7929.5', NULL, NULL),
('8c51395e-c545-c897-284a-5a8c5e3aa00f', '9dada791-4f81-c16d-f1a2-5a886facdd7c', '2018-02-20 17:46:06', '1', 'total_amt', 'currency', '7879.500000', '1150.59', NULL, NULL),
('8d1c9136-4b15-816e-bc19-5aa817484bfd', '49137101-7b02-ae0e-8af5-5aa8025d27a1', '2018-03-13 18:24:54', '1', 'total_amt_usdollar', 'currency', '19953.090000', '60601.59', NULL, NULL),
('8d3bcb6a-2bee-2b8b-2196-5aa51befb313', '3d2b4d73-db81-2189-fcac-5aa3c9a104da', '2018-03-11 12:05:32', '1', 'payment_in_wire_transferred_c', 'currency', '1299.650000', '28128.25', NULL, NULL),
('8e299e88-d3b8-3147-dc69-5a9994fbe74f', 'c5ab8e95-7c6f-67ed-52a2-5a998b4b067f', '2018-03-02 18:14:30', '1', 'discount_amount', 'currency', '160.000000', '410', NULL, NULL),
('8e42ab85-5056-2a8a-b0b8-5aa824c569a3', '377ad549-b0db-4125-d80a-5aa824afe928', '2018-03-13 19:20:43', '1', 'discount_amount', 'currency', '40.000000', '100', NULL, NULL),
('92a536f1-2080-129f-a4e6-5aa8171ef781', '49137101-7b02-ae0e-8af5-5aa8025d27a1', '2018-03-13 18:23:37', '1', 'payment_in_wire_transferred_c', 'currency', '24580.420000', '20839.1', NULL, NULL),
('92d5a500-1950-badf-b650-5aa817c0585c', '49137101-7b02-ae0e-8af5-5aa8025d27a1', '2018-03-13 18:24:54', '1', 'subtotal_amount', 'currency', '19923.090000', '60561.59', NULL, NULL),
('92f4ed88-a0f6-8f01-3a59-5aa81d9de265', '49137101-7b02-ae0e-8af5-5aa8025d27a1', '2018-03-13 18:48:57', '1', 'discount_amount_usdollar', 'currency', '30.000000', '70', NULL, NULL),
('9374f5fa-094d-3b29-e96b-5a9994822629', 'c5ab8e95-7c6f-67ed-52a2-5a998b4b067f', '2018-03-02 18:14:30', '1', 'discount_amount_usdollar', 'currency', '160.000000', '410', NULL, NULL),
('9442a70d-ee29-6efd-266b-5aa824f738a2', '377ad549-b0db-4125-d80a-5aa824afe928', '2018-03-13 19:20:43', '1', 'discount_amount_usdollar', 'currency', '40.000000', '100', NULL, NULL),
('948eaa06-05a7-7eab-5ff6-5a8814108bcc', '356a1894-bfa6-c8c3-c9c9-5a87faf9c01a', '2018-02-17 11:40:49', '1', 'tax_amount', 'currency', '0.000000', '115.06', NULL, NULL),
('96641c05-1c2c-8aa6-8f5f-5aa823f3016f', 'ec0d1106-d54f-5aa5-082d-5aa8229ffcc2', '2018-03-13 19:15:41', '1', 'total_amt_usdollar', 'currency', '51979.770000', '73825.77', NULL, NULL),
('9840a146-ea89-cab0-5226-5aa8170b85a6', '49137101-7b02-ae0e-8af5-5aa8025d27a1', '2018-03-13 18:24:54', '1', 'subtotal_amount_usdollar', 'currency', '19923.090000', '60561.59', NULL, NULL),
('98a00272-1702-9ac2-02f8-5aa816b174a6', '49137101-7b02-ae0e-8af5-5aa8025d27a1', '2018-03-13 18:20:52', '1', 'subtotal_amount', 'currency', '13184.180000', '24107.18', NULL, NULL),
('99313b69-a9e6-1065-bec5-5aa824175447', '377ad549-b0db-4125-d80a-5aa824afe928', '2018-03-13 19:20:43', '1', 'tax_amount', 'currency', '11.730000', '30.82', NULL, NULL),
('9a7b124a-1ac7-7cd2-9065-5a99947cfc74', 'c5ab8e95-7c6f-67ed-52a2-5a998b4b067f', '2018-03-02 18:14:30', '1', 'tax_amount', 'currency', '200.120000', '2107.5', NULL, NULL),
('9b3d6366-69f1-3c11-91e8-5a8c6d53da73', '4515cdab-b602-6926-bd33-5a8c6d0732de', '2018-02-20 18:49:15', '1', 'tax_amount_usdollar', 'currency', '0.000000', '115.06', NULL, NULL),
('9b5b559e-3c33-5707-c2fb-5aa82326a48d', 'ec0d1106-d54f-5aa5-082d-5aa8229ffcc2', '2018-03-13 19:15:41', '1', 'subtotal_amount', 'currency', '51899.770000', '73725.77', NULL, NULL),
('9c9f6ac6-1c32-904d-654f-5a8814c98aba', '356a1894-bfa6-c8c3-c9c9-5a87faf9c01a', '2018-02-17 11:40:49', '1', 'tax_amount_usdollar', 'currency', '0.000000', '115.06', NULL, NULL),
('9d010d5d-829c-401b-8157-5aa8171ce45e', '49137101-7b02-ae0e-8af5-5aa8025d27a1', '2018-03-13 18:23:37', '1', 'total_amt_usdollar', 'currency', '24147.180000', '19953.09', NULL, NULL),
('9dd87b1c-a88f-fd69-ac83-5aa81c9b4393', '49137101-7b02-ae0e-8af5-5aa8025d27a1', '2018-03-13 18:44:55', '1', 'total_amt', 'currency', '60601.590000', '41799.09', NULL, NULL),
('9f256039-e327-922c-7e1b-5aa82456e1d5', '377ad549-b0db-4125-d80a-5aa824afe928', '2018-03-13 19:20:43', '1', 'tax_amount_usdollar', 'currency', '11.730000', '30.82', NULL, NULL),
('a03fb65c-6ffd-8d60-f7a9-5aa9792f10f5', '1c92664d-e617-d964-32b8-5aa978e031b7', '2018-03-14 19:34:24', '1', 'payment_in_credit_card_c', 'currency', NULL, '8325.98', NULL, NULL),
('a1426d38-a920-bf36-94d3-5aa81c5355c5', '49137101-7b02-ae0e-8af5-5aa8025d27a1', '2018-03-13 18:47:56', '1', 'total_amt', 'currency', '41799.090000', '42013.29', NULL, NULL),
('a14fe5fe-4f78-ea54-4afa-5a9994f9e1bc', 'c5ab8e95-7c6f-67ed-52a2-5a998b4b067f', '2018-03-02 18:14:30', '1', 'tax_amount_usdollar', 'currency', '200.120000', '2107.5', NULL, NULL),
('a151b4c1-a067-f3ae-570b-5aa82374ec36', 'ec0d1106-d54f-5aa5-082d-5aa8229ffcc2', '2018-03-13 19:15:41', '1', 'subtotal_amount_usdollar', 'currency', '51899.770000', '73725.77', NULL, NULL),
('a3040134-29e0-4307-edb6-5aa80d5c529f', '49137101-7b02-ae0e-8af5-5aa8025d27a1', '2018-03-13 17:43:12', '1', 'total_amt_usdollar', 'currency', '21103.680000', '22254.27', NULL, NULL),
('a31c639d-7b5d-2b24-5644-5aa81735a3de', '49137101-7b02-ae0e-8af5-5aa8025d27a1', '2018-03-13 18:24:54', '1', 'discount_amount', 'currency', '30.000000', '40', NULL, NULL),
('a640ed7a-639e-643a-7676-5a9994acd05d', 'c5ab8e95-7c6f-67ed-52a2-5a998b4b067f', '2018-03-02 18:14:30', '1', 'total_amount_usdollar', 'currency', '12633.710000', '22670.59', NULL, NULL),
('a6475a83-5f76-3a63-24cc-5aa82301b82b', 'ec0d1106-d54f-5aa5-082d-5aa8229ffcc2', '2018-03-13 19:15:41', '1', 'discount_amount', 'currency', '80.000000', '100', NULL, NULL),
('a6ed49ea-9496-165d-f30b-5aa81c7ed076', '49137101-7b02-ae0e-8af5-5aa8025d27a1', '2018-03-13 18:47:56', '1', 'total_amt_usdollar', 'currency', '41799.090000', '42013.29', NULL, NULL),
('aa120cca-a861-eb23-c70a-5a9adcd3f41d', 'c5ab8e95-7c6f-67ed-52a2-5a998b4b067f', '2018-03-03 17:32:55', '1', 'total_amt_usdollar', 'currency', '19953.090000', '8738.4', NULL, NULL),
('ac4a930d-cd18-9c2a-4de9-5aa81ce1b0e0', '49137101-7b02-ae0e-8af5-5aa8025d27a1', '2018-03-13 18:44:55', '1', 'total_amt_usdollar', 'currency', '60601.590000', '41799.09', NULL, NULL),
('ac6a5317-dfd1-3af1-43ac-5aa81c0a1697', '49137101-7b02-ae0e-8af5-5aa8025d27a1', '2018-03-13 18:47:56', '1', 'subtotal_amount', 'currency', '41779.090000', '41983.29', NULL, NULL),
('acabb128-86d5-79f9-95f4-5aa8249fefa8', '377ad549-b0db-4125-d80a-5aa824afe928', '2018-03-13 19:20:43', '1', 'total_amount_usdollar', 'currency', '99.010000', '249.02', NULL, NULL),
('ad179004-7873-18b7-3cf4-5a88149ca191', '356a1894-bfa6-c8c3-c9c9-5a87faf9c01a', '2018-02-17 11:40:49', '1', 'total_amount_usdollar', 'currency', '1150.590000', '1275.65', NULL, NULL),
('ade80fa7-3daf-91c8-e5be-5aa0362d2f0a', 'aebac00a-217c-02cb-8855-5aa0354eaa78', '2018-03-07 19:00:57', '1', 'final_outstanding_balance_c', 'currency', '1300.000000', '1271', NULL, NULL),
('aed0e5bd-4fa5-0341-de8a-5aa823fa9ad2', 'ec0d1106-d54f-5aa5-082d-5aa8229ffcc2', '2018-03-13 19:15:41', '1', 'discount_amount_usdollar', 'currency', '80.000000', '100', NULL, NULL),
('af0ddb91-c364-94ec-6f05-5a995b775760', '78b710b2-02a0-31de-6ff1-5a97a4cd0b1c', '2018-03-02 14:11:28', '1', 'tax_amount', 'currency', '670.350000', '0', NULL, NULL),
('b0ac3e59-99d0-f459-d27a-5aa817d4080e', '49137101-7b02-ae0e-8af5-5aa8025d27a1', '2018-03-13 18:24:54', '1', 'discount_amount_usdollar', 'currency', '30.000000', '40', NULL, NULL),
('b1424acc-cf8f-901f-7791-5aa81c3de1ba', '49137101-7b02-ae0e-8af5-5aa8025d27a1', '2018-03-13 18:47:56', '1', 'subtotal_amount_usdollar', 'currency', '41779.090000', '41983.29', NULL, NULL),
('b1c6d0a5-a31d-7c13-d075-5aa81c532a8f', '49137101-7b02-ae0e-8af5-5aa8025d27a1', '2018-03-13 18:44:55', '1', 'subtotal_amount', 'currency', '60561.590000', '41779.09', NULL, NULL),
('b24b6bc9-ce7e-e349-11bc-5aa97a1970b8', '1c92664d-e617-d964-32b8-5aa978e031b7', '2018-03-14 19:40:40', '1', 'payment_in_credit_card_c', 'currency', NULL, '8325.98', NULL, NULL),
('b3bff35e-9dcb-4487-e377-5aa823a0a9cc', 'ec0d1106-d54f-5aa5-082d-5aa8229ffcc2', '2018-03-13 19:15:41', '1', 'total_amount_usdollar', 'currency', '55195.550000', '77021.55', NULL, NULL),
('b6380857-948b-7d0d-9ed4-5aa817d82d1b', '49137101-7b02-ae0e-8af5-5aa8025d27a1', '2018-03-13 18:24:54', '1', 'tax_amount', 'currency', '901.010000', '1688.96', NULL, NULL),
('b66618f3-05a5-3fcf-56ac-5a8c6de78e6f', '4515cdab-b602-6926-bd33-5a8c6d0732de', '2018-02-20 18:49:15', '1', 'shipping_amount_usdollar', 'currency', '0.000000', '10', NULL, NULL),
('b66e3509-0080-076a-edb6-5aa81c8c7770', '49137101-7b02-ae0e-8af5-5aa8025d27a1', '2018-03-13 18:44:55', '1', 'subtotal_amount_usdollar', 'currency', '60561.590000', '41779.09', NULL, NULL),
('b78d7ed9-7687-b3c7-105b-5aa824f77d35', '377ad549-b0db-4125-d80a-5aa824afe928', '2018-03-13 19:20:43', '1', 'final_outstanding_balance_c', 'currency', '99.010000', '249.02', NULL, NULL),
('b7b298b5-6155-4179-cd47-5aa81cfdaa23', '49137101-7b02-ae0e-8af5-5aa8025d27a1', '2018-03-13 18:47:56', '1', 'discount_amount', 'currency', '20.000000', '30', NULL, NULL),
('b96d94cf-573f-9a3e-e546-5a99947639a0', 'c5ab8e95-7c6f-67ed-52a2-5a998b4b067f', '2018-03-02 18:13:13', '1', 'total_amt', 'currency', '22996.590000', '12073.59', NULL, NULL),
('b99e6fa7-2c31-47ca-60c5-5aa823abd67d', 'ec0d1106-d54f-5aa5-082d-5aa8229ffcc2', '2018-03-13 19:15:41', '1', 'final_outstanding_balance_c', 'currency', '55195.550000', '77021.55', NULL, NULL),
('bb3173cc-3c9f-9c95-4e77-5aa817691a0b', '49137101-7b02-ae0e-8af5-5aa8025d27a1', '2018-03-13 18:24:54', '1', 'tax_amount_usdollar', 'currency', '901.010000', '1688.96', NULL, NULL),
('bc250c0d-fa48-b4b9-a34d-5a998f591565', 'c5ab8e95-7c6f-67ed-52a2-5a998b4b067f', '2018-03-02 17:51:31', '1', 'discount_amount_usdollar', 'currency', '20.000000', '30', NULL, NULL),
('bc2cf5c8-6c57-9648-1ef5-5aa81c272803', '49137101-7b02-ae0e-8af5-5aa8025d27a1', '2018-03-13 18:47:56', '1', 'discount_amount_usdollar', 'currency', '20.000000', '30', NULL, NULL),
('bc880d0d-01c1-a8f1-c79d-5aa81cb8d980', '49137101-7b02-ae0e-8af5-5aa8025d27a1', '2018-03-13 18:44:55', '1', 'discount_amount', 'currency', '40.000000', '20', NULL, NULL),
('beb9d87e-8484-0bbf-c63a-5aa823bf4174', 'ec0d1106-d54f-5aa5-082d-5aa8229ffcc2', '2018-03-13 19:15:41', '1', 'payment_in_cash_cheque_c', 'currency', '55195.550000', '77021.55', NULL, NULL),
('c0e774a5-85a8-54e4-ed4a-5aa8178406ca', '49137101-7b02-ae0e-8af5-5aa8025d27a1', '2018-03-13 18:24:54', '1', 'total_amount_usdollar', 'currency', '20824.100000', '62250.55', NULL, NULL),
('c15d3ab1-582c-4473-f349-5aa81ce13695', '49137101-7b02-ae0e-8af5-5aa8025d27a1', '2018-03-13 18:44:55', '1', 'discount_amount_usdollar', 'currency', '40.000000', '20', NULL, NULL),
('c16f782c-6276-6c60-cc04-5aa824d84529', '377ad549-b0db-4125-d80a-5aa824afe928', '2018-03-13 19:20:43', '1', 'payment_in_cash_cheque_c', 'currency', '99.010000', '249.02', NULL, NULL),
('c1a8760c-011c-1e1a-7711-5aa814f81d16', '49137101-7b02-ae0e-8af5-5aa8025d27a1', '2018-03-13 18:12:38', '1', 'total_amt', 'currency', '22254.270000', '2301.18', NULL, NULL),
('c21fdab5-0da6-a4c1-136d-5aa81c9958ef', '49137101-7b02-ae0e-8af5-5aa8025d27a1', '2018-03-13 18:47:56', '1', 'tax_amount', 'currency', '2144.200000', '2185.04', NULL, NULL),
('c25580ec-1264-6b06-b147-5a9ae9460d7b', '46abeb6e-67cc-a761-0e16-5a9ae35c5046', '2018-03-03 18:28:04', '1', 'total_amt', 'currency', '12073.590000', '13224.18', NULL, NULL),
('c322fc59-bb20-9a3f-25a2-5a99940496fb', 'c5ab8e95-7c6f-67ed-52a2-5a998b4b067f', '2018-03-02 18:13:13', '1', 'total_amt_usdollar', 'currency', '22996.590000', '12073.59', NULL, NULL),
('c353a2da-8414-f962-653e-5aa037a27902', 'aebac00a-217c-02cb-8855-5aa0354eaa78', '2018-03-07 19:02:29', '1', 'final_outstanding_balance_c', 'currency', '1271.000000', '1335', NULL, NULL),
('c4742802-a6d6-98c3-40ae-5aa823cee41f', 'ec0d1106-d54f-5aa5-082d-5aa8229ffcc2', '2018-03-13 19:15:41', '1', 'payment_in_credit_card_c', 'currency', '57955.330000', '80872.63', NULL, NULL),
('c574f32f-cd10-d99f-abbb-5aa979f49b70', '1c92664d-e617-d964-32b8-5aa978e031b7', '2018-03-14 19:34:24', '1', 'payment_in_wire_transferred_c', 'currency', NULL, '7944.5', NULL, NULL),
('c5f34311-584f-5ab2-fb9a-5aa81475a8ea', '49137101-7b02-ae0e-8af5-5aa8025d27a1', '2018-03-13 18:12:38', '1', 'total_amt_usdollar', 'currency', '22254.270000', '2301.18', NULL, NULL),
('c679e35b-4861-5a59-d8f0-5aa817bceb93', '49137101-7b02-ae0e-8af5-5aa8025d27a1', '2018-03-13 18:24:54', '1', 'final_outstanding_balance_c', 'currency', '20804.100000', '62230.55', NULL, NULL),
('c685b217-6a0f-2dcf-45f4-5a8c6d01b083', '4515cdab-b602-6926-bd33-5a8c6d0732de', '2018-02-20 18:49:15', '1', 'total_amount_usdollar', 'currency', '1150.590000', '1285.65', NULL, NULL),
('c6dd606a-0a66-f85d-0ab4-5aa81d3e1f37', '49137101-7b02-ae0e-8af5-5aa8025d27a1', '2018-03-13 18:48:57', '1', 'total_amt', 'currency', '42013.290000', '46615.65', NULL, NULL),
('c6ff33be-50c5-019e-3766-5aa81cc1b8dc', '49137101-7b02-ae0e-8af5-5aa8025d27a1', '2018-03-13 18:47:56', '1', 'tax_amount_usdollar', 'currency', '2144.200000', '2185.04', NULL, NULL),
('c7bb0a11-288e-fe00-5f57-5aa8243eec2c', '377ad549-b0db-4125-d80a-5aa824afe928', '2018-03-13 19:20:43', '1', 'payment_in_credit_card_c', 'currency', '103.960000', '261.47', NULL, NULL),
('c8b2aa5e-68bb-11d5-c0da-5a99945119ef', 'c5ab8e95-7c6f-67ed-52a2-5a998b4b067f', '2018-03-02 18:13:13', '1', 'subtotal_amount', 'currency', '23026.590000', '12233.59', NULL, NULL),
('c96d42b6-b060-53d3-ee0b-5aa823c24e3d', 'ec0d1106-d54f-5aa5-082d-5aa8229ffcc2', '2018-03-13 19:15:41', '1', 'payment_in_wire_transferred_c', 'currency', '55210.550000', '77036.55', NULL, NULL),
('c9b1beb9-02cc-a7d2-f7c5-5a9ae98bbbf2', '46abeb6e-67cc-a761-0e16-5a9ae35c5046', '2018-03-03 18:28:04', '1', 'total_amt_usdollar', 'currency', '12073.590000', '13224.18', NULL, NULL),
('ca66e58c-e425-09d5-314a-5aa81c16c0ea', '49137101-7b02-ae0e-8af5-5aa8025d27a1', '2018-03-13 18:44:55', '1', 'tax_amount', 'currency', '1688.960000', '2144.2', NULL, NULL),
('cbae2aad-b6f0-8df1-2b8b-5aa8147cb638', '49137101-7b02-ae0e-8af5-5aa8025d27a1', '2018-03-13 18:12:38', '1', 'subtotal_amount', 'currency', '22014.270000', '2281.18', NULL, NULL),
('cbbae88a-8931-2246-7859-5aa817b6cdc7', '49137101-7b02-ae0e-8af5-5aa8025d27a1', '2018-03-13 18:24:54', '1', 'payment_in_cash_cheque_c', 'currency', '20824.100000', '62250.55', NULL, NULL),
('cbd6b2a9-9021-e771-dab7-5aa81d0b3393', '49137101-7b02-ae0e-8af5-5aa8025d27a1', '2018-03-13 18:48:57', '1', 'total_amt_usdollar', 'currency', '42013.290000', '46615.65', NULL, NULL),
('cc12e6d8-a0b6-4358-7ae1-5aa0395c87f7', 'aebac00a-217c-02cb-8855-5aa0354eaa78', '2018-03-07 19:14:04', '1', 'final_outstanding_balance_c', 'currency', '1300.000000', '1320', NULL, NULL),
('cce7fadf-4bd8-1471-20b4-5a995b7cb64c', '78b710b2-02a0-31de-6ff1-5a97a4cd0b1c', '2018-03-02 14:11:28', '1', 'tax_amount_usdollar', 'currency', '670.350000', '0', NULL, NULL),
('cd180fc7-12c3-c463-4669-5aa81c629975', '49137101-7b02-ae0e-8af5-5aa8025d27a1', '2018-03-13 18:47:56', '1', 'total_amount_usdollar', 'currency', '43923.290000', '44168.33', NULL, NULL),
('ced1594f-c198-196d-34d9-5aa81cba0041', '49137101-7b02-ae0e-8af5-5aa8025d27a1', '2018-03-13 18:44:55', '1', 'tax_amount_usdollar', 'currency', '1688.960000', '2144.2', NULL, NULL),
('cf50c441-adab-9922-fa58-5a9ae96de72f', '46abeb6e-67cc-a761-0e16-5a9ae35c5046', '2018-03-03 18:28:04', '1', 'subtotal_amount', 'currency', '12043.590000', '13184.18', NULL, NULL),
('d0216a17-958e-addf-eb8a-5aa97a12ca37', '1c92664d-e617-d964-32b8-5aa978e031b7', '2018-03-14 19:40:40', '1', 'payment_in_wire_transferred_c', 'currency', NULL, '7944.5', NULL, NULL),
('d1021045-8ff6-390a-95fd-5aa8142b8a8d', '49137101-7b02-ae0e-8af5-5aa8025d27a1', '2018-03-13 18:12:38', '1', 'subtotal_amount_usdollar', 'currency', '22014.270000', '2281.18', NULL, NULL),
('d12f1ee5-2d6b-c14e-7ef9-5aa817716e26', '49137101-7b02-ae0e-8af5-5aa8025d27a1', '2018-03-13 18:24:54', '1', 'payment_in_credit_card_c', 'currency', '21865.310000', '65363.08', NULL, NULL),
('d1be282f-60e0-df50-ca69-5aa81cd1c82b', '49137101-7b02-ae0e-8af5-5aa8025d27a1', '2018-03-13 18:47:56', '1', 'final_outstanding_balance_c', 'currency', '43903.290000', '44148.33', NULL, NULL),
('d34b02b7-7845-30f5-c953-5aa81d4385c2', '49137101-7b02-ae0e-8af5-5aa8025d27a1', '2018-03-13 18:48:57', '1', 'payment_in_wire_transferred_c', 'currency', '44183.330000', '51046.87', NULL, NULL),
('d3692bc4-dae3-e843-c477-5a9994248036', 'c5ab8e95-7c6f-67ed-52a2-5a998b4b067f', '2018-03-02 18:13:13', '1', 'subtotal_amount_usdollar', 'currency', '23026.590000', '12233.59', NULL, NULL),
('d37c088d-e06c-d72e-addc-5aa81d36c0da', '49137101-7b02-ae0e-8af5-5aa8025d27a1', '2018-03-13 18:48:57', '1', 'total_amount_usdollar', 'currency', '44168.330000', '51031.87', NULL, NULL),
('d4b807d2-761c-2dd3-b1c0-5a995b02325b', '78b710b2-02a0-31de-6ff1-5a97a4cd0b1c', '2018-03-02 14:11:28', '1', 'total_amount_usdollar', 'currency', '15495.120000', '14824.77', NULL, NULL),
('d4ec4101-4c53-6880-0778-5aa81c5d4ebf', '49137101-7b02-ae0e-8af5-5aa8025d27a1', '2018-03-13 18:44:55', '1', 'total_amount_usdollar', 'currency', '62250.550000', '43923.29', NULL, NULL),
('d60d040a-d474-61ec-325b-5aa81d531811', '49137101-7b02-ae0e-8af5-5aa8025d27a1', '2018-03-13 18:48:57', '1', 'subtotal_amount', 'currency', '41983.290000', '46545.65', NULL, NULL),
('d6407712-45a8-8854-d030-5aa0393beb3f', 'aebac00a-217c-02cb-8855-5aa0354eaa78', '2018-03-07 19:12:26', '1', 'final_outstanding_balance_c', 'currency', '1310.000000', '1300', NULL, NULL),
('d6c82516-3348-18e1-9119-5aa817509f7e', '49137101-7b02-ae0e-8af5-5aa8025d27a1', '2018-03-13 18:24:54', '1', 'payment_in_wire_transferred_c', 'currency', '20839.100000', '62265.55', NULL, NULL),
('d76cda23-e9fa-2fdb-4a19-5aa82407a91c', '377ad549-b0db-4125-d80a-5aa824afe928', '2018-03-13 19:20:43', '1', 'payment_in_wire_transferred_c', 'currency', '114.010000', '264.02', NULL, NULL),
('d7ab3632-cf65-68a3-bf89-5aa81cfa4a42', '49137101-7b02-ae0e-8af5-5aa8025d27a1', '2018-03-13 18:47:56', '1', 'payment_in_cash_cheque_c', 'currency', '43923.290000', '44168.33', NULL, NULL),
('d8428ba8-6c26-92fc-7630-5a8c5e71a1ce', '9dada791-4f81-c16d-f1a2-5a886facdd7c', '2018-02-20 17:46:06', '1', 'total_amt_usdollar', 'currency', '7879.500000', '1150.59', NULL, NULL),
('d905ccbd-4636-6473-8703-5a999421b658', 'c5ab8e95-7c6f-67ed-52a2-5a998b4b067f', '2018-03-02 18:13:13', '1', 'discount_amount', 'currency', '30.000000', '160', NULL, NULL),
('d9ae8e33-637f-6bbc-d033-5aa81c23d142', '49137101-7b02-ae0e-8af5-5aa8025d27a1', '2018-03-13 18:44:55', '1', 'final_outstanding_balance_c', 'currency', '62230.550000', '43903.29', NULL, NULL),
('d9edd217-d471-23f3-5cd8-5a9ae995ef6a', '46abeb6e-67cc-a761-0e16-5a9ae35c5046', '2018-03-03 18:28:04', '1', 'subtotal_amount_usdollar', 'currency', '12043.590000', '13184.18', NULL, NULL),
('dd220485-9cf0-20a7-2d7c-5aa814041282', '49137101-7b02-ae0e-8af5-5aa8025d27a1', '2018-03-13 18:12:38', '1', 'final_outstanding_balance_c', 'currency', '23351.520000', '2719.42', NULL, NULL),
('dd28805b-1cd9-97fe-190f-5aa81c4bdbff', '49137101-7b02-ae0e-8af5-5aa8025d27a1', '2018-03-13 18:47:56', '1', 'payment_in_credit_card_c', 'currency', '46119.450000', '46376.75', NULL, NULL),
('dfa2e78f-2044-6139-3376-5a9ae9e91bfa', '46abeb6e-67cc-a761-0e16-5a9ae35c5046', '2018-03-03 18:28:04', '1', 'discount_amount', 'currency', '30.000000', '40', NULL, NULL),
('dfc38105-c14a-572c-f39a-5aa81c0a345b', '49137101-7b02-ae0e-8af5-5aa8025d27a1', '2018-03-13 18:44:55', '1', 'payment_in_cash_cheque_c', 'currency', '62250.550000', '43923.29', NULL, NULL),
('e0d2d165-97b6-191d-c647-5a8c5e94d821', '9dada791-4f81-c16d-f1a2-5a886facdd7c', '2018-02-20 17:46:06', '1', 'subtotal_amount', 'currency', '7889.500000', '1150.59', NULL, NULL),
('e165b097-34e7-c538-8056-5a998fdc8eb0', 'c5ab8e95-7c6f-67ed-52a2-5a998b4b067f', '2018-03-02 17:51:31', '1', 'total_amt', 'currency', '12073.590000', '22996.59', NULL, NULL),
('e3d66e51-7c6c-4255-e474-5aa8149d08a1', '49137101-7b02-ae0e-8af5-5aa8025d27a1', '2018-03-13 18:12:38', '1', 'discount_amount', 'currency', '240.000000', '20', NULL, NULL),
('e3ddf025-0287-1229-29ae-5a9994c6612c', 'c5ab8e95-7c6f-67ed-52a2-5a998b4b067f', '2018-03-02 18:13:13', '1', 'discount_amount_usdollar', 'currency', '30.000000', '160', NULL, NULL),
('e50218c7-01e8-044a-0e68-5a9ae9d24b94', '46abeb6e-67cc-a761-0e16-5a9ae35c5046', '2018-03-03 18:28:04', '1', 'discount_amount_usdollar', 'currency', '30.000000', '40', NULL, NULL),
('e58b7d8d-890b-9098-d600-5aa81c38fc99', '49137101-7b02-ae0e-8af5-5aa8025d27a1', '2018-03-13 18:47:56', '1', 'payment_in_wire_transferred_c', 'currency', '43938.290000', '44183.33', NULL, NULL),
('e63b36da-9365-75ee-9814-5aca0b829d94', '2e1f9c01-4363-480b-5bec-5ac8d206fbb2', '2018-04-08 12:30:49', '1', 'invoice_number_c', 'int', '5071', '5078', NULL, NULL),
('e65ad33d-e918-d814-fecb-5aa81d58215b', '49137101-7b02-ae0e-8af5-5aa8025d27a1', '2018-03-13 18:48:57', '1', 'tax_amount', 'currency', '2185.040000', '4486.22', NULL, NULL),
('e77817ca-e7a7-62e0-c0e9-5a998fd9fb84', 'c5ab8e95-7c6f-67ed-52a2-5a998b4b067f', '2018-03-02 17:51:31', '1', 'total_amt_usdollar', 'currency', '12073.590000', '22996.59', NULL, NULL),
('ea3c8d7e-138b-ce4c-e11b-5ac9f7224171', '2e1f9c01-4363-480b-5bec-5ac8d206fbb2', '2018-04-08 11:05:00', '1', 'billing_contact', 'relate', '', 'New Contact Last', NULL, NULL),
('ea8d06f3-4dc0-f7b4-1d2d-5a9ae98629c1', '46abeb6e-67cc-a761-0e16-5a9ae35c5046', '2018-03-03 18:28:04', '1', 'tax_amount', 'currency', '570.300000', '1145.59', NULL, NULL),
('ebac6ad4-acc8-b985-3146-5a8c5e171b18', '9dada791-4f81-c16d-f1a2-5a886facdd7c', '2018-02-20 17:46:06', '1', 'subtotal_amount_usdollar', 'currency', '7889.500000', '1150.59', NULL, NULL),
('ec189ae4-1fc7-5b90-cdf8-5aa8141ea14a', '49137101-7b02-ae0e-8af5-5aa8025d27a1', '2018-03-13 18:12:38', '1', 'discount_amount_usdollar', 'currency', '240.000000', '20', NULL, NULL),
('ec60f6c1-3eb9-c2aa-c658-5a998f6bb266', 'c5ab8e95-7c6f-67ed-52a2-5a998b4b067f', '2018-03-02 17:51:31', '1', 'subtotal_amount', 'currency', '12093.590000', '23026.59', NULL, NULL),
('ec63c40b-d806-1ddb-a6ae-5aa81c656717', '49137101-7b02-ae0e-8af5-5aa8025d27a1', '2018-03-13 18:44:55', '1', 'payment_in_credit_card_c', 'currency', '65363.080000', '46119.45', NULL, NULL),
('ecf77eb8-55fc-64df-1ed1-5aa8164cf7ee', '49137101-7b02-ae0e-8af5-5aa8025d27a1', '2018-03-13 18:20:52', '1', 'total_amt', 'currency', '13224.180000', '24147.18', NULL, NULL),
('edbd2ac9-982d-259e-4502-5aa81dd3baf0', '49137101-7b02-ae0e-8af5-5aa8025d27a1', '2018-03-13 18:48:57', '1', 'final_outstanding_balance_c', 'currency', '44148.330000', '51011.87', NULL, NULL),
('eebe8a11-d9f9-2e79-d110-5a9adc941e14', 'c5ab8e95-7c6f-67ed-52a2-5a998b4b067f', '2018-03-03 17:32:55', '1', 'total_amt', 'currency', '19953.090000', '8738.4', NULL, NULL),
('efd3e2fb-a6db-c7f1-f628-5a9ae9252f49', '46abeb6e-67cc-a761-0e16-5a9ae35c5046', '2018-03-03 18:28:04', '1', 'tax_amount_usdollar', 'currency', '570.300000', '1145.59', NULL, NULL),
('efd70e2d-385c-e7b5-9674-5aa816a530d3', '49137101-7b02-ae0e-8af5-5aa8025d27a1', '2018-03-13 18:20:52', '1', 'subtotal_amount_usdollar', 'currency', '13184.180000', '24107.18', NULL, NULL),
('f0cc0f1c-ef0d-aff2-2a8f-5a8c5eb2442f', '9dada791-4f81-c16d-f1a2-5a886facdd7c', '2018-02-20 17:46:06', '1', 'discount_amount_usdollar', 'currency', '10.000000', '0', NULL, NULL),
('f0f29b09-cf96-4da1-07df-5aa80d67635a', '49137101-7b02-ae0e-8af5-5aa8025d27a1', '2018-03-13 17:43:12', '1', 'total_amt', 'currency', '21103.680000', '22254.27', NULL, NULL),
('f15fbba1-357a-617b-f8d7-5a99944f8ea3', 'c5ab8e95-7c6f-67ed-52a2-5a998b4b067f', '2018-03-02 18:13:13', '1', 'tax_amount', 'currency', '228.120000', '200.12', NULL, NULL),
('f198677e-b340-6efe-64c5-5aa81432e8db', '49137101-7b02-ae0e-8af5-5aa8025d27a1', '2018-03-13 18:12:38', '1', 'tax_amount', 'currency', '1357.250000', '458.24', NULL, NULL),
('f25373c6-68a3-9f12-bb25-5a998f064c3e', 'c5ab8e95-7c6f-67ed-52a2-5a998b4b067f', '2018-03-02 17:51:31', '1', 'subtotal_amount_usdollar', 'currency', '12093.590000', '23026.59', NULL, NULL),
('f7da08b1-1909-04a2-b119-5aa80d0cfb0f', '49137101-7b02-ae0e-8af5-5aa8025d27a1', '2018-03-13 17:43:12', '1', 'subtotal_amount', 'currency', '20873.680000', '22014.27', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `aos_invoices_cstm`
--

CREATE TABLE `aos_invoices_cstm` (
  `id_c` char(36) NOT NULL,
  `payment_in_cash_cheque_c` decimal(26,6) DEFAULT '0.000000',
  `payment_in_credit_card_c` decimal(26,6) DEFAULT '0.000000',
  `payment_in_wire_transferred_c` decimal(26,6) DEFAULT '0.000000',
  `credit_c` decimal(26,6) DEFAULT '0.000000',
  `final_outstanding_balance_c` decimal(26,6) DEFAULT '0.000000',
  `invoice_number_c` int(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `aos_invoices_cstm`
--

INSERT INTO `aos_invoices_cstm` (`id_c`, `payment_in_cash_cheque_c`, `payment_in_credit_card_c`, `payment_in_wire_transferred_c`, `credit_c`, `final_outstanding_balance_c`, `invoice_number_c`) VALUES
('1c92664d-e617-d964-32b8-5aa978e031b7', '7929.500000', '8325.980000', '7944.500000', NULL, '7909.500000', 5008),
('22755491-d318-2629-7b7f-5accee168475', '887.380000', '931.750000', '902.380000', '20.000000', '802.380000', 5085),
('2613f4cb-db18-a784-2c17-5aa9709c6d59', '20356.400000', '21374.220000', '20371.400000', '0.000000', '20298.900000', 5001),
('2926ccd8-fcf4-279c-0d5f-5aa971d3b26e', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', NULL),
('2a7dab67-6c92-0d11-a2e2-5aa38edb1bbc', '35396.420000', '37166.240000', '35411.420000', '20.000000', '34231.420000', NULL),
('2e1f9c01-4363-480b-5bec-5ac8d206fbb2', '8706.450000', '9141.770000', '8721.450000', '50.000000', '8544.450000', 5078),
('31fcbec2-4e08-c3e3-a8a8-5aabfa6047a2', '38351.530000', '40269.110000', '38366.530000', '20.000000', '38321.530000', 5015),
('33b43d8b-ff4e-8845-6c74-5ac28a3df51c', '1403.710000', '1473.900000', '1418.710000', '10.000000', '1363.710000', 5043),
('377ad549-b0db-4125-d80a-5aa824afe928', '249.020000', '261.470000', '264.020000', '0.000000', '249.020000', NULL),
('3d2b4d73-db81-2189-fcac-5aa3c9a104da', '28113.250000', '29518.910000', '28128.250000', '20.000000', '27963.750000', NULL),
('48b1352c-808a-808c-6bb5-5aa035a363d6', '1379.000000', '1447.950000', '1394.000000', '15.000000', '1150.950000', NULL),
('49137101-7b02-ae0e-8af5-5aa8025d27a1', '51031.870000', '53583.460000', '51046.870000', '10.000000', '51011.870000', NULL),
('4c634805-e71a-9041-9e4e-5aba9d6b5c43', '1204.620000', '1264.850000', '1219.620000', '0.000000', '1194.620000', 5029),
('5f366521-463b-5afd-99d3-5aa9633c7c9c', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', NULL),
('62ceca7b-c274-d91b-0b62-5ac28a52ce87', '8676.450000', '9110.270000', '8691.450000', '10.000000', '8616.450000', 5036),
('810f71ca-8449-a336-249f-5aa02a3164f2', '1265.000000', '1328.250000', '1280.000000', '0.000000', '1265.000000', NULL),
('9222ff14-ade5-2797-099b-5aa778d10069', '24615.420000', '25846.190000', '24630.420000', '30.000000', '24423.420000', NULL),
('9d974535-0d46-1917-f476-5aa81e3416a1', '24336.300000', '25553.120000', '24351.300000', '0.000000', '24336.300000', NULL),
('a16ad0ab-0bad-e58d-7208-5aa97052de75', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', NULL),
('aaf5068a-8a1a-e990-969a-5aa8003512a4', '3311.710000', '3477.300000', '3326.710000', '0.000000', '3301.710000', NULL),
('ab1a6d0b-7294-8d23-537b-5aa970af352d', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', NULL),
('ae2f5095-c4c0-e9b8-6404-5aba60b3d29d', '8851.040000', '9293.590000', '8866.040000', '10.000000', '8831.040000', 5022),
('aebac00a-217c-02cb-8855-5aa0354eaa78', '1379.000000', '1447.950000', '1394.000000', '15.000000', '1320.000000', NULL),
('bfd9b379-62eb-998f-e1b3-5ac28b70f07d', '10232.350000', '10743.970000', '10247.350000', '0.000000', '10153.350000', 5057),
('c9996ecb-93a1-3d07-6fd2-5aa77b9682b7', '6297.250000', '6612.110000', '6312.250000', '10.000000', '6277.250000', NULL),
('caba7f6e-bf6c-ad72-23c3-5aa7f68a978d', '1150.590000', '1208.120000', '1165.590000', '0.000000', '1150.590000', NULL),
('ec0d1106-d54f-5aa5-082d-5aa8229ffcc2', '77021.550000', '80872.630000', '77036.550000', '0.000000', '77021.550000', NULL),
('f4103cac-9c8c-66ea-94e7-5aa03c012a33', '1265.000000', '1328.250000', '1280.000000', '0.000000', '1000.000000', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `aos_line_item_groups`
--

CREATE TABLE `aos_line_item_groups` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `total_amt` decimal(26,6) DEFAULT NULL,
  `total_amt_usdollar` decimal(26,6) DEFAULT NULL,
  `discount_amount` decimal(26,6) DEFAULT NULL,
  `discount_amount_usdollar` decimal(26,6) DEFAULT NULL,
  `subtotal_amount` decimal(26,6) DEFAULT NULL,
  `subtotal_amount_usdollar` decimal(26,6) DEFAULT NULL,
  `tax_amount` decimal(26,6) DEFAULT NULL,
  `tax_amount_usdollar` decimal(26,6) DEFAULT NULL,
  `subtotal_tax_amount` decimal(26,6) DEFAULT NULL,
  `subtotal_tax_amount_usdollar` decimal(26,6) DEFAULT NULL,
  `total_amount` decimal(26,6) DEFAULT NULL,
  `total_amount_usdollar` decimal(26,6) DEFAULT NULL,
  `parent_type` varchar(100) DEFAULT NULL,
  `parent_id` char(36) DEFAULT NULL,
  `number` int(11) DEFAULT NULL,
  `currency_id` char(36) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `aos_line_item_groups`
--

INSERT INTO `aos_line_item_groups` (`id`, `name`, `date_entered`, `date_modified`, `modified_user_id`, `created_by`, `description`, `deleted`, `assigned_user_id`, `total_amt`, `total_amt_usdollar`, `discount_amount`, `discount_amount_usdollar`, `subtotal_amount`, `subtotal_amount_usdollar`, `tax_amount`, `tax_amount_usdollar`, `subtotal_tax_amount`, `subtotal_tax_amount_usdollar`, `total_amount`, `total_amount_usdollar`, `parent_type`, `parent_id`, `number`, `currency_id`) VALUES
('103bf08b-176f-1376-5494-5aa81c9a5ce7', 'asdas', '2018-03-13 18:44:55', '2018-03-13 18:48:57', '1', '1', NULL, 0, '1', '46615.650000', '46615.650000', '70.000000', '70.000000', '46545.650000', '46545.650000', '4486.220000', '4486.220000', NULL, '0.000000', '51031.870000', '51031.870000', 'AOS_Invoices', '49137101-7b02-ae0e-8af5-5aa8025d27a1', 1, '-99'),
('1340700c-1208-1243-c455-5a886fd2555a', 'zxc', '2018-02-17 18:09:10', '2018-03-03 17:35:18', '1', '1', NULL, 0, '1', '7879.500000', '7879.500000', '10.000000', '10.000000', '7889.500000', '7889.500000', '1575.900000', '1575.900000', NULL, '0.000000', '9465.400000', '9465.400000', 'AOS_Invoices', '', 1, '-99'),
('1419a3b1-dc1b-ca2f-5fd0-5a8c5db14344', 'DDWW', '2018-02-20 17:42:11', '2018-03-03 17:35:18', '1', '1', NULL, 0, '1', '1150.590000', '1150.590000', '0.000000', '0.000000', '1150.590000', '1150.590000', '0.000000', '0.000000', NULL, '0.000000', '1150.590000', '1150.590000', 'AOS_Invoices', '', 1, '-99'),
('14a00b54-0628-a91b-e385-5aba9d21fce9', 'Created By Account Manager', '2018-03-27 19:37:57', '2018-03-27 19:37:57', '4668226f-4e70-347c-9740-5a9af48bdd5f', '4668226f-4e70-347c-9740-5a9af48bdd5f', NULL, 0, '4668226f-4e70-347c-9740-5a9af48bdd5f', '997.180000', '997.180000', '10.000000', '10.000000', '987.180000', '987.180000', '197.440000', '197.440000', NULL, '0.000000', '1184.620000', '1184.620000', 'AOS_Invoices', '4c634805-e71a-9041-9e4e-5aba9d6b5c43', 1, '-99'),
('159da478-7f29-feee-ae4b-5a87f9c0f3e2', 'aaa', '2018-02-17 09:43:09', '2018-03-03 17:35:18', '1', '1', NULL, 0, '1', '1150.590000', '1150.590000', '10.000000', '10.000000', '1160.590000', '1160.590000', '115.060000', '115.060000', NULL, '0.000000', '1275.650000', '1275.650000', 'AOS_Invoices', '', 1, '-99'),
('16c2dd32-28a2-8292-3651-5a8c5f22fade', 'VV', '2018-02-20 17:47:15', '2018-03-03 17:35:18', '1', '1', NULL, 0, '1', '1150.590000', '1150.590000', '0.000000', '0.000000', '1150.590000', '1150.590000', '0.000000', '0.000000', NULL, '0.000000', '1150.590000', '1150.590000', 'AOS_Invoices', '', 1, '-99'),
('19b4c9da-0cbb-7e84-4481-5a87f438d4b4', 'aaa', '2018-02-17 09:24:58', '2018-03-03 17:35:18', '1', '1', NULL, 0, '1', '1150.590000', '1150.590000', '10.000000', '10.000000', '1160.590000', '1160.590000', '115.060000', '115.060000', NULL, '0.000000', '1275.650000', '1275.650000', 'AOS_Invoices', '', 1, '-99'),
('1e640b10-c98d-1198-49f5-5aa0359403b6', 'good', '2018-03-07 18:55:38', '2018-03-07 19:17:47', '1', '1', NULL, 0, '1', '1150.590000', '1150.590000', '10.000000', '10.000000', '1140.590000', '1140.590000', '228.120000', '228.120000', NULL, '0.000000', '1368.710000', '1368.710000', 'AOS_Invoices', 'aebac00a-217c-02cb-8855-5aa0354eaa78', 1, '-99'),
('22ce51ad-5468-167d-c1c1-5a998b597e6c', 'sd', '2018-03-02 17:35:06', '2018-03-03 17:34:59', '1', '1', NULL, 0, '1', '8738.400000', '8738.400000', '10.000000', '10.000000', '8748.400000', '8748.400000', '0.000000', '0.000000', NULL, '0.000000', '8748.400000', '8748.400000', 'AOS_Invoices', '', 1, '-99'),
('245ae8c8-5ae6-c3f2-a6f8-5ac28a56106b', 'Back Date1', '2018-04-02 19:54:11', '2018-04-02 19:54:11', '1', '1', NULL, 0, '1', '7879.500000', '7879.500000', '10.000000', '10.000000', '7869.500000', '7869.500000', '786.950000', '786.950000', NULL, '0.000000', '8656.450000', '8656.450000', 'AOS_Invoices', '62ceca7b-c274-d91b-0b62-5ac28a52ce87', 1, '-99'),
('2c2b4245-dc40-b376-598a-5a8872f90d61', 'zxc', '2018-02-17 18:21:31', '2018-03-03 17:35:18', '1', '1', NULL, 0, '1', '7879.500000', '7879.500000', '10.000000', '10.000000', '7889.500000', '7889.500000', '1575.900000', '1575.900000', NULL, '0.000000', '9465.400000', '9465.400000', 'AOS_Invoices', '', 1, '-99'),
('2cf8f936-3395-a013-ec0c-5aa814303cda', 'xd', '2018-03-13 18:12:38', '2018-03-13 18:20:52', '1', '1', NULL, 0, '1', '24147.180000', '24147.180000', '40.000000', '40.000000', '24107.180000', '24107.180000', '458.240000', '458.240000', NULL, '0.000000', '24565.420000', '24565.420000', 'AOS_Invoices', '49137101-7b02-ae0e-8af5-5aa8025d27a1', 1, '-99'),
('2e4d64ad-15d7-3aa4-0425-5a8c5ed7a109', 'VV', '2018-02-20 17:46:06', '2018-03-03 17:35:18', '1', '1', NULL, 0, '1', '1150.590000', '1150.590000', '0.000000', '0.000000', '1150.590000', '1150.590000', '0.000000', '0.000000', NULL, '0.000000', '1150.590000', '1150.590000', 'AOS_Invoices', '', 1, '-99'),
('32421682-dc28-25dc-a59e-5a945ff2d161', 'asd', '2018-02-26 19:26:15', '2018-03-03 17:34:59', '1', '1', NULL, 0, '1', '9466.600000', '9466.600000', '0.000000', '0.000000', '9466.600000', '9466.600000', '0.000000', '0.000000', NULL, '0.000000', '9466.600000', '9466.600000', 'AOS_Invoices', '', 1, '-99'),
('327723b1-06f2-d063-0ba1-5a8c69ed77ed', 'PP', '2018-02-20 18:29:52', '2018-03-03 17:34:59', '1', '1', NULL, 0, '1', '1150.590000', '1150.590000', '0.000000', '0.000000', '1150.590000', '1150.590000', '0.000000', '0.000000', NULL, '0.000000', '1150.590000', '1150.590000', 'AOS_Invoices', '', 1, '-99'),
('34f4c67c-a5a9-6024-5ed2-5a96fcee5a94', 'sasad', '2018-02-28 19:01:39', '2018-03-03 17:34:59', '1', '1', NULL, 0, '1', '12073.590000', '12073.590000', '10.000000', '10.000000', '12083.590000', '12083.590000', '570.300000', '570.300000', NULL, '0.000000', '12653.890000', '12653.890000', 'AOS_Invoices', '', 1, '-99'),
('3c373c1d-921b-e42b-76ca-5aa03c406ebb', 'My New Invoice Group', '2018-03-07 19:26:40', '2018-03-10 07:32:47', '1', '1', NULL, 0, '1', '1150.590000', '1150.590000', '10.000000', '10.000000', '1140.590000', '1140.590000', '114.060000', '114.060000', NULL, '0.000000', '1254.650000', '1254.650000', 'AOS_Invoices', 'f4103cac-9c8c-66ea-94e7-5aa03c012a33', 1, '-99'),
('3c8e5b5a-182a-11c4-0d2e-5aca5e72e303', 'Mike Testing Quotation', '2018-04-08 18:27:05', '2018-04-08 18:27:05', '1', '1', NULL, 0, '1', '10.000000', '10.000000', '0.000000', '0.000000', '10.000000', '10.000000', '0.900000', '0.900000', NULL, '0.000000', '10.900000', '10.900000', 'AOS_Quotes', 'a33b95d5-1d9f-ced7-71f8-5aca5e8f83bb', 1, '-99'),
('4e3c0864-6cc6-2ce4-e152-5a9963d17454', 'as', '2018-03-02 14:46:59', '2018-03-03 17:34:59', '1', '1', NULL, 0, '1', '22996.590000', '22996.590000', '30.000000', '30.000000', '23026.590000', '23026.590000', '114.060000', '114.060000', NULL, '0.000000', '23140.650000', '23140.650000', 'AOS_Invoices', '', 1, '-99'),
('550a16b0-fe2e-aeb9-d639-5a8c5ef07d51', 'DDWW', '2018-02-20 17:45:13', '2018-03-03 17:35:18', '1', '1', NULL, 0, '1', '1150.590000', '1150.590000', '0.000000', '0.000000', '1150.590000', '1150.590000', '0.000000', '0.000000', NULL, '0.000000', '1150.590000', '1150.590000', 'AOS_Invoices', '', 1, '-99'),
('566ecaa0-cf0c-4949-fc63-5aabfaa0a708', 'Test Inv', '2018-03-16 17:12:07', '2018-03-16 17:12:07', '1', '1', NULL, 0, '1', '38227.470000', '38227.470000', '10.000000', '10.000000', '38217.470000', '38217.470000', '114.060000', '114.060000', NULL, '0.000000', '38331.530000', '38331.530000', 'AOS_Invoices', '31fcbec2-4e08-c3e3-a8a8-5aabfa6047a2', 1, '-99'),
('5845a975-d62d-31a7-b735-5ac124199abb', 'sdasd', '2018-04-01 18:27:00', '2018-04-08 12:58:40', '1', '1', NULL, 0, '1', '7879.500000', '7879.500000', '10.000000', '10.000000', '7869.500000', '7869.500000', '1573.900000', '1573.900000', NULL, '0.000000', '9443.400000', '9443.400000', 'AOS_Quotes', 'e4c3535a-d717-82a6-859b-5ac124a96a27', 1, '-99'),
('58ce5b58-857a-8d65-d955-5aa3c9dec8ba', 'asdas', '2018-03-10 12:02:11', '2018-03-11 12:05:32', '1', '1', NULL, 0, '1', '27598.950000', '27598.950000', '90.000000', '90.000000', '27508.950000', '27508.950000', '574.300000', '574.300000', NULL, '0.000000', '28083.250000', '28083.250000', 'AOS_Invoices', '3d2b4d73-db81-2189-fcac-5aa3c9a104da', 1, '-99'),
('5980365e-7531-c10c-472e-5ac8d24f2057', 'precisely ', '2018-04-07 14:16:34', '2018-04-08 12:30:49', '1', '1', NULL, 0, '1', '7879.500000', '7879.500000', '10.000000', '10.000000', '7869.500000', '7869.500000', '786.950000', '786.950000', NULL, '0.000000', '8656.450000', '8656.450000', 'AOS_Invoices', '2e1f9c01-4363-480b-5bec-5ac8d206fbb2', 1, '-99'),
('5a314bfb-3497-fe92-5fb7-5a8c5f80ca82', 'VV', '2018-02-20 17:47:12', '2018-03-03 17:35:18', '1', '1', NULL, 0, '1', '1150.590000', '1150.590000', '0.000000', '0.000000', '1150.590000', '1150.590000', '0.000000', '0.000000', NULL, '0.000000', '1150.590000', '1150.590000', 'AOS_Invoices', '', 1, '-99'),
('5fcb0ce0-8321-a4ee-3e9c-5ac28bb1e508', 'April 2018', '2018-04-02 19:57:36', '2018-04-05 19:27:30', '1', '1', NULL, 0, '1', '7879.500000', '7879.500000', '20.000000', '20.000000', '7859.500000', '7859.500000', '2357.850000', '2357.850000', NULL, '0.000000', '10217.350000', '10217.350000', 'AOS_Invoices', 'bfd9b379-62eb-998f-e1b3-5ac28b70f07d', 1, '-99'),
('634cdb9f-1bc7-9610-1b03-5ac6757d0b65', 'zx', '2018-04-05 19:15:04', '2018-04-05 19:15:04', '1', '1', NULL, 0, '1', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', NULL, '0.000000', '0.000000', '0.000000', 'AOS_Contracts', '3a81d122-0e13-836c-885c-5ac6757efed9', 1, '-99'),
('693e9c60-b563-8f79-f680-5a87fab9f560', 'asd', '2018-02-17 09:48:33', '2018-03-03 17:35:18', '1', '1', NULL, 0, '1', '1150.590000', '1150.590000', '0.000000', '0.000000', '1150.590000', '1150.590000', '0.000000', '0.000000', NULL, '0.000000', '1150.590000', '1150.590000', 'AOS_Invoices', '', 1, '-99'),
('71e5ca79-a4ef-f0e1-fd8e-5a96dcc55f81', 'sa', '2018-02-28 16:43:50', '2018-03-03 17:34:59', '1', '1', NULL, 0, '1', '13224.180000', '13224.180000', '50.000000', '50.000000', '13274.180000', '13274.180000', '458.240000', '458.240000', NULL, '0.000000', '13732.420000', '13732.420000', 'AOS_Invoices', '', 1, '-99'),
('732f1790-7fd3-c860-3b46-5a8c5efcdb6b', 'DDWW', '2018-02-20 17:43:55', '2018-03-03 17:35:18', '1', '1', NULL, 0, '1', '1150.590000', '1150.590000', '0.000000', '0.000000', '1150.590000', '1150.590000', '0.000000', '0.000000', NULL, '0.000000', '1150.590000', '1150.590000', 'AOS_Invoices', '', 1, '-99'),
('73b2765d-a33d-e1ee-f1a7-5ac67544567c', 'zxczx', '2018-04-05 19:15:04', '2018-04-05 19:15:04', '1', '1', NULL, 0, '1', '7879.500000', '7879.500000', '0.000000', '0.000000', '7879.500000', '7879.500000', '0.000000', '0.000000', NULL, '0.000000', '7879.500000', '7879.500000', 'AOS_Contracts', '3a81d122-0e13-836c-885c-5ac6757efed9', 2, '-99'),
('75df6fc1-0500-b4f9-7a87-5a87f3eb5bec', 'das', '2018-02-17 09:18:14', '2018-03-03 17:35:18', '1', '1', NULL, 0, '1', '1150.590000', '1150.590000', '100.000000', '100.000000', '1250.590000', '1250.590000', '230.120000', '230.120000', NULL, '0.000000', '1480.710000', '1480.710000', 'AOS_Invoices', '', 1, '-99'),
('7a9f47da-ba93-651d-0c89-5a8342e0f34d', 'asdas', '2018-02-13 19:54:48', '2018-03-03 17:35:18', '1', '1', NULL, 0, '1', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', NULL, '0.000000', '0.000000', '0.000000', 'AOS_Invoices', '', 1, '-99'),
('7b6b1003-2e13-e804-4613-5a8c60ef68ee', 'BB', '2018-02-20 17:54:38', '2018-03-03 17:34:59', '1', '1', NULL, 0, '1', '1150.590000', '1150.590000', '0.000000', '0.000000', '1150.590000', '1150.590000', '0.000000', '0.000000', NULL, '0.000000', '1150.590000', '1150.590000', 'AOS_Invoices', '', 1, '-99'),
('7ba06bc2-5677-0f4a-7493-5a87fde29808', 'zxc', '2018-02-17 10:00:24', '2018-03-03 17:35:18', '1', '1', NULL, 0, '1', '1150.590000', '1150.590000', '0.000000', '0.000000', '1150.590000', '1150.590000', '0.000000', '0.000000', NULL, '0.000000', '1150.590000', '1150.590000', 'AOS_Invoices', '', 1, '-99'),
('7dfea829-0a50-2bc5-11ce-5aa97894c244', 'asasdsa', '2018-03-14 19:32:08', '2018-03-14 19:40:40', '1', '1', NULL, 0, '1', '7879.500000', '7879.500000', '0.000000', '0.000000', '7879.500000', '7879.500000', '0.000000', '0.000000', NULL, '0.000000', '7879.500000', '7879.500000', 'AOS_Invoices', '1c92664d-e617-d964-32b8-5aa978e031b7', 1, '-99'),
('806a9dd4-993a-0d3f-b676-5a8c7020197b', 'TT', '2018-02-20 19:02:05', '2018-03-03 17:34:59', '1', '1', NULL, 0, '1', '5752.950000', '5752.950000', '250.000000', '250.000000', '6002.950000', '6002.950000', '575.300000', '575.300000', NULL, '0.000000', '6578.250000', '6578.250000', 'AOS_Invoices', '', 1, '-99'),
('8159e4ea-2f2b-a572-0e98-5ac0a4ff9aea', 'dfgdf', '2018-04-01 09:21:15', '2018-04-01 09:21:15', '1', '1', NULL, 0, '1', '7879.500000', '7879.500000', '10.000000', '10.000000', '7869.500000', '7869.500000', '1573.900000', '1573.900000', NULL, '0.000000', '9443.400000', '9443.400000', 'AOS_Quotes', '119806b4-ad3f-e7e5-5e4a-5ac0a45b179e', 1, '-99'),
('8220328e-5213-0e58-51ea-5aa8000d5daf', 'asdas', '2018-03-13 16:47:00', '2018-03-13 16:47:00', '1', '1', NULL, 0, '1', '12073.590000', '12073.590000', '9010.000000', '9010.000000', '3063.590000', '3063.590000', '228.120000', '228.120000', NULL, '0.000000', '3291.710000', '3291.710000', 'AOS_Invoices', 'aaf5068a-8a1a-e990-969a-5aa8003512a4', 1, '-99'),
('89392be2-abfc-c5de-8290-5a8c68d60c90', 'MM', '2018-02-20 18:29:03', '2018-03-03 17:34:59', '1', '1', NULL, 0, '1', '1150.590000', '1150.590000', '0.000000', '0.000000', '1150.590000', '1150.590000', '0.000000', '0.000000', NULL, '0.000000', '1150.590000', '1150.590000', 'AOS_Invoices', '', 1, '-99'),
('8ccf0e48-bd0b-921e-84b4-5a88725c660a', 'zxc', '2018-02-17 18:21:55', '2018-03-03 17:35:18', '1', '1', NULL, 0, '1', '7879.500000', '7879.500000', '10.000000', '10.000000', '7889.500000', '7889.500000', '1575.900000', '1575.900000', NULL, '0.000000', '9465.400000', '9465.400000', 'AOS_Invoices', '', 1, '-99'),
('8dd4f3d0-0c7d-a158-79f2-5aa38ec80a4d', 'Good One', '2018-03-10 07:50:04', '2018-03-10 07:50:04', '1', '1', NULL, 0, '1', '22996.590000', '22996.590000', '130.000000', '130.000000', '22866.590000', '22866.590000', '228.120000', '228.120000', NULL, '0.000000', '23094.710000', '23094.710000', 'AOS_Invoices', '2a7dab67-6c92-0d11-a2e2-5aa38edb1bbc', 2, '-99'),
('92b7b2bd-6d41-6740-4162-5a87fa1c80ec', 'aaa', '2018-02-17 09:46:47', '2018-03-03 17:35:18', '1', '1', NULL, 0, '1', '1150.590000', '1150.590000', '10.000000', '10.000000', '1160.590000', '1160.590000', '115.060000', '115.060000', NULL, '0.000000', '1275.650000', '1275.650000', 'AOS_Invoices', '', 1, '-99'),
('97ce52f6-63ef-7e25-d349-5a87e57b8c88', 'Test', '2018-02-17 08:19:35', '2018-03-03 17:35:18', '1', '1', NULL, 0, '1', '1150.590000', '1150.590000', '10.000000', '10.000000', '1160.590000', '1160.590000', '230.120000', '230.120000', NULL, '0.000000', '1390.710000', '1390.710000', 'AOS_Invoices', '', 1, '-99'),
('991a182c-cd42-9420-7988-5a87fc45e054', 'zxc', '2018-02-17 09:57:02', '2018-03-03 17:35:18', '1', '1', NULL, 0, '1', '1150.590000', '1150.590000', '0.000000', '0.000000', '1150.590000', '1150.590000', '0.000000', '0.000000', NULL, '0.000000', '1150.590000', '1150.590000', 'AOS_Invoices', '', 1, '-99'),
('99745f1a-29a3-8f93-0f21-5ac28a6b3a12', 'Back Date2', '2018-04-02 19:56:05', '2018-04-02 19:56:05', '1', '1', NULL, 0, '1', '1150.590000', '1150.590000', '10.000000', '10.000000', '1140.590000', '1140.590000', '228.120000', '228.120000', NULL, '0.000000', '1368.710000', '1368.710000', 'AOS_Invoices', '33b43d8b-ff4e-8845-6c74-5ac28a3df51c', 1, '-99'),
('a04d4e15-1f1a-8a93-269b-5a8c6de31fb2', 'FG', '2018-02-20 18:48:18', '2018-03-03 17:34:59', '1', '1', NULL, 0, '1', '1150.590000', '1150.590000', '10.000000', '10.000000', '1160.590000', '1160.590000', '115.060000', '115.060000', NULL, '0.000000', '1275.650000', '1275.650000', 'AOS_Invoices', '', 1, '-99'),
('a15becfb-5fb7-9410-5fcd-5a87fcb6dec2', 'asd', '2018-02-17 09:56:33', '2018-03-03 17:35:18', '1', '1', NULL, 0, '1', '1150.590000', '1150.590000', '0.000000', '0.000000', '1150.590000', '1150.590000', '0.000000', '0.000000', NULL, '0.000000', '1150.590000', '1150.590000', 'AOS_Invoices', '', 1, '-99'),
('a596c987-506b-5f3f-b4d3-5aa8179eae1e', 'zxcx', '2018-03-13 18:23:37', '2018-03-13 18:40:15', '1', '1', NULL, 0, '1', '60601.590000', '60601.590000', '40.000000', '40.000000', '60561.590000', '60561.590000', '1688.960000', '1688.960000', NULL, '0.000000', '62250.550000', '62250.550000', 'AOS_Invoices', '49137101-7b02-ae0e-8af5-5aa8025d27a1', 1, '-99'),
('a737c887-07ff-b9c1-11cd-5a94611fb1c2', 'as', '2018-02-26 19:34:48', '2018-03-03 17:34:59', '1', '1', NULL, 0, '1', '18802.500000', '18802.500000', '0.000000', '0.000000', '18802.500000', '18802.500000', '0.000000', '0.000000', NULL, '0.000000', '18802.500000', '18802.500000', 'AOS_Invoices', '', 1, '-99'),
('a991f714-5b81-9c2d-49a3-5aa82255d9f5', 'dfsf', '2018-03-13 19:13:01', '2018-03-13 19:15:41', '1', '1', NULL, 0, '1', '73825.770000', '73825.770000', '100.000000', '100.000000', '73725.770000', '73725.770000', '3295.780000', '3295.780000', NULL, '0.000000', '77021.550000', '77021.550000', 'AOS_Invoices', 'ec0d1106-d54f-5aa5-082d-5aa8229ffcc2', 1, '-99'),
('ae682962-2a1f-b5fb-1b8f-5a8c5e3c5129', 'DDWW', '2018-02-20 17:43:13', '2018-03-03 17:35:18', '1', '1', NULL, 0, '1', '1150.590000', '1150.590000', '0.000000', '0.000000', '1150.590000', '1150.590000', '0.000000', '0.000000', NULL, '0.000000', '1150.590000', '1150.590000', 'AOS_Invoices', '', 1, '-99'),
('bae50d87-3f15-74e1-118e-5a8c6d998da6', 'FG', '2018-02-20 18:47:53', '2018-03-03 17:34:59', '1', '1', NULL, 0, '1', '1150.590000', '1150.590000', '0.000000', '0.000000', '1150.590000', '1150.590000', '0.000000', '0.000000', NULL, '0.000000', '1150.590000', '1150.590000', 'AOS_Invoices', '', 1, '-99'),
('c01a9081-1873-50f7-8c7d-5aa824df31ac', 'czxcz', '2018-03-13 19:19:08', '2018-03-13 19:20:43', '1', '1', NULL, 0, '1', '318.200000', '318.200000', '100.000000', '100.000000', '218.200000', '218.200000', '30.820000', '30.820000', NULL, '0.000000', '249.020000', '249.020000', 'AOS_Invoices', '377ad549-b0db-4125-d80a-5aa824afe928', 1, '-99'),
('c23e3442-b2f0-b871-3eb5-5aa38e43a658', 'asd', '2018-03-10 07:50:04', '2018-03-10 07:50:04', '1', '1', NULL, 0, '1', '12073.590000', '12073.590000', '30.000000', '30.000000', '12043.590000', '12043.590000', '228.120000', '228.120000', NULL, '0.000000', '12271.710000', '12271.710000', 'AOS_Invoices', '2a7dab67-6c92-0d11-a2e2-5aa38edb1bbc', 1, '-99'),
('c3ff3a7d-be2c-2ac8-82fc-5a88143ec945', 'as', '2018-02-17 11:40:49', '2018-03-03 17:35:18', '1', '1', NULL, 0, '1', '1150.590000', '1150.590000', '10.000000', '10.000000', '1160.590000', '1160.590000', '115.060000', '115.060000', NULL, '0.000000', '1275.650000', '1275.650000', 'AOS_Invoices', '', 1, '-99'),
('c48ccc35-477c-6b2e-0b90-5aa970f3cf5e', 'asdas', '2018-03-14 18:56:20', '2018-03-14 18:56:20', '1', '1', NULL, 0, '1', '18802.500000', '18802.500000', '20.000000', '20.000000', '18782.500000', '18782.500000', '1573.900000', '1573.900000', NULL, '0.000000', '20356.400000', '20356.400000', 'AOS_Invoices', '2613f4cb-db18-a784-2c17-5aa9709c6d59', 1, '-99'),
('c4b1447e-8b14-c7b6-ba5d-5aa81e05dc0f', 'dsdsds', '2018-03-13 18:56:09', '2018-03-13 18:59:11', '1', '1', NULL, 0, '1', '24147.180000', '24147.180000', '40.000000', '40.000000', '24107.180000', '24107.180000', '229.120000', '229.120000', NULL, '0.000000', '24336.300000', '24336.300000', 'AOS_Invoices', '9d974535-0d46-1917-f476-5aa81e3416a1', 1, '-99'),
('c4e45d36-0966-83d2-2eae-5a9669ff08b4', 'Test', '2018-02-28 08:36:10', '2018-03-03 17:34:59', '1', '1', NULL, 0, '1', '12073.590000', '12073.590000', '20.000000', '20.000000', '12093.590000', '12093.590000', '0.000000', '0.000000', NULL, '0.000000', '12093.590000', '12093.590000', 'AOS_Invoices', '', 1, '-99'),
('cda08096-3fe4-d79e-dad6-5aa02a72d3f1', 'asd', '2018-03-07 18:09:27', '2018-03-07 18:09:50', '1', '1', NULL, 0, '1', '1150.590000', '1150.590000', '10.000000', '10.000000', '1140.590000', '1140.590000', '114.060000', '114.060000', NULL, '0.000000', '1254.650000', '1254.650000', 'AOS_Invoices', '810f71ca-8449-a336-249f-5aa02a3164f2', 1, '-99'),
('d60c3268-9104-455b-eeef-5a97a4ab5233', 'My Invoice Group', '2018-03-01 06:59:30', '2018-03-03 17:34:59', '1', '1', NULL, 0, '1', '14374.770000', '14374.770000', '350.000000', '350.000000', '14724.770000', '14724.770000', '0.000000', '0.000000', NULL, '0.000000', '14724.770000', '14724.770000', 'AOS_Invoices', '', 1, '-99'),
('d6238190-66af-7816-969e-5a87f9789440', 'aaa', '2018-02-17 09:46:38', '2018-03-03 17:35:18', '1', '1', NULL, 0, '1', '1150.590000', '1150.590000', '10.000000', '10.000000', '1160.590000', '1160.590000', '115.060000', '115.060000', NULL, '0.000000', '1275.650000', '1275.650000', 'AOS_Invoices', '', 1, '-99'),
('d637774f-c9a4-c2b9-d7aa-5a7fd4a347d0', 'My Group', '2018-02-11 05:29:03', '2018-03-03 17:35:18', '1', '1', NULL, 0, '1', '10000.000000', '10000.000000', '-200.000000', '-200.000000', '9800.000000', '9800.000000', '490.000000', '490.000000', NULL, '0.000000', '10290.000000', '10290.000000', 'AOS_Invoices', '', 1, '-99'),
('d89547b0-7860-eac7-9b10-5a8c7155500d', 'TT', '2018-02-20 19:04:35', '2018-03-03 17:34:59', '1', '1', NULL, 0, '1', '5752.950000', '5752.950000', '250.000000', '250.000000', '6002.950000', '6002.950000', '575.300000', '575.300000', NULL, '0.000000', '6578.250000', '6578.250000', 'AOS_Invoices', '', 1, '-99'),
('d973e749-64c3-6489-9160-5aba60e6093c', 'sasa', '2018-03-27 15:16:38', '2018-03-27 15:16:38', '1', '1', NULL, 0, '1', '7354.200000', '7354.200000', '20.000000', '20.000000', '7334.200000', '7334.200000', '1466.840000', '1466.840000', NULL, '0.000000', '8801.040000', '8801.040000', 'AOS_Invoices', 'ae2f5095-c4c0-e9b8-6404-5aba60b3d29d', 1, '-99'),
('e066a5a2-89ff-0295-850f-5a8c634b71a1', 'MM', '2018-02-20 18:03:47', '2018-03-03 17:34:59', '1', '1', NULL, 0, '1', '1150.590000', '1150.590000', '0.000000', '0.000000', '1150.590000', '1150.590000', '0.000000', '0.000000', NULL, '0.000000', '1150.590000', '1150.590000', 'AOS_Invoices', '', 1, '-99'),
('e1fbd073-8d2b-af52-6b47-5a87f3e99a8a', 'aaa', '2018-02-17 09:20:36', '2018-03-03 17:35:18', '1', '1', NULL, 0, '1', '1150.590000', '1150.590000', '10.000000', '10.000000', '1160.590000', '1160.590000', '115.060000', '115.060000', NULL, '0.000000', '1275.650000', '1275.650000', 'AOS_Invoices', '', 1, '-99'),
('e505e17f-5b31-6371-71ee-5a8c5e181368', 'DDWW', '2018-02-20 17:42:40', '2018-03-03 17:35:18', '1', '1', NULL, 0, '1', '1150.590000', '1150.590000', '0.000000', '0.000000', '1150.590000', '1150.590000', '0.000000', '0.000000', NULL, '0.000000', '1150.590000', '1150.590000', 'AOS_Invoices', '', 1, '-99'),
('e5b3f66b-b9e5-11d8-6e4e-5aa802b7b43c', 'Dooo', '2018-03-13 16:57:20', '2018-03-13 18:05:15', '1', '1', NULL, 0, '1', '22254.270000', '22254.270000', '240.000000', '240.000000', '22014.270000', '22014.270000', '1357.250000', '1357.250000', NULL, '0.000000', '23371.520000', '23371.520000', 'AOS_Invoices', '49137101-7b02-ae0e-8af5-5aa8025d27a1', 1, '-99'),
('e622bf87-0726-5d8a-e829-5a8c5fc335cf', 'BB', '2018-02-20 17:50:09', '2018-03-03 17:34:59', '1', '1', NULL, 0, '1', '1150.590000', '1150.590000', '0.000000', '0.000000', '1150.590000', '1150.590000', '0.000000', '0.000000', NULL, '0.000000', '1150.590000', '1150.590000', 'AOS_Invoices', '', 1, '-99'),
('e8b6e102-0a3b-b078-d105-5aa77bf0b9f6', 'Test exp', '2018-03-13 07:20:50', '2018-03-13 07:20:50', '1', '1', NULL, 0, '1', '5752.950000', '5752.950000', '50.000000', '50.000000', '5702.950000', '5702.950000', '574.300000', '574.300000', NULL, '0.000000', '6277.250000', '6277.250000', 'AOS_Invoices', 'c9996ecb-93a1-3d07-6fd2-5aa77b9682b7', 1, '-99'),
('e969dab9-2017-e374-13c7-5a9ae356e5a9', 'as', '2018-03-03 18:05:05', '2018-03-04 10:44:07', '1', '1', NULL, 0, '1', '13224.180000', '13224.180000', '40.000000', '40.000000', '13184.180000', '13184.180000', '1145.590000', '1145.590000', NULL, '0.000000', '14329.770000', '14329.770000', 'AOS_Invoices', '46abeb6e-67cc-a761-0e16-5a9ae35c5046', 1, '-99'),
('e9aec0b5-4d39-3821-4d25-5a8c6c67de01', 'MM', '2018-02-20 18:44:48', '2018-03-03 17:34:59', '1', '1', NULL, 0, '1', '1150.590000', '1150.590000', '10.000000', '10.000000', '1160.590000', '1160.590000', '115.060000', '115.060000', NULL, '0.000000', '1275.650000', '1275.650000', 'AOS_Invoices', '', 1, '-99'),
('e9dd707f-818a-4e6f-f2f3-5a8c70d25b35', 'GB', '2018-02-20 18:59:21', '2018-03-03 17:34:59', '1', '1', NULL, 0, '1', '5752.950000', '5752.950000', '50.000000', '50.000000', '5802.950000', '5802.950000', '287.650000', '287.650000', NULL, '0.000000', '6090.600000', '6090.600000', 'AOS_Invoices', '', 1, '-99'),
('ea8455fb-cd72-08bd-3b9b-5aa7f6061e63', 'sss', '2018-03-13 16:05:54', '2018-03-13 16:05:54', '1', '1', NULL, 0, '1', '1150.590000', '1150.590000', '0.000000', '0.000000', '1150.590000', '1150.590000', '0.000000', '0.000000', NULL, '0.000000', '1150.590000', '1150.590000', 'AOS_Invoices', 'caba7f6e-bf6c-ad72-23c3-5aa7f68a978d', 1, '-99'),
('eb843fe6-d96e-473f-d3d9-5a8c6880f832', 'MM', '2018-02-20 18:29:12', '2018-03-03 17:34:59', '1', '1', NULL, 0, '1', '1150.590000', '1150.590000', '0.000000', '0.000000', '1150.590000', '1150.590000', '0.000000', '0.000000', NULL, '0.000000', '1150.590000', '1150.590000', 'AOS_Invoices', '', 1, '-99'),
('ee3870ba-2d22-3f19-d1ef-5accee98038c', 'asdas', '2018-04-10 17:04:43', '2018-04-10 17:04:43', '1', '1', NULL, 0, '1', '780.000000', '780.000000', '10.000000', '10.000000', '770.000000', '770.000000', '67.380000', '67.380000', NULL, '0.000000', '837.380000', '837.380000', 'AOS_Invoices', '22755491-d318-2629-7b7f-5accee168475', 1, '-99'),
('efa4ac8a-ea0d-2546-5b41-5aa7780666e2', 'Check Stock', '2018-03-13 07:08:44', '2018-03-13 07:08:44', '1', '1', NULL, 0, '1', '24147.180000', '24147.180000', '40.000000', '40.000000', '24107.180000', '24107.180000', '458.240000', '458.240000', NULL, '0.000000', '24565.420000', '24565.420000', 'AOS_Invoices', '9222ff14-ade5-2797-099b-5aa778d10069', 1, '-99');

-- --------------------------------------------------------

--
-- Table structure for table `aos_line_item_groups_audit`
--

CREATE TABLE `aos_line_item_groups_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text,
  `after_value_text` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `aos_pdf_templates`
--

CREATE TABLE `aos_pdf_templates` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` longtext,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `active` tinyint(1) DEFAULT '1',
  `type` varchar(100) DEFAULT NULL,
  `pdfheader` text,
  `pdffooter` text,
  `margin_left` int(255) DEFAULT '15',
  `margin_right` int(255) DEFAULT '15',
  `margin_top` int(255) DEFAULT '16',
  `margin_bottom` int(255) DEFAULT '16',
  `margin_header` int(255) DEFAULT '9',
  `margin_footer` int(255) DEFAULT '9',
  `page_size` varchar(100) DEFAULT NULL,
  `orientation` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `aos_pdf_templates`
--

INSERT INTO `aos_pdf_templates` (`id`, `name`, `date_entered`, `date_modified`, `modified_user_id`, `created_by`, `description`, `deleted`, `assigned_user_id`, `active`, `type`, `pdfheader`, `pdffooter`, `margin_left`, `margin_right`, `margin_top`, `margin_bottom`, `margin_header`, `margin_footer`, `page_size`, `orientation`) VALUES
('80fdc374-2fe0-6815-b8ad-5aca10386f4e', 'Quote Template', '2018-04-08 12:50:18', '2018-04-08 13:30:18', '1', '1', '<table style=\"width: 100%; font-family: Arial; text-align: center;\" border=\"0\" cellspacing=\"2\" cellpadding=\"2\"><tbody style=\"text-align: left;\"><tr style=\"text-align: left;\"><td style=\"text-align: left;\"><table><tbody><tr><td><p><img style=\"float: left;\" src=\"http://localhost/atomicsolutions/themes/default/images/atomicsolutions-logo.jpg\" alt=\"\" width=\"191\" height=\"96\" /></p></td></tr><tr><td style=\"font-weight: bold; text-align: left;\"><span style=\"color: #3366ff; font-size: 8px;\">Let us worry about your technology and you can run your business</span></td></tr><tr><td><span style=\"font-size: 8px;\">1613 Chelsea Rd. #827</span></td></tr><tr><td><span style=\"font-size: 8px;\">San Marino, Ca 91108</span></td></tr><tr><td><span style=\"font-size: 8px;\">Tel: (626) 233 - 7066</span></td></tr><tr><td><span style=\"font-size: 8px;\">Fax: (888) 557 - 7808</span></td></tr><tr><td><span style=\"font-size: 8px;\">Email : mike@premieretech.net</span></td></tr><tr><td><span style=\"font-size: 8px;\">www.premieretg.com</span></td></tr></tbody></table></td><td valign=\"top\"><table><tbody><tr><td style=\"text-align: right;\" align=\"right\"><span style=\"font-size: large;\">Quotation</span></td><td> </td></tr><tr><td align=\"right\"><span style=\"font-size: 8px;\">Quotation Number :</span></td><td><span style=\"font-size: 8px;\">$aos_quotes_quote_id_c</span></td></tr><tr><td align=\"right\"><span style=\"font-size: 8px;\">Quotation Valid Until :</span></td><td><span style=\"font-size: 8px;\">$aos_quotes_expiration</span></td></tr><tr><td align=\"right\"><span style=\"font-size: 8px;\">Quote Stage :</span></td><td><span style=\"font-size: 8px;\">$aos_quotes_stage</span></td></tr><tr><td align=\"right\"><span style=\"font-size: 8px;\">Customer Account# :</span></td><td><span style=\"font-size: 8px;\">$billing_account_customer_id_c</span></td></tr><tr><td align=\"right\"><span style=\"font-size: 8px;\">Invoice Prepared By :</span></td><td><span style=\"font-size: 8px;\">$aos_quotes_modified_by_name</span></td></tr><tr><td align=\"right\"><span style=\"font-size: 8px;\">Company Name :</span></td><td><span style=\"font-size: 8px;\">$billing_account_name</span></td></tr><tr><td align=\"right\"><span style=\"font-size: 8px;\">Customer Name :</span></td><td><span style=\"font-size: 8px;\">$billing_contact_name</span></td></tr></tbody></table></td></tr></tbody></table><table style=\"text-align: center; width: 100%; border: 0pt none; border-spacing: 0pt;\"><tbody style=\"text-align: left;\"><tr style=\"text-align: left;\"><td style=\"font-weight: bold; background-color: #b0c4de; padding: 2px 6px; border-style: solid; border-width: 0.5px; vertical-align: top; text-align: left; width: 50%;\"><span style=\"font-size: 8px;\">Billing Address</span></td><td style=\"font-weight: bold; background-color: #b0c4de; padding: 2px 6px; border-style: solid; border-width: 0.5px; vertical-align: top; text-align: left; width: 50%;\"><span style=\"font-size: 8px;\">Shipping Address</span></td></tr><tr style=\"text-align: left;\"><td style=\"border-style: solid; border-width: 0.5px; width: 50%; vertical-align: top; text-align: left;\"><div><div><span style=\"font-size: 8px;\">$aos_quotes_billing_address_street </span> <br /><span style=\"font-size: 8px;\">$aos_quotes_billing_address_city</span></div><div><span style=\"font-size: 8px;\">$aos_quotes_billing_address_state</span></div><div><span style=\"font-size: 8px;\">$aos_quotes_billing_address_postalcode</span></div></div></td><td style=\"border-style: solid; border-width: 0.5px; width: 50%; vertical-align: top; text-align: left;\"><div><div><span style=\"font-size: 8px;\">$aos_quotes_shipping_address_street </span> <br /><span style=\"font-size: 8px;\">$aos_quotes_shipping_address_city</span></div><div><span style=\"font-size: 8px;\">$aos_quotes_shipping_address_state</span></div><div><span style=\"font-size: 8px;\">$aos_quotes_shipping_address_postalcode</span></div></div></td></tr></tbody></table><table style=\"width: 100%; border: 0pt none; border-spacing: 0pt;\"><tbody><tr><td style=\"border-style: solid; background-color: #b0c4de; border-width: 0.5px; padding: 2px 6px; font-weight: bold; text-align: center;\"><span style=\"font-size: 8px;\">Quantity</span></td><td style=\"border-style: solid; background-color: #b0c4de; border-width: 0.5px; padding: 2px 6px; font-weight: bold; text-align: center;\"><span style=\"font-size: 8px;\">Part Number<br /></span></td><td style=\"border-style: solid; background-color: #b0c4de; border-width: 0.5px; padding: 2px 6px; font-weight: bold; text-align: center; width: 250px;\"><span style=\"font-size: 8px;\">Product Item<br /></span></td><td style=\"border-style: solid; background-color: #b0c4de; border-width: 0.5px; padding: 2px 6px; font-weight: bold; text-align: center;\"><span style=\"font-size: 8px;\">Selling Cost</span></td><td style=\"border-style: solid; background-color: #b0c4de; border-width: 0.5px; padding: 2px 6px; font-weight: bold; text-align: center; width: 80px;\"><span style=\"font-size: 8px;\">Discount-%-$</span></td><td style=\"border-style: solid; background-color: #b0c4de; border-width: 0.5px; padding: 2px 6px; font-weight: bold; text-align: center; width: 50px;\"><span style=\"font-size: 8px;\">Tax</span></td><td style=\"border-style: solid; background-color: #b0c4de; border-width: 0.5px; padding: 2px 6px; font-weight: bold; text-align: center;\"><span style=\"font-size: 8px;\">Tax Amount</span></td><td style=\"border-style: solid; background-color: #b0c4de; border-width: 0.5px; padding: 2px 6px; font-weight: bold; text-align: center; font-size: 8px;\">Total</td></tr><tr><td style=\"border-style: solid; border-width: 0.5px; padding: 2px 6px; text-align: center;\"><span style=\"font-size: 8px;\">$aos_products_quotes_product_qty</span></td><td style=\"border-style: solid; border-width: 0.5px; padding: 2px 6px;\"><span style=\"font-size: 8px;\">$aos_products_part_number</span></td><td style=\"border-style: solid; border-width: 0.5px; padding: 2px 6px;\"><span style=\"font-size: 8px;\">$aos_products_quotes_item_description</span></td><td style=\"border-style: solid; border-width: 0.5px; padding: 2px 6px;\"><span style=\"font-size: 8px;\">$aos_products_quotes_product_tier_5_price_c</span></td><td style=\"border-style: solid; border-width: 0.5px; padding: 2px 6px;\"><span style=\"font-size: 8px;\">$aos_products_quotes_product_discount_amount</span></td><td style=\"border-style: solid; border-width: 0.5px; padding: 2px 6px;\"><span style=\"font-size: 8px;\">$aos_products_quotes_product_tax_percentage_c</span></td><td style=\"border-style: solid; border-width: 0.5px; padding: 2px 6px;\"><span style=\"font-size: 8px;\">$aos_products_quotes_product_tax_amount_c</span></td><td style=\"border-style: solid; border-width: 0.5px; padding: 2px 6px;\"><span style=\"font-size: 8px;\">$aos_products_quotes_product_total_price</span></td></tr><tr><td style=\"border-style: solid; border-width: 0.5px; padding: 2px 6px;\" colspan=\"3\"><span style=\"font-size: 8px;\">$aos_services_quotes_name</span></td><td style=\"border-style: solid; border-width: 0.5px; padding: 2px 6px;\"><span style=\"font-size: 8px;\">$aos_services_quotes_service_discount</span></td><td style=\"border-style: solid; border-width: 0.5px; padding: 2px 6px;\"> </td><td style=\"border-style: solid; border-width: 0.5px; padding: 2px 6px;\"> </td><td style=\"border-style: solid; border-width: 0.5px; padding: 2px 6px;\"><span style=\"font-size: 8px;\">$aos_services_quotes_service_total_price</span></td></tr><tr><td colspan=\"6\"><span style=\"font-size: 8px;\">$aos_quotes_approval_issue</span></td><td style=\"border-style: solid; border-width: 0.5px; padding: 2px 6px; font-weight: bold; text-align: right;\"><span style=\"font-size: 8px;\">Total</span></td><td style=\"border-style: solid; border-width: 0.5px; padding: 2px 6px;\"><span style=\"font-size: 8px;\">$aos_quotes_total_amt</span></td></tr><tr><td colspan=\"6\"> </td><td style=\"border-style: solid; border-width: 0.5px; padding: 2px 6px; font-weight: bold; text-align: right;\"><span style=\"font-size: 8px;\">Discount-%-$</span></td><td style=\"border-style: solid; border-width: 0.5px; padding: 2px 6px;\"><span style=\"font-size: 8px;\">$aos_quotes_discount_amount</span></td></tr><tr><td colspan=\"6\"> </td><td style=\"border-style: solid; border-width: 0.5px; padding: 2px 6px; font-weight: bold; text-align: right;\"><span style=\"font-size: 8px;\">Subtotal</span></td><td style=\"border-style: solid; border-width: 0.5px; padding: 2px 6px;\"><span style=\"font-size: 8px;\">$aos_quotes_subtotal_amount</span></td></tr><tr><td colspan=\"6\"> </td><td style=\"border-style: solid; border-width: 0.5px; padding: 2px 6px; font-weight: bold; text-align: right;\"><span style=\"font-size: 8px;\">Shipping</span></td><td style=\"border-style: solid; border-width: 0.5px; padding: 2px 6px;\"><span style=\"font-size: 8px;\">$aos_quotes_shipping_amount</span></td></tr><tr><td colspan=\"6\"> </td><td style=\"border-style: solid; border-width: 0.5px; padding: 2px 6px; font-weight: bold; text-align: right;\"><span style=\"font-size: 8px;\">Tax</span></td><td style=\"border-style: solid; border-width: 0.5px; padding: 2px 6px;\"><span style=\"font-size: 8px;\">$aos_quotes_tax_amount</span></td></tr><tr><td colspan=\"6\"> </td><td style=\"border-style: solid; border-width: 0.5px; padding: 2px 6px; font-weight: bold; text-align: right;\"><span style=\"font-size: 8px;\">Grand Total</span></td><td style=\"border-style: solid; border-width: 0.5px; padding: 2px 6px;\"><span style=\"font-size: 8px;\">$aos_quotes_total_amount</span></td></tr><!--<tr>            <td colspan=\"8\">                <hr />            </td>        </tr>        <tr>            <td colspan=\"4\"> </td>            <td style=\"border-style: solid; background-color: #b0c4de; border-width: 0.5px; padding: 2px 6px; font-weight: bold; text-align: center;\" colspan=\"4\"><span style=\"font-size: 8px;\">Your choice of payment</span></td>        </tr>        <tr>            <td colspan=\"4\"> </td>            <td style=\"border-style: solid; border-width: 0.5px; padding: 2px 6px; font-weight: bold; text-align: right;\" colspan=\"3\"><span style=\"font-size: 8px;\">Payment in check or cash</span></td>            <td style=\"border-style: solid; border-width: 0.5px; padding: 2px 6px;\"><span style=\"font-size: 8px;\">$aos_quotes_payment_in_cash_cheque_c</span></td>        </tr>        <tr>            <td colspan=\"4\"> </td>            <td style=\"border-style: solid; border-width: 0.5px; padding: 2px 6px; font-weight: bold; text-align: right;\" colspan=\"3\"><span style=\"font-size: 8px;\">Payment in credit card</span></td>            <td style=\"border-style: solid; border-width: 0.5px; padding: 2px 6px;\"><span style=\"font-size: 8px;\">$aos_quotes_payment_in_credit_card_c</span></td>        </tr>        <tr>            <td colspan=\"4\"> </td>            <td style=\"border-style: solid; border-width: 0.5px; padding: 2px 6px; font-weight: bold; text-align: right;\" colspan=\"3\"><span style=\"font-size: 8px;\">Payment in wire transferred</span></td>            <td style=\"border-style: solid; border-width: 0.5px; padding: 2px 6px;\"><span style=\"font-size: 8px;\">$aos_quotes_payment_in_wire_transferred_c</span></td>        </tr>        <tr>            <td colspan=\"4\"> </td>            <td style=\"border-style: solid; border-width: 0.5px; padding: 2px 6px; font-weight: bold; text-align: right;\" colspan=\"3\"><span style=\"font-size: 8px;\">Credit</span></td>            <td style=\"border-style: solid; border-width: 0.5px; padding: 2px 6px;\"><span style=\"font-size: 8px;\">$aos_quotes_credit_c</span></td>        </tr>        <tr>            <td colspan=\"4\"> </td>            <td style=\"border-style: solid; border-width: 0.5px; padding: 2px 6px; font-weight: bold; text-align: right;\" colspan=\"4\"><span style=\"font-size: 8px;\"><a title=\"title\" href=\"http://example.com\">Text</a></span></td>        </tr>        <tr>            <td colspan=\"4\"> </td>            <td style=\"border-style: solid; border-width: 0.5px; padding: 2px 6px; font-weight: bold; text-align: right;\" colspan=\"3\"><span style=\"font-size: 8px;\">Final outstanding balance due</span></td>            <td style=\"border-style: solid; border-width: 0.5px; padding: 2px 6px;\"><span style=\"font-size: 8px;\">$aos_quotes_final_outstanding_balance_c</span></td>        </tr>--></tbody></table><p><br /><br /><br /><br /></p><table style=\"border: 0pt none; border-spacing: 0pt; width: 1808px; height: 65px;\"><tbody><tr><td colspan=\"2\"><p style=\"text-align: center;\"> </p><p style=\"text-align: center;\"><span style=\"font-size: 8px; color: #808080;\">Make all checks payable to Premiere Technology Group Please see reverse side for terms and conditions</span></p></td></tr><tr><td colspan=\"2\"><h2 style=\"text-align: center;\"><span style=\"font-size: small; color: #3366ff;\">Thank you for your business! conditions</span></h2></td></tr><tr><td colspan=\"2\"><p style=\"text-align: center;\"><span style=\"font-size: 8px; color: #808080;\">1613 Chelsea Rd. #827, San Marino Ca 91108, Office: (626) 389 - 8777 E-mail: accounting@premieretech.net</span></p></td></tr></tbody></table>', 0, '1', 1, 'AOS_Quotes', NULL, '<table style=\"width: 100%; border: 0pt none; border-spacing: 0pt;\">\r\n<tbody>\r\n<tr>\r\n<td>Page {PAGENO}</td>\r\n<td style=\"text-align: right;\">{DATE m/d/Y}</td>\r\n</tr>\r\n</tbody>\r\n</table>', 15, 15, 16, 16, 9, 9, 'A4', 'Portrait'),
('ad1e537f-aba1-bf19-9c9a-5a7fd34c4dff', 'Invoice Group Sample', '2018-02-11 05:23:21', '2018-04-08 13:29:00', '1', '1', '<table style=\"width: 100%; font-family: Arial; text-align: center;\" border=\"0\" cellspacing=\"2\" cellpadding=\"2\"><tbody style=\"text-align: left;\"><tr style=\"text-align: left;\"><td style=\"text-align: left;\"><table><tbody><tr><td><p><img style=\"float: left;\" src=\"http://localhost/atomicsolutions/themes/default/images/atomicsolutions-logo.jpg\" alt=\"\" width=\"191\" height=\"96\" /></p></td></tr><tr><td style=\"font-weight: bold; text-align: left;\"><span style=\"color: #3366ff; font-size: 8px;\">Let us worry about your technology and you can run your business</span></td></tr><tr><td><span style=\"font-size: 8px;\">1613 Chelsea Rd. #827</span></td></tr><tr><td><span style=\"font-size: 8px;\">San Marino, Ca 91108</span></td></tr><tr><td><span style=\"font-size: 8px;\">Tel: (626) 233 - 7066</span></td></tr><tr><td><span style=\"font-size: 8px;\">Fax: (888) 557 - 7808</span></td></tr><tr><td><span style=\"font-size: 8px;\">Email : mike@premieretech.net</span></td></tr><tr><td><span style=\"font-size: 8px;\">www.premieretg.com</span></td></tr></tbody></table></td><td valign=\"top\"><table><tbody><tr><td align=\"right\"><img style=\"vertical-align: top;\" src=\"http://localhost/atomicsolutions/themes/default/images/Invoice.jpg\" alt=\"\" width=\"68\" height=\"34\" /></td><td> </td></tr><tr><td align=\"right\"><span style=\"font-size: 8px;\">Invoice Number :</span></td><td><span style=\"font-size: 8px;\">$aos_invoices_invoice_number_c</span></td></tr><tr><td align=\"right\"><span style=\"font-size: 8px;\">Invoice Date :</span></td><td><span style=\"font-size: 8px;\">$aos_invoices_invoice_date</span></td></tr><tr><td align=\"right\"><span style=\"font-size: 8px;\">Payment Due Date :</span></td><td><span style=\"font-size: 8px;\">$aos_invoices_due_date</span></td></tr><tr><td align=\"right\"><span style=\"font-size: 8px;\">Customer Account# :</span></td><td><span style=\"font-size: 8px;\">$billing_account_customer_id_c</span></td></tr><tr><td align=\"right\"><span style=\"font-size: 8px;\">Invoice Prepared By :</span></td><td><span style=\"font-size: 8px;\">$aos_invoices_modified_by_name</span></td></tr><tr><td align=\"right\"><span style=\"font-size: 8px;\">Company Name :</span></td><td><span style=\"font-size: 8px;\">$billing_account_name</span></td></tr><tr><td align=\"right\"><span style=\"font-size: 8px;\">Customer Name :</span></td><td><span style=\"font-size: 8px;\">$billing_contact_name</span></td></tr></tbody></table></td></tr></tbody></table><table style=\"text-align: center; width: 100%; border: 0pt none; border-spacing: 0pt;\"><tbody style=\"text-align: left;\"><tr style=\"text-align: left;\"><td style=\"font-weight: bold; background-color: #b0c4de; padding: 2px 6px; border-style: solid; border-width: 0.5px; vertical-align: top; text-align: left; width: 50%;\"><span style=\"font-size: 8px;\">Billing Address</span></td><td style=\"font-weight: bold; background-color: #b0c4de; padding: 2px 6px; border-style: solid; border-width: 0.5px; vertical-align: top; text-align: left; width: 50%;\"><span style=\"font-size: 8px;\">Shipping Address</span></td></tr><tr style=\"text-align: left;\"><td style=\"border-style: solid; border-width: 0.5px; width: 50%; vertical-align: top; text-align: left;\"><div><div><span style=\"font-size: 8px;\">$aos_invoices_billing_address_street </span> <br /><span style=\"font-size: 8px;\">$aos_invoices_billing_address_city</span></div><div><span style=\"font-size: 8px;\">$aos_invoices_billing_address_state</span></div><div><span style=\"font-size: 8px;\">$aos_invoices_billing_address_postalcode</span></div></div></td><td style=\"border-style: solid; border-width: 0.5px; width: 50%; vertical-align: top; text-align: left;\"><div><div><span style=\"font-size: 8px;\">$aos_invoices_shipping_address_street </span> <br /><span style=\"font-size: 8px;\">$aos_invoices_shipping_address_city</span></div><div><span style=\"font-size: 8px;\">$aos_invoices_shipping_address_state</span></div><div><span style=\"font-size: 8px;\">$aos_invoices_shipping_address_postalcode</span></div></div></td></tr></tbody></table><table style=\"width: 100%; border: 0pt none; border-spacing: 0pt;\"><tbody><tr><td style=\"border-style: solid; background-color: #b0c4de; border-width: 0.5px; padding: 2px 6px; font-weight: bold; text-align: center;\"><span style=\"font-size: 8px;\">Quantity</span></td><td style=\"border-style: solid; background-color: #b0c4de; border-width: 0.5px; padding: 2px 6px; font-weight: bold; text-align: center;\"><span style=\"font-size: 8px;\">Part Number<br /></span></td><td style=\"border-style: solid; background-color: #b0c4de; border-width: 0.5px; padding: 2px 6px; font-weight: bold; text-align: center; width: 250px;\"><span style=\"font-size: 8px;\">Product Item<br /></span></td><td style=\"border-style: solid; background-color: #b0c4de; border-width: 0.5px; padding: 2px 6px; font-weight: bold; text-align: center;\"><span style=\"font-size: 8px;\">Selling Cost</span></td><td style=\"border-style: solid; background-color: #b0c4de; border-width: 0.5px; padding: 2px 6px; font-weight: bold; text-align: center; width: 80px;\"><span style=\"font-size: 8px;\">Discount-%-$</span></td><td style=\"border-style: solid; background-color: #b0c4de; border-width: 0.5px; padding: 2px 6px; font-weight: bold; text-align: center; width: 50px;\"><span style=\"font-size: 8px;\">Tax</span></td><td style=\"border-style: solid; background-color: #b0c4de; border-width: 0.5px; padding: 2px 6px; font-weight: bold; text-align: center;\"><span style=\"font-size: 8px;\">Tax Amount</span></td><td style=\"border-style: solid; background-color: #b0c4de; border-width: 0.5px; padding: 2px 6px; font-weight: bold; text-align: center; font-size: 8px;\">Total</td></tr><tr><td style=\"border-style: solid; border-width: 0.5px; padding: 2px 6px; text-align: center;\"><span style=\"font-size: 8px;\">$aos_products_quotes_product_qty</span></td><td style=\"border-style: solid; border-width: 0.5px; padding: 2px 6px;\"><span style=\"font-size: 8px;\">$aos_products_part_number</span></td><td style=\"border-style: solid; border-width: 0.5px; padding: 2px 6px;\"><span style=\"font-size: 8px;\">$aos_products_quotes_item_description</span></td><td style=\"border-style: solid; border-width: 0.5px; padding: 2px 6px;\"><span style=\"font-size: 8px;\">$aos_products_quotes_product_tier_5_price_c</span></td><td style=\"border-style: solid; border-width: 0.5px; padding: 2px 6px;\"><span style=\"font-size: 8px;\">$aos_products_quotes_product_discount_amount</span></td><td style=\"border-style: solid; border-width: 0.5px; padding: 2px 6px;\"><span style=\"font-size: 8px;\">$aos_products_quotes_product_tax_percentage_c</span></td><td style=\"border-style: solid; border-width: 0.5px; padding: 2px 6px;\"><span style=\"font-size: 8px;\">$aos_products_quotes_product_tax_amount_c</span></td><td style=\"border-style: solid; border-width: 0.5px; padding: 2px 6px;\"><span style=\"font-size: 8px;\">$aos_products_quotes_product_total_price</span></td></tr><tr><td style=\"border-style: solid; border-width: 0.5px; padding: 2px 6px;\" colspan=\"3\"><span style=\"font-size: 8px;\">$aos_services_quotes_name</span></td><td style=\"border-style: solid; border-width: 0.5px; padding: 2px 6px;\"><span style=\"font-size: 8px;\">$aos_services_quotes_service_discount</span></td><td style=\"border-style: solid; border-width: 0.5px; padding: 2px 6px;\"> </td><td style=\"border-style: solid; border-width: 0.5px; padding: 2px 6px;\"> </td><td style=\"border-style: solid; border-width: 0.5px; padding: 2px 6px;\"><span style=\"font-size: 8px;\">$aos_services_quotes_service_total_price</span></td></tr><tr><td colspan=\"6\"><span style=\"font-size: 8px;\">$aos_invoices_description</span></td><td style=\"border-style: solid; border-width: 0.5px; padding: 2px 6px; font-weight: bold; text-align: right;\"><span style=\"font-size: 8px;\">Total</span></td><td style=\"border-style: solid; border-width: 0.5px; padding: 2px 6px;\"><span style=\"font-size: 8px;\">$aos_invoices_total_amt</span></td></tr><tr><td colspan=\"6\"> </td><td style=\"border-style: solid; border-width: 0.5px; padding: 2px 6px; font-weight: bold; text-align: right;\"><span style=\"font-size: 8px;\">Discount-%-$</span></td><td style=\"border-style: solid; border-width: 0.5px; padding: 2px 6px;\"><span style=\"font-size: 8px;\">$aos_invoices_discount_amount</span></td></tr><tr><td colspan=\"6\"> </td><td style=\"border-style: solid; border-width: 0.5px; padding: 2px 6px; font-weight: bold; text-align: right;\"><span style=\"font-size: 8px;\">Subtotal</span></td><td style=\"border-style: solid; border-width: 0.5px; padding: 2px 6px;\"><span style=\"font-size: 8px;\">$aos_invoices_subtotal_amount</span></td></tr><tr><td colspan=\"6\"> </td><td style=\"border-style: solid; border-width: 0.5px; padding: 2px 6px; font-weight: bold; text-align: right;\"><span style=\"font-size: 8px;\">Shipping</span></td><td style=\"border-style: solid; border-width: 0.5px; padding: 2px 6px;\"><span style=\"font-size: 8px;\">$aos_invoices_shipping_amount</span></td></tr><tr><td colspan=\"6\"> </td><td style=\"border-style: solid; border-width: 0.5px; padding: 2px 6px; font-weight: bold; text-align: right;\"><span style=\"font-size: 8px;\">Tax</span></td><td style=\"border-style: solid; border-width: 0.5px; padding: 2px 6px;\"><span style=\"font-size: 8px;\">$aos_invoices_tax_amount</span></td></tr><tr><td colspan=\"6\"> </td><td style=\"border-style: solid; border-width: 0.5px; padding: 2px 6px; font-weight: bold; text-align: right;\"><span style=\"font-size: 8px;\">Grand Total</span></td><td style=\"border-style: solid; border-width: 0.5px; padding: 2px 6px;\"><span style=\"font-size: 8px;\">$aos_invoices_total_amount</span></td></tr><tr><td colspan=\"8\"><hr /></td></tr><tr><td colspan=\"4\"> </td><td style=\"border-style: solid; background-color: #b0c4de; border-width: 0.5px; padding: 2px 6px; font-weight: bold; text-align: center;\" colspan=\"4\"><span style=\"font-size: 8px;\">Your choice of payment</span></td></tr><tr><td colspan=\"4\"> </td><td style=\"border-style: solid; border-width: 0.5px; padding: 2px 6px; font-weight: bold; text-align: right;\" colspan=\"3\"><span style=\"font-size: 8px;\">Payment in check or cash</span></td><td style=\"border-style: solid; border-width: 0.5px; padding: 2px 6px;\"><span style=\"font-size: 8px;\">$aos_invoices_payment_in_cash_cheque_c</span></td></tr><tr><td colspan=\"4\"> </td><td style=\"border-style: solid; border-width: 0.5px; padding: 2px 6px; font-weight: bold; text-align: right;\" colspan=\"3\"><span style=\"font-size: 8px;\">Payment in credit card</span></td><td style=\"border-style: solid; border-width: 0.5px; padding: 2px 6px;\"><span style=\"font-size: 8px;\">$aos_invoices_payment_in_credit_card_c</span></td></tr><tr><td colspan=\"4\"> </td><td style=\"border-style: solid; border-width: 0.5px; padding: 2px 6px; font-weight: bold; text-align: right;\" colspan=\"3\"><span style=\"font-size: 8px;\">Payment in wire transferred</span></td><td style=\"border-style: solid; border-width: 0.5px; padding: 2px 6px;\"><span style=\"font-size: 8px;\">$aos_invoices_payment_in_wire_transferred_c</span></td></tr><tr><td colspan=\"4\"> </td><td style=\"border-style: solid; border-width: 0.5px; padding: 2px 6px; font-weight: bold; text-align: right;\" colspan=\"3\"><span style=\"font-size: 8px;\">Credit</span></td><td style=\"border-style: solid; border-width: 0.5px; padding: 2px 6px;\"><span style=\"font-size: 8px;\">$aos_invoices_credit_c</span></td></tr><tr><td colspan=\"4\"> </td><td style=\"border-style: solid; border-width: 0.5px; padding: 2px 6px; font-weight: bold; text-align: right;\" colspan=\"4\"><span style=\"font-size: 8px;\"><a title=\"title\" href=\"http://example.com\">Text</a></span></td></tr><tr><td colspan=\"4\"> </td><td style=\"border-style: solid; border-width: 0.5px; padding: 2px 6px; font-weight: bold; text-align: right;\" colspan=\"3\"><span style=\"font-size: 8px;\">Final outstanding balance due</span></td><td style=\"border-style: solid; border-width: 0.5px; padding: 2px 6px;\"><span style=\"font-size: 8px;\">$aos_invoices_final_outstanding_balance_c</span></td></tr></tbody></table><p><br /><br /><br /><br /></p><table style=\"border: 0pt none; border-spacing: 0pt; width: 1808px; height: 65px;\"><tbody><tr><td colspan=\"2\"><p style=\"text-align: center;\"> </p><p style=\"text-align: center;\"><span style=\"font-size: 8px; color: #808080;\">Make all checks payable to Premiere Technology Group Please see reverse side for terms and conditions</span></p></td></tr><tr><td colspan=\"2\"><h2 style=\"text-align: center;\"><span style=\"font-size: small; color: #3366ff;\">Thank you for your business! conditions</span></h2></td></tr><tr><td colspan=\"2\"><p style=\"text-align: center;\"><span style=\"font-size: 8px; color: #808080;\">1613 Chelsea Rd. #827, San Marino Ca 91108, Office: (626) 389 - 8777 E-mail: accounting@premieretech.net</span></p></td></tr></tbody></table>', 0, '1', 1, 'AOS_Invoices', NULL, '<table style=\"width: 100%; border: 0pt none; border-spacing: 0pt;\">\r\n<tbody>\r\n<tr>\r\n<td style=\"text-align: center;\">Page {PAGENO}</td>\r\n<td style=\"text-align: right;\"> </td>\r\n</tr>\r\n</tbody>\r\n</table>', 15, 15, 16, 16, 9, 9, 'A4', 'Portrait');

-- --------------------------------------------------------

--
-- Table structure for table `aos_pdf_templates_audit`
--

CREATE TABLE `aos_pdf_templates_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text,
  `after_value_text` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `aos_products`
--

CREATE TABLE `aos_products` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `maincode` varchar(100) DEFAULT 'XXXX',
  `part_number` varchar(25) DEFAULT NULL,
  `category` varchar(100) DEFAULT NULL,
  `type` varchar(100) DEFAULT 'Good',
  `cost` decimal(26,6) DEFAULT NULL,
  `cost_usdollar` decimal(26,6) DEFAULT NULL,
  `currency_id` char(36) DEFAULT NULL,
  `price` decimal(26,6) DEFAULT NULL,
  `price_usdollar` decimal(26,6) DEFAULT NULL,
  `url` varchar(255) DEFAULT NULL,
  `contact_id` char(36) DEFAULT NULL,
  `product_image` varchar(255) DEFAULT NULL,
  `aos_product_category_id` char(36) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `aos_products`
--

INSERT INTO `aos_products` (`id`, `name`, `date_entered`, `date_modified`, `modified_user_id`, `created_by`, `description`, `deleted`, `assigned_user_id`, `maincode`, `part_number`, `category`, `type`, `cost`, `cost_usdollar`, `currency_id`, `price`, `price_usdollar`, `url`, `contact_id`, `product_image`, `aos_product_category_id`) VALUES
('68b9b1a0-0c4b-72e3-df46-5a7e88b54e85', 'laptop-LG', '2018-02-10 05:51:54', '2018-03-13 18:11:13', '1', '1', NULL, 0, '1', 'XXXX', 'ptg-laptop-LG', NULL, 'Good', NULL, '0.000000', '-99', NULL, '0.000000', NULL, '', NULL, '41fa8396-98a5-6e4e-8211-5a7db0f485a3'),
('6f5753d0-8ac0-d9df-ca28-5acce575eeff', 'Todays Product', '2018-04-10 16:23:50', '2018-04-10 16:23:50', '1', '1', 'Todays Product', 0, '1', 'XXXX', 'ProdTodat123', NULL, 'Good', NULL, '0.000000', '-99', NULL, '0.000000', '', '', NULL, '5e5bc32c-d98d-45b9-8e75-5a7c8d758d96'),
('b2af9099-a9b4-cb3e-bc3d-5a8da5a57d03', 'test Service', '2018-02-21 17:01:21', '2018-03-13 18:21:36', '1', '1', NULL, 0, '1', 'XXXX', 'ptg-Serv-111', NULL, 'Service', NULL, '0.000000', '-99', NULL, '0.000000', NULL, '', NULL, 'd89a0a55-baca-7252-187a-5a8da552517d'),
('b41f30e3-9130-7948-5394-5a7dcb040144', 'Laptop-DELL', '2018-02-09 16:25:00', '2018-03-14 20:07:43', '1', '1', 'Laptop-DELL', 0, '1', 'XXXX', 'PTG-Laptop-DELL', NULL, 'Good', NULL, '0.000000', '-99', NULL, '0.000000', NULL, '', NULL, '41fa8396-98a5-6e4e-8211-5a7db0f485a3'),
('d2977620-4e42-0c55-c324-5aa823d3b55e', 'newProd', '2018-03-13 19:17:54', '2018-04-05 19:25:08', '1', '1', 'ssdas', 0, '1', 'XXXX', 'newProd', NULL, 'Good', NULL, '0.000000', '-99', NULL, '0.000000', NULL, '', NULL, '41fa8396-98a5-6e4e-8211-5a7db0f485a3'),
('d35e7f95-d564-30f9-7f72-5a7dae107104', 'Cam123', '2018-02-09 14:23:08', '2018-03-16 17:05:15', '1', '1', 'Cam123', 0, '1', 'XXXX', 'ptg-Cam123', 'Accounts', 'Good', NULL, '0.000000', '-99', NULL, '0.000000', NULL, '', NULL, '5e5bc32c-d98d-45b9-8e75-5a7c8d758d96');

-- --------------------------------------------------------

--
-- Table structure for table `aos_products_audit`
--

CREATE TABLE `aos_products_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text,
  `after_value_text` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `aos_products_audit`
--

INSERT INTO `aos_products_audit` (`id`, `parent_id`, `date_created`, `created_by`, `field_name`, `data_type`, `before_value_string`, `after_value_string`, `before_value_text`, `after_value_text`) VALUES
('184a09fe-a216-279e-95bf-5aa516b42723', 'd35e7f95-d564-30f9-7f72-5a7dae107104', '2018-03-11 11:46:02', '1', 'minimum_stock_alert_c', 'int', NULL, '20', NULL, NULL),
('184c09bf-37a1-c708-3875-5ac678468645', 'd2977620-4e42-0c55-c324-5aa823d3b55e', '2018-04-05 19:25:08', '1', 'internal_mark_up_c', 'decimal', '5.00', '0', NULL, NULL),
('18b06037-f230-60a3-7418-5aa518cf17fa', 'b2af9099-a9b4-cb3e-bc3d-5a8da5a57d03', '2018-03-11 11:52:49', '1', 'minimum_stock_alert_c', 'int', '0', '5', NULL, NULL),
('1debb609-0d5c-b85a-9604-5ac678f3a7e6', 'd2977620-4e42-0c55-c324-5aa823d3b55e', '2018-04-05 19:25:08', '1', 'internal_purchase_cost_c', 'currency', '20.200000', '1', NULL, NULL),
('21273a48-1e70-cf5d-dab1-5aa5186e73f9', 'b2af9099-a9b4-cb3e-bc3d-5a8da5a57d03', '2018-03-11 11:52:49', '1', 'total_stock_c', 'int', '-4', '400', NULL, NULL),
('2228faa0-6607-3ed7-1d54-5ac6780232bf', 'd2977620-4e42-0c55-c324-5aa823d3b55e', '2018-04-05 19:25:08', '1', 'purcahse_sub_cost_c', 'decimal', '10.20', '1', NULL, NULL),
('22d0e089-999c-4b1c-cbfe-5aa516eab617', 'd35e7f95-d564-30f9-7f72-5a7dae107104', '2018-03-11 11:46:02', '1', 'total_stock_c', 'int', NULL, '500', NULL, NULL),
('271d9bbe-6bc9-02e7-c260-5aa981724159', 'b41f30e3-9130-7948-5394-5a7dcb040144', '2018-03-14 20:07:43', '1', 'total_stock_c', 'int', '1', '490', NULL, NULL),
('2a5b7ed5-b06c-55ba-2445-5ac67839684f', 'd2977620-4e42-0c55-c324-5aa823d3b55e', '2018-04-05 19:25:08', '1', 'purchase_cost_c', 'currency', '5.000000', '1', NULL, NULL),
('2b2920cb-3052-d94e-aaaf-5a87dc46662c', '68b9b1a0-0c4b-72e3-df46-5a7e88b54e85', '2018-02-17 07:42:44', '1', 'tier_2_price_c', 'currency', '1.680000', '6303.6', NULL, NULL),
('2c1f8aaa-70d8-0a8c-eb30-5aa814a4fe4d', 'b41f30e3-9130-7948-5394-5a7dcb040144', '2018-03-13 18:11:39', '1', 'total_stock_c', 'int', '502', '500', NULL, NULL),
('2fdc8798-1578-a07e-1136-5ac678b1f760', 'd2977620-4e42-0c55-c324-5aa823d3b55e', '2018-04-05 19:25:08', '1', 'selling_cost_c', 'currency', '21.210000', '1', NULL, NULL),
('30659f5c-1fb0-9750-1144-5a9afe5390ef', 'b41f30e3-9130-7948-5394-5a7dcb040144', '2018-03-03 19:57:03', '1', 'vendor_c', 'relate', '', 'Vendor 1', NULL, NULL),
('34d5ac44-bc5f-5896-1c5b-5ac678994d9f', 'd2977620-4e42-0c55-c324-5aa823d3b55e', '2018-04-05 19:25:08', '1', 'shipping_cost_c', 'currency', '10.000000', '0', NULL, NULL),
('3aa2f3f3-d042-cf8f-fe0e-5ac6785b170e', 'd2977620-4e42-0c55-c324-5aa823d3b55e', '2018-04-05 19:25:08', '1', 'tax_c', 'decimal', '2.00', '0', NULL, NULL),
('400f0898-cf40-d344-58ff-5ac678ae1fe7', 'd2977620-4e42-0c55-c324-5aa823d3b55e', '2018-04-05 19:25:08', '1', 'tier_0_price_c', 'currency', '21.210000', '1', NULL, NULL),
('44e37a4a-c0fc-7ab4-95d0-5a87dc886a97', '68b9b1a0-0c4b-72e3-df46-5a7e88b54e85', '2018-02-17 07:42:44', '1', 'tier_3_price_c', 'currency', '1.820000', '6828.9', NULL, NULL),
('456bed28-b9a3-766f-e2dd-5ac678275511', 'd2977620-4e42-0c55-c324-5aa823d3b55e', '2018-04-05 19:25:08', '1', 'tier_1_c', 'decimal', '10.00', '1', NULL, NULL),
('4693e683-41aa-38bc-b087-5a7f1be393ac', 'b41f30e3-9130-7948-5394-5a7dcb040144', '2018-02-10 16:20:05', '1', 'part_number', 'varchar', NULL, 'PTG-Laptop-DELL', NULL, NULL),
('47bbe89f-6929-e9f5-c235-5aa7f7344609', 'b41f30e3-9130-7948-5394-5a7dcb040144', '2018-03-13 16:06:46', '1', 'total_stock_c', 'int', '0', '500', NULL, NULL),
('48fd3e1a-4041-b6ee-c1e2-5aa8163597da', 'b41f30e3-9130-7948-5394-5a7dcb040144', '2018-03-13 18:22:02', '1', 'total_stock_c', 'int', '501', '500', NULL, NULL),
('4c4f80f1-b23f-61dc-147d-5a85ab4b71b0', 'b41f30e3-9130-7948-5394-5a7dcb040144', '2018-02-15 15:45:10', '1', 'internal_purchase_cost_c', 'currency', '11910.750000', '511.37', NULL, NULL),
('55c2a814-a9ff-1111-65ac-5ac67806dcc8', 'd2977620-4e42-0c55-c324-5aa823d3b55e', '2018-04-05 19:25:08', '1', 'tier_1_price_c', 'currency', '23.330000', '1.01', NULL, NULL),
('57387f69-c75a-9092-4688-5aa516419757', 'b41f30e3-9130-7948-5394-5a7dcb040144', '2018-03-11 11:45:13', '1', 'minimum_stock_alert_c', 'int', NULL, '10', NULL, NULL),
('58ee70e5-e54b-607e-2fe8-5a87dc8a1827', '68b9b1a0-0c4b-72e3-df46-5a7e88b54e85', '2018-02-17 07:42:44', '1', 'tier_4_price_c', 'currency', '1.960000', '7354.2', NULL, NULL),
('5944f62a-bfd0-c627-c0f1-5a85ab129d00', 'b41f30e3-9130-7948-5394-5a7dcb040144', '2018-02-15 15:45:10', '1', 'purcahse_sub_cost_c', 'decimal', '11409.75', '10.37', NULL, NULL),
('5f7c1eb4-e399-5202-a900-5a83256a6358', 'b41f30e3-9130-7948-5394-5a7dcb040144', '2018-02-13 17:49:04', '1', 'selling_cost_c', 'currency', '17866.130000', '16.5', NULL, NULL),
('5f89c924-ccc6-01db-f314-5a85ab48e6f3', 'b41f30e3-9130-7948-5394-5a7dcb040144', '2018-02-15 15:45:10', '1', 'selling_cost_c', 'currency', '16.500000', '767.06', NULL, NULL),
('60b401c2-f1c3-e5bb-65e0-5ac678571e55', 'd2977620-4e42-0c55-c324-5aa823d3b55e', '2018-04-05 19:25:08', '1', 'tier_2_c', 'decimal', '20.00', '2', NULL, NULL),
('635d50cf-afd6-f7ad-85b3-5aa516803c42', 'b41f30e3-9130-7948-5394-5a7dcb040144', '2018-03-11 11:45:13', '1', 'total_stock_c', 'int', NULL, '300', NULL, NULL),
('63f0dcef-c3d3-a7ab-7307-5a7daf5bccbe', 'd35e7f95-d564-30f9-7f72-5a7dae107104', '2018-02-09 14:24:42', '1', 'image_c', 'image', '', 'Sagar-Munot.jpg', NULL, NULL),
('6413943b-4292-b615-e877-5a85abced905', 'b41f30e3-9130-7948-5394-5a7dcb040144', '2018-02-15 15:45:10', '1', 'tier_0_price_c', 'currency', '16.500000', '767.06', NULL, NULL),
('6433c593-02be-6982-7200-5aabf6283ab5', 'd35e7f95-d564-30f9-7f72-5a7dae107104', '2018-03-16 16:55:17', '1', 'total_stock_c', 'int', '499', '9', NULL, NULL),
('6a7ea7b1-aacf-40a7-4a79-5a85aba34d7e', 'b41f30e3-9130-7948-5394-5a7dcb040144', '2018-02-15 15:45:10', '1', 'tier_1_price_c', 'currency', '18.150000', '843.77', NULL, NULL),
('6ecde4f2-fbb1-0607-2b6e-5a8342416d01', '68b9b1a0-0c4b-72e3-df46-5a7e88b54e85', '2018-02-13 19:53:48', '1', 'internal_mark_up_c', 'decimal', '50.00', '40', NULL, NULL),
('6ed9d778-2f68-4b78-e09f-5a85abfdd67f', 'b41f30e3-9130-7948-5394-5a7dcb040144', '2018-02-15 15:45:10', '1', 'tier_2_price_c', 'currency', '19.800000', '920.47', NULL, NULL),
('73ddb3d0-ffd8-0573-756c-5a87dc06ac5d', '68b9b1a0-0c4b-72e3-df46-5a7e88b54e85', '2018-02-17 07:42:44', '1', 'tier_5_price_c', 'currency', '2.100000', '7879.5', NULL, NULL),
('7406d504-73ec-a404-6831-5a8325951be0', 'b41f30e3-9130-7948-5394-5a7dcb040144', '2018-02-13 17:49:04', '1', 'tier_0_price_c', 'currency', NULL, '16.5', NULL, NULL),
('790370ff-4975-354c-5181-5ac6783480fd', 'd2977620-4e42-0c55-c324-5aa823d3b55e', '2018-04-05 19:25:08', '1', 'tier_2_price_c', 'currency', '25.450000', '1.02', NULL, NULL),
('79bd1482-bb50-235e-113e-5a85ab2c4319', 'b41f30e3-9130-7948-5394-5a7dcb040144', '2018-02-15 15:45:10', '1', 'tier_3_price_c', 'currency', '21.450000', '997.18', NULL, NULL),
('7b191b97-954b-317d-7046-5a8325309558', 'b41f30e3-9130-7948-5394-5a7dcb040144', '2018-02-13 17:49:04', '1', 'tier_1_c', 'decimal', NULL, '10', NULL, NULL),
('7bc30d72-9b5a-9a33-5417-5aa81c2ad190', 'd35e7f95-d564-30f9-7f72-5a7dae107104', '2018-03-13 18:47:17', '1', 'selling_cost_c', 'currency', '190.000000', '142.8', NULL, NULL),
('7c462fae-996e-ab78-1a57-5aa81247272c', '68b9b1a0-0c4b-72e3-df46-5a7e88b54e85', '2018-03-13 18:02:23', '1', 'total_stock_c', 'int', '95', '500', NULL, NULL),
('84f513dc-a019-7a6d-8995-5aa81cf98769', 'd35e7f95-d564-30f9-7f72-5a7dae107104', '2018-03-13 18:47:17', '1', 'tier_0_price_c', 'currency', NULL, '142.8', NULL, NULL),
('874261a7-c5dc-d720-7891-5a85abe81ccd', 'b41f30e3-9130-7948-5394-5a7dcb040144', '2018-02-15 15:45:10', '1', 'tier_4_price_c', 'currency', '23.100000', '1073.88', NULL, NULL),
('88810ebc-bdaa-f225-0055-5a83251e9232', 'b41f30e3-9130-7948-5394-5a7dcb040144', '2018-02-13 17:49:04', '1', 'tier_1_price_c', 'currency', NULL, '18.15', NULL, NULL),
('899b89c4-7802-f5dd-f35f-5aa81ceb233f', 'd35e7f95-d564-30f9-7f72-5a7dae107104', '2018-03-13 18:47:17', '1', 'tier_1_c', 'decimal', NULL, '10', NULL, NULL),
('8aa1912e-0786-5b92-eac8-5ac6789afa8e', 'd2977620-4e42-0c55-c324-5aa823d3b55e', '2018-04-05 19:25:08', '1', 'tier_3_c', 'decimal', '30.00', '3', NULL, NULL),
('8c423864-8ad1-8c19-58dd-5a87dcc3aaff', '68b9b1a0-0c4b-72e3-df46-5a7e88b54e85', '2018-02-17 07:42:44', '1', 'internal_mark_up_c', 'decimal', '40.00', '2', NULL, NULL),
('8dccb257-2cf4-851c-f46b-5a85ab31f8d9', 'b41f30e3-9130-7948-5394-5a7dcb040144', '2018-02-15 15:45:10', '1', 'tier_5_price_c', 'currency', '24.750000', '1150.59', NULL, NULL),
('8fc76ca4-0aef-7f5c-012a-5aa81ce5d531', 'd35e7f95-d564-30f9-7f72-5a7dae107104', '2018-03-13 18:47:17', '1', 'tier_1_price_c', 'currency', NULL, '157.08', NULL, NULL),
('922fd928-a0c5-489d-54fb-5a834257e190', '68b9b1a0-0c4b-72e3-df46-5a7e88b54e85', '2018-02-13 19:53:48', '1', 'selling_cost_c', 'currency', '1875.000000', '1.4', NULL, NULL),
('947142c2-4091-bdeb-ae10-5aa81c457e1e', 'd35e7f95-d564-30f9-7f72-5a7dae107104', '2018-03-13 18:47:17', '1', 'tier_2_c', 'decimal', NULL, '20', NULL, NULL),
('98972f7c-b417-7eeb-f6a3-5a83259fc61e', 'b41f30e3-9130-7948-5394-5a7dcb040144', '2018-02-13 17:49:04', '1', 'tier_2_c', 'decimal', NULL, '20', NULL, NULL),
('989b817e-7e5d-3100-8f56-5a834246b114', '68b9b1a0-0c4b-72e3-df46-5a7e88b54e85', '2018-02-13 19:53:48', '1', 'tier_0_price_c', 'currency', NULL, '1.4', NULL, NULL),
('9a7a1eb2-387d-df56-d410-5aa81c4526fd', 'd35e7f95-d564-30f9-7f72-5a7dae107104', '2018-03-13 18:47:17', '1', 'tier_2_price_c', 'currency', NULL, '171.36', NULL, NULL),
('9ce1bb4e-c92a-cf7d-b21e-5a8342f6bcd9', '68b9b1a0-0c4b-72e3-df46-5a7e88b54e85', '2018-02-13 19:53:48', '1', 'tier_1_c', 'decimal', NULL, '10', NULL, NULL),
('9f3a74c9-1181-af63-3da7-5a83256d4f28', 'b41f30e3-9130-7948-5394-5a7dcb040144', '2018-02-13 17:49:04', '1', 'tier_2_price_c', 'currency', NULL, '19.8', NULL, NULL),
('9f74a93b-bf63-74b6-c669-5aa81cea7b5a', 'd35e7f95-d564-30f9-7f72-5a7dae107104', '2018-03-13 18:47:17', '1', 'tier_3_c', 'decimal', NULL, '30', NULL, NULL),
('9f90165f-9f65-1eb8-efaa-5a87dc726e0f', '68b9b1a0-0c4b-72e3-df46-5a7e88b54e85', '2018-02-17 07:42:44', '1', 'internal_purchase_cost_c', 'currency', '1250.000000', '5150', NULL, NULL),
('a371da70-5879-8088-4df1-5a83423ddc12', '68b9b1a0-0c4b-72e3-df46-5a7e88b54e85', '2018-02-13 19:53:48', '1', 'tier_1_price_c', 'currency', NULL, '1.54', NULL, NULL),
('a54c88f9-25d1-6e55-28e3-5aa81cdee867', 'd35e7f95-d564-30f9-7f72-5a7dae107104', '2018-03-13 18:47:17', '1', 'tier_3_price_c', 'currency', NULL, '185.64', NULL, NULL),
('a62d6fbf-f89e-3e32-7601-5a8325d9c505', 'b41f30e3-9130-7948-5394-5a7dcb040144', '2018-02-13 17:49:04', '1', 'tier_3_c', 'decimal', NULL, '30', NULL, NULL),
('a6ae1eee-fe21-a761-5b1e-5a87dca74d16', '68b9b1a0-0c4b-72e3-df46-5a7e88b54e85', '2018-02-17 07:42:44', '1', 'purcahse_sub_cost_c', 'decimal', '1200.00', '5100', NULL, NULL),
('acd865b6-0206-6287-3431-5a8325077966', 'b41f30e3-9130-7948-5394-5a7dcb040144', '2018-02-13 17:49:04', '1', 'tier_3_price_c', 'currency', NULL, '21.45', NULL, NULL),
('ad409d5e-8b3d-af82-db7c-5a87dc9e8305', '68b9b1a0-0c4b-72e3-df46-5a7e88b54e85', '2018-02-17 07:42:44', '1', 'purchase_cost_c', 'currency', '1000.000000', '5000', NULL, NULL),
('ae15eca8-105e-0f3e-a698-5a8342f98c80', '68b9b1a0-0c4b-72e3-df46-5a7e88b54e85', '2018-02-13 19:53:48', '1', 'tier_2_c', 'decimal', NULL, '20', NULL, NULL),
('af198d4a-b169-f912-d436-5ac678efff5d', 'd2977620-4e42-0c55-c324-5aa823d3b55e', '2018-04-05 19:25:08', '1', 'tier_3_price_c', 'currency', '27.570000', '1.03', NULL, NULL),
('afe502d0-aa5e-da50-f76b-5aa814a98f1e', '68b9b1a0-0c4b-72e3-df46-5a7e88b54e85', '2018-03-13 18:11:13', '1', 'total_stock_c', 'int', '499', '500', NULL, NULL),
('b081cb51-c4bf-39c9-555e-5aa81cfab0e5', 'd35e7f95-d564-30f9-7f72-5a7dae107104', '2018-03-13 18:47:17', '1', 'tier_4_c', 'decimal', NULL, '40', NULL, NULL),
('b0d416a1-6494-04d2-3518-5ac67761f093', 'd2977620-4e42-0c55-c324-5aa823d3b55e', '2018-04-05 19:23:18', '1', 'purchase_cost_c', 'currency', '10.000000', '5', NULL, NULL),
('b46437f7-5966-fcd2-aeb6-5a87dc8c64ce', '68b9b1a0-0c4b-72e3-df46-5a7e88b54e85', '2018-02-17 07:42:44', '1', 'selling_cost_c', 'currency', '1.400000', '5253', NULL, NULL),
('b937dea4-3257-75ec-b775-5a8325c2b081', 'b41f30e3-9130-7948-5394-5a7dcb040144', '2018-02-13 17:49:04', '1', 'tier_4_c', 'decimal', NULL, '40', NULL, NULL),
('bac66d0b-279b-c9b1-4bfa-5a87dcbfee6a', '68b9b1a0-0c4b-72e3-df46-5a7e88b54e85', '2018-02-17 07:42:44', '1', 'tax_c', 'decimal', '20.00', '2', NULL, NULL),
('bba8ca02-3117-203f-c1e1-5a8342d9bfe3', '68b9b1a0-0c4b-72e3-df46-5a7e88b54e85', '2018-02-13 19:53:48', '1', 'tier_2_price_c', 'currency', NULL, '1.68', NULL, NULL),
('bdabb357-3c16-f0f9-8522-5aa81c3aec0e', 'd35e7f95-d564-30f9-7f72-5a7dae107104', '2018-03-13 18:47:17', '1', 'tier_4_price_c', 'currency', NULL, '199.92', NULL, NULL),
('bf38a356-d58a-e205-50d3-5a87dc2ff82b', '68b9b1a0-0c4b-72e3-df46-5a7e88b54e85', '2018-02-17 07:42:44', '1', 'tier_0_price_c', 'currency', '1.400000', '5253', NULL, NULL),
('bf6df08c-b030-9707-1ae9-5a7f1b6cf54a', 'd35e7f95-d564-30f9-7f72-5a7dae107104', '2018-02-10 16:20:57', '1', 'part_number', 'varchar', NULL, 'ptg-Cam123', NULL, NULL),
('bfe2e93e-28a6-1de0-4e86-5a8342a2b5f1', '68b9b1a0-0c4b-72e3-df46-5a7e88b54e85', '2018-02-13 19:53:48', '1', 'tier_3_c', 'decimal', NULL, '30', NULL, NULL),
('c142fc48-29c7-1246-9e8f-5a8325ca3bcf', 'b41f30e3-9130-7948-5394-5a7dcb040144', '2018-02-13 17:49:04', '1', 'tier_4_price_c', 'currency', NULL, '23.1', NULL, NULL),
('c2ef86ff-06b4-35be-826c-5aa8125e2c42', 'b41f30e3-9130-7948-5394-5a7dcb040144', '2018-03-13 18:01:35', '1', 'total_stock_c', 'int', '505', '500', NULL, NULL),
('c3160acb-b439-e54e-9d05-5aa81cbcf575', 'd35e7f95-d564-30f9-7f72-5a7dae107104', '2018-03-13 18:47:17', '1', 'tier_5_c', 'decimal', NULL, '50', NULL, NULL),
('c679e7a5-5c51-dee8-cae7-5a8342bda42b', '68b9b1a0-0c4b-72e3-df46-5a7e88b54e85', '2018-02-13 19:53:48', '1', 'tier_3_price_c', 'currency', NULL, '1.82', NULL, NULL),
('c7bda5ba-b6f4-ec80-1e77-5a83252a0c66', 'b41f30e3-9130-7948-5394-5a7dcb040144', '2018-02-13 17:49:04', '1', 'tier_5_c', 'decimal', NULL, '50', NULL, NULL),
('c8842e9c-9551-76b6-57ad-5aa81c698954', 'd35e7f95-d564-30f9-7f72-5a7dae107104', '2018-03-13 18:47:17', '1', 'tier_5_price_c', 'currency', NULL, '214.2', NULL, NULL),
('c9831aec-7abf-8f7d-dd54-5a7f1b7077c7', '68b9b1a0-0c4b-72e3-df46-5a7e88b54e85', '2018-02-10 16:19:41', '1', 'part_number', 'varchar', NULL, 'ptg-laptop-LG', NULL, NULL),
('ca6fe8d5-a9f2-978a-a1db-5ac678255746', 'd2977620-4e42-0c55-c324-5aa823d3b55e', '2018-04-05 19:25:08', '1', 'tier_4_c', 'decimal', '40.00', '4', NULL, NULL),
('caa70515-8e01-93e2-b805-5aabf92384ed', 'd35e7f95-d564-30f9-7f72-5a7dae107104', '2018-03-16 17:05:15', '1', 'total_stock_c', 'int', '499', '2', NULL, NULL),
('cad8750f-62d1-7c9c-7caf-5a83427a05f4', '68b9b1a0-0c4b-72e3-df46-5a7e88b54e85', '2018-02-13 19:53:48', '1', 'tier_4_c', 'decimal', NULL, '40', NULL, NULL),
('cb931889-f776-24cb-c098-5aa980886eb6', 'b41f30e3-9130-7948-5394-5a7dcb040144', '2018-03-14 20:06:28', '1', 'total_stock_c', 'int', '490', '1', NULL, NULL),
('cc508ead-024e-66cd-e809-5aa812045941', 'b2af9099-a9b4-cb3e-bc3d-5a8da5a57d03', '2018-03-13 18:02:57', '1', 'total_stock_c', 'int', '498', '500', NULL, NULL),
('cec7c198-45c3-67a6-15e1-5a7dafa64765', 'd35e7f95-d564-30f9-7f72-5a7dae107104', '2018-02-09 14:24:19', NULL, 'image_c', 'image', 'C:\\fakepath\\[iSongs.info] 07 - Chali Re Chali Babul Ki Gali.mp3', '', NULL, NULL),
('ceddb587-8308-1f76-1c69-5a8325118fee', 'b41f30e3-9130-7948-5394-5a7dcb040144', '2018-02-13 17:49:04', '1', 'tier_5_price_c', 'currency', NULL, '24.75', NULL, NULL),
('d0e36f7b-f194-8af5-63f4-5a87dc3e7ccb', '68b9b1a0-0c4b-72e3-df46-5a7e88b54e85', '2018-02-17 07:42:44', '1', 'tier_1_price_c', 'currency', '1.540000', '5778.3', NULL, NULL),
('d20284cc-be13-1837-b6bc-5aa8169ac7fb', 'b2af9099-a9b4-cb3e-bc3d-5a8da5a57d03', '2018-03-13 18:21:36', '1', 'total_stock_c', 'int', '498', '500', NULL, NULL),
('d421734a-7583-1460-2d06-5a8342e70370', '68b9b1a0-0c4b-72e3-df46-5a7e88b54e85', '2018-02-13 19:53:48', '1', 'tier_4_price_c', 'currency', NULL, '1.96', NULL, NULL),
('d7877134-ae7a-c06d-b0bf-5aa7f7cedc07', 'b2af9099-a9b4-cb3e-bc3d-5a8da5a57d03', '2018-03-13 16:07:13', '1', 'total_stock_c', 'int', '378', '500', NULL, NULL),
('d7bc2d0f-2323-66fe-ad96-5ac6788e14c2', 'd2977620-4e42-0c55-c324-5aa823d3b55e', '2018-04-05 19:25:08', '1', 'tier_4_price_c', 'currency', '29.690000', '1.04', NULL, NULL),
('d86f6139-d668-9420-0476-5a83423d5f99', '68b9b1a0-0c4b-72e3-df46-5a7e88b54e85', '2018-02-13 19:53:48', '1', 'tier_5_c', 'decimal', NULL, '50', NULL, NULL),
('df00fc8c-0267-ea03-a30e-5a8342ac9146', '68b9b1a0-0c4b-72e3-df46-5a7e88b54e85', '2018-02-13 19:53:48', '1', 'tier_5_price_c', 'currency', NULL, '2.1', NULL, NULL),
('dfdfaac7-7dbb-920e-489c-5ac678c84b06', 'd2977620-4e42-0c55-c324-5aa823d3b55e', '2018-04-05 19:25:08', '1', 'tier_5_c', 'decimal', '50.00', '5', NULL, NULL),
('e4d3521f-6e1b-fb9c-7dca-5ac67860e062', 'd2977620-4e42-0c55-c324-5aa823d3b55e', '2018-04-05 19:25:08', '1', 'tier_5_price_c', 'currency', '31.820000', '1.05', NULL, NULL),
('f34fb2b7-095e-d378-73ed-5aabf73b8174', 'd35e7f95-d564-30f9-7f72-5a7dae107104', '2018-03-16 16:55:54', '1', 'total_stock_c', 'int', '9', '499', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `aos_products_cstm`
--

CREATE TABLE `aos_products_cstm` (
  `id_c` char(36) NOT NULL,
  `vendor_part_number_c` varchar(255) DEFAULT NULL,
  `upc_c` varchar(255) DEFAULT NULL,
  `ptg_part_number_c` varchar(255) DEFAULT NULL,
  `purchase_cost_c` decimal(26,6) DEFAULT '0.000000',
  `purcahse_sub_cost_c` decimal(18,2) DEFAULT '0.00',
  `shipping_cost_c` decimal(26,6) DEFAULT '0.000000',
  `internal_mark_up_c` decimal(18,2) DEFAULT '0.00',
  `selling_cost_c` decimal(26,6) DEFAULT '0.000000',
  `internal_purchase_cost_c` decimal(26,6) DEFAULT '0.000000',
  `image_c` varchar(255) DEFAULT NULL,
  `total_stock_c` int(255) DEFAULT '0',
  `minimum_stock_alert_c` int(255) DEFAULT '0',
  `tier_0_c` decimal(18,2) DEFAULT '0.00',
  `tier_1_c` decimal(18,2) DEFAULT '0.00',
  `tier_2_c` decimal(18,2) DEFAULT '0.00',
  `tier_3_c` decimal(18,2) DEFAULT '0.00',
  `tier_4_c` decimal(18,2) DEFAULT '0.00',
  `tier_5_c` decimal(18,2) DEFAULT '0.00',
  `tier_0_price_c` decimal(26,6) DEFAULT '0.000000',
  `tier_1_price_c` decimal(26,6) DEFAULT '0.000000',
  `tier_2_price_c` decimal(26,6) DEFAULT '0.000000',
  `tier_4_price_c` decimal(26,6) DEFAULT '0.000000',
  `tier_5_price_c` decimal(26,6) DEFAULT '0.000000',
  `tier_3_price_c` decimal(26,6) DEFAULT '0.000000',
  `tier_5_price_hidden_c` decimal(26,6) DEFAULT '0.000000',
  `atomi_vendor_id_c` char(36) DEFAULT NULL,
  `tax_c` varchar(100) DEFAULT '9'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `aos_products_cstm`
--

INSERT INTO `aos_products_cstm` (`id_c`, `vendor_part_number_c`, `upc_c`, `ptg_part_number_c`, `purchase_cost_c`, `purcahse_sub_cost_c`, `shipping_cost_c`, `internal_mark_up_c`, `selling_cost_c`, `internal_purchase_cost_c`, `image_c`, `total_stock_c`, `minimum_stock_alert_c`, `tier_0_c`, `tier_1_c`, `tier_2_c`, `tier_3_c`, `tier_4_c`, `tier_5_c`, `tier_0_price_c`, `tier_1_price_c`, `tier_2_price_c`, `tier_4_price_c`, `tier_5_price_c`, `tier_3_price_c`, `tier_5_price_hidden_c`, `atomi_vendor_id_c`, `tax_c`) VALUES
('68b9b1a0-0c4b-72e3-df46-5a7e88b54e85', 'laptop-LG', 'laptop-LG', 'laptop-LG', '5000.000000', '5100.00', '50.000000', '2.00', '5253.000000', '5150.000000', 'img3.jpg', 488, 5, NULL, '10.00', '20.00', '30.00', '40.00', '50.00', '5253.000000', '5778.300000', '6303.600000', '7354.200000', '7879.500000', '6828.900000', '7879.500000', '', NULL),
('6f5753d0-8ac0-d9df-ca28-5acce575eeff', 'ProdTodat123', '', '', '500.000000', '0.00', '20.000000', '0.00', '520.000000', '520.000000', '', 899, 20, '0.00', '10.00', '20.00', '30.00', '40.00', '50.00', '520.000000', '572.000000', '624.000000', '728.000000', '780.000000', '676.000000', '780.000000', '89898a84-1e7d-ac82-701e-5a7d59b49b20', '9'),
('b2af9099-a9b4-cb3e-bc3d-5a8da5a57d03', 'Serv-111', 'Serv-111', '', '6000.000000', '6600.00', '20.000000', '10.00', '7282.000000', '6620.000000', '', 488, 5, '0.00', '10.00', '20.00', '30.00', '40.00', '50.00', '7282.000000', '8010.200000', '8738.400000', '10194.800000', '10923.000000', '9466.600000', '10923.000000', '', NULL),
('b41f30e3-9130-7948-5394-5a7dcb040144', 'Laptop-DELL', 'Laptop-DELL', 'Laptop-DELL', '9900.000000', '10.37', '501.000000', '50.00', '767.060000', '511.370000', 'DSCN1199.JPG', 485, 10, NULL, '10.00', '20.00', '30.00', '40.00', '50.00', '767.060000', '843.770000', '920.470000', '1073.880000', '1150.590000', '997.180000', '1150.590000', '89898a84-1e7d-ac82-701e-5a7d59b49b20', NULL),
('d2977620-4e42-0c55-c324-5aa823d3b55e', 'newProd', '', '', '1.000000', '1.00', '0.000000', '0.00', '1.000000', '1.000000', '', -5, 2, '0.00', '1.00', '2.00', '3.00', '4.00', '5.00', '1.000000', '1.010000', '1.020000', '1.040000', '1.050000', '1.030000', '1.050000', '', NULL),
('d35e7f95-d564-30f9-7f72-5a7dae107104', 'Cam123', 'Cam123', 'Cam123', '100.000000', '120.00', '20.000000', '2.00', '142.800000', '140.000000', 'Sagar-Munot.jpg', 1, 20, NULL, '10.00', '20.00', '30.00', '40.00', '50.00', '142.800000', '157.080000', '171.360000', '199.920000', '214.200000', '185.640000', '214.200000', '', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `aos_products_quotes`
--

CREATE TABLE `aos_products_quotes` (
  `id` char(36) NOT NULL,
  `name` text,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `currency_id` char(36) DEFAULT NULL,
  `part_number` varchar(255) DEFAULT NULL,
  `item_description` text,
  `number` int(11) DEFAULT NULL,
  `product_qty` decimal(18,4) DEFAULT NULL,
  `product_cost_price` decimal(26,6) DEFAULT NULL,
  `product_cost_price_usdollar` decimal(26,6) DEFAULT NULL,
  `product_list_price` decimal(26,6) DEFAULT NULL,
  `product_list_price_usdollar` decimal(26,6) DEFAULT NULL,
  `product_discount` decimal(26,6) DEFAULT NULL,
  `product_discount_usdollar` decimal(26,6) DEFAULT NULL,
  `product_discount_amount` decimal(26,6) DEFAULT NULL,
  `product_discount_amount_usdollar` decimal(26,6) DEFAULT NULL,
  `discount` varchar(255) DEFAULT 'Percentage',
  `product_unit_price` decimal(26,6) DEFAULT NULL,
  `product_unit_price_usdollar` decimal(26,6) DEFAULT NULL,
  `vat_amt` decimal(26,6) DEFAULT NULL,
  `vat_amt_usdollar` decimal(26,6) DEFAULT NULL,
  `product_total_price` decimal(26,6) DEFAULT NULL,
  `product_total_price_usdollar` decimal(26,6) DEFAULT NULL,
  `vat` varchar(100) DEFAULT '5.0',
  `parent_type` varchar(100) DEFAULT NULL,
  `parent_id` char(36) DEFAULT NULL,
  `product_id` char(36) DEFAULT NULL,
  `group_id` char(36) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `aos_products_quotes`
--

INSERT INTO `aos_products_quotes` (`id`, `name`, `date_entered`, `date_modified`, `modified_user_id`, `created_by`, `description`, `deleted`, `assigned_user_id`, `currency_id`, `part_number`, `item_description`, `number`, `product_qty`, `product_cost_price`, `product_cost_price_usdollar`, `product_list_price`, `product_list_price_usdollar`, `product_discount`, `product_discount_usdollar`, `product_discount_amount`, `product_discount_amount_usdollar`, `discount`, `product_unit_price`, `product_unit_price_usdollar`, `vat_amt`, `vat_amt_usdollar`, `product_total_price`, `product_total_price_usdollar`, `vat`, `parent_type`, `parent_id`, `product_id`, `group_id`) VALUES
('114e699d-8ddf-7c23-edaf-5aabfaedc779', 'Laptop-DELL', '2018-03-16 17:12:07', '2018-03-16 17:12:07', '1', '1', '', 0, '1', '-99', 'PTG-Laptop-DELL', 'Laptop-DELL', 3, '1.0000', NULL, '0.000000', NULL, '0.000000', NULL, '0.000000', '0.000000', '0.000000', 'Percentage', '0.000000', '0.000000', '0.000000', '0.000000', '1150.590000', '1150.590000', '5.0', 'AOS_Invoices', '31fcbec2-4e08-c3e3-a8a8-5aabfa6047a2', 'b41f30e3-9130-7948-5394-5a7dcb040144', '566ecaa0-cf0c-4949-fc63-5aabfaa0a708'),
('1c55be36-8759-dfdd-7631-5aa822eaf2b5', 'test Service', '2018-03-13 19:13:01', '2018-03-13 19:15:41', '1', '1', 'fgdf', 0, '1', '-99', 'ptg-Serv-111', 'fdgdfg', 1, '5.0000', NULL, '0.000000', NULL, '0.000000', NULL, '0.000000', '10.000000', '10.000000', 'Percentage', '0.000000', '0.000000', '0.000000', '0.000000', '54605.000000', '54605.000000', '5.0', 'AOS_Invoices', 'ec0d1106-d54f-5aa5-082d-5aa8229ffcc2', 'b2af9099-a9b4-cb3e-bc3d-5a8da5a57d03', 'a991f714-5b81-9c2d-49a3-5aa82255d9f5'),
('1c56c2e5-cf6e-8194-4ee5-5aba60f1e91a', 'laptop-LG', '2018-03-27 15:16:38', '2018-03-27 15:16:38', '1', '1', 'asdas', 0, '1', '-99', 'ptg-laptop-LG', 'sdas', 1, '1.0000', NULL, '0.000000', NULL, '0.000000', NULL, '0.000000', '20.000000', '20.000000', 'Percentage', '0.000000', '0.000000', '0.000000', '0.000000', '8801.040000', '8801.040000', '5.0', 'AOS_Invoices', 'ae2f5095-c4c0-e9b8-6404-5aba60b3d29d', '68b9b1a0-0c4b-72e3-df46-5a7e88b54e85', 'd973e749-64c3-6489-9160-5aba60e6093c'),
('1e0c5460-7d57-6c38-ed54-5accee46d2c5', 'Todays Product', '2018-04-10 17:04:43', '2018-04-10 17:04:43', '1', '1', 'asdaas', 0, '1', '-99', 'ProdTodat123', 'Todays Product', 1, '1.0000', NULL, '0.000000', NULL, '0.000000', NULL, '0.000000', '10.000000', '10.000000', 'Percentage', '0.000000', '0.000000', '0.000000', '0.000000', '837.380000', '837.380000', '5.0', 'AOS_Invoices', '22755491-d318-2629-7b7f-5accee168475', '6f5753d0-8ac0-d9df-ca28-5acce575eeff', 'ee3870ba-2d22-3f19-d1ef-5accee98038c'),
('2138c232-0844-18b6-e452-5aa81eed09a4', 'Laptop-DELL', '2018-03-13 18:56:09', '2018-03-13 18:59:11', '1', '1', 'd', 0, '1', '-99', 'PTG-Laptop-DELL', 'Laptop-DELL', 1, '2.0000', NULL, '0.000000', NULL, '0.000000', NULL, '0.000000', '10.000000', '10.000000', 'Percentage', '0.000000', '0.000000', '0.000000', '0.000000', '2520.300000', '2520.300000', '5.0', 'AOS_Invoices', '9d974535-0d46-1917-f476-5aa81e3416a1', 'b41f30e3-9130-7948-5394-5a7dcb040144', 'c4b1447e-8b14-c7b6-ba5d-5aa81e05dc0f'),
('24d07761-ecb4-c42a-04d2-5ac28b75c140', 'laptop-LG', '2018-04-02 19:57:36', '2018-04-05 19:27:30', '1', '1', 'asd', 0, '1', '-99', 'ptg-laptop-LG', 'asdsad', 1, '1.0000', NULL, '0.000000', NULL, '0.000000', NULL, '0.000000', '20.000000', '20.000000', 'Percentage', '0.000000', '0.000000', '0.000000', '0.000000', '10217.350000', '10217.350000', '5.0', 'AOS_Invoices', 'bfd9b379-62eb-998f-e1b3-5ac28b70f07d', '68b9b1a0-0c4b-72e3-df46-5a7e88b54e85', '5fcb0ce0-8321-a4ee-3e9c-5ac28bb1e508'),
('26441a77-bc4c-0205-7d33-5aa970ff2899', 'test Service', '2018-03-14 18:56:20', '2018-03-14 18:56:20', '1', '1', 'asdas', 0, '1', '-99', 'ptg-Serv-111', 'sadas', 1, '1.0000', NULL, '0.000000', NULL, '0.000000', NULL, '0.000000', '10.000000', '10.000000', 'Percentage', '0.000000', '0.000000', '0.000000', '0.000000', '10913.000000', '10913.000000', '5.0', 'AOS_Invoices', '2613f4cb-db18-a784-2c17-5aa9709c6d59', 'b2af9099-a9b4-cb3e-bc3d-5a8da5a57d03', 'c48ccc35-477c-6b2e-0b90-5aa970f3cf5e'),
('299e698e-f8fd-77ee-3ed2-5aabfab9d8b5', 'Cam123', '2018-03-16 17:12:07', '2018-03-16 17:12:07', '1', '1', '', 0, '1', '-99', 'ptg-Cam123', 'Cam123', 4, '1.0000', NULL, '0.000000', NULL, '0.000000', NULL, '0.000000', '0.000000', '0.000000', 'Percentage', '0.000000', '0.000000', '0.000000', '0.000000', '214.200000', '214.200000', '5.0', 'AOS_Invoices', '31fcbec2-4e08-c3e3-a8a8-5aabfa6047a2', 'd35e7f95-d564-30f9-7f72-5a7dae107104', '566ecaa0-cf0c-4949-fc63-5aabfaa0a708'),
('2d9161e4-16da-c71f-b851-5aa81cabb356', 'Laptop-DELL', '2018-03-13 18:44:55', '2018-03-13 18:48:57', '1', '1', 'sadas', 0, '1', '-99', 'PTG-Laptop-DELL', 'Laptop-DELL', 1, '5.0000', NULL, '0.000000', NULL, '0.000000', NULL, '0.000000', '10.000000', '10.000000', 'Percentage', '0.000000', '0.000000', '0.000000', '0.000000', '8614.430000', '8614.430000', '5.0', 'AOS_Invoices', '49137101-7b02-ae0e-8af5-5aa8025d27a1', 'b41f30e3-9130-7948-5394-5a7dcb040144', '103bf08b-176f-1376-5494-5aa81c9a5ce7'),
('377e68f9-027b-c695-7379-5aba9de820a2', 'Laptop-DELL', '2018-03-27 19:37:57', '2018-03-27 19:37:57', '4668226f-4e70-347c-9740-5a9af48bdd5f', '4668226f-4e70-347c-9740-5a9af48bdd5f', 'Created By Account Manager', 0, '4668226f-4e70-347c-9740-5a9af48bdd5f', '-99', 'PTG-Laptop-DELL', 'Laptop-DELL', 1, '1.0000', NULL, '0.000000', NULL, '0.000000', NULL, '0.000000', '10.000000', '10.000000', 'Percentage', '0.000000', '0.000000', '0.000000', '0.000000', '1184.620000', '1184.620000', '5.0', 'AOS_Invoices', '4c634805-e71a-9041-9e4e-5aba9d6b5c43', 'b41f30e3-9130-7948-5394-5a7dcb040144', '14a00b54-0628-a91b-e385-5aba9d21fce9'),
('41836349-ab45-9437-a3f8-5aabfa88bbca', 'laptop-LG', '2018-03-16 17:12:07', '2018-03-16 17:12:07', '1', '1', '', 0, '1', '-99', 'ptg-laptop-LG', '', 5, '1.0000', NULL, '0.000000', NULL, '0.000000', NULL, '0.000000', '0.000000', '0.000000', 'Percentage', '0.000000', '0.000000', '0.000000', '0.000000', '7879.500000', '7879.500000', '5.0', 'AOS_Invoices', '31fcbec2-4e08-c3e3-a8a8-5aabfa6047a2', '68b9b1a0-0c4b-72e3-df46-5a7e88b54e85', '566ecaa0-cf0c-4949-fc63-5aabfaa0a708'),
('476dacfa-79d6-abc2-7e66-5aa81cb8678d', 'Cam123', '2018-03-13 18:47:56', '2018-03-13 18:48:57', '1', '1', 'asdas', 0, '1', '-99', 'ptg-Cam123', 'Cam123', 3, '1.0000', NULL, '0.000000', NULL, '0.000000', NULL, '0.000000', '10.000000', '10.000000', 'Percentage', '0.000000', '0.000000', '0.000000', '0.000000', '245.040000', '245.040000', '5.0', 'AOS_Invoices', '49137101-7b02-ae0e-8af5-5aa8025d27a1', 'd35e7f95-d564-30f9-7f72-5a7dae107104', '103bf08b-176f-1376-5494-5aa81c9a5ce7'),
('48c1ad80-907b-43d9-1287-5aa81c5b5762', 'laptop-LG', '2018-03-13 18:44:55', '2018-03-13 18:48:57', '1', '1', 'asd', 0, '1', '-99', 'ptg-laptop-LG', 'sadsa', 2, '1.0000', NULL, '0.000000', NULL, '0.000000', NULL, '0.000000', '10.000000', '10.000000', 'Percentage', '0.000000', '0.000000', '0.000000', '0.000000', '9443.400000', '9443.400000', '5.0', 'AOS_Invoices', '49137101-7b02-ae0e-8af5-5aa8025d27a1', '68b9b1a0-0c4b-72e3-df46-5a7e88b54e85', '103bf08b-176f-1376-5494-5aa81c9a5ce7'),
('4f3d9006-e7d0-37f5-68c1-5ac28a961dc3', 'laptop-LG', '2018-04-02 19:54:11', '2018-04-02 19:54:11', '1', '1', 'gdfg', 0, '1', '-99', 'ptg-laptop-LG', 'dffd', 1, '1.0000', NULL, '0.000000', NULL, '0.000000', NULL, '0.000000', '10.000000', '10.000000', 'Percentage', '0.000000', '0.000000', '0.000000', '0.000000', '8656.450000', '8656.450000', '5.0', 'AOS_Invoices', '62ceca7b-c274-d91b-0b62-5ac28a52ce87', '68b9b1a0-0c4b-72e3-df46-5a7e88b54e85', '245ae8c8-5ae6-c3f2-a6f8-5ac28a56106b'),
('50780f44-f4fc-af24-36c1-5aa9708e66c8', 'laptop-LG', '2018-03-14 18:56:20', '2018-03-14 18:56:20', '1', '1', 'asd', 0, '1', '-99', 'ptg-laptop-LG', 'as', 1, '1.0000', NULL, '0.000000', NULL, '0.000000', NULL, '0.000000', '10.000000', '10.000000', 'Percentage', '0.000000', '0.000000', '0.000000', '0.000000', '9443.400000', '9443.400000', '5.0', 'AOS_Invoices', '2613f4cb-db18-a784-2c17-5aa9709c6d59', '68b9b1a0-0c4b-72e3-df46-5a7e88b54e85', 'c48ccc35-477c-6b2e-0b90-5aa970f3cf5e'),
('522ccbd3-c2fc-fc41-bc46-5aa81ee4b516', 'test Service', '2018-03-13 18:56:09', '2018-03-13 18:59:11', '1', '1', 'sdf', 0, '1', '-99', 'ptg-Serv-111', 'sdfs', 1, '2.0000', NULL, '0.000000', NULL, '0.000000', NULL, '0.000000', '10.000000', '10.000000', 'Percentage', '0.000000', '0.000000', '0.000000', '0.000000', '21836.000000', '21836.000000', '5.0', 'AOS_Invoices', '9d974535-0d46-1917-f476-5aa81e3416a1', 'b2af9099-a9b4-cb3e-bc3d-5a8da5a57d03', 'c4b1447e-8b14-c7b6-ba5d-5aa81e05dc0f'),
('57c86fc6-1956-5575-07af-5aabfaadf09e', 'laptop-LG', '2018-03-16 17:12:07', '2018-03-16 17:12:07', '1', '1', '', 0, '1', '-99', 'ptg-laptop-LG', '', 6, '1.0000', NULL, '0.000000', NULL, '0.000000', NULL, '0.000000', '0.000000', '0.000000', 'Percentage', '0.000000', '0.000000', '0.000000', '0.000000', '7879.500000', '7879.500000', '5.0', 'AOS_Invoices', '31fcbec2-4e08-c3e3-a8a8-5aabfa6047a2', '68b9b1a0-0c4b-72e3-df46-5a7e88b54e85', '566ecaa0-cf0c-4949-fc63-5aabfaa0a708'),
('5f590001-a664-6b9f-143f-5ac6757bc302', 'laptop-LG', '2018-04-05 19:15:04', '2018-04-05 19:15:04', '1', '1', 'as', 0, '1', '-99', 'ptg-laptop-LG', 'asd', 1, '1.0000', NULL, '0.000000', NULL, '0.000000', NULL, '0.000000', '0.000000', '0.000000', 'Percentage', '0.000000', '0.000000', '0.000000', '0.000000', '7879.500000', '7879.500000', '5.0', 'AOS_Contracts', '3a81d122-0e13-836c-885c-5ac6757efed9', '68b9b1a0-0c4b-72e3-df46-5a7e88b54e85', '73b2765d-a33d-e1ee-f1a7-5ac67544567c'),
('635c3c59-7121-2701-85a5-5aa81c98b32c', 'test Service', '2018-03-13 18:44:55', '2018-03-13 18:48:57', '1', '1', NULL, 0, '1', '-99', 'ptg-Serv-111', NULL, 1, '3.0000', NULL, '0.000000', NULL, '0.000000', NULL, '0.000000', '0.000000', '0.000000', 'Percentage', '0.000000', '0.000000', '0.000000', '0.000000', '32769.000000', '32769.000000', '5.0', 'AOS_Invoices', '49137101-7b02-ae0e-8af5-5aa8025d27a1', 'b2af9099-a9b4-cb3e-bc3d-5a8da5a57d03', '103bf08b-176f-1376-5494-5aa81c9a5ce7'),
('718ee4f2-6d8e-d82b-d447-5aabfa2f5d80', 'Laptop-DELL', '2018-03-16 17:12:07', '2018-03-16 17:12:07', '1', '1', '', 0, '1', '-99', 'PTG-Laptop-DELL', 'Laptop-DELL', 7, '1.0000', NULL, '0.000000', NULL, '0.000000', NULL, '0.000000', '0.000000', '0.000000', 'Percentage', '0.000000', '0.000000', '0.000000', '0.000000', '1150.590000', '1150.590000', '5.0', 'AOS_Invoices', '31fcbec2-4e08-c3e3-a8a8-5aabfa6047a2', 'b41f30e3-9130-7948-5394-5a7dcb040144', '566ecaa0-cf0c-4949-fc63-5aabfaa0a708'),
('7b3c961d-9f39-d4af-c2ca-5ac8d2136a74', 'laptop-LG', '2018-04-07 14:16:34', '2018-04-08 12:30:49', '1', '1', 'Demo Note', 0, '1', '-99', 'ptg-laptop-LG', 'Demo Description', 1, '1.0000', NULL, '0.000000', NULL, '0.000000', NULL, '0.000000', '10.000000', '10.000000', 'Percentage', '0.000000', '0.000000', '0.000000', '0.000000', '8656.450000', '8656.450000', '5.0', 'AOS_Invoices', '2e1f9c01-4363-480b-5bec-5ac8d206fbb2', '68b9b1a0-0c4b-72e3-df46-5a7e88b54e85', '5980365e-7531-c10c-472e-5ac8d24f2057'),
('7b78bddd-c29f-42a8-2c10-5aca5ee557cf', 'laptop-LG', '2018-04-08 18:27:05', '2018-04-08 18:27:05', '1', '1', '', 0, '1', '-99', 'ptg-laptop-LG', '', 1, '1.0000', NULL, '0.000000', NULL, '0.000000', NULL, '0.000000', '0.000000', '0.000000', 'Percentage', '0.000000', '0.000000', '0.000000', '0.000000', '10.900000', '10.900000', '5.0', 'AOS_Quotes', 'a33b95d5-1d9f-ced7-71f8-5aca5e8f83bb', '68b9b1a0-0c4b-72e3-df46-5a7e88b54e85', '3c8e5b5a-182a-11c4-0d2e-5aca5e72e303'),
('802b36ca-5a3a-bcec-a0f7-5ac1241ec171', 'laptop-LG', '2018-04-01 18:27:00', '2018-04-08 12:58:40', '1', '1', 'Demo Note', 0, '1', '-99', 'ptg-laptop-LG', 'Demo Description ', 1, '1.0000', NULL, '0.000000', NULL, '0.000000', NULL, '0.000000', '10.000000', '10.000000', 'Percentage', '0.000000', '0.000000', '0.000000', '0.000000', '9443.400000', '9443.400000', '5.0', 'AOS_Quotes', 'e4c3535a-d717-82a6-859b-5ac124a96a27', '68b9b1a0-0c4b-72e3-df46-5a7e88b54e85', '5845a975-d62d-31a7-b735-5ac124199abb'),
('874077f6-3743-cf0f-f5ff-5aabfa4ce28e', 'test Service', '2018-03-16 17:12:07', '2018-03-16 17:12:07', '1', '1', '', 0, '1', '-99', 'ptg-Serv-111', '', 1, '1.0000', NULL, '0.000000', NULL, '0.000000', NULL, '0.000000', '0.000000', '0.000000', 'Percentage', '0.000000', '0.000000', '0.000000', '0.000000', '10923.000000', '10923.000000', '5.0', 'AOS_Invoices', '31fcbec2-4e08-c3e3-a8a8-5aabfa6047a2', 'b2af9099-a9b4-cb3e-bc3d-5a8da5a57d03', '566ecaa0-cf0c-4949-fc63-5aabfaa0a708'),
('94496d33-a526-25cb-3fe4-5aa9789fa371', 'laptop-LG', '2018-03-14 19:32:08', '2018-03-14 19:40:40', '1', '1', 'asdas', 0, '1', '-99', 'ptg-laptop-LG', 'sadsad', 1, '1.0000', NULL, '0.000000', NULL, '0.000000', NULL, '0.000000', '0.000000', '0.000000', 'Percentage', '0.000000', '0.000000', '0.000000', '0.000000', '7879.500000', '7879.500000', '5.0', 'AOS_Invoices', '1c92664d-e617-d964-32b8-5aa978e031b7', '68b9b1a0-0c4b-72e3-df46-5a7e88b54e85', '7dfea829-0a50-2bc5-11ce-5aa97894c244'),
('a9ceb07c-ffab-6d52-609e-5ac0a449c70b', 'laptop-LG', '2018-04-01 09:21:15', '2018-04-01 09:21:15', '1', '1', 'sdfs', 0, '1', '-99', 'ptg-laptop-LG', 'sdf', 1, '1.0000', NULL, '0.000000', NULL, '0.000000', NULL, '0.000000', '10.000000', '10.000000', 'Percentage', '0.000000', '0.000000', '0.000000', '0.000000', '9443.400000', '9443.400000', '5.0', 'AOS_Quotes', '119806b4-ad3f-e7e5-5e4a-5ac0a45b179e', '68b9b1a0-0c4b-72e3-df46-5a7e88b54e85', '8159e4ea-2f2b-a572-0e98-5ac0a4ff9aea'),
('c2383500-9395-a660-aa7c-5aabfa70475d', 'Laptop-DELL', '2018-03-16 17:12:07', '2018-03-16 17:12:07', '1', '1', '', 0, '1', '-99', 'PTG-Laptop-DELL', 'Laptop-DELL', 1, '1.0000', NULL, '0.000000', NULL, '0.000000', NULL, '0.000000', '10.000000', '10.000000', 'Percentage', '0.000000', '0.000000', '0.000000', '0.000000', '1254.650000', '1254.650000', '5.0', 'AOS_Invoices', '31fcbec2-4e08-c3e3-a8a8-5aabfa6047a2', 'b41f30e3-9130-7948-5394-5a7dcb040144', '566ecaa0-cf0c-4949-fc63-5aabfaa0a708'),
('c8e00c73-09f9-26be-cf64-5aa8223be045', 'Laptop-DELL', '2018-03-13 19:13:01', '2018-03-13 19:15:41', '1', '1', 'fgdf', 0, '1', '-99', 'PTG-Laptop-DELL', 'Laptop-DELL', 2, '3.0000', NULL, '0.000000', NULL, '0.000000', NULL, '0.000000', '10.000000', '10.000000', 'Percentage', '0.000000', '0.000000', '0.000000', '0.000000', '5162.650000', '5162.650000', '5.0', 'AOS_Invoices', 'ec0d1106-d54f-5aa5-082d-5aa8229ffcc2', 'b41f30e3-9130-7948-5394-5a7dcb040144', 'a991f714-5b81-9c2d-49a3-5aa82255d9f5'),
('cf9f5e1a-3672-4adf-6891-5ac28a537bbe', 'Laptop-DELL', '2018-04-02 19:56:05', '2018-04-02 19:56:05', '1', '1', 'dfgd', 0, '1', '-99', 'PTG-Laptop-DELL', 'Laptop-DELL', 1, '1.0000', NULL, '0.000000', NULL, '0.000000', NULL, '0.000000', '10.000000', '10.000000', 'Percentage', '0.000000', '0.000000', '0.000000', '0.000000', '1368.710000', '1368.710000', '5.0', 'AOS_Invoices', '33b43d8b-ff4e-8845-6c74-5ac28a3df51c', 'b41f30e3-9130-7948-5394-5a7dcb040144', '99745f1a-29a3-8f93-0f21-5ac28a6b3a12'),
('d176c0d1-06ab-26aa-4951-5aa822336d89', 'laptop-LG', '2018-03-13 19:13:01', '2018-03-13 19:15:41', '1', '1', 'das', 0, '1', '-99', 'ptg-laptop-LG', 'sa', 1, '2.0000', NULL, '0.000000', NULL, '0.000000', NULL, '0.000000', '10.000000', '10.000000', 'Percentage', '0.000000', '0.000000', '0.000000', '0.000000', '17323.900000', '17323.900000', '5.0', 'AOS_Invoices', 'ec0d1106-d54f-5aa5-082d-5aa8229ffcc2', '68b9b1a0-0c4b-72e3-df46-5a7e88b54e85', 'a991f714-5b81-9c2d-49a3-5aa82255d9f5'),
('e2f88379-0190-91b9-c2de-5aa824339d53', 'newProd', '2018-03-13 19:19:08', '2018-03-13 19:20:43', '1', '1', 'sa', 0, '1', '-99', 'newProd', 'ssdas', 1, '10.0000', NULL, '0.000000', NULL, '0.000000', NULL, '0.000000', '10.000000', '10.000000', 'Percentage', '0.000000', '0.000000', '0.000000', '0.000000', '339.020000', '339.020000', '5.0', 'AOS_Invoices', '377ad549-b0db-4125-d80a-5aa824afe928', 'd2977620-4e42-0c55-c324-5aa823d3b55e', 'c01a9081-1873-50f7-8c7d-5aa824df31ac'),
('ed628b59-234d-a319-d4a7-5aabfac7cd84', 'laptop-LG', '2018-03-16 17:12:07', '2018-03-16 17:12:07', '1', '1', '', 0, '1', '-99', 'ptg-laptop-LG', '', 2, '1.0000', NULL, '0.000000', NULL, '0.000000', NULL, '0.000000', '0.000000', '0.000000', 'Percentage', '0.000000', '0.000000', '0.000000', '0.000000', '7879.500000', '7879.500000', '5.0', 'AOS_Invoices', '31fcbec2-4e08-c3e3-a8a8-5aabfa6047a2', '68b9b1a0-0c4b-72e3-df46-5a7e88b54e85', '566ecaa0-cf0c-4949-fc63-5aabfaa0a708');

-- --------------------------------------------------------

--
-- Table structure for table `aos_products_quotes_audit`
--

CREATE TABLE `aos_products_quotes_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text,
  `after_value_text` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `aos_products_quotes_audit`
--

INSERT INTO `aos_products_quotes_audit` (`id`, `parent_id`, `date_created`, `created_by`, `field_name`, `data_type`, `before_value_string`, `after_value_string`, `before_value_text`, `after_value_text`) VALUES
('1bfa43a7-4f3e-bb6c-03db-5a99947c3300', '57187231-678b-d7c9-c55c-5a998bb47a4b', '2018-03-02 18:13:13', '1', 'assigned_user_id', 'relate', '1', '', NULL, NULL),
('2e940f70-9c69-cb0d-c9c7-5a99941002bf', '57187231-678b-d7c9-c55c-5a998bb47a4b', '2018-03-02 18:13:13', '1', 'assigned_user_id', 'relate', '1', '', NULL, NULL),
('5d2fa190-00b9-bf25-8995-5a9994b17fd5', '57187231-678b-d7c9-c55c-5a998bb47a4b', '2018-03-02 18:13:13', '1', 'assigned_user_id', 'relate', '1', '', NULL, NULL),
('73e77fc3-bbc4-433e-bb53-5a99941a9fcf', '57187231-678b-d7c9-c55c-5a998bb47a4b', '2018-03-02 18:13:13', '1', 'assigned_user_id', 'relate', '1', '', NULL, NULL),
('ce2a1cc7-3290-6fad-3836-5a99943fccb5', '57187231-678b-d7c9-c55c-5a998bb47a4b', '2018-03-02 18:13:13', '1', 'assigned_user_id', 'relate', '1', '', NULL, NULL),
('cffeb1fc-0f11-aac1-65c3-5a9994273156', '57187231-678b-d7c9-c55c-5a998bb47a4b', '2018-03-02 18:13:13', '1', 'assigned_user_id', 'relate', '1', '', NULL, NULL),
('d20e2a95-0f17-6873-5440-5a9994b7c292', '57187231-678b-d7c9-c55c-5a998bb47a4b', '2018-03-02 18:13:13', '1', 'assigned_user_id', 'relate', '1', '', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `aos_products_quotes_cstm`
--

CREATE TABLE `aos_products_quotes_cstm` (
  `id_c` char(36) NOT NULL,
  `product_tier_5_price_c` decimal(26,6) DEFAULT '0.000000',
  `tier_c` varchar(255) DEFAULT NULL,
  `tax_percentage_c` float(18,2) DEFAULT '0.00',
  `tax_amount_c` decimal(26,6) DEFAULT '0.000000',
  `type_c` varchar(255) DEFAULT NULL,
  `product_tax_amount_c` decimal(26,6) DEFAULT NULL,
  `product_tax_percentage_c` float(18,2) DEFAULT '0.00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `aos_products_quotes_cstm`
--

INSERT INTO `aos_products_quotes_cstm` (`id_c`, `product_tier_5_price_c`, `tier_c`, `tax_percentage_c`, `tax_amount_c`, `type_c`, `product_tax_amount_c`, `product_tax_percentage_c`) VALUES
('114e699d-8ddf-7c23-edaf-5aabfaedc779', '1150.590000', 'Tier 5', 0.00, '0.000000', 'Good', '0.000000', 0.00),
('1c55be36-8759-dfdd-7631-5aa822eaf2b5', '10923.000000', 'Tier 5', 0.00, '0.000000', 'Service', NULL, 0.00),
('1c56c2e5-cf6e-8194-4ee5-5aba60f1e91a', '7354.200000', 'Tier 4', 0.00, '0.000000', 'Good', '1466.840000', 20.00),
('1e0c5460-7d57-6c38-ed54-5accee46d2c5', '780.000000', 'Tier 5', 0.00, '0.000000', 'Good', '67.380000', 8.75),
('2138c232-0844-18b6-e452-5aa81eed09a4', '1150.590000', 'Tier 5', 0.00, '0.000000', 'Good', '229.120000', 10.00),
('24d07761-ecb4-c42a-04d2-5ac28b75c140', '7879.500000', 'Tier 5', 0.00, '0.000000', 'Good', '2357.850000', 30.00),
('26441a77-bc4c-0205-7d33-5aa970ff2899', '10923.000000', 'Tier 5', 0.00, '0.000000', 'Service', NULL, 0.00),
('299e698e-f8fd-77ee-3ed2-5aabfab9d8b5', '214.200000', 'Tier 5', 0.00, '0.000000', 'Good', '0.000000', 0.00),
('2d9161e4-16da-c71f-b851-5aa81cabb356', '1150.590000', 'Tier 5', 0.00, '0.000000', 'Good', '2871.480000', 50.00),
('377e68f9-027b-c695-7379-5aba9de820a2', '997.180000', 'Tier 3', 0.00, '0.000000', 'Good', '197.440000', 20.00),
('41836349-ab45-9437-a3f8-5aabfa88bbca', '7879.500000', 'Tier 5', 0.00, '0.000000', 'Good', '0.000000', 0.00),
('476dacfa-79d6-abc2-7e66-5aa81cb8678d', '214.200000', 'Tier 5', 0.00, '0.000000', 'Good', '40.840000', 20.00),
('48c1ad80-907b-43d9-1287-5aa81c5b5762', '7879.500000', 'Tier 5', 0.00, '0.000000', 'Good', '1573.900000', 20.00),
('4f3d9006-e7d0-37f5-68c1-5ac28a961dc3', '7879.500000', 'Tier 5', 0.00, '0.000000', 'Good', '786.950000', 10.00),
('50780f44-f4fc-af24-36c1-5aa9708e66c8', '7879.500000', 'Tier 5', 0.00, '0.000000', 'Good', '1573.900000', 20.00),
('522ccbd3-c2fc-fc41-bc46-5aa81ee4b516', '10923.000000', 'Tier 5', 0.00, '0.000000', 'Service', NULL, 0.00),
('57c86fc6-1956-5575-07af-5aabfaadf09e', '7879.500000', 'Tier 5', 0.00, '0.000000', 'Good', '0.000000', 0.00),
('5f590001-a664-6b9f-143f-5ac6757bc302', '7879.500000', 'Tier 5', 0.00, '0.000000', 'Good', '0.000000', 0.00),
('635c3c59-7121-2701-85a5-5aa81c98b32c', '10923.000000', 'Tier 5', 0.00, '0.000000', 'Service', NULL, 0.00),
('718ee4f2-6d8e-d82b-d447-5aabfa2f5d80', '1150.590000', 'Tier 5', 0.00, '0.000000', 'Good', '0.000000', 0.00),
('7b3c961d-9f39-d4af-c2ca-5ac8d2136a74', '7879.500000', 'Tier 5', 0.00, '0.000000', 'Good', '786.950000', 10.00),
('7b78bddd-c29f-42a8-2c10-5aca5ee557cf', '10.000000', 'Tier 5', 0.00, '0.000000', 'Good', '0.900000', 9.00),
('802b36ca-5a3a-bcec-a0f7-5ac1241ec171', '7879.500000', 'Tier 5', 0.00, '0.000000', 'Good', '1573.900000', 20.00),
('874077f6-3743-cf0f-f5ff-5aabfa4ce28e', '10923.000000', 'Tier 5', 0.00, '0.000000', 'Service', NULL, 0.00),
('94496d33-a526-25cb-3fe4-5aa9789fa371', '7879.500000', 'Tier 5', 0.00, '0.000000', 'Good', '0.000000', 0.00),
('a9ceb07c-ffab-6d52-609e-5ac0a449c70b', '7879.500000', 'Tier 5', 0.00, '0.000000', 'Good', '1573.900000', 20.00),
('c2383500-9395-a660-aa7c-5aabfa70475d', '1150.590000', 'Tier 5', 0.00, '0.000000', 'Good', '114.060000', 10.00),
('c8e00c73-09f9-26be-cf64-5aa8223be045', '1150.590000', 'Tier 5', 0.00, '0.000000', 'Good', '1720.880000', 50.00),
('cf9f5e1a-3672-4adf-6891-5ac28a537bbe', '1150.590000', 'Tier 5', 0.00, '0.000000', 'Good', '228.120000', 20.00),
('d176c0d1-06ab-26aa-4951-5aa822336d89', '7879.500000', 'Tier 5', 0.00, '0.000000', 'Good', '1574.900000', 10.00),
('e2f88379-0190-91b9-c2de-5aa824339d53', '31.820000', 'Tier 5', 0.00, '0.000000', 'Good', '30.820000', 10.00),
('ed628b59-234d-a319-d4a7-5aabfac7cd84', '7879.500000', 'Tier 5', 0.00, '0.000000', 'Good', '0.000000', 0.00);

-- --------------------------------------------------------

--
-- Table structure for table `aos_product_categories`
--

CREATE TABLE `aos_product_categories` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `is_parent` tinyint(1) DEFAULT '0',
  `parent_category_id` char(36) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `aos_product_categories`
--

INSERT INTO `aos_product_categories` (`id`, `name`, `date_entered`, `date_modified`, `modified_user_id`, `created_by`, `description`, `deleted`, `assigned_user_id`, `is_parent`, `parent_category_id`) VALUES
('41fa8396-98a5-6e4e-8211-5a7db0f485a3', 'Laptop', '2018-02-09 14:31:59', '2018-02-09 14:31:59', '1', '1', 'Laptop', 0, '1', 0, ''),
('5e5bc32c-d98d-45b9-8e75-5a7c8d758d96', 'Cameras', '2018-02-08 17:49:55', '2018-02-08 17:49:55', '1', '1', 'Cameras', 0, '1', 0, ''),
('d89a0a55-baca-7252-187a-5a8da552517d', 'Service Category', '2018-02-21 17:00:09', '2018-02-21 17:00:09', '1', '1', 'Service Category', 0, '1', 0, '');

-- --------------------------------------------------------

--
-- Table structure for table `aos_product_categories_audit`
--

CREATE TABLE `aos_product_categories_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text,
  `after_value_text` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `aos_quotes`
--

CREATE TABLE `aos_quotes` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `approval_issue` text,
  `billing_account_id` char(36) DEFAULT NULL,
  `billing_contact_id` char(36) DEFAULT NULL,
  `billing_address_street` varchar(150) DEFAULT NULL,
  `billing_address_city` varchar(100) DEFAULT NULL,
  `billing_address_state` varchar(100) DEFAULT NULL,
  `billing_address_postalcode` varchar(20) DEFAULT NULL,
  `billing_address_country` varchar(255) DEFAULT NULL,
  `shipping_address_street` varchar(150) DEFAULT NULL,
  `shipping_address_city` varchar(100) DEFAULT NULL,
  `shipping_address_state` varchar(100) DEFAULT NULL,
  `shipping_address_postalcode` varchar(20) DEFAULT NULL,
  `shipping_address_country` varchar(255) DEFAULT NULL,
  `expiration` date DEFAULT NULL,
  `number` int(11) NOT NULL,
  `opportunity_id` char(36) DEFAULT NULL,
  `template_ddown_c` text,
  `total_amt` decimal(26,6) DEFAULT NULL,
  `total_amt_usdollar` decimal(26,6) DEFAULT NULL,
  `subtotal_amount` decimal(26,6) DEFAULT NULL,
  `subtotal_amount_usdollar` decimal(26,6) DEFAULT NULL,
  `discount_amount` decimal(26,6) DEFAULT NULL,
  `discount_amount_usdollar` decimal(26,6) DEFAULT NULL,
  `tax_amount` decimal(26,6) DEFAULT NULL,
  `tax_amount_usdollar` decimal(26,6) DEFAULT NULL,
  `shipping_amount` decimal(26,6) DEFAULT NULL,
  `shipping_amount_usdollar` decimal(26,6) DEFAULT NULL,
  `shipping_tax` varchar(100) DEFAULT NULL,
  `shipping_tax_amt` decimal(26,6) DEFAULT NULL,
  `shipping_tax_amt_usdollar` decimal(26,6) DEFAULT NULL,
  `total_amount` decimal(26,6) DEFAULT NULL,
  `total_amount_usdollar` decimal(26,6) DEFAULT NULL,
  `currency_id` char(36) DEFAULT NULL,
  `stage` varchar(100) DEFAULT 'Draft',
  `term` varchar(100) DEFAULT NULL,
  `terms_c` text,
  `approval_status` varchar(100) DEFAULT NULL,
  `invoice_status` varchar(100) DEFAULT 'Not Invoiced',
  `subtotal_tax_amount` decimal(26,6) DEFAULT NULL,
  `subtotal_tax_amount_usdollar` decimal(26,6) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `aos_quotes`
--

INSERT INTO `aos_quotes` (`id`, `name`, `date_entered`, `date_modified`, `modified_user_id`, `created_by`, `description`, `deleted`, `assigned_user_id`, `approval_issue`, `billing_account_id`, `billing_contact_id`, `billing_address_street`, `billing_address_city`, `billing_address_state`, `billing_address_postalcode`, `billing_address_country`, `shipping_address_street`, `shipping_address_city`, `shipping_address_state`, `shipping_address_postalcode`, `shipping_address_country`, `expiration`, `number`, `opportunity_id`, `template_ddown_c`, `total_amt`, `total_amt_usdollar`, `subtotal_amount`, `subtotal_amount_usdollar`, `discount_amount`, `discount_amount_usdollar`, `tax_amount`, `tax_amount_usdollar`, `shipping_amount`, `shipping_amount_usdollar`, `shipping_tax`, `shipping_tax_amt`, `shipping_tax_amt_usdollar`, `total_amount`, `total_amount_usdollar`, `currency_id`, `stage`, `term`, `terms_c`, `approval_status`, `invoice_status`, `subtotal_tax_amount`, `subtotal_tax_amount_usdollar`) VALUES
('119806b4-ad3f-e7e5-5e4a-5ac0a45b179e', 'DMM', '2018-04-01 09:21:15', '2018-04-01 09:21:15', '1', '1', NULL, 0, '1', '', 'f30070f4-e846-d94c-512c-5a7c8cf49739', '', 'asd', 'sadas', 'asdsfgd', 'fdgdf', 'dfgdf', 'asd', 'sadas', 'asdsfgd', 'fdgdf', 'dfgdf', '2018-05-01', 1, '', NULL, '7879.500000', '7879.500000', '7869.500000', '7869.500000', '10.000000', '10.000000', '1573.900000', '1573.900000', '60.000000', '60.000000', NULL, NULL, '0.000000', '9503.400000', '9503.400000', '-99', 'Draft', 'Net 15', NULL, 'Approved', 'Not Invoiced', NULL, '0.000000'),
('a33b95d5-1d9f-ced7-71f8-5aca5e8f83bb', 'Mike Testing Quotation', '2018-04-08 18:27:05', '2018-04-08 18:27:05', '1', '1', NULL, 0, '1', 'Description Here', 'c2e21265-268e-ba71-e850-5aa954e2052d', '', 'demo', 'demo', 'demo', 'demo', 'demo', 'demo', 'demo', 'demo', 'demo', 'demo', '2018-05-08', 3, '', NULL, '10.000000', '10.000000', '10.000000', '10.000000', '0.000000', '0.000000', '0.900000', '0.900000', '0.000000', '0.000000', NULL, NULL, '0.000000', '10.900000', '10.900000', '-99', 'Draft', 'Net 15', NULL, 'Approved', 'Not Invoiced', NULL, '0.000000'),
('e4c3535a-d717-82a6-859b-5ac124a96a27', 'dsad', '2018-04-01 18:27:00', '2018-04-08 12:58:40', '1', '1', NULL, 0, '1', 'sada', 'c2e21265-268e-ba71-e850-5aa954e2052d', '657b58ac-ece1-3ecb-81b0-5ac9f7e5a9a5', 'demo', 'demo', 'demo', 'demo', 'demo', 'demo', 'demo', 'demo', 'demo', 'demo', '2018-05-01', 2, '', NULL, '7879.500000', '7879.500000', '7869.500000', '7869.500000', '10.000000', '10.000000', '1573.900000', '1573.900000', '20.000000', '20.000000', NULL, NULL, '0.000000', '9463.400000', '9463.400000', '-99', 'Draft', 'Net 15', NULL, 'Approved', 'Not Invoiced', NULL, '0.000000');

-- --------------------------------------------------------

--
-- Table structure for table `aos_quotes_aos_invoices_c`
--

CREATE TABLE `aos_quotes_aos_invoices_c` (
  `id` varchar(36) NOT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `aos_quotes77d9_quotes_ida` varchar(36) DEFAULT NULL,
  `aos_quotes6b83nvoices_idb` varchar(36) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `aos_quotes_audit`
--

CREATE TABLE `aos_quotes_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text,
  `after_value_text` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `aos_quotes_audit`
--

INSERT INTO `aos_quotes_audit` (`id`, `parent_id`, `date_created`, `created_by`, `field_name`, `data_type`, `before_value_string`, `after_value_string`, `before_value_text`, `after_value_text`) VALUES
('53812068-02f9-4b00-db58-5aca109df706', 'e4c3535a-d717-82a6-859b-5ac124a96a27', '2018-04-08 12:51:43', '1', 'billing_contact', 'relate', '', 'New Contact Last', NULL, NULL),
('6515a75b-b021-c95c-d04e-5aca10ffff4e', 'e4c3535a-d717-82a6-859b-5ac124a96a27', '2018-04-08 12:51:43', '1', 'quote_id_c', 'varchar', '3001', '3008', NULL, NULL),
('e25b2408-9331-d895-cda4-5aca12d375aa', 'e4c3535a-d717-82a6-859b-5ac124a96a27', '2018-04-08 12:58:40', '1', 'quote_id_c', 'varchar', '3008', '3015', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `aos_quotes_cstm`
--

CREATE TABLE `aos_quotes_cstm` (
  `id_c` char(36) NOT NULL,
  `tier_c` varchar(255) DEFAULT NULL,
  `tax_percentage_c` float(18,2) DEFAULT '0.00',
  `product_tier_5_price_c` decimal(26,6) DEFAULT '0.000000',
  `type_c` varchar(255) DEFAULT NULL,
  `quote_id_c` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `aos_quotes_cstm`
--

INSERT INTO `aos_quotes_cstm` (`id_c`, `tier_c`, `tax_percentage_c`, `product_tier_5_price_c`, `type_c`, `quote_id_c`) VALUES
('119806b4-ad3f-e7e5-5e4a-5ac0a45b179e', '', 0.00, '0.000000', '', NULL),
('a33b95d5-1d9f-ced7-71f8-5aca5e8f83bb', '', 0.00, '0.000000', '', '3022'),
('e4c3535a-d717-82a6-859b-5ac124a96a27', '', 0.00, '0.000000', '', '3015');

-- --------------------------------------------------------

--
-- Table structure for table `aos_quotes_os_contracts_c`
--

CREATE TABLE `aos_quotes_os_contracts_c` (
  `id` varchar(36) NOT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `aos_quotese81e_quotes_ida` varchar(36) DEFAULT NULL,
  `aos_quotes4dc0ntracts_idb` varchar(36) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `aos_quotes_project_c`
--

CREATE TABLE `aos_quotes_project_c` (
  `id` varchar(36) NOT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `aos_quotes1112_quotes_ida` varchar(36) DEFAULT NULL,
  `aos_quotes7207project_idb` varchar(36) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `aow_actions`
--

CREATE TABLE `aow_actions` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `aow_workflow_id` char(36) DEFAULT NULL,
  `action_order` int(255) DEFAULT NULL,
  `action` varchar(100) DEFAULT NULL,
  `parameters` longtext
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `aow_conditions`
--

CREATE TABLE `aow_conditions` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `aow_workflow_id` char(36) DEFAULT NULL,
  `condition_order` int(255) DEFAULT NULL,
  `module_path` longtext,
  `field` varchar(100) DEFAULT NULL,
  `operator` varchar(100) DEFAULT NULL,
  `value_type` varchar(255) DEFAULT NULL,
  `value` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `aow_processed`
--

CREATE TABLE `aow_processed` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `aow_workflow_id` char(36) DEFAULT NULL,
  `parent_id` char(36) DEFAULT NULL,
  `parent_type` varchar(100) DEFAULT NULL,
  `status` varchar(100) DEFAULT 'Pending'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `aow_processed_aow_actions`
--

CREATE TABLE `aow_processed_aow_actions` (
  `id` varchar(36) NOT NULL,
  `aow_processed_id` varchar(36) DEFAULT NULL,
  `aow_action_id` varchar(36) DEFAULT NULL,
  `status` varchar(36) DEFAULT 'Pending',
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `aow_workflow`
--

CREATE TABLE `aow_workflow` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `flow_module` varchar(100) DEFAULT NULL,
  `flow_run_on` varchar(100) DEFAULT '0',
  `status` varchar(100) DEFAULT 'Active',
  `run_when` varchar(100) DEFAULT 'Always',
  `multiple_runs` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `aow_workflow_audit`
--

CREATE TABLE `aow_workflow_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text,
  `after_value_text` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `atomi_invoice_commission_report`
--

CREATE TABLE `atomi_invoice_commission_report` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `atomi_invoice_commission_report_audit`
--

CREATE TABLE `atomi_invoice_commission_report_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text,
  `after_value_text` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `atomi_invoice_commission_report_cstm`
--

CREATE TABLE `atomi_invoice_commission_report_cstm` (
  `id_c` char(36) NOT NULL,
  `employee_name_c` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `atomi_invoice_payment_details`
--

CREATE TABLE `atomi_invoice_payment_details` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `atomi_invoice_payment_details`
--

INSERT INTO `atomi_invoice_payment_details` (`id`, `name`, `date_entered`, `date_modified`, `modified_user_id`, `created_by`, `description`, `deleted`, `assigned_user_id`) VALUES
('16c62764-2888-e32e-490a-5ac678cffa60', '', '2018-04-05 19:27:30', '2018-04-05 19:27:30', '1', '1', NULL, 0, NULL),
('1ac0d254-6080-3bb9-2c5a-5ac678576c92', '', '2018-04-05 19:27:30', '2018-04-05 19:27:30', '1', '1', NULL, 0, NULL),
('201f3e58-1c08-4cc2-74bd-5aa03aef13fd', '', '2018-03-07 19:17:47', '2018-03-07 19:17:47', '1', '1', NULL, 0, NULL),
('27072068-f791-b1ef-c649-5accee3092ba', '', '2018-04-10 17:04:43', '2018-04-10 17:04:43', '1', '1', NULL, 0, NULL),
('2fe08358-7edd-7c0c-0b9c-5aa800574edb', '', '2018-03-13 16:47:00', '2018-03-13 16:47:00', '1', '1', NULL, 0, NULL),
('35949c8c-85d4-51ac-d6c1-5aa38e62dfa5', '', '2018-03-10 07:50:04', '2018-03-10 07:50:04', '1', '1', NULL, 0, NULL),
('35c4cbaf-85dd-679c-7f06-5aa778d78a27', '', '2018-03-13 07:08:44', '2018-03-13 07:08:44', '1', '1', NULL, 0, NULL),
('37d6d1b0-7262-bd9a-d300-5aa7f65d80ed', '', '2018-03-13 16:05:54', '2018-03-13 16:05:54', '1', '1', NULL, 0, NULL),
('3837917e-606e-09d8-f1b3-5aa03aae4ed8', '', '2018-03-07 19:17:47', '2018-03-07 19:17:47', '1', '1', NULL, 0, NULL),
('39926df4-7ae3-0ac7-5795-5aa38a11586e', '', '2018-03-10 07:32:47', '2018-03-10 07:32:47', '1', '1', NULL, 0, NULL),
('428c062c-fa14-e1cd-eb17-5aa9707eabf4', '', '2018-03-14 18:56:20', '2018-03-14 18:56:20', '1', '1', NULL, 0, NULL),
('45d3460b-61da-3cc8-bfa8-5aba609d1ba6', '', '2018-03-27 15:16:38', '2018-03-27 15:16:38', '1', '1', NULL, 0, NULL),
('49444a3c-c482-656c-1930-5aa51b744177', '', '2018-03-11 12:05:32', '2018-03-11 12:05:32', '1', '1', NULL, 0, NULL),
('626bd7eb-d338-e6c4-70d0-5acceeee1791', '', '2018-04-10 17:04:43', '2018-04-10 17:04:43', '1', '1', NULL, 0, NULL),
('6c7a6567-b802-707a-ded7-5aa97a50a696', '', '2018-03-14 19:40:40', '2018-03-14 19:40:40', '1', '1', NULL, 0, NULL),
('7a639f10-f90f-b46b-ab4f-5aa38e907c7d', '', '2018-03-10 07:50:04', '2018-03-10 07:50:04', '1', '1', NULL, 0, NULL),
('86b0a479-f8a4-edb1-0f3c-5aa51b0e878f', '', '2018-03-11 12:05:32', '2018-03-11 12:05:32', '1', '1', NULL, 0, NULL),
('878602bf-68ec-09ec-5369-5aa51b235aad', '', '2018-03-11 12:05:32', '2018-03-11 12:05:32', '1', '1', NULL, 0, NULL),
('8b7cb068-bb02-30c5-eed1-5aabfa17112f', '', '2018-03-16 17:12:07', '2018-03-16 17:12:07', '1', '1', NULL, 0, NULL),
('917c243c-8763-87de-f04b-5aa38a0d13c8', '', '2018-03-10 07:32:47', '2018-03-10 07:32:47', '1', '1', NULL, 0, NULL),
('91a8d590-ddb0-5a89-d8ba-5aa970b038cf', '', '2018-03-14 18:56:20', '2018-03-14 18:56:20', '1', '1', NULL, 0, NULL),
('93e435b5-3bdb-70bc-9fc8-5aa03aa10c5a', '', '2018-03-07 19:17:47', '2018-03-07 19:17:47', '1', '1', NULL, 0, NULL),
('9e4a914a-effa-aff9-4c82-5aa51bdfab4f', '', '2018-03-11 12:05:32', '2018-03-11 12:05:32', '1', '1', NULL, 0, NULL),
('a94b9e71-362e-f629-893f-5aa001e9dddf', 'test', '2018-03-07 15:13:44', '2018-03-07 18:33:07', '1', '1', NULL, 0, '1'),
('accf5c10-c86e-ec90-b916-5ac28a344cf2', '', '2018-04-02 19:56:05', '2018-04-02 19:56:05', '1', '1', NULL, 0, NULL),
('b1a10a3b-9a07-b645-dcd2-5aa77ba52e74', '', '2018-03-13 07:20:50', '2018-03-13 07:20:50', '1', '1', NULL, 0, NULL),
('b688dabe-3395-2aef-80a5-5aba9dc58dab', '', '2018-03-27 19:37:57', '2018-03-27 19:37:57', '4668226f-4e70-347c-9740-5a9af48bdd5f', '4668226f-4e70-347c-9740-5a9af48bdd5f', NULL, 0, NULL),
('c0fd710d-3027-15c2-de8a-5aa38a9766d5', '', '2018-03-10 07:32:47', '2018-03-10 07:32:47', '1', '1', NULL, 0, NULL),
('cc092f8b-c72e-66ea-d0bf-5aca0bb54f76', '', '2018-04-08 12:30:49', '2018-04-08 12:30:49', '1', '1', NULL, 0, NULL),
('cf9c32ac-e05e-581e-1666-5aa778390d1b', '', '2018-03-13 07:08:44', '2018-03-13 07:08:44', '1', '1', NULL, 0, NULL),
('d45c3ea2-77e3-cb6e-8f00-5aa38a09e3f9', '', '2018-03-10 07:32:47', '2018-03-10 07:32:47', '1', '1', NULL, 0, NULL),
('d93ef5d8-805e-e0d6-c12c-5ac28a41631b', '', '2018-04-02 19:54:11', '2018-04-02 19:54:11', '1', '1', NULL, 0, NULL),
('dec2ebd3-2e19-c3dc-a451-5aca0bb57a3b', '', '2018-04-08 12:30:49', '2018-04-08 12:30:49', '1', '1', NULL, 0, NULL),
('e14cfc09-0b6f-24ff-b1ac-5aa77891754c', '', '2018-03-13 07:08:44', '2018-03-13 07:08:44', '1', '1', NULL, 0, NULL),
('ef6ad65a-6ddb-15d8-d496-5aa81d52d961', '', '2018-03-13 18:48:57', '2018-03-13 18:48:57', '1', '1', NULL, 0, NULL),
('f0cdf9e4-308d-6fb4-a459-5aca0ba569e7', '', '2018-04-08 12:30:49', '2018-04-08 12:30:49', '1', '1', NULL, 0, NULL),
('f13528ba-2b96-ba87-6ce0-5aa38e7c9998', '', '2018-03-10 07:50:04', '2018-03-10 07:50:04', '1', '1', NULL, 0, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `atomi_invoice_payment_details_audit`
--

CREATE TABLE `atomi_invoice_payment_details_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text,
  `after_value_text` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `atomi_invoice_payment_details_audit`
--

INSERT INTO `atomi_invoice_payment_details_audit` (`id`, `parent_id`, `date_created`, `created_by`, `field_name`, `data_type`, `before_value_string`, `after_value_string`, `before_value_text`, `after_value_text`) VALUES
('ee1f721d-fc25-9c47-81dc-5aa002a02336', 'a94b9e71-362e-f629-893f-5aa001e9dddf', '2018-03-07 15:16:08', '1', 'invoice_c', 'relate', '', 'Demo', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `atomi_invoice_payment_details_cstm`
--

CREATE TABLE `atomi_invoice_payment_details_cstm` (
  `id_c` char(36) NOT NULL,
  `paymenttype_c` varchar(100) DEFAULT NULL,
  `paymentamount_c` decimal(26,6) DEFAULT '0.000000',
  `currency_id` char(36) DEFAULT NULL,
  `paymentdate_c` date DEFAULT NULL,
  `transactionnumber_c` varchar(255) DEFAULT NULL,
  `aos_invoices_id_c` char(36) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `atomi_invoice_payment_details_cstm`
--

INSERT INTO `atomi_invoice_payment_details_cstm` (`id_c`, `paymenttype_c`, `paymentamount_c`, `currency_id`, `paymentdate_c`, `transactionnumber_c`, `aos_invoices_id_c`) VALUES
('16c62764-2888-e32e-490a-5ac678cffa60', 'payment_in_credit_card', '20.000000', NULL, '2018-04-19', '456', 'bfd9b379-62eb-998f-e1b3-5ac28b70f07d'),
('1ac0d254-6080-3bb9-2c5a-5ac678576c92', 'payment_in_cash_or_check', '60.000000', NULL, '2018-04-18', '123', 'bfd9b379-62eb-998f-e1b3-5ac28b70f07d'),
('201f3e58-1c08-4cc2-74bd-5aa03aef13fd', 'payment_in_cash_or_check', '10.000000', NULL, '2017-05-12', '111111', 'aebac00a-217c-02cb-8855-5aa0354eaa78'),
('27072068-f791-b1ef-c649-5accee3092ba', 'payment_in_wire_transferred', '60.000000', NULL, '2018-04-06', '45646', '22755491-d318-2629-7b7f-5accee168475'),
('2fe08358-7edd-7c0c-0b9c-5aa800574edb', 'payment_in_cash_or_check', '10.000000', NULL, '2018-01-01', '123', 'aaf5068a-8a1a-e990-969a-5aa8003512a4'),
('35949c8c-85d4-51ac-d6c1-5aa38e62dfa5', 'payment_in_credit_card', '600.000000', NULL, '2018-03-03', '3534', '2a7dab67-6c92-0d11-a2e2-5aa38edb1bbc'),
('35c4cbaf-85dd-679c-7f06-5aa778d78a27', 'payment_in_wire_transferred', '70.000000', NULL, '2018-03-13', '789', '9222ff14-ade5-2797-099b-5aa778d10069'),
('37d6d1b0-7262-bd9a-d300-5aa7f65d80ed', 'payment_in_cash_or_check', '0.000000', NULL, '1970-01-01', '', 'caba7f6e-bf6c-ad72-23c3-5aa7f68a978d'),
('3837917e-606e-09d8-f1b3-5aa03aae4ed8', 'payment_in_wire_transferred', '30.000000', NULL, '2017-05-14', '333333', 'aebac00a-217c-02cb-8855-5aa0354eaa78'),
('39926df4-7ae3-0ac7-5795-5aa38a11586e', 'payment_in_credit_card', '100.000000', NULL, '2018-01-02', '456', 'f4103cac-9c8c-66ea-94e7-5aa03c012a33'),
('428c062c-fa14-e1cd-eb17-5aa9707eabf4', 'payment_in_credit_card', '50.000000', NULL, '2018-01-02', '324324', '2613f4cb-db18-a784-2c17-5aa9709c6d59'),
('45d3460b-61da-3cc8-bfa8-5aba609d1ba6', 'payment_in_cash_or_check', '10.000000', NULL, '2018-01-02', '123', 'ae2f5095-c4c0-e9b8-6404-5aba60b3d29d'),
('49444a3c-c482-656c-1930-5aa51b744177', 'payment_in_cash_or_check', '10.000000', NULL, '2018-01-01', '123', '3d2b4d73-db81-2189-fcac-5aa3c9a104da'),
('626bd7eb-d338-e6c4-70d0-5acceeee1791', 'payment_in_cash_or_check', '20.000000', NULL, '2018-04-04', '123', '22755491-d318-2629-7b7f-5accee168475'),
('6c7a6567-b802-707a-ded7-5aa97a50a696', 'payment_in_cash_or_check', '20.000000', NULL, '2018-01-01', '123', '1c92664d-e617-d964-32b8-5aa978e031b7'),
('7a639f10-f90f-b46b-ab4f-5aa38e907c7d', 'payment_in_cash_or_check', '500.000000', NULL, '2018-03-02', '432', '2a7dab67-6c92-0d11-a2e2-5aa38edb1bbc'),
('86b0a479-f8a4-edb1-0f3c-5aa51b0e878f', 'payment_in_wire_transferred', '30.000000', NULL, '2018-01-01', '123', '3d2b4d73-db81-2189-fcac-5aa3c9a104da'),
('878602bf-68ec-09ec-5369-5aa51b235aad', 'payment_in_credit_card', '20.000000', NULL, '2018-01-02', '3453', '3d2b4d73-db81-2189-fcac-5aa3c9a104da'),
('8b7cb068-bb02-30c5-eed1-5aabfa17112f', 'payment_in_cash_or_check', '10.000000', NULL, '2018-02-12', '3423', '31fcbec2-4e08-c3e3-a8a8-5aabfa6047a2'),
('917c243c-8763-87de-f04b-5aa38a0d13c8', 'payment_in_cash_or_check', '20.000000', NULL, '2018-01-04', '789999', 'f4103cac-9c8c-66ea-94e7-5aa03c012a33'),
('91a8d590-ddb0-5a89-d8ba-5aa970b038cf', 'payment_in_cash_or_check', '10.000000', NULL, '2018-01-01', '324234', '2613f4cb-db18-a784-2c17-5aa9709c6d59'),
('93e435b5-3bdb-70bc-9fc8-5aa03aa10c5a', 'payment_in_credit_card', '20.000000', NULL, '2017-05-13', '222222', 'aebac00a-217c-02cb-8855-5aa0354eaa78'),
('9e4a914a-effa-aff9-4c82-5aa51bdfab4f', 'payment_in_credit_card', '90.000000', NULL, '2018-03-02', '42343', '3d2b4d73-db81-2189-fcac-5aa3c9a104da'),
('a94b9e71-362e-f629-893f-5aa001e9dddf', 'payment_in_credit_card', '100.000000', '', '2018-03-14', '', '46abeb6e-67cc-a761-0e16-5a9ae35c5046'),
('accf5c10-c86e-ec90-b916-5ac28a344cf2', 'payment_in_cash_or_check', '30.000000', NULL, '2018-04-26', '3243', '33b43d8b-ff4e-8845-6c74-5ac28a3df51c'),
('b1a10a3b-9a07-b645-dcd2-5aa77ba52e74', 'payment_in_cash_or_check', '10.000000', NULL, '2018-01-01', '123', 'c9996ecb-93a1-3d07-6fd2-5aa77b9682b7'),
('b688dabe-3395-2aef-80a5-5aba9dc58dab', 'payment_in_cash_or_check', '10.000000', NULL, '2017-10-10', '1321', '4c634805-e71a-9041-9e4e-5aba9d6b5c43'),
('c0fd710d-3027-15c2-de8a-5aa38a9766d5', 'payment_in_cash_or_check', '65.000000', NULL, '2018-01-01', '123', 'f4103cac-9c8c-66ea-94e7-5aa03c012a33'),
('cc092f8b-c72e-66ea-d0bf-5aca0bb54f76', 'payment_in_cash_or_check', '50.000000', NULL, '2018-04-20', '3453', '2e1f9c01-4363-480b-5bec-5ac8d206fbb2'),
('cf9c32ac-e05e-581e-1666-5aa778390d1b', 'payment_in_credit_card', '60.000000', NULL, '2018-03-12', '456', '9222ff14-ade5-2797-099b-5aa778d10069'),
('d45c3ea2-77e3-cb6e-8f00-5aa38a09e3f9', 'payment_in_wire_transferred', '100.000000', NULL, '2018-01-03', '789', 'f4103cac-9c8c-66ea-94e7-5aa03c012a33'),
('d93ef5d8-805e-e0d6-c12c-5ac28a41631b', 'payment_in_cash_or_check', '50.000000', NULL, '2018-04-04', '123', '62ceca7b-c274-d91b-0b62-5ac28a52ce87'),
('dec2ebd3-2e19-c3dc-a451-5aca0bb57a3b', 'payment_in_credit_card', '60.000000', NULL, '2018-04-06', '324234', '2e1f9c01-4363-480b-5bec-5ac8d206fbb2'),
('e14cfc09-0b6f-24ff-b1ac-5aa77891754c', 'payment_in_cash_or_check', '50.000000', NULL, '2018-03-11', '123', '9222ff14-ade5-2797-099b-5aa778d10069'),
('ef6ad65a-6ddb-15d8-d496-5aa81d52d961', 'payment_in_cash_or_check', '10.000000', NULL, '2018-01-01', '123', '49137101-7b02-ae0e-8af5-5aa8025d27a1'),
('f0cdf9e4-308d-6fb4-a459-5aca0ba569e7', 'payment_in_wire_transferred', '20.000000', NULL, '2018-04-21', '3423', '2e1f9c01-4363-480b-5bec-5ac8d206fbb2'),
('f13528ba-2b96-ba87-6ce0-5aa38e7c9998', 'payment_in_wire_transferred', '90.000000', NULL, '2018-03-04', '3453', '2a7dab67-6c92-0d11-a2e2-5aa38edb1bbc');

-- --------------------------------------------------------

--
-- Table structure for table `atomi_vendor`
--

CREATE TABLE `atomi_vendor` (
  `id` char(36) NOT NULL,
  `name` varchar(150) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `atomi_vendor_type` varchar(50) DEFAULT NULL,
  `industry` varchar(50) DEFAULT NULL,
  `annual_revenue` varchar(100) DEFAULT NULL,
  `phone_fax` varchar(100) DEFAULT NULL,
  `billing_address_street` varchar(150) DEFAULT NULL,
  `billing_address_city` varchar(100) DEFAULT NULL,
  `billing_address_state` varchar(100) DEFAULT NULL,
  `billing_address_postalcode` varchar(20) DEFAULT NULL,
  `billing_address_country` varchar(255) DEFAULT NULL,
  `rating` varchar(100) DEFAULT NULL,
  `phone_office` varchar(100) DEFAULT NULL,
  `phone_alternate` varchar(100) DEFAULT NULL,
  `website` varchar(255) DEFAULT NULL,
  `ownership` varchar(100) DEFAULT NULL,
  `employees` varchar(10) DEFAULT NULL,
  `ticker_symbol` varchar(10) DEFAULT NULL,
  `shipping_address_street` varchar(150) DEFAULT NULL,
  `shipping_address_city` varchar(100) DEFAULT NULL,
  `shipping_address_state` varchar(100) DEFAULT NULL,
  `shipping_address_postalcode` varchar(20) DEFAULT NULL,
  `shipping_address_country` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `atomi_vendor`
--

INSERT INTO `atomi_vendor` (`id`, `name`, `date_entered`, `date_modified`, `modified_user_id`, `created_by`, `description`, `deleted`, `assigned_user_id`, `atomi_vendor_type`, `industry`, `annual_revenue`, `phone_fax`, `billing_address_street`, `billing_address_city`, `billing_address_state`, `billing_address_postalcode`, `billing_address_country`, `rating`, `phone_office`, `phone_alternate`, `website`, `ownership`, `employees`, `ticker_symbol`, `shipping_address_street`, `shipping_address_city`, `shipping_address_state`, `shipping_address_postalcode`, `shipping_address_country`) VALUES
('89898a84-1e7d-ac82-701e-5a7d59b49b20', 'Vendor 1', '2018-02-09 08:20:45', '2018-02-10 05:47:54', '1', '1', 'vendor', 0, '1', 'Reseller', 'Energy', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'http://vendor.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `atomi_vendor_audit`
--

CREATE TABLE `atomi_vendor_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text,
  `after_value_text` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `bugs`
--

CREATE TABLE `bugs` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `bug_number` int(11) NOT NULL,
  `type` varchar(255) DEFAULT NULL,
  `status` varchar(100) DEFAULT NULL,
  `priority` varchar(100) DEFAULT NULL,
  `resolution` varchar(255) DEFAULT NULL,
  `work_log` text,
  `found_in_release` varchar(255) DEFAULT NULL,
  `fixed_in_release` varchar(255) DEFAULT NULL,
  `source` varchar(255) DEFAULT NULL,
  `product_category` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `bugs_audit`
--

CREATE TABLE `bugs_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text,
  `after_value_text` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `calls`
--

CREATE TABLE `calls` (
  `id` char(36) NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `duration_hours` int(2) DEFAULT NULL,
  `duration_minutes` int(2) DEFAULT NULL,
  `date_start` datetime DEFAULT NULL,
  `date_end` datetime DEFAULT NULL,
  `parent_type` varchar(255) DEFAULT NULL,
  `status` varchar(100) DEFAULT 'Planned',
  `direction` varchar(100) DEFAULT NULL,
  `parent_id` char(36) DEFAULT NULL,
  `reminder_time` int(11) DEFAULT '-1',
  `email_reminder_time` int(11) DEFAULT '-1',
  `email_reminder_sent` tinyint(1) DEFAULT '0',
  `outlook_id` varchar(255) DEFAULT NULL,
  `repeat_type` varchar(36) DEFAULT NULL,
  `repeat_interval` int(3) DEFAULT '1',
  `repeat_dow` varchar(7) DEFAULT NULL,
  `repeat_until` date DEFAULT NULL,
  `repeat_count` int(7) DEFAULT NULL,
  `repeat_parent_id` char(36) DEFAULT NULL,
  `recurring_source` varchar(36) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `calls`
--

INSERT INTO `calls` (`id`, `name`, `date_entered`, `date_modified`, `modified_user_id`, `created_by`, `description`, `deleted`, `assigned_user_id`, `duration_hours`, `duration_minutes`, `date_start`, `date_end`, `parent_type`, `status`, `direction`, `parent_id`, `reminder_time`, `email_reminder_time`, `email_reminder_sent`, `outlook_id`, `repeat_type`, `repeat_interval`, `repeat_dow`, `repeat_until`, `repeat_count`, `repeat_parent_id`, `recurring_source`) VALUES
('bb16bf42-221b-c690-7f33-5ac675aa18f7', 'new contract Contract Renewal Reminder', '2018-04-05 19:15:04', '2018-04-05 19:15:04', '1', '1', NULL, 0, '1', 0, 30, '2019-03-22 11:00:00', '2019-03-22 11:00:00', 'Accounts', 'Planned', 'Outbound', 'c2e21265-268e-ba71-e850-5aa954e2052d', 60, -1, 0, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `calls_contacts`
--

CREATE TABLE `calls_contacts` (
  `id` varchar(36) NOT NULL,
  `call_id` varchar(36) DEFAULT NULL,
  `contact_id` varchar(36) DEFAULT NULL,
  `required` varchar(1) DEFAULT '1',
  `accept_status` varchar(25) DEFAULT 'none',
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `calls_leads`
--

CREATE TABLE `calls_leads` (
  `id` varchar(36) NOT NULL,
  `call_id` varchar(36) DEFAULT NULL,
  `lead_id` varchar(36) DEFAULT NULL,
  `required` varchar(1) DEFAULT '1',
  `accept_status` varchar(25) DEFAULT 'none',
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `calls_reschedule`
--

CREATE TABLE `calls_reschedule` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `reason` varchar(100) DEFAULT NULL,
  `call_id` char(36) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `calls_reschedule_audit`
--

CREATE TABLE `calls_reschedule_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text,
  `after_value_text` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `calls_users`
--

CREATE TABLE `calls_users` (
  `id` varchar(36) NOT NULL,
  `call_id` varchar(36) DEFAULT NULL,
  `user_id` varchar(36) DEFAULT NULL,
  `required` varchar(1) DEFAULT '1',
  `accept_status` varchar(25) DEFAULT 'none',
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `campaigns`
--

CREATE TABLE `campaigns` (
  `id` char(36) NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `tracker_key` int(11) NOT NULL,
  `tracker_count` int(11) DEFAULT '0',
  `refer_url` varchar(255) DEFAULT 'http://',
  `tracker_text` varchar(255) DEFAULT NULL,
  `start_date` date DEFAULT NULL,
  `end_date` date DEFAULT NULL,
  `status` varchar(100) DEFAULT NULL,
  `impressions` int(11) DEFAULT '0',
  `currency_id` char(36) DEFAULT NULL,
  `budget` double DEFAULT NULL,
  `expected_cost` double DEFAULT NULL,
  `actual_cost` double DEFAULT NULL,
  `expected_revenue` double DEFAULT NULL,
  `campaign_type` varchar(100) DEFAULT NULL,
  `objective` text,
  `content` text,
  `frequency` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `campaigns_audit`
--

CREATE TABLE `campaigns_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text,
  `after_value_text` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `campaign_log`
--

CREATE TABLE `campaign_log` (
  `id` char(36) NOT NULL,
  `campaign_id` char(36) DEFAULT NULL,
  `target_tracker_key` varchar(36) DEFAULT NULL,
  `target_id` varchar(36) DEFAULT NULL,
  `target_type` varchar(100) DEFAULT NULL,
  `activity_type` varchar(100) DEFAULT NULL,
  `activity_date` datetime DEFAULT NULL,
  `related_id` varchar(36) DEFAULT NULL,
  `related_type` varchar(100) DEFAULT NULL,
  `archived` tinyint(1) DEFAULT '0',
  `hits` int(11) DEFAULT '0',
  `list_id` char(36) DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `more_information` varchar(100) DEFAULT NULL,
  `marketing_id` char(36) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `campaign_trkrs`
--

CREATE TABLE `campaign_trkrs` (
  `id` char(36) NOT NULL,
  `tracker_name` varchar(255) DEFAULT NULL,
  `tracker_url` varchar(255) DEFAULT 'http://',
  `tracker_key` int(11) NOT NULL,
  `campaign_id` char(36) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `is_optout` tinyint(1) DEFAULT '0',
  `deleted` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `cases`
--

CREATE TABLE `cases` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `case_number` int(11) NOT NULL,
  `type` varchar(255) DEFAULT NULL,
  `status` varchar(100) DEFAULT NULL,
  `priority` varchar(100) DEFAULT NULL,
  `resolution` text,
  `work_log` text,
  `account_id` char(36) DEFAULT NULL,
  `state` varchar(100) DEFAULT 'Open',
  `contact_created_by_id` char(36) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `cases_audit`
--

CREATE TABLE `cases_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text,
  `after_value_text` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `cases_bugs`
--

CREATE TABLE `cases_bugs` (
  `id` varchar(36) NOT NULL,
  `case_id` varchar(36) DEFAULT NULL,
  `bug_id` varchar(36) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `cases_cstm`
--

CREATE TABLE `cases_cstm` (
  `id_c` char(36) NOT NULL,
  `jjwg_maps_lng_c` float(11,8) DEFAULT '0.00000000',
  `jjwg_maps_lat_c` float(10,8) DEFAULT '0.00000000',
  `jjwg_maps_geocode_status_c` varchar(255) DEFAULT NULL,
  `jjwg_maps_address_c` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `config`
--

CREATE TABLE `config` (
  `category` varchar(32) DEFAULT NULL,
  `name` varchar(32) DEFAULT NULL,
  `value` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `config`
--

INSERT INTO `config` (`category`, `name`, `value`) VALUES
('notify', 'fromaddress', 'do_not_reply@example.com'),
('notify', 'fromname', 'Atomic Solutions'),
('notify', 'send_by_default', '1'),
('notify', 'on', '1'),
('notify', 'send_from_assigning_user', '0'),
('info', 'sugar_version', '6.5.25'),
('MySettings', 'tab', 'YTozOTp7czo0OiJIb21lIjtzOjQ6IkhvbWUiO3M6ODoiQWNjb3VudHMiO3M6ODoiQWNjb3VudHMiO3M6ODoiQ29udGFjdHMiO3M6ODoiQ29udGFjdHMiO3M6MTM6Ik9wcG9ydHVuaXRpZXMiO3M6MTM6Ik9wcG9ydHVuaXRpZXMiO3M6NToiTGVhZHMiO3M6NToiTGVhZHMiO3M6MTA6IkFPU19RdW90ZXMiO3M6MTA6IkFPU19RdW90ZXMiO3M6ODoiQ2FsZW5kYXIiO3M6ODoiQ2FsZW5kYXIiO3M6OToiRG9jdW1lbnRzIjtzOjk6IkRvY3VtZW50cyI7czo2OiJFbWFpbHMiO3M6NjoiRW1haWxzIjtzOjU6IlNwb3RzIjtzOjU6IlNwb3RzIjtzOjk6IkNhbXBhaWducyI7czo5OiJDYW1wYWlnbnMiO3M6NToiQ2FsbHMiO3M6NToiQ2FsbHMiO3M6ODoiTWVldGluZ3MiO3M6ODoiTWVldGluZ3MiO3M6NToiVGFza3MiO3M6NToiVGFza3MiO3M6NToiTm90ZXMiO3M6NToiTm90ZXMiO3M6MTI6IkFPU19JbnZvaWNlcyI7czoxMjoiQU9TX0ludm9pY2VzIjtzOjEzOiJBT1NfQ29udHJhY3RzIjtzOjEzOiJBT1NfQ29udHJhY3RzIjtzOjU6IkNhc2VzIjtzOjU6IkNhc2VzIjtzOjk6IlByb3NwZWN0cyI7czo5OiJQcm9zcGVjdHMiO3M6MTM6IlByb3NwZWN0TGlzdHMiO3M6MTM6IlByb3NwZWN0TGlzdHMiO3M6NzoiUHJvamVjdCI7czo3OiJQcm9qZWN0IjtzOjE5OiJBTV9Qcm9qZWN0VGVtcGxhdGVzIjtzOjE5OiJBTV9Qcm9qZWN0VGVtcGxhdGVzIjtzOjk6IkZQX2V2ZW50cyI7czo5OiJGUF9ldmVudHMiO3M6MTg6IkZQX0V2ZW50X0xvY2F0aW9ucyI7czoxODoiRlBfRXZlbnRfTG9jYXRpb25zIjtzOjEyOiJBT1NfUHJvZHVjdHMiO3M6MTI6IkFPU19Qcm9kdWN0cyI7czoyMjoiQU9TX1Byb2R1Y3RfQ2F0ZWdvcmllcyI7czoyMjoiQU9TX1Byb2R1Y3RfQ2F0ZWdvcmllcyI7czoxNzoiQU9TX1BERl9UZW1wbGF0ZXMiO3M6MTc6IkFPU19QREZfVGVtcGxhdGVzIjtzOjk6Impqd2dfTWFwcyI7czo5OiJqandnX01hcHMiO3M6MTI6Impqd2dfTWFya2VycyI7czoxMjoiamp3Z19NYXJrZXJzIjtzOjEwOiJqandnX0FyZWFzIjtzOjEwOiJqandnX0FyZWFzIjtzOjE4OiJqandnX0FkZHJlc3NfQ2FjaGUiO3M6MTg6Impqd2dfQWRkcmVzc19DYWNoZSI7czoxMToiQU9SX1JlcG9ydHMiO3M6MTE6IkFPUl9SZXBvcnRzIjtzOjEyOiJBT1dfV29ya0Zsb3ciO3M6MTI6IkFPV19Xb3JrRmxvdyI7czoxNzoiQU9LX0tub3dsZWRnZUJhc2UiO3M6MTc6IkFPS19Lbm93bGVkZ2VCYXNlIjtzOjI5OiJBT0tfS25vd2xlZGdlX0Jhc2VfQ2F0ZWdvcmllcyI7czoyOToiQU9LX0tub3dsZWRnZV9CYXNlX0NhdGVnb3JpZXMiO3M6MTQ6IkVtYWlsVGVtcGxhdGVzIjtzOjE0OiJFbWFpbFRlbXBsYXRlcyI7czoxMjoiYXRvbWlfdmVuZG9yIjtzOjEyOiJhdG9taV92ZW5kb3IiO3M6Mjk6ImF0b21pX2ludm9pY2VfcGF5bWVudF9kZXRhaWxzIjtzOjI5OiJhdG9taV9pbnZvaWNlX3BheW1lbnRfZGV0YWlscyI7czozMToiYXRvbWlfSW52b2ljZV9Db21taXNzaW9uX1JlcG9ydCI7czozMToiYXRvbWlfSW52b2ljZV9Db21taXNzaW9uX1JlcG9ydCI7fQ=='),
('portal', 'on', '0'),
('tracker', 'Tracker', '1'),
('system', 'skypeout_on', '1'),
('sugarfeed', 'enabled', '1'),
('sugarfeed', 'module_UserFeed', '1'),
('sugarfeed', 'module_Cases', '1'),
('sugarfeed', 'module_Contacts', '1'),
('sugarfeed', 'module_Leads', '1'),
('sugarfeed', 'module_Opportunities', '1'),
('Update', 'CheckUpdates', 'manual'),
('system', 'name', 'Atomic Solutions'),
('system', 'adminwizard', '1'),
('notify', 'allow_default_outbound', '2'),
('proxy', 'on', '0'),
('proxy', 'host', ''),
('proxy', 'port', ''),
('proxy', 'auth', '0'),
('proxy', 'username', ''),
('proxy', 'password', '');

-- --------------------------------------------------------

--
-- Table structure for table `contacts`
--

CREATE TABLE `contacts` (
  `id` char(36) NOT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `salutation` varchar(255) DEFAULT NULL,
  `first_name` varchar(100) DEFAULT NULL,
  `last_name` varchar(100) DEFAULT NULL,
  `title` varchar(100) DEFAULT NULL,
  `photo` varchar(255) DEFAULT NULL,
  `department` varchar(255) DEFAULT NULL,
  `do_not_call` tinyint(1) DEFAULT '0',
  `phone_home` varchar(100) DEFAULT NULL,
  `phone_mobile` varchar(100) DEFAULT NULL,
  `phone_work` varchar(100) DEFAULT NULL,
  `phone_other` varchar(100) DEFAULT NULL,
  `phone_fax` varchar(100) DEFAULT NULL,
  `primary_address_street` varchar(150) DEFAULT NULL,
  `primary_address_city` varchar(100) DEFAULT NULL,
  `primary_address_state` varchar(100) DEFAULT NULL,
  `primary_address_postalcode` varchar(20) DEFAULT NULL,
  `primary_address_country` varchar(255) DEFAULT NULL,
  `alt_address_street` varchar(150) DEFAULT NULL,
  `alt_address_city` varchar(100) DEFAULT NULL,
  `alt_address_state` varchar(100) DEFAULT NULL,
  `alt_address_postalcode` varchar(20) DEFAULT NULL,
  `alt_address_country` varchar(255) DEFAULT NULL,
  `assistant` varchar(75) DEFAULT NULL,
  `assistant_phone` varchar(100) DEFAULT NULL,
  `lead_source` varchar(255) DEFAULT NULL,
  `reports_to_id` char(36) DEFAULT NULL,
  `birthdate` date DEFAULT NULL,
  `campaign_id` char(36) DEFAULT NULL,
  `joomla_account_id` varchar(255) DEFAULT NULL,
  `portal_account_disabled` tinyint(1) DEFAULT NULL,
  `portal_user_type` varchar(100) DEFAULT 'Single'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `contacts`
--

INSERT INTO `contacts` (`id`, `date_entered`, `date_modified`, `modified_user_id`, `created_by`, `description`, `deleted`, `assigned_user_id`, `salutation`, `first_name`, `last_name`, `title`, `photo`, `department`, `do_not_call`, `phone_home`, `phone_mobile`, `phone_work`, `phone_other`, `phone_fax`, `primary_address_street`, `primary_address_city`, `primary_address_state`, `primary_address_postalcode`, `primary_address_country`, `alt_address_street`, `alt_address_city`, `alt_address_state`, `alt_address_postalcode`, `alt_address_country`, `assistant`, `assistant_phone`, `lead_source`, `reports_to_id`, `birthdate`, `campaign_id`, `joomla_account_id`, `portal_account_disabled`, `portal_user_type`) VALUES
('657b58ac-ece1-3ecb-81b0-5ac9f7e5a9a5', '2018-04-08 11:04:45', '2018-04-08 11:04:45', '1', '1', NULL, 0, '1', 'Mr.', 'New Contact', 'Last', 'Title', NULL, NULL, 0, NULL, '465465465', '465465465', NULL, '465465465', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Cold Call', NULL, NULL, NULL, NULL, NULL, 'Single'),
('744a98de-033e-85c2-a97d-5a7fd473764f', '2018-02-11 05:27:28', '2018-02-11 05:27:28', '1', '1', NULL, 0, '1', 'Mr.', 'Sagar', 'Munot', 'Sagar Munot\'s Imp Contact', NULL, NULL, 0, NULL, '465465465', '465465465', NULL, '465465465', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, 'Single');

-- --------------------------------------------------------

--
-- Table structure for table `contacts_audit`
--

CREATE TABLE `contacts_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text,
  `after_value_text` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `contacts_bugs`
--

CREATE TABLE `contacts_bugs` (
  `id` varchar(36) NOT NULL,
  `contact_id` varchar(36) DEFAULT NULL,
  `bug_id` varchar(36) DEFAULT NULL,
  `contact_role` varchar(50) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `contacts_cases`
--

CREATE TABLE `contacts_cases` (
  `id` varchar(36) NOT NULL,
  `contact_id` varchar(36) DEFAULT NULL,
  `case_id` varchar(36) DEFAULT NULL,
  `contact_role` varchar(50) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `contacts_cstm`
--

CREATE TABLE `contacts_cstm` (
  `id_c` char(36) NOT NULL,
  `jjwg_maps_lng_c` float(11,8) DEFAULT '0.00000000',
  `jjwg_maps_lat_c` float(10,8) DEFAULT '0.00000000',
  `jjwg_maps_geocode_status_c` varchar(255) DEFAULT NULL,
  `jjwg_maps_address_c` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `contacts_cstm`
--

INSERT INTO `contacts_cstm` (`id_c`, `jjwg_maps_lng_c`, `jjwg_maps_lat_c`, `jjwg_maps_geocode_status_c`, `jjwg_maps_address_c`) VALUES
('657b58ac-ece1-3ecb-81b0-5ac9f7e5a9a5', 0.00000000, 0.00000000, '', ''),
('744a98de-033e-85c2-a97d-5a7fd473764f', 0.00000000, 0.00000000, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `contacts_users`
--

CREATE TABLE `contacts_users` (
  `id` varchar(36) NOT NULL,
  `contact_id` varchar(36) DEFAULT NULL,
  `user_id` varchar(36) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `cron_remove_documents`
--

CREATE TABLE `cron_remove_documents` (
  `id` varchar(36) NOT NULL,
  `bean_id` varchar(36) DEFAULT NULL,
  `module` varchar(25) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `currencies`
--

CREATE TABLE `currencies` (
  `id` char(36) NOT NULL,
  `name` varchar(36) DEFAULT NULL,
  `symbol` varchar(36) DEFAULT NULL,
  `iso4217` varchar(3) DEFAULT NULL,
  `conversion_rate` double DEFAULT '0',
  `status` varchar(100) DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `created_by` char(36) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `custom_fields`
--

CREATE TABLE `custom_fields` (
  `bean_id` varchar(36) DEFAULT NULL,
  `set_num` int(11) DEFAULT '0',
  `field0` varchar(255) DEFAULT NULL,
  `field1` varchar(255) DEFAULT NULL,
  `field2` varchar(255) DEFAULT NULL,
  `field3` varchar(255) DEFAULT NULL,
  `field4` varchar(255) DEFAULT NULL,
  `field5` varchar(255) DEFAULT NULL,
  `field6` varchar(255) DEFAULT NULL,
  `field7` varchar(255) DEFAULT NULL,
  `field8` varchar(255) DEFAULT NULL,
  `field9` varchar(255) DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `documents`
--

CREATE TABLE `documents` (
  `id` char(36) NOT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `document_name` varchar(255) DEFAULT NULL,
  `doc_id` varchar(100) DEFAULT NULL,
  `doc_type` varchar(100) DEFAULT 'Sugar',
  `doc_url` varchar(255) DEFAULT NULL,
  `active_date` date DEFAULT NULL,
  `exp_date` date DEFAULT NULL,
  `category_id` varchar(100) DEFAULT NULL,
  `subcategory_id` varchar(100) DEFAULT NULL,
  `status_id` varchar(100) DEFAULT NULL,
  `document_revision_id` varchar(36) DEFAULT NULL,
  `related_doc_id` char(36) DEFAULT NULL,
  `related_doc_rev_id` char(36) DEFAULT NULL,
  `is_template` tinyint(1) DEFAULT '0',
  `template_type` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `documents_accounts`
--

CREATE TABLE `documents_accounts` (
  `id` varchar(36) NOT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `document_id` varchar(36) DEFAULT NULL,
  `account_id` varchar(36) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `documents_bugs`
--

CREATE TABLE `documents_bugs` (
  `id` varchar(36) NOT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `document_id` varchar(36) DEFAULT NULL,
  `bug_id` varchar(36) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `documents_cases`
--

CREATE TABLE `documents_cases` (
  `id` varchar(36) NOT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `document_id` varchar(36) DEFAULT NULL,
  `case_id` varchar(36) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `documents_contacts`
--

CREATE TABLE `documents_contacts` (
  `id` varchar(36) NOT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `document_id` varchar(36) DEFAULT NULL,
  `contact_id` varchar(36) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `documents_opportunities`
--

CREATE TABLE `documents_opportunities` (
  `id` varchar(36) NOT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `document_id` varchar(36) DEFAULT NULL,
  `opportunity_id` varchar(36) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `document_revisions`
--

CREATE TABLE `document_revisions` (
  `id` varchar(36) NOT NULL,
  `change_log` varchar(255) DEFAULT NULL,
  `document_id` varchar(36) DEFAULT NULL,
  `doc_id` varchar(100) DEFAULT NULL,
  `doc_type` varchar(100) DEFAULT NULL,
  `doc_url` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `filename` varchar(255) DEFAULT NULL,
  `file_ext` varchar(100) DEFAULT NULL,
  `file_mime_type` varchar(100) DEFAULT NULL,
  `revision` varchar(100) DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `date_modified` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `eapm`
--

CREATE TABLE `eapm` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `url` varchar(255) DEFAULT NULL,
  `application` varchar(100) DEFAULT 'webex',
  `api_data` text,
  `consumer_key` varchar(255) DEFAULT NULL,
  `consumer_secret` varchar(255) DEFAULT NULL,
  `oauth_token` varchar(255) DEFAULT NULL,
  `oauth_secret` varchar(255) DEFAULT NULL,
  `validated` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `emailman`
--

CREATE TABLE `emailman` (
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `user_id` char(36) DEFAULT NULL,
  `id` int(11) NOT NULL,
  `campaign_id` char(36) DEFAULT NULL,
  `marketing_id` char(36) DEFAULT NULL,
  `list_id` char(36) DEFAULT NULL,
  `send_date_time` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `in_queue` tinyint(1) DEFAULT '0',
  `in_queue_date` datetime DEFAULT NULL,
  `send_attempts` int(11) DEFAULT '0',
  `deleted` tinyint(1) DEFAULT '0',
  `related_id` char(36) DEFAULT NULL,
  `related_type` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `emails`
--

CREATE TABLE `emails` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `orphaned` tinyint(1) DEFAULT NULL,
  `last_synced` datetime DEFAULT NULL,
  `date_sent` datetime DEFAULT NULL,
  `message_id` varchar(255) DEFAULT NULL,
  `type` varchar(100) DEFAULT NULL,
  `status` varchar(100) DEFAULT NULL,
  `flagged` tinyint(1) DEFAULT NULL,
  `reply_to_status` tinyint(1) DEFAULT NULL,
  `intent` varchar(100) DEFAULT 'pick',
  `mailbox_id` char(36) DEFAULT NULL,
  `parent_type` varchar(100) DEFAULT NULL,
  `parent_id` char(36) DEFAULT NULL,
  `uid` varchar(255) DEFAULT NULL,
  `category_id` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `emails`
--

INSERT INTO `emails` (`id`, `name`, `date_entered`, `date_modified`, `modified_user_id`, `created_by`, `deleted`, `assigned_user_id`, `orphaned`, `last_synced`, `date_sent`, `message_id`, `type`, `status`, `flagged`, `reply_to_status`, `intent`, `mailbox_id`, `parent_type`, `parent_id`, `uid`, `category_id`) VALUES
('1e65bd64-81f5-40b8-b6b4-5a9995457506', 'Invoice for Cool', '2018-03-02 18:17:08', '2018-03-02 18:17:08', '1', '1', 0, '1', NULL, NULL, NULL, NULL, 'draft', 'draft', NULL, NULL, 'pick', NULL, NULL, NULL, NULL, NULL),
('a4bff107-0c22-17a8-f11c-5aa3c95d6521', 'Invoice for asdas', '2018-03-10 12:03:08', '2018-03-10 12:03:08', '1', '1', 0, '1', NULL, NULL, NULL, NULL, 'draft', 'draft', NULL, NULL, 'pick', NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `emails_beans`
--

CREATE TABLE `emails_beans` (
  `id` char(36) NOT NULL,
  `email_id` char(36) DEFAULT NULL,
  `bean_id` char(36) DEFAULT NULL,
  `bean_module` varchar(100) DEFAULT NULL,
  `campaign_data` text,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `emails_email_addr_rel`
--

CREATE TABLE `emails_email_addr_rel` (
  `id` char(36) NOT NULL,
  `email_id` char(36) NOT NULL,
  `address_type` varchar(4) DEFAULT NULL,
  `email_address_id` char(36) NOT NULL,
  `deleted` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `emails_text`
--

CREATE TABLE `emails_text` (
  `email_id` char(36) NOT NULL,
  `from_addr` varchar(255) DEFAULT NULL,
  `reply_to_addr` varchar(255) DEFAULT NULL,
  `to_addrs` text,
  `cc_addrs` text,
  `bcc_addrs` text,
  `description` longtext,
  `description_html` longtext,
  `raw_source` longtext,
  `deleted` tinyint(1) DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `emails_text`
--

INSERT INTO `emails_text` (`email_id`, `from_addr`, `reply_to_addr`, `to_addrs`, `cc_addrs`, `bcc_addrs`, `description`, `description_html`, `raw_source`, `deleted`) VALUES
('1e65bd64-81f5-40b8-b6b4-5a9995457506', '', '', '', '', '', '', '', '', 0),
('a4bff107-0c22-17a8-f11c-5aa3c95d6521', '', '', '', '', '', '', '', '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `email_addresses`
--

CREATE TABLE `email_addresses` (
  `id` char(36) NOT NULL,
  `email_address` varchar(255) DEFAULT NULL,
  `email_address_caps` varchar(255) DEFAULT NULL,
  `invalid_email` tinyint(1) DEFAULT '0',
  `opt_out` tinyint(1) DEFAULT '0',
  `date_created` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `email_addresses`
--

INSERT INTO `email_addresses` (`id`, `email_address`, `email_address_caps`, `invalid_email`, `opt_out`, `date_created`, `date_modified`, `deleted`) VALUES
('463b7302-4a92-313d-ceba-5aa952b267e9', 'test@test.com', 'TEST@TEST.COM', 0, 0, '2018-03-14 16:47:19', '2018-03-14 16:47:19', 0),
('63fe0b99-1434-19cb-1377-5a7d5925ba69', 'vendor@vendor.com', 'VENDOR@VENDOR.COM', 0, 0, '2018-02-09 08:20:45', '2018-02-09 08:20:45', 0),
('68711b3d-d0d9-a6d5-6206-5a7c88b479c6', 'munot.sagar@gmail.com', 'MUNOT.SAGAR@GMAIL.COM', 0, 0, '2018-02-08 17:24:14', '2018-02-08 17:24:14', 0),
('aa60d710-2ace-479f-f182-5a7fd4273d77', 'contact@contact.com', 'CONTACT@CONTACT.COM', 0, 0, '2018-02-11 05:27:28', '2018-02-11 05:27:28', 0);

-- --------------------------------------------------------

--
-- Table structure for table `email_addr_bean_rel`
--

CREATE TABLE `email_addr_bean_rel` (
  `id` char(36) NOT NULL,
  `email_address_id` char(36) NOT NULL,
  `bean_id` char(36) NOT NULL,
  `bean_module` varchar(100) DEFAULT NULL,
  `primary_address` tinyint(1) DEFAULT '0',
  `reply_to_address` tinyint(1) DEFAULT '0',
  `date_created` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `email_addr_bean_rel`
--

INSERT INTO `email_addr_bean_rel` (`id`, `email_address_id`, `bean_id`, `bean_module`, `primary_address`, `reply_to_address`, `date_created`, `date_modified`, `deleted`) VALUES
('3f88ecb4-c8df-12e0-ec59-5aa952a3934d', '463b7302-4a92-313d-ceba-5aa952b267e9', '206b1561-8ff0-8fa6-7179-5aa95288c61d', 'Accounts', 1, 0, '2018-03-14 16:47:19', '2018-03-14 16:47:19', 0),
('603109bf-8196-7f79-f814-5a7d598a7246', '63fe0b99-1434-19cb-1377-5a7d5925ba69', '89898a84-1e7d-ac82-701e-5a7d59b49b20', 'atomi_vendor', 1, 0, '2018-02-09 08:20:45', '2018-02-09 08:20:45', 0),
('64261ae8-b20b-93e0-99fb-5ac9f7163d05', 'aa60d710-2ace-479f-f182-5a7fd4273d77', '657b58ac-ece1-3ecb-81b0-5ac9f7e5a9a5', 'Contacts', 1, 0, '2018-04-08 11:04:45', '2018-04-08 11:04:45', 0),
('68468ee9-60ad-d0d6-6820-5a7c888e9299', '68711b3d-d0d9-a6d5-6206-5a7c88b479c6', '1', 'Users', 1, 0, '2018-02-08 17:24:14', '2018-02-08 17:24:14', 0),
('6ad2d876-cd85-6689-f6e0-5aa9526725ca', '463b7302-4a92-313d-ceba-5aa952b267e9', '734c4075-0718-fa26-cfb6-5aa9521c4a82', 'Accounts', 1, 0, '2018-03-14 16:50:41', '2018-03-14 16:50:41', 0),
('798a7760-ed67-4390-a2bb-5a7c8cc3b92c', '68711b3d-d0d9-a6d5-6206-5a7c88b479c6', 'f30070f4-e846-d94c-512c-5a7c8cf49739', 'Accounts', 1, 0, '2018-02-08 17:43:08', '2018-02-08 17:43:08', 0),
('82b3a090-cb3a-343a-7f61-5a9af4b2fbff', '68711b3d-d0d9-a6d5-6206-5a7c88b479c6', '4668226f-4e70-347c-9740-5a9af48bdd5f', 'Users', 1, 0, '2018-03-03 19:17:07', '2018-03-03 19:17:07', 0),
('aa2c5fb1-ada5-6994-455d-5a7fd45bc565', 'aa60d710-2ace-479f-f182-5a7fd4273d77', '744a98de-033e-85c2-a97d-5a7fd473764f', 'Contacts', 1, 0, '2018-02-11 05:27:28', '2018-02-11 05:27:28', 0);

-- --------------------------------------------------------

--
-- Table structure for table `email_cache`
--

CREATE TABLE `email_cache` (
  `ie_id` char(36) DEFAULT NULL,
  `mbox` varchar(60) DEFAULT NULL,
  `subject` varchar(255) DEFAULT NULL,
  `fromaddr` varchar(100) DEFAULT NULL,
  `toaddr` varchar(255) DEFAULT NULL,
  `senddate` datetime DEFAULT NULL,
  `message_id` varchar(255) DEFAULT NULL,
  `mailsize` int(10) UNSIGNED DEFAULT NULL,
  `imap_uid` int(10) UNSIGNED DEFAULT NULL,
  `msgno` int(10) UNSIGNED DEFAULT NULL,
  `recent` tinyint(4) DEFAULT NULL,
  `flagged` tinyint(4) DEFAULT NULL,
  `answered` tinyint(4) DEFAULT NULL,
  `deleted` tinyint(4) DEFAULT NULL,
  `seen` tinyint(4) DEFAULT NULL,
  `draft` tinyint(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `email_marketing`
--

CREATE TABLE `email_marketing` (
  `id` char(36) NOT NULL,
  `deleted` tinyint(1) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `from_name` varchar(100) DEFAULT NULL,
  `from_addr` varchar(100) DEFAULT NULL,
  `reply_to_name` varchar(100) DEFAULT NULL,
  `reply_to_addr` varchar(100) DEFAULT NULL,
  `inbound_email_id` varchar(36) DEFAULT NULL,
  `date_start` datetime DEFAULT NULL,
  `template_id` char(36) NOT NULL,
  `status` varchar(100) DEFAULT NULL,
  `campaign_id` char(36) DEFAULT NULL,
  `outbound_email_id` char(36) DEFAULT NULL,
  `all_prospect_lists` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `email_marketing_prospect_lists`
--

CREATE TABLE `email_marketing_prospect_lists` (
  `id` varchar(36) NOT NULL,
  `prospect_list_id` varchar(36) DEFAULT NULL,
  `email_marketing_id` varchar(36) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `email_templates`
--

CREATE TABLE `email_templates` (
  `id` char(36) NOT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `published` varchar(3) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `description` text,
  `subject` varchar(255) DEFAULT NULL,
  `body` longtext,
  `body_html` longtext,
  `deleted` tinyint(1) DEFAULT NULL,
  `assigned_user_id` char(36) DEFAULT NULL,
  `text_only` tinyint(1) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `email_templates`
--

INSERT INTO `email_templates` (`id`, `date_entered`, `date_modified`, `modified_user_id`, `created_by`, `published`, `name`, `description`, `subject`, `body`, `body_html`, `deleted`, `assigned_user_id`, `text_only`, `type`) VALUES
('132a47cd-7ef5-612b-b3fb-5a7c88d61f8a', '2018-02-08 17:24:14', '2018-02-08 17:24:14', '1', '1', 'off', 'Contact Case Update', 'Template to send to a contact when their case is updated.', '$acase_name update [CASE:$acase_case_number]', 'Hi $user_first_name $user_last_name,\n\n					   You\'ve had an update to your case $acase_name (# $acase_case_number) on $aop_case_updates_date_entered:\n					       $contact_first_name $contact_last_name, said:\n					               $aop_case_updates_description', '<p>Hi $contact_first_name $contact_last_name,</p>\n					    <p> </p>\n					    <p>You\'ve had an update to your case $acase_name (# $acase_case_number) on $aop_case_updates_date_entered:</p>\n					    <p><strong>$user_first_name $user_last_name said:</strong></p>\n					    <p style=\"padding-left:30px;\">$aop_case_updates_description</p>', 0, NULL, NULL, 'system'),
('284128ee-f9c0-d3ea-6852-5a7c88ceb6a7', '2018-02-08 17:24:14', '2018-02-08 17:24:14', '1', '1', 'off', 'User Case Update', 'Email template to send to a Sugar user when their case is updated.', '$acase_name (# $acase_case_number) update', 'Hi $user_first_name $user_last_name,\n\n					   You\'ve had an update to your case $acase_name (# $acase_case_number) on $aop_case_updates_date_entered:\n					       $contact_first_name $contact_last_name, said:\n					               $aop_case_updates_description\n                        You may review this Case at:\n                            $sugarurl/index.php?module=Cases&action=DetailView&record=$acase_id;', '<p>Hi $user_first_name $user_last_name,</p>\n					   <p> </p>\n					   <p>You\'ve had an update to your case $acase_name (# $acase_case_number) on $aop_case_updates_date_entered:</p>\n					   <p><strong>$contact_first_name $contact_last_name, said:</strong></p>\n					   <p style=\"padding-left:30px;\">$aop_case_updates_description</p>\n					   <p>You may review this Case at: $sugarurl/index.php?module=Cases&action=DetailView&record=$acase_id;</p>\n					   ', 0, NULL, NULL, 'system'),
('2c0108c9-e267-080f-8d0d-5a7c88acdaf4', '2018-02-08 17:24:14', '2018-02-08 17:24:14', '1', '1', 'off', 'Joomla Account Creation', 'Template used when informing a contact that they\'ve been given an account on the joomla portal.', 'Support Portal Account Created', 'Hi $contact_name,\n					   An account has been created for you at $portal_address.\n					   You may login using this email address and the password $joomla_pass', '<p>Hi $contact_name,</p>\n					    <p>An account has been created for you at <a href=\"$portal_address\">$portal_address</a>.</p>\n					    <p>You may login using this email address and the password $joomla_pass</p>', 0, NULL, NULL, 'system'),
('4f86f1c5-7bcb-c6dd-f254-5a7c88faa698', '2013-05-24 14:31:45', '2018-02-08 17:24:14', '1', '1', 'off', 'Event Invite Template', 'Default event invite template.', 'You have been invited to $fp_events_name', 'Dear $contact_name,\r\nYou have been invited to $fp_events_name on $fp_events_date_start to $fp_events_date_end\r\n$fp_events_description\r\nYours Sincerely,\r\n', '\n<p>Dear $contact_name,</p>\n<p>You have been invited to $fp_events_name on $fp_events_date_start to $fp_events_date_end</p>\n<p>$fp_events_description</p>\n<p>If you would like to accept this invititation please click accept.</p>\n<p> $fp_events_link or $fp_events_link_declined</p>\n<p>Yours Sincerely,</p>\n', 0, NULL, NULL, 'system'),
('59247d1f-03d2-7a92-e0b5-5a7c885da6d4', '2018-02-08 17:24:14', '2018-02-08 17:24:14', '1', '1', 'off', 'System-generated password email', 'This template is used when the System Administrator sends a new password to a user.', 'New account information', '\nHere is your account username and temporary password:\nUsername : $contact_user_user_name\nPassword : $contact_user_user_hash\n\n$config_site_url\n\nAfter you log in using the above password, you may be required to reset the password to one of your own choice.', '<div><table border=\\\"0\\\" cellspacing=\\\"0\\\" cellpadding=\\\"0\\\" width=\"550\" align=\\\"\\\"\\\"center\\\"\\\"\\\"><tbody><tr><td colspan=\\\"2\\\"><p>Here is your account username and temporary password:</p><p>Username : $contact_user_user_name </p><p>Password : $contact_user_user_hash </p><br><p>$config_site_url</p><br><p>After you log in using the above password, you may be required to reset the password to one of your own choice.</p>   </td>         </tr><tr><td colspan=\\\"2\\\"></td>         </tr> </tbody></table> </div>', 0, NULL, 0, 'system'),
('65d21830-2105-e010-ed5f-5a7c883790eb', '2018-02-08 17:24:14', '2018-02-08 17:24:14', '1', '1', 'off', 'Forgot Password email', 'This template is used to send a user a link to click to reset the user\'s account password.', 'Reset your account password', '\nYou recently requested on $contact_user_pwd_last_changed to be able to reset your account password.\n\nClick on the link below to reset your password:\n\n$contact_user_link_guid', '<div><table border=\\\"0\\\" cellspacing=\\\"0\\\" cellpadding=\\\"0\\\" width=\"550\" align=\\\"\\\"\\\"center\\\"\\\"\\\"><tbody><tr><td colspan=\\\"2\\\"><p>You recently requested on $contact_user_pwd_last_changed to be able to reset your account password. </p><p>Click on the link below to reset your password:</p><p> $contact_user_link_guid </p>  </td>         </tr><tr><td colspan=\\\"2\\\"></td>         </tr> </tbody></table> </div>', 0, NULL, 0, 'system'),
('83c100b2-48cd-d7ac-70b9-5a7c8873ddd1', '2018-02-08 17:24:14', '2018-02-08 17:24:14', '1', '1', 'off', 'Case Creation', 'Template to send to a contact when a case is received from them.', '$acase_name [CASE:$acase_case_number]', 'Hi $contact_first_name $contact_last_name,\n\n					   We\'ve received your case $acase_name (# $acase_case_number) on $acase_date_entered\n					   Status:		$acase_status\n					   Reference:	$acase_case_number\n					   Description:	$acase_description', '<p> Hi $contact_first_name $contact_last_name,</p>\n					    <p>We\'ve received your case $acase_name (# $acase_case_number) on $acase_date_entered</p>\n					    <table border=\"0\"><tbody>\n					    <tr><td>Status</td><td>$acase_status</td></tr>\n					    <tr><td>Reference</td><td>$acase_case_number</td></tr>\n					    <tr><td>Description</td><td>$acase_description</td></tr>\n					    </tbody></table>', 0, NULL, NULL, 'system'),
('efb9e2e7-8d19-005d-394c-5a7c8804b580', '2018-02-08 17:24:14', '2018-02-08 17:24:14', '1', '1', 'off', 'Case Closure', 'Template for informing a contact that their case has been closed.', '$acase_name [CASE:$acase_case_number] closed', 'Hi $contact_first_name $contact_last_name,\n\n					   Your case $acase_name (# $acase_case_number) has been closed on $acase_date_entered\n					   Status:				$acase_status\n					   Reference:			$acase_case_number\n					   Resolution:			$acase_resolution', '<p> Hi $contact_first_name $contact_last_name,</p>\n					    <p>Your case $acase_name (# $acase_case_number) has been closed on $acase_date_entered</p>\n					    <table border=\"0\"><tbody>\n					    <tr><td>Status</td><td>$acase_status</td></tr>\n					    <tr><td>Reference</td><td>$acase_case_number</td></tr>\n					    <tr><td>Resolution</td><td>$acase_resolution</td></tr>\n					    </tbody></table>', 0, NULL, NULL, 'system');

-- --------------------------------------------------------

--
-- Table structure for table `favorites`
--

CREATE TABLE `favorites` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `parent_id` char(36) DEFAULT NULL,
  `parent_type` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `fields_meta_data`
--

CREATE TABLE `fields_meta_data` (
  `id` varchar(255) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `vname` varchar(255) DEFAULT NULL,
  `comments` varchar(255) DEFAULT NULL,
  `help` varchar(255) DEFAULT NULL,
  `custom_module` varchar(255) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `len` int(11) DEFAULT NULL,
  `required` tinyint(1) DEFAULT '0',
  `default_value` varchar(255) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `audited` tinyint(1) DEFAULT '0',
  `massupdate` tinyint(1) DEFAULT '0',
  `duplicate_merge` smallint(6) DEFAULT '0',
  `reportable` tinyint(1) DEFAULT '1',
  `importable` varchar(255) DEFAULT NULL,
  `ext1` varchar(255) DEFAULT NULL,
  `ext2` varchar(255) DEFAULT NULL,
  `ext3` varchar(255) DEFAULT NULL,
  `ext4` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `fields_meta_data`
--

INSERT INTO `fields_meta_data` (`id`, `name`, `vname`, `comments`, `help`, `custom_module`, `type`, `len`, `required`, `default_value`, `date_modified`, `deleted`, `audited`, `massupdate`, `duplicate_merge`, `reportable`, `importable`, `ext1`, `ext2`, `ext3`, `ext4`) VALUES
('Accountscustomer_id_c', 'customer_id_c', 'LBL_CUSTOMER_ID', 'Customer ID', 'Customer ID', 'Accounts', 'varchar', 255, 0, '', '2018-03-14 13:53:10', 0, 1, 0, 0, 1, 'true', '', '', '', ''),
('Accountscustomer_number_c', 'customer_number_c', 'LBL_CUSTOMER_NUMBER', 'Customer Number Hidden', 'Customer Number Hidden', 'Accounts', 'int', 255, 0, '0', '2018-03-14 14:03:56', 0, 0, 0, 0, 1, 'true', '', '', '', ''),
('Accountsjjwg_maps_address_c', 'jjwg_maps_address_c', 'LBL_JJWG_MAPS_ADDRESS', 'Address', 'Address', 'Accounts', 'varchar', 255, 0, NULL, '2018-02-08 17:24:14', 0, 0, 0, 0, 1, 'true', NULL, '', '', ''),
('Accountsjjwg_maps_geocode_status_c', 'jjwg_maps_geocode_status_c', 'LBL_JJWG_MAPS_GEOCODE_STATUS', 'Geocode Status', 'Geocode Status', 'Accounts', 'varchar', 255, 0, NULL, '2018-02-08 17:24:14', 0, 0, 0, 0, 1, 'true', NULL, '', '', ''),
('Accountsjjwg_maps_lat_c', 'jjwg_maps_lat_c', 'LBL_JJWG_MAPS_LAT', '', 'Latitude', 'Accounts', 'float', 10, 0, '0.00000000', '2018-02-08 17:24:14', 0, 0, 0, 0, 1, 'true', '8', '', '', ''),
('Accountsjjwg_maps_lng_c', 'jjwg_maps_lng_c', 'LBL_JJWG_MAPS_LNG', '', 'Longitude', 'Accounts', 'float', 11, 0, '0.00000000', '2018-02-08 17:24:14', 0, 0, 0, 0, 1, 'true', '8', '', '', ''),
('AOS_Invoicesadd_payment_details_c', 'add_payment_details_c', 'LBL_ADD_PAYMENT_DETAILS', 'Add Payment Details', 'Add Payment Details', 'AOS_Invoices', 'html', 255, 0, NULL, '2018-03-05 17:46:22', 0, 0, 0, 0, 1, 'true', NULL, NULL, 'text', '<p><input id=\"payment_add_details\" class=\"button\" onclick=\"addPaymentDetails()\" type=\"button\" value=\"Add Payment Details\" /></p>'),
('AOS_Invoicescredit_c', 'credit_c', 'LBL_CREDIT', 'Credit', 'Credit', 'AOS_Invoices', 'currency', 26, 0, '0', '2018-03-05 16:45:07', 0, 1, 0, 0, 1, 'true', '', '', '', ''),
('AOS_Invoicesfinal_outstanding_balance_c', 'final_outstanding_balance_c', 'LBL_FINAL_OUTSTANDING_BALANCE', 'Final Outstanding Balance', 'Final Outstanding Balance', 'AOS_Invoices', 'currency', 26, 0, '0', '2018-03-06 17:57:10', 0, 1, 0, 0, 1, 'true', '', '', '', ''),
('AOS_Invoicesinvoice_number_c', 'invoice_number_c', 'LBL_INVOICE_NUMBER', 'Invoice #', 'Invoice #', 'AOS_Invoices', 'int', 255, 1, '', '2018-03-14 17:14:10', 0, 1, 0, 0, 1, 'true', '', '', '', ''),
('AOS_Invoicespayment_in_cash_cheque_c', 'payment_in_cash_cheque_c', 'LBL_PAYMENT_IN_CASH_CHEQUE', 'Payment In Cash Or Check', 'Payment In Cash Or Check', 'AOS_Invoices', 'currency', 26, 0, '0', '2018-03-05 18:48:33', 0, 1, 0, 0, 1, 'true', NULL, NULL, NULL, NULL),
('AOS_Invoicespayment_in_credit_card_c', 'payment_in_credit_card_c', 'LBL_PAYMENT_IN_CREDIT_CARD', 'Payment In Credit Card ( + 5% )', 'Payment In Credit Card ( + 5% )', 'AOS_Invoices', 'currency', 26, 0, '0', '2018-03-05 15:57:31', 0, 1, 0, 0, 1, 'true', '', '', '', ''),
('AOS_Invoicespayment_in_wire_transferred_c', 'payment_in_wire_transferred_c', 'LBL_PAYMENT_IN_WIRE_TRANSFERRED', 'Payment In Wire Transferred', 'Payment In Wire Transferred', 'AOS_Invoices', 'currency', 26, 0, '0', '2018-03-05 16:52:40', 0, 1, 0, 0, 1, 'true', NULL, NULL, NULL, NULL),
('AOS_Productsatomi_vendor_id_c', 'atomi_vendor_id_c', 'LBL_VENDOR_ATOMI_VENDOR_ID', '', '', 'AOS_Products', 'id', 36, 0, NULL, '2018-03-03 19:54:47', 0, 0, 0, 0, 0, 'true', '', '', '', ''),
('AOS_Productsimage_c', 'image_c', 'LBL_IMAGE', 'Product Image View', 'Product Image View', 'AOS_Products', 'image', 255, 0, NULL, '2018-02-09 14:08:36', 0, 1, 0, 0, 1, 'true', '', '300', '200', ''),
('AOS_Productsinternal_mark_up_c', 'internal_mark_up_c', 'LBL_INTERNAL_MARK_UP', 'Internal Mark-up %', 'Internal Mark-up %', 'AOS_Products', 'decimal', 18, 0, '0.00', '2018-04-06 13:39:13', 0, 1, 0, 0, 1, 'true', '2', NULL, NULL, NULL),
('AOS_Productsinternal_purchase_cost_c', 'internal_purchase_cost_c', 'LBL_INTERNAL_PURCHASE_COST', 'Internal Purchase Cost', 'Internal Purchase Cost', 'AOS_Products', 'currency', 26, 0, '0', '2018-04-06 13:40:32', 0, 1, 0, 0, 1, 'true', NULL, NULL, NULL, NULL),
('AOS_Productsminimum_stock_alert_c', 'minimum_stock_alert_c', 'LBL_MINIMUM_STOCK_ALERT', '', 'Minimum Stock Alert', 'AOS_Products', 'int', 255, 0, '0', '2018-02-10 05:10:02', 0, 1, 0, 0, 1, 'true', '', '', '', ''),
('AOS_Productsptg_part_number_c', 'ptg_part_number_c', 'LBL_PTG_PART_NUMBER', 'PTG Part Number', 'PTG Part Number', 'AOS_Products', 'varchar', 255, 0, '', '2018-02-09 08:26:26', 0, 1, 0, 0, 1, 'true', '', '', '', ''),
('AOS_Productspurcahse_sub_cost_c', 'purcahse_sub_cost_c', 'LBL_PURCAHSE_SUB_COST', 'Purcahse Sub-Cost', 'Purcahse Sub-Cost', 'AOS_Products', 'decimal', 18, 0, '0.00', '2018-04-06 13:41:30', 0, 1, 0, 0, 1, 'true', '2', NULL, NULL, NULL),
('AOS_Productspurchase_cost_c', 'purchase_cost_c', 'LBL_PURCHASE_COST', 'Purchase Cost', 'Purchase Cost', 'AOS_Products', 'currency', 26, 0, '0', '2018-04-06 13:50:32', 0, 1, 0, 0, 1, 'true', NULL, NULL, NULL, NULL),
('AOS_Productsselling_cost_c', 'selling_cost_c', 'LBL_SELLING_COST', 'Selling Cost', 'Selling Cost', 'AOS_Products', 'currency', 26, 0, '0', '2018-04-06 13:43:07', 0, 1, 0, 0, 1, 'true', NULL, NULL, NULL, NULL),
('AOS_Productsshipping_cost_c', 'shipping_cost_c', 'LBL_SHIPPING_COST', 'Shipping Cost', 'Shipping Cost', 'AOS_Products', 'currency', 26, 0, '0', '2018-04-06 13:51:46', 0, 1, 0, 0, 1, 'true', NULL, NULL, NULL, NULL),
('AOS_Productstax_c', 'tax_c', 'LBL_TAX', 'Tax In \'%\'', 'Tax In \'%\'', 'AOS_Products', 'enum', 100, 1, '9', '2018-04-06 12:30:19', 0, 1, 0, 0, 1, 'true', 'product_tax_list', '', '', ''),
('AOS_Productstier_0_c', 'tier_0_c', 'LBL_TIER_0', 'Tier 0 ( In % )', 'Tier 0 ( In % )', 'AOS_Products', 'decimal', 18, 0, '0.00', '2018-02-12 11:23:58', 0, 1, 0, 0, 1, 'true', '2', NULL, NULL, NULL),
('AOS_Productstier_0_price_c', 'tier_0_price_c', 'LBL_TIER_0_PRICE', 'Tier 0 Price', 'Tier 0 Price', 'AOS_Products', 'currency', 26, 0, '0', '2018-02-12 12:13:15', 0, 1, 0, 0, 1, 'true', '', '', '', ''),
('AOS_Productstier_1_c', 'tier_1_c', 'LBL_TIER_1', 'Tier 1 ( In % )', 'Tier 1 ( In % )', 'AOS_Products', 'decimal', 18, 0, '0.00', '2018-02-12 11:25:25', 0, 1, 0, 0, 1, 'true', '2', NULL, NULL, NULL),
('AOS_Productstier_1_price_c', 'tier_1_price_c', 'LBL_TIER_1_PRICE', 'Tier 1 Price', 'Tier 1 Price', 'AOS_Products', 'currency', 26, 0, '0', '2018-02-12 12:24:45', 0, 1, 0, 0, 1, 'true', NULL, NULL, NULL, NULL),
('AOS_Productstier_2_c', 'tier_2_c', 'LBL_TIER_2', 'Tier 2 ( In % )', 'Tier 2 ( In % )', 'AOS_Products', 'decimal', 18, 0, '0.00', '2018-02-12 11:26:05', 0, 1, 0, 0, 1, 'true', '2', NULL, NULL, NULL),
('AOS_Productstier_2_price_c', 'tier_2_price_c', 'LBL_TIER_2_PRICE', 'Tier_2_Price', 'Tier_2_Price', 'AOS_Products', 'currency', 26, 0, '0', '2018-02-12 12:30:46', 0, 1, 0, 0, 1, 'true', NULL, NULL, NULL, NULL),
('AOS_Productstier_3_c', 'tier_3_c', 'LBL_TIER_3', 'Tier 3 ( In % )', 'Tier 3 ( In % )', 'AOS_Products', 'decimal', 18, 0, '0.00', '2018-02-12 11:28:51', 0, 1, 0, 0, 1, 'true', '2', NULL, NULL, NULL),
('AOS_Productstier_3_price_c', 'tier_3_price_c', 'LBL_TIER_3_PRICE', 'Tier_3_Price', 'Tier_3_Price', 'AOS_Products', 'currency', 26, 0, '0', '2018-02-12 12:23:45', 0, 1, 0, 0, 1, 'true', '', '', '', ''),
('AOS_Productstier_4_c', 'tier_4_c', 'LBL_TIER_4', 'Tier 4 ( In % )', 'Tier 4 ( In % )', 'AOS_Products', 'decimal', 18, 0, '0.00', '2018-02-12 11:37:55', 0, 1, 0, 0, 1, 'true', '2', NULL, NULL, NULL),
('AOS_Productstier_4_price_c', 'tier_4_price_c', 'LBL_TIER_4_PRICE', 'Tier 4 Price', 'Tier 4 Price', 'AOS_Products', 'currency', 26, 0, '0', '2018-02-12 12:25:45', 0, 1, 0, 0, 1, 'true', NULL, NULL, NULL, NULL),
('AOS_Productstier_5_c', 'tier_5_c', 'LBL_TIER_5', 'Tier 5 ( In % )', 'Tier 5 ( In % )', 'AOS_Products', 'decimal', 18, 0, '0.00', '2018-02-12 11:42:34', 0, 1, 0, 0, 1, 'true', '2', NULL, NULL, NULL),
('AOS_Productstier_5_price_c', 'tier_5_price_c', 'LBL_TIER_5_PRICE', 'Tier_5_Price', 'Tier_5_Price', 'AOS_Products', 'currency', 26, 0, '0', '2018-02-12 12:27:19', 0, 1, 0, 0, 1, 'true', NULL, NULL, NULL, NULL),
('AOS_Productstier_5_price_hidden_c', 'tier_5_price_hidden_c', 'LBL_TIER_5_PRICE_HIDDEN', 'tier 5 price hidden', 'tier 5 price hidden', 'AOS_Products', 'currency', 26, 0, '0', '2018-02-15 15:30:42', 0, 0, 0, 0, 1, 'true', '', '', '', ''),
('AOS_Productstotal_stock_c', 'total_stock_c', 'LBL_TOTAL_STOCK', 'Total Stock', 'Total Stock', 'AOS_Products', 'int', 255, 0, '0', '2018-02-10 05:07:56', 0, 1, 0, 0, 1, 'true', '', '', '', ''),
('AOS_Productsupc_c', 'upc_c', 'LBL_UPC', 'UPC', 'UPC', 'AOS_Products', 'varchar', 255, 0, '', '2018-02-09 08:25:09', 0, 1, 0, 0, 1, 'true', '', '', '', ''),
('AOS_Productsvendor_c', 'vendor_c', 'LBL_VENDOR', 'Vendor Name', 'Vendor Name', 'AOS_Products', 'relate', 255, 0, NULL, '2018-03-03 19:54:47', 0, 1, 0, 0, 1, 'true', '', 'atomi_vendor', 'atomi_vendor_id_c', ''),
('AOS_Productsvendor_part_number_c', 'vendor_part_number_c', 'LBL_VENDOR_PART_NUMBER', 'Vendor Part Number', 'Vendor Part Number', 'AOS_Products', 'varchar', 255, 0, '', '2018-02-09 08:24:17', 0, 1, 0, 0, 1, 'true', '', '', '', ''),
('AOS_Products_Quotesproduct_tax_amount_c', 'product_tax_amount_c', 'LBL_PRODUCT_TAX_AMOUNT', 'Product Tax Amount', 'Product Tax Amount', 'AOS_Products_Quotes', 'currency', 26, 0, '', '2018-03-02 17:22:01', 0, 1, 0, 0, 1, 'true', '', '', '', ''),
('AOS_Products_Quotesproduct_tax_percentage_c', 'product_tax_percentage_c', 'LBL_PRODUCT_TAX_PERCENTAGE', 'Product Tax Percentage', 'Product Tax Percentage', 'AOS_Products_Quotes', 'float', 18, 0, '0.00', '2018-03-02 17:25:42', 0, 1, 0, 0, 1, 'true', '2', '', '', ''),
('AOS_Products_Quotesproduct_tier_5_price_c', 'product_tier_5_price_c', 'LBL_PRODUCT_TIER_5_PRICE', 'Selling Cost', 'Selling Cost', 'AOS_Products_Quotes', 'currency', 26, 0, '0', '2018-02-17 07:50:20', 0, 1, 0, 0, 1, 'true', '', '', '', ''),
('AOS_Products_Quotestax_amount_c', 'tax_amount_c', 'LBL_TAX_AMOUNT', 'Tax Amount', 'Tax Amount', 'AOS_Products_Quotes', 'currency', 26, 0, '0', '2018-02-17 08:12:10', 0, 1, 0, 0, 1, 'true', '', '', '', ''),
('AOS_Products_Quotestax_percentage_c', 'tax_percentage_c', 'LBL_TAX_PERCENTAGE', 'Tax Percentage', 'Tax Percentage', 'AOS_Products_Quotes', 'float', 18, 0, '0.00', '2018-02-17 08:10:57', 0, 1, 0, 0, 1, 'true', '2', '', '', ''),
('AOS_Products_Quotestier_c', 'tier_c', 'LBL_TIER', 'Tier', 'Tier', 'AOS_Products_Quotes', 'varchar', 255, 0, '', '2018-02-17 08:09:07', 0, 1, 0, 0, 1, 'true', '', '', '', ''),
('AOS_Products_Quotestype_c', 'type_c', 'LBL_TYPE', 'Type', 'Type', 'AOS_Products_Quotes', 'varchar', 255, 0, '', '2018-02-28 18:42:47', 0, 1, 0, 0, 1, 'true', '', '', '', ''),
('AOS_Quotesproduct_tier_5_price_c', 'product_tier_5_price_c', 'LBL_PRODUCT_TIER_5_PRICE', 'Selling Cost', 'Selling Cost', 'AOS_Quotes', 'currency', 26, 0, '0', '2018-02-17 09:11:55', 0, 1, 0, 0, 1, 'true', '', '', '', ''),
('AOS_Quotesquote_id_c', 'quote_id_c', 'LBL_QUOTE_ID', 'Quote Id', 'Quote Id', 'AOS_Quotes', 'varchar', 255, 1, '', '2018-04-01 17:36:01', 0, 1, 0, 0, 1, 'true', '', '', '', ''),
('AOS_Quotestax_percentage_c', 'tax_percentage_c', 'LBL_TAX_PERCENTAGE', 'Tax Percentage', 'Tax Percentage', 'AOS_Quotes', 'float', 18, 0, '0.00', '2018-02-17 09:09:53', 0, 1, 0, 0, 1, 'true', '2', '', '', ''),
('AOS_Quotestier_c', 'tier_c', 'LBL_TIER', 'Tier', 'Tier', 'AOS_Quotes', 'varchar', 255, 0, '', '2018-02-17 09:05:26', 0, 1, 0, 0, 1, 'true', '', '', '', ''),
('AOS_Quotestype_c', 'type_c', 'LBL_TYPE', 'Type', 'Type', 'AOS_Quotes', 'varchar', 255, 0, '', '2018-02-28 18:48:40', 0, 1, 0, 0, 1, 'true', '', '', '', ''),
('atomi_Invoice_Commission_Reportemployee_name_c', 'employee_name_c', 'LBL_EMPLOYEE_NAME', 'Employee Name', 'Employee Name', 'atomi_Invoice_Commission_Report', 'varchar', 255, 0, '', '2018-03-26 15:47:45', 0, 0, 0, 0, 1, 'true', '', '', '', ''),
('atomi_invoice_payment_detailsaos_invoices_id_c', 'aos_invoices_id_c', 'LBL_INVOICE_AOS_INVOICES_ID', '', '', 'atomi_invoice_payment_details', 'id', 36, 0, NULL, '2018-03-07 15:04:39', 0, 0, 0, 0, 0, 'true', '', '', '', ''),
('atomi_invoice_payment_detailscurrency_id', 'currency_id', 'LBL_CURRENCY', '', '', 'atomi_invoice_payment_details', 'currency_id', 36, 0, NULL, '2018-03-07 14:55:35', 0, 0, 0, 0, 1, 'true', '', '', '', ''),
('atomi_invoice_payment_detailsinvoice_c', 'invoice_c', 'LBL_INVOICE', 'Invoice', 'Invoice', 'atomi_invoice_payment_details', 'relate', 255, 0, NULL, '2018-03-07 15:04:39', 0, 1, 0, 0, 1, 'true', '', 'AOS_Invoices', 'aos_invoices_id_c', ''),
('atomi_invoice_payment_detailspaymentamount_c', 'paymentamount_c', 'LBL_PAYMENTAMOUNT', 'Payment Amount', 'Payment Amount', 'atomi_invoice_payment_details', 'currency', 26, 0, '0', '2018-03-07 14:55:35', 0, 1, 0, 0, 1, 'true', '', '', '', ''),
('atomi_invoice_payment_detailspaymentdate_c', 'paymentdate_c', 'LBL_PAYMENTDATE', 'Payment Date', 'Payment Date', 'atomi_invoice_payment_details', 'date', NULL, 0, '', '2018-03-07 14:56:54', 0, 1, 0, 0, 1, 'true', '', '', '', ''),
('atomi_invoice_payment_detailspaymenttype_c', 'paymenttype_c', 'LBL_PAYMENTTYPE', 'Payment Type', 'Payment Type', 'atomi_invoice_payment_details', 'enum', 100, 0, NULL, '2018-03-07 14:53:59', 0, 1, 0, 0, 1, 'true', 'payment_type_list', '', '', ''),
('atomi_invoice_payment_detailstransactionnumber_c', 'transactionnumber_c', 'LBL_TRANSACTIONNUMBER', 'Transaction Number', 'Transaction Number', 'atomi_invoice_payment_details', 'varchar', 255, 0, '', '2018-03-07 14:58:48', 0, 1, 0, 0, 1, 'true', '', '', '', ''),
('Casesjjwg_maps_address_c', 'jjwg_maps_address_c', 'LBL_JJWG_MAPS_ADDRESS', 'Address', 'Address', 'Cases', 'varchar', 255, 0, NULL, '2018-02-08 17:24:14', 0, 0, 0, 0, 1, 'true', NULL, '', '', ''),
('Casesjjwg_maps_geocode_status_c', 'jjwg_maps_geocode_status_c', 'LBL_JJWG_MAPS_GEOCODE_STATUS', 'Geocode Status', 'Geocode Status', 'Cases', 'varchar', 255, 0, NULL, '2018-02-08 17:24:14', 0, 0, 0, 0, 1, 'true', NULL, '', '', ''),
('Casesjjwg_maps_lat_c', 'jjwg_maps_lat_c', 'LBL_JJWG_MAPS_LAT', '', 'Latitude', 'Cases', 'float', 10, 0, '0.00000000', '2018-02-08 17:24:14', 0, 0, 0, 0, 1, 'true', '8', '', '', ''),
('Casesjjwg_maps_lng_c', 'jjwg_maps_lng_c', 'LBL_JJWG_MAPS_LNG', '', 'Longitude', 'Cases', 'float', 11, 0, '0.00000000', '2018-02-08 17:24:14', 0, 0, 0, 0, 1, 'true', '8', '', '', ''),
('Contactsjjwg_maps_address_c', 'jjwg_maps_address_c', 'LBL_JJWG_MAPS_ADDRESS', 'Address', 'Address', 'Contacts', 'varchar', 255, 0, NULL, '2018-02-08 17:24:14', 0, 0, 0, 0, 1, 'true', NULL, '', '', ''),
('Contactsjjwg_maps_geocode_status_c', 'jjwg_maps_geocode_status_c', 'LBL_JJWG_MAPS_GEOCODE_STATUS', 'Geocode Status', 'Geocode Status', 'Contacts', 'varchar', 255, 0, NULL, '2018-02-08 17:24:14', 0, 0, 0, 0, 1, 'true', NULL, '', '', ''),
('Contactsjjwg_maps_lat_c', 'jjwg_maps_lat_c', 'LBL_JJWG_MAPS_LAT', '', 'Latitude', 'Contacts', 'float', 10, 0, '0.00000000', '2018-02-08 17:24:14', 0, 0, 0, 0, 1, 'true', '8', '', '', ''),
('Contactsjjwg_maps_lng_c', 'jjwg_maps_lng_c', 'LBL_JJWG_MAPS_LNG', '', 'Longitude', 'Contacts', 'float', 11, 0, '0.00000000', '2018-02-08 17:24:14', 0, 0, 0, 0, 1, 'true', '8', '', '', ''),
('Leadsjjwg_maps_address_c', 'jjwg_maps_address_c', 'LBL_JJWG_MAPS_ADDRESS', 'Address', 'Address', 'Leads', 'varchar', 255, 0, NULL, '2018-02-08 17:24:14', 0, 0, 0, 0, 1, 'true', NULL, '', '', ''),
('Leadsjjwg_maps_geocode_status_c', 'jjwg_maps_geocode_status_c', 'LBL_JJWG_MAPS_GEOCODE_STATUS', 'Geocode Status', 'Geocode Status', 'Leads', 'varchar', 255, 0, NULL, '2018-02-08 17:24:14', 0, 0, 0, 0, 1, 'true', NULL, '', '', ''),
('Leadsjjwg_maps_lat_c', 'jjwg_maps_lat_c', 'LBL_JJWG_MAPS_LAT', '', 'Latitude', 'Leads', 'float', 10, 0, '0.00000000', '2018-02-08 17:24:14', 0, 0, 0, 0, 1, 'true', '8', '', '', ''),
('Leadsjjwg_maps_lng_c', 'jjwg_maps_lng_c', 'LBL_JJWG_MAPS_LNG', '', 'Longitude', 'Leads', 'float', 11, 0, '0.00000000', '2018-02-08 17:24:14', 0, 0, 0, 0, 1, 'true', '8', '', '', ''),
('Meetingsjjwg_maps_address_c', 'jjwg_maps_address_c', 'LBL_JJWG_MAPS_ADDRESS', 'Address', 'Address', 'Meetings', 'varchar', 255, 0, NULL, '2018-02-08 17:24:14', 0, 0, 0, 0, 1, 'true', NULL, '', '', ''),
('Meetingsjjwg_maps_geocode_status_c', 'jjwg_maps_geocode_status_c', 'LBL_JJWG_MAPS_GEOCODE_STATUS', 'Geocode Status', 'Geocode Status', 'Meetings', 'varchar', 255, 0, NULL, '2018-02-08 17:24:14', 0, 0, 0, 0, 1, 'true', NULL, '', '', ''),
('Meetingsjjwg_maps_lat_c', 'jjwg_maps_lat_c', 'LBL_JJWG_MAPS_LAT', '', 'Latitude', 'Meetings', 'float', 10, 0, '0.00000000', '2018-02-08 17:24:14', 0, 0, 0, 0, 1, 'true', '8', '', '', ''),
('Meetingsjjwg_maps_lng_c', 'jjwg_maps_lng_c', 'LBL_JJWG_MAPS_LNG', '', 'Longitude', 'Meetings', 'float', 11, 0, '0.00000000', '2018-02-08 17:24:14', 0, 0, 0, 0, 1, 'true', '8', '', '', ''),
('Opportunitiesjjwg_maps_address_c', 'jjwg_maps_address_c', 'LBL_JJWG_MAPS_ADDRESS', 'Address', 'Address', 'Opportunities', 'varchar', 255, 0, NULL, '2018-02-08 17:24:14', 0, 0, 0, 0, 1, 'true', NULL, '', '', ''),
('Opportunitiesjjwg_maps_geocode_status_c', 'jjwg_maps_geocode_status_c', 'LBL_JJWG_MAPS_GEOCODE_STATUS', 'Geocode Status', 'Geocode Status', 'Opportunities', 'varchar', 255, 0, NULL, '2018-02-08 17:24:14', 0, 0, 0, 0, 1, 'true', NULL, '', '', ''),
('Opportunitiesjjwg_maps_lat_c', 'jjwg_maps_lat_c', 'LBL_JJWG_MAPS_LAT', '', 'Latitude', 'Opportunities', 'float', 10, 0, '0.00000000', '2018-02-08 17:24:14', 0, 0, 0, 0, 1, 'true', '8', '', '', ''),
('Opportunitiesjjwg_maps_lng_c', 'jjwg_maps_lng_c', 'LBL_JJWG_MAPS_LNG', '', 'Longitude', 'Opportunities', 'float', 11, 0, '0.00000000', '2018-02-08 17:24:14', 0, 0, 0, 0, 1, 'true', '8', '', '', ''),
('Projectjjwg_maps_address_c', 'jjwg_maps_address_c', 'LBL_JJWG_MAPS_ADDRESS', 'Address', 'Address', 'Project', 'varchar', 255, 0, NULL, '2018-02-08 17:24:14', 0, 0, 0, 0, 1, 'true', NULL, '', '', ''),
('Projectjjwg_maps_geocode_status_c', 'jjwg_maps_geocode_status_c', 'LBL_JJWG_MAPS_GEOCODE_STATUS', 'Geocode Status', 'Geocode Status', 'Project', 'varchar', 255, 0, NULL, '2018-02-08 17:24:14', 0, 0, 0, 0, 1, 'true', NULL, '', '', ''),
('Projectjjwg_maps_lat_c', 'jjwg_maps_lat_c', 'LBL_JJWG_MAPS_LAT', '', 'Latitude', 'Project', 'float', 10, 0, '0.00000000', '2018-02-08 17:24:14', 0, 0, 0, 0, 1, 'true', '8', '', '', ''),
('Projectjjwg_maps_lng_c', 'jjwg_maps_lng_c', 'LBL_JJWG_MAPS_LNG', '', 'Longitude', 'Project', 'float', 11, 0, '0.00000000', '2018-02-08 17:24:14', 0, 0, 0, 0, 1, 'true', '8', '', '', ''),
('Projectphoto_c', 'photo_c', 'LBL_PHOTO', 'Photo', 'Photo', 'Project', 'image', 255, 0, NULL, '2018-04-01 07:59:13', 0, 0, 0, 0, 1, 'true', '', '120', '', ''),
('Prospectsjjwg_maps_address_c', 'jjwg_maps_address_c', 'LBL_JJWG_MAPS_ADDRESS', 'Address', 'Address', 'Prospects', 'varchar', 255, 0, NULL, '2018-02-08 17:24:14', 0, 0, 0, 0, 1, 'true', NULL, '', '', ''),
('Prospectsjjwg_maps_geocode_status_c', 'jjwg_maps_geocode_status_c', 'LBL_JJWG_MAPS_GEOCODE_STATUS', 'Geocode Status', 'Geocode Status', 'Prospects', 'varchar', 255, 0, NULL, '2018-02-08 17:24:14', 0, 0, 0, 0, 1, 'true', NULL, '', '', ''),
('Prospectsjjwg_maps_lat_c', 'jjwg_maps_lat_c', 'LBL_JJWG_MAPS_LAT', '', 'Latitude', 'Prospects', 'float', 10, 0, '0.00000000', '2018-02-08 17:24:14', 0, 0, 0, 0, 1, 'true', '8', '', '', ''),
('Prospectsjjwg_maps_lng_c', 'jjwg_maps_lng_c', 'LBL_JJWG_MAPS_LNG', '', 'Longitude', 'Prospects', 'float', 11, 0, '0.00000000', '2018-02-08 17:24:14', 0, 0, 0, 0, 1, 'true', '8', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `folders`
--

CREATE TABLE `folders` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `folder_type` varchar(25) DEFAULT NULL,
  `parent_folder` char(36) DEFAULT NULL,
  `has_child` tinyint(1) DEFAULT '0',
  `is_group` tinyint(1) DEFAULT '0',
  `is_dynamic` tinyint(1) DEFAULT '0',
  `dynamic_query` text,
  `assign_to_id` char(36) DEFAULT NULL,
  `created_by` char(36) NOT NULL,
  `modified_by` char(36) NOT NULL,
  `deleted` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `folders_rel`
--

CREATE TABLE `folders_rel` (
  `id` char(36) NOT NULL,
  `folder_id` char(36) NOT NULL,
  `polymorphic_module` varchar(25) DEFAULT NULL,
  `polymorphic_id` char(36) NOT NULL,
  `deleted` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `folders_subscriptions`
--

CREATE TABLE `folders_subscriptions` (
  `id` char(36) NOT NULL,
  `folder_id` char(36) NOT NULL,
  `assigned_user_id` char(36) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `fp_events`
--

CREATE TABLE `fp_events` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `duration_hours` int(3) DEFAULT NULL,
  `duration_minutes` int(2) DEFAULT NULL,
  `date_start` datetime DEFAULT NULL,
  `date_end` datetime DEFAULT NULL,
  `budget` decimal(26,6) DEFAULT NULL,
  `currency_id` char(36) DEFAULT NULL,
  `invite_templates` varchar(100) DEFAULT NULL,
  `accept_redirect` varchar(255) DEFAULT NULL,
  `decline_redirect` varchar(255) DEFAULT NULL,
  `activity_status_type` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `fp_events_audit`
--

CREATE TABLE `fp_events_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text,
  `after_value_text` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `fp_events_contacts_c`
--

CREATE TABLE `fp_events_contacts_c` (
  `id` varchar(36) NOT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `fp_events_contactsfp_events_ida` varchar(36) DEFAULT NULL,
  `fp_events_contactscontacts_idb` varchar(36) DEFAULT NULL,
  `invite_status` varchar(25) DEFAULT 'Not Invited',
  `accept_status` varchar(25) DEFAULT 'No Response',
  `email_responded` int(2) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `fp_events_fp_event_delegates_1_c`
--

CREATE TABLE `fp_events_fp_event_delegates_1_c` (
  `id` varchar(36) NOT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `fp_events_fp_event_delegates_1fp_events_ida` varchar(36) DEFAULT NULL,
  `fp_events_fp_event_delegates_1fp_event_delegates_idb` varchar(36) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `fp_events_fp_event_locations_1_c`
--

CREATE TABLE `fp_events_fp_event_locations_1_c` (
  `id` varchar(36) NOT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `fp_events_fp_event_locations_1fp_events_ida` varchar(36) DEFAULT NULL,
  `fp_events_fp_event_locations_1fp_event_locations_idb` varchar(36) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `fp_events_leads_1_c`
--

CREATE TABLE `fp_events_leads_1_c` (
  `id` varchar(36) NOT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `fp_events_leads_1fp_events_ida` varchar(36) DEFAULT NULL,
  `fp_events_leads_1leads_idb` varchar(36) DEFAULT NULL,
  `invite_status` varchar(25) DEFAULT 'Not Invited',
  `accept_status` varchar(25) DEFAULT 'No Response',
  `email_responded` int(2) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `fp_events_prospects_1_c`
--

CREATE TABLE `fp_events_prospects_1_c` (
  `id` varchar(36) NOT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `fp_events_prospects_1fp_events_ida` varchar(36) DEFAULT NULL,
  `fp_events_prospects_1prospects_idb` varchar(36) DEFAULT NULL,
  `invite_status` varchar(25) DEFAULT 'Not Invited',
  `accept_status` varchar(25) DEFAULT 'No Response',
  `email_responded` int(2) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `fp_event_locations`
--

CREATE TABLE `fp_event_locations` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `address_city` varchar(100) DEFAULT NULL,
  `address_country` varchar(100) DEFAULT NULL,
  `address_postalcode` varchar(20) DEFAULT NULL,
  `address_state` varchar(100) DEFAULT NULL,
  `capacity` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `fp_event_locations_audit`
--

CREATE TABLE `fp_event_locations_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text,
  `after_value_text` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `fp_event_locations_fp_events_1_c`
--

CREATE TABLE `fp_event_locations_fp_events_1_c` (
  `id` varchar(36) NOT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `fp_event_locations_fp_events_1fp_event_locations_ida` varchar(36) DEFAULT NULL,
  `fp_event_locations_fp_events_1fp_events_idb` varchar(36) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `import_maps`
--

CREATE TABLE `import_maps` (
  `id` char(36) NOT NULL,
  `name` varchar(254) DEFAULT NULL,
  `source` varchar(36) DEFAULT NULL,
  `enclosure` varchar(1) DEFAULT ' ',
  `delimiter` varchar(1) DEFAULT ',',
  `module` varchar(36) DEFAULT NULL,
  `content` text,
  `default_values` text,
  `has_header` tinyint(1) DEFAULT '1',
  `deleted` tinyint(1) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `assigned_user_id` char(36) DEFAULT NULL,
  `is_published` varchar(3) DEFAULT 'no'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `inbound_email`
--

CREATE TABLE `inbound_email` (
  `id` varchar(36) NOT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `status` varchar(100) DEFAULT 'Active',
  `server_url` varchar(100) DEFAULT NULL,
  `email_user` varchar(100) DEFAULT NULL,
  `email_password` varchar(100) DEFAULT NULL,
  `port` int(5) DEFAULT NULL,
  `service` varchar(50) DEFAULT NULL,
  `mailbox` text,
  `delete_seen` tinyint(1) DEFAULT '0',
  `mailbox_type` varchar(10) DEFAULT NULL,
  `template_id` char(36) DEFAULT NULL,
  `stored_options` text,
  `group_id` char(36) DEFAULT NULL,
  `is_personal` tinyint(1) DEFAULT '0',
  `groupfolder_id` char(36) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `inbound_email_autoreply`
--

CREATE TABLE `inbound_email_autoreply` (
  `id` char(36) NOT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `autoreplied_to` varchar(100) DEFAULT NULL,
  `ie_id` char(36) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `inbound_email_cache_ts`
--

CREATE TABLE `inbound_email_cache_ts` (
  `id` varchar(255) NOT NULL,
  `ie_timestamp` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `invoice_payment_details`
--

CREATE TABLE `invoice_payment_details` (
  `id` char(36) NOT NULL,
  `invoice_id` char(36) NOT NULL,
  `payment_type` varchar(150) NOT NULL,
  `amount` decimal(26,6) NOT NULL DEFAULT '0.000000'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `jjwg_address_cache`
--

CREATE TABLE `jjwg_address_cache` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `lat` float(10,8) DEFAULT NULL,
  `lng` float(11,8) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `jjwg_address_cache_audit`
--

CREATE TABLE `jjwg_address_cache_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text,
  `after_value_text` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `jjwg_areas`
--

CREATE TABLE `jjwg_areas` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `city` varchar(255) DEFAULT NULL,
  `state` varchar(255) DEFAULT NULL,
  `country` varchar(255) DEFAULT NULL,
  `coordinates` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `jjwg_areas_audit`
--

CREATE TABLE `jjwg_areas_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text,
  `after_value_text` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `jjwg_maps`
--

CREATE TABLE `jjwg_maps` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `distance` float(9,4) DEFAULT NULL,
  `unit_type` varchar(100) DEFAULT 'mi',
  `module_type` varchar(100) DEFAULT 'Accounts',
  `parent_type` varchar(255) DEFAULT NULL,
  `parent_id` char(36) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `jjwg_maps_audit`
--

CREATE TABLE `jjwg_maps_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text,
  `after_value_text` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `jjwg_maps_jjwg_areas_c`
--

CREATE TABLE `jjwg_maps_jjwg_areas_c` (
  `id` varchar(36) NOT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `jjwg_maps_5304wg_maps_ida` varchar(36) DEFAULT NULL,
  `jjwg_maps_41f2g_areas_idb` varchar(36) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `jjwg_maps_jjwg_markers_c`
--

CREATE TABLE `jjwg_maps_jjwg_markers_c` (
  `id` varchar(36) NOT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `jjwg_maps_b229wg_maps_ida` varchar(36) DEFAULT NULL,
  `jjwg_maps_2e31markers_idb` varchar(36) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `jjwg_markers`
--

CREATE TABLE `jjwg_markers` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `city` varchar(255) DEFAULT NULL,
  `state` varchar(255) DEFAULT NULL,
  `country` varchar(255) DEFAULT NULL,
  `jjwg_maps_lat` float(10,8) DEFAULT '0.00000000',
  `jjwg_maps_lng` float(11,8) DEFAULT '0.00000000',
  `marker_image` varchar(100) DEFAULT 'company'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `jjwg_markers_audit`
--

CREATE TABLE `jjwg_markers_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text,
  `after_value_text` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `job_queue`
--

CREATE TABLE `job_queue` (
  `assigned_user_id` char(36) DEFAULT NULL,
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `scheduler_id` char(36) DEFAULT NULL,
  `execute_time` datetime DEFAULT NULL,
  `status` varchar(20) DEFAULT NULL,
  `resolution` varchar(20) DEFAULT NULL,
  `message` text,
  `target` varchar(255) DEFAULT NULL,
  `data` text,
  `requeue` tinyint(1) DEFAULT '0',
  `retry_count` tinyint(4) DEFAULT NULL,
  `failure_count` tinyint(4) DEFAULT NULL,
  `job_delay` int(11) DEFAULT NULL,
  `client` varchar(255) DEFAULT NULL,
  `percent_complete` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `leads`
--

CREATE TABLE `leads` (
  `id` char(36) NOT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `salutation` varchar(255) DEFAULT NULL,
  `first_name` varchar(100) DEFAULT NULL,
  `last_name` varchar(100) DEFAULT NULL,
  `title` varchar(100) DEFAULT NULL,
  `photo` varchar(255) DEFAULT NULL,
  `department` varchar(100) DEFAULT NULL,
  `do_not_call` tinyint(1) DEFAULT '0',
  `phone_home` varchar(100) DEFAULT NULL,
  `phone_mobile` varchar(100) DEFAULT NULL,
  `phone_work` varchar(100) DEFAULT NULL,
  `phone_other` varchar(100) DEFAULT NULL,
  `phone_fax` varchar(100) DEFAULT NULL,
  `primary_address_street` varchar(150) DEFAULT NULL,
  `primary_address_city` varchar(100) DEFAULT NULL,
  `primary_address_state` varchar(100) DEFAULT NULL,
  `primary_address_postalcode` varchar(20) DEFAULT NULL,
  `primary_address_country` varchar(255) DEFAULT NULL,
  `alt_address_street` varchar(150) DEFAULT NULL,
  `alt_address_city` varchar(100) DEFAULT NULL,
  `alt_address_state` varchar(100) DEFAULT NULL,
  `alt_address_postalcode` varchar(20) DEFAULT NULL,
  `alt_address_country` varchar(255) DEFAULT NULL,
  `assistant` varchar(75) DEFAULT NULL,
  `assistant_phone` varchar(100) DEFAULT NULL,
  `converted` tinyint(1) DEFAULT '0',
  `refered_by` varchar(100) DEFAULT NULL,
  `lead_source` varchar(100) DEFAULT NULL,
  `lead_source_description` text,
  `status` varchar(100) DEFAULT NULL,
  `status_description` text,
  `reports_to_id` char(36) DEFAULT NULL,
  `account_name` varchar(255) DEFAULT NULL,
  `account_description` text,
  `contact_id` char(36) DEFAULT NULL,
  `account_id` char(36) DEFAULT NULL,
  `opportunity_id` char(36) DEFAULT NULL,
  `opportunity_name` varchar(255) DEFAULT NULL,
  `opportunity_amount` varchar(50) DEFAULT NULL,
  `campaign_id` char(36) DEFAULT NULL,
  `birthdate` date DEFAULT NULL,
  `portal_name` varchar(255) DEFAULT NULL,
  `portal_app` varchar(255) DEFAULT NULL,
  `website` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `leads_audit`
--

CREATE TABLE `leads_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text,
  `after_value_text` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `leads_cstm`
--

CREATE TABLE `leads_cstm` (
  `id_c` char(36) NOT NULL,
  `jjwg_maps_lng_c` float(11,8) DEFAULT '0.00000000',
  `jjwg_maps_lat_c` float(10,8) DEFAULT '0.00000000',
  `jjwg_maps_geocode_status_c` varchar(255) DEFAULT NULL,
  `jjwg_maps_address_c` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `linked_documents`
--

CREATE TABLE `linked_documents` (
  `id` varchar(36) NOT NULL,
  `parent_id` varchar(36) DEFAULT NULL,
  `parent_type` varchar(25) DEFAULT NULL,
  `document_id` varchar(36) DEFAULT NULL,
  `document_revision_id` varchar(36) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `meetings`
--

CREATE TABLE `meetings` (
  `id` char(36) NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `location` varchar(50) DEFAULT NULL,
  `password` varchar(50) DEFAULT NULL,
  `join_url` varchar(200) DEFAULT NULL,
  `host_url` varchar(400) DEFAULT NULL,
  `displayed_url` varchar(400) DEFAULT NULL,
  `creator` varchar(50) DEFAULT NULL,
  `external_id` varchar(50) DEFAULT NULL,
  `duration_hours` int(3) DEFAULT NULL,
  `duration_minutes` int(2) DEFAULT NULL,
  `date_start` datetime DEFAULT NULL,
  `date_end` datetime DEFAULT NULL,
  `parent_type` varchar(100) DEFAULT NULL,
  `status` varchar(100) DEFAULT 'Planned',
  `type` varchar(255) DEFAULT 'Sugar',
  `parent_id` char(36) DEFAULT NULL,
  `reminder_time` int(11) DEFAULT '-1',
  `email_reminder_time` int(11) DEFAULT '-1',
  `email_reminder_sent` tinyint(1) DEFAULT '0',
  `outlook_id` varchar(255) DEFAULT NULL,
  `sequence` int(11) DEFAULT '0',
  `repeat_type` varchar(36) DEFAULT NULL,
  `repeat_interval` int(3) DEFAULT '1',
  `repeat_dow` varchar(7) DEFAULT NULL,
  `repeat_until` date DEFAULT NULL,
  `repeat_count` int(7) DEFAULT NULL,
  `repeat_parent_id` char(36) DEFAULT NULL,
  `recurring_source` varchar(36) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `meetings_contacts`
--

CREATE TABLE `meetings_contacts` (
  `id` varchar(36) NOT NULL,
  `meeting_id` varchar(36) DEFAULT NULL,
  `contact_id` varchar(36) DEFAULT NULL,
  `required` varchar(1) DEFAULT '1',
  `accept_status` varchar(25) DEFAULT 'none',
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `meetings_cstm`
--

CREATE TABLE `meetings_cstm` (
  `id_c` char(36) NOT NULL,
  `jjwg_maps_lng_c` float(11,8) DEFAULT '0.00000000',
  `jjwg_maps_lat_c` float(10,8) DEFAULT '0.00000000',
  `jjwg_maps_geocode_status_c` varchar(255) DEFAULT NULL,
  `jjwg_maps_address_c` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `meetings_leads`
--

CREATE TABLE `meetings_leads` (
  `id` varchar(36) NOT NULL,
  `meeting_id` varchar(36) DEFAULT NULL,
  `lead_id` varchar(36) DEFAULT NULL,
  `required` varchar(1) DEFAULT '1',
  `accept_status` varchar(25) DEFAULT 'none',
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `meetings_users`
--

CREATE TABLE `meetings_users` (
  `id` varchar(36) NOT NULL,
  `meeting_id` varchar(36) DEFAULT NULL,
  `user_id` varchar(36) DEFAULT NULL,
  `required` varchar(1) DEFAULT '1',
  `accept_status` varchar(25) DEFAULT 'none',
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `notes`
--

CREATE TABLE `notes` (
  `assigned_user_id` char(36) DEFAULT NULL,
  `id` char(36) NOT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `file_mime_type` varchar(100) DEFAULT NULL,
  `filename` varchar(255) DEFAULT NULL,
  `parent_type` varchar(255) DEFAULT NULL,
  `parent_id` char(36) DEFAULT NULL,
  `contact_id` char(36) DEFAULT NULL,
  `portal_flag` tinyint(1) DEFAULT NULL,
  `embed_flag` tinyint(1) DEFAULT '0',
  `description` text,
  `deleted` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `notes`
--

INSERT INTO `notes` (`assigned_user_id`, `id`, `date_entered`, `date_modified`, `modified_user_id`, `created_by`, `name`, `file_mime_type`, `filename`, `parent_type`, `parent_id`, `contact_id`, `portal_flag`, `embed_flag`, `description`, `deleted`) VALUES
(NULL, '2e97ee0f-8ff2-9377-a275-5aa3c92dac6c', '2018-03-10 12:03:08', '2018-03-10 12:03:08', '1', '1', 'Invoice_asdas.pdf', 'application/pdf', 'Invoice_asdas.pdf', 'Emails', 'a4bff107-0c22-17a8-f11c-5aa3c95d6521', NULL, 0, 0, NULL, 0),
(NULL, 'd367a026-f74d-ff9a-9571-5a99950d1e98', '2018-03-02 18:17:08', '2018-03-02 18:17:08', '1', '1', 'Invoice_Cool.pdf', 'application/pdf', 'Invoice_Cool.pdf', 'Emails', '1e65bd64-81f5-40b8-b6b4-5a9995457506', NULL, 0, 0, NULL, 0);

-- --------------------------------------------------------

--
-- Table structure for table `oauth_consumer`
--

CREATE TABLE `oauth_consumer` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `c_key` varchar(255) DEFAULT NULL,
  `c_secret` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oauth_nonce`
--

CREATE TABLE `oauth_nonce` (
  `conskey` varchar(32) NOT NULL,
  `nonce` varchar(32) NOT NULL,
  `nonce_ts` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oauth_tokens`
--

CREATE TABLE `oauth_tokens` (
  `id` char(36) NOT NULL,
  `secret` varchar(32) DEFAULT NULL,
  `tstate` varchar(1) DEFAULT NULL,
  `consumer` char(36) NOT NULL,
  `token_ts` bigint(20) DEFAULT NULL,
  `verify` varchar(32) DEFAULT NULL,
  `deleted` tinyint(1) NOT NULL DEFAULT '0',
  `callback_url` varchar(255) DEFAULT NULL,
  `assigned_user_id` char(36) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `opportunities`
--

CREATE TABLE `opportunities` (
  `id` char(36) NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `opportunity_type` varchar(255) DEFAULT NULL,
  `campaign_id` char(36) DEFAULT NULL,
  `lead_source` varchar(50) DEFAULT NULL,
  `amount` double DEFAULT NULL,
  `amount_usdollar` double DEFAULT NULL,
  `currency_id` char(36) DEFAULT NULL,
  `date_closed` date DEFAULT NULL,
  `next_step` varchar(100) DEFAULT NULL,
  `sales_stage` varchar(255) DEFAULT NULL,
  `probability` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `opportunities_audit`
--

CREATE TABLE `opportunities_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text,
  `after_value_text` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `opportunities_contacts`
--

CREATE TABLE `opportunities_contacts` (
  `id` varchar(36) NOT NULL,
  `contact_id` varchar(36) DEFAULT NULL,
  `opportunity_id` varchar(36) DEFAULT NULL,
  `contact_role` varchar(50) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `opportunities_cstm`
--

CREATE TABLE `opportunities_cstm` (
  `id_c` char(36) NOT NULL,
  `jjwg_maps_lng_c` float(11,8) DEFAULT '0.00000000',
  `jjwg_maps_lat_c` float(10,8) DEFAULT '0.00000000',
  `jjwg_maps_geocode_status_c` varchar(255) DEFAULT NULL,
  `jjwg_maps_address_c` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `outbound_email`
--

CREATE TABLE `outbound_email` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `type` varchar(15) DEFAULT 'user',
  `user_id` char(36) NOT NULL,
  `smtp_from_name` varchar(255) DEFAULT NULL,
  `smtp_from_addr` varchar(255) DEFAULT NULL,
  `mail_sendtype` varchar(8) DEFAULT 'smtp',
  `mail_smtptype` varchar(20) DEFAULT 'other',
  `mail_smtpserver` varchar(100) DEFAULT NULL,
  `mail_smtpport` int(5) DEFAULT '0',
  `mail_smtpuser` varchar(100) DEFAULT NULL,
  `mail_smtppass` varchar(100) DEFAULT NULL,
  `mail_smtpauth_req` tinyint(1) DEFAULT '0',
  `mail_smtpssl` varchar(1) DEFAULT '0',
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `outbound_email`
--

INSERT INTO `outbound_email` (`id`, `name`, `type`, `user_id`, `smtp_from_name`, `smtp_from_addr`, `mail_sendtype`, `mail_smtptype`, `mail_smtpserver`, `mail_smtpport`, `mail_smtpuser`, `mail_smtppass`, `mail_smtpauth_req`, `mail_smtpssl`, `date_entered`, `date_modified`, `modified_user_id`, `created_by`, `deleted`, `assigned_user_id`) VALUES
('38a561f8-a9d8-d3b3-1cf8-5a7c881a4de0', 'system', 'system', '1', NULL, NULL, 'SMTP', 'other', 'smtp.gmail.com', 587, 'munot.sagar.test@gmail.com', 'PgBHELXvmszhg66XBPTY6A==', 1, '2', NULL, NULL, NULL, NULL, 0, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `outbound_email_audit`
--

CREATE TABLE `outbound_email_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text,
  `after_value_text` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `project`
--

CREATE TABLE `project` (
  `id` char(36) NOT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `assigned_user_id` char(36) DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `name` varchar(50) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `estimated_start_date` date DEFAULT NULL,
  `estimated_end_date` date DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `priority` varchar(255) DEFAULT NULL,
  `override_business_hours` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `projects_accounts`
--

CREATE TABLE `projects_accounts` (
  `id` varchar(36) NOT NULL,
  `account_id` varchar(36) DEFAULT NULL,
  `project_id` varchar(36) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `projects_bugs`
--

CREATE TABLE `projects_bugs` (
  `id` varchar(36) NOT NULL,
  `bug_id` varchar(36) DEFAULT NULL,
  `project_id` varchar(36) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `projects_cases`
--

CREATE TABLE `projects_cases` (
  `id` varchar(36) NOT NULL,
  `case_id` varchar(36) DEFAULT NULL,
  `project_id` varchar(36) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `projects_contacts`
--

CREATE TABLE `projects_contacts` (
  `id` varchar(36) NOT NULL,
  `contact_id` varchar(36) DEFAULT NULL,
  `project_id` varchar(36) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `projects_opportunities`
--

CREATE TABLE `projects_opportunities` (
  `id` varchar(36) NOT NULL,
  `opportunity_id` varchar(36) DEFAULT NULL,
  `project_id` varchar(36) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `projects_products`
--

CREATE TABLE `projects_products` (
  `id` varchar(36) NOT NULL,
  `product_id` varchar(36) DEFAULT NULL,
  `project_id` varchar(36) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `project_contacts_1_c`
--

CREATE TABLE `project_contacts_1_c` (
  `id` varchar(36) NOT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `project_contacts_1project_ida` varchar(36) DEFAULT NULL,
  `project_contacts_1contacts_idb` varchar(36) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `project_cstm`
--

CREATE TABLE `project_cstm` (
  `id_c` char(36) NOT NULL,
  `jjwg_maps_lng_c` float(11,8) DEFAULT '0.00000000',
  `jjwg_maps_lat_c` float(10,8) DEFAULT '0.00000000',
  `jjwg_maps_geocode_status_c` varchar(255) DEFAULT NULL,
  `jjwg_maps_address_c` varchar(255) DEFAULT NULL,
  `photo_c` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `project_task`
--

CREATE TABLE `project_task` (
  `id` char(36) NOT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `project_id` char(36) NOT NULL,
  `project_task_id` int(11) DEFAULT NULL,
  `name` varchar(50) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `relationship_type` varchar(255) DEFAULT NULL,
  `description` text,
  `predecessors` text,
  `date_start` date DEFAULT NULL,
  `time_start` int(11) DEFAULT NULL,
  `time_finish` int(11) DEFAULT NULL,
  `date_finish` date DEFAULT NULL,
  `duration` int(11) DEFAULT NULL,
  `duration_unit` text,
  `actual_duration` int(11) DEFAULT NULL,
  `percent_complete` int(11) DEFAULT NULL,
  `date_due` date DEFAULT NULL,
  `time_due` time DEFAULT NULL,
  `parent_task_id` int(11) DEFAULT NULL,
  `assigned_user_id` char(36) DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `priority` varchar(255) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `milestone_flag` tinyint(1) DEFAULT NULL,
  `order_number` int(11) DEFAULT '1',
  `task_number` int(11) DEFAULT NULL,
  `estimated_effort` int(11) DEFAULT NULL,
  `actual_effort` int(11) DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `utilization` int(11) DEFAULT '100'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `project_task_audit`
--

CREATE TABLE `project_task_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text,
  `after_value_text` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `project_users_1_c`
--

CREATE TABLE `project_users_1_c` (
  `id` varchar(36) NOT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `project_users_1project_ida` varchar(36) DEFAULT NULL,
  `project_users_1users_idb` varchar(36) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `prospects`
--

CREATE TABLE `prospects` (
  `id` char(36) NOT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `salutation` varchar(255) DEFAULT NULL,
  `first_name` varchar(100) DEFAULT NULL,
  `last_name` varchar(100) DEFAULT NULL,
  `title` varchar(100) DEFAULT NULL,
  `photo` varchar(255) DEFAULT NULL,
  `department` varchar(255) DEFAULT NULL,
  `do_not_call` tinyint(1) DEFAULT '0',
  `phone_home` varchar(100) DEFAULT NULL,
  `phone_mobile` varchar(100) DEFAULT NULL,
  `phone_work` varchar(100) DEFAULT NULL,
  `phone_other` varchar(100) DEFAULT NULL,
  `phone_fax` varchar(100) DEFAULT NULL,
  `primary_address_street` varchar(150) DEFAULT NULL,
  `primary_address_city` varchar(100) DEFAULT NULL,
  `primary_address_state` varchar(100) DEFAULT NULL,
  `primary_address_postalcode` varchar(20) DEFAULT NULL,
  `primary_address_country` varchar(255) DEFAULT NULL,
  `alt_address_street` varchar(150) DEFAULT NULL,
  `alt_address_city` varchar(100) DEFAULT NULL,
  `alt_address_state` varchar(100) DEFAULT NULL,
  `alt_address_postalcode` varchar(20) DEFAULT NULL,
  `alt_address_country` varchar(255) DEFAULT NULL,
  `assistant` varchar(75) DEFAULT NULL,
  `assistant_phone` varchar(100) DEFAULT NULL,
  `tracker_key` int(11) NOT NULL,
  `birthdate` date DEFAULT NULL,
  `lead_id` char(36) DEFAULT NULL,
  `account_name` varchar(150) DEFAULT NULL,
  `campaign_id` char(36) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `prospects_cstm`
--

CREATE TABLE `prospects_cstm` (
  `id_c` char(36) NOT NULL,
  `jjwg_maps_lng_c` float(11,8) DEFAULT '0.00000000',
  `jjwg_maps_lat_c` float(10,8) DEFAULT '0.00000000',
  `jjwg_maps_geocode_status_c` varchar(255) DEFAULT NULL,
  `jjwg_maps_address_c` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `prospect_lists`
--

CREATE TABLE `prospect_lists` (
  `assigned_user_id` char(36) DEFAULT NULL,
  `id` char(36) NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `list_type` varchar(100) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT NULL,
  `description` text,
  `domain_name` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `prospect_lists_prospects`
--

CREATE TABLE `prospect_lists_prospects` (
  `id` varchar(36) NOT NULL,
  `prospect_list_id` varchar(36) DEFAULT NULL,
  `related_id` varchar(36) DEFAULT NULL,
  `related_type` varchar(25) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `prospect_list_campaigns`
--

CREATE TABLE `prospect_list_campaigns` (
  `id` varchar(36) NOT NULL,
  `prospect_list_id` varchar(36) DEFAULT NULL,
  `campaign_id` varchar(36) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `relationships`
--

CREATE TABLE `relationships` (
  `id` char(36) NOT NULL,
  `relationship_name` varchar(150) DEFAULT NULL,
  `lhs_module` varchar(100) DEFAULT NULL,
  `lhs_table` varchar(64) DEFAULT NULL,
  `lhs_key` varchar(64) DEFAULT NULL,
  `rhs_module` varchar(100) DEFAULT NULL,
  `rhs_table` varchar(64) DEFAULT NULL,
  `rhs_key` varchar(64) DEFAULT NULL,
  `join_table` varchar(64) DEFAULT NULL,
  `join_key_lhs` varchar(64) DEFAULT NULL,
  `join_key_rhs` varchar(64) DEFAULT NULL,
  `relationship_type` varchar(64) DEFAULT NULL,
  `relationship_role_column` varchar(64) DEFAULT NULL,
  `relationship_role_column_value` varchar(50) DEFAULT NULL,
  `reverse` tinyint(1) DEFAULT '0',
  `deleted` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `relationships`
--

INSERT INTO `relationships` (`id`, `relationship_name`, `lhs_module`, `lhs_table`, `lhs_key`, `rhs_module`, `rhs_table`, `rhs_key`, `join_table`, `join_key_lhs`, `join_key_rhs`, `relationship_type`, `relationship_role_column`, `relationship_role_column_value`, `reverse`, `deleted`) VALUES
('106f0be2-c1ca-4271-a5d5-5acd07e282db', 'contacts_assigned_user', 'Users', 'users', 'id', 'Contacts', 'contacts', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('107f3768-4763-5a32-0a08-5acd078512e7', 'meetings_modified_user', 'Users', 'users', 'id', 'Meetings', 'meetings', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('10aecba1-4f4b-c0bf-3822-5acd073f7e6b', 'atomi_invoice_commission_report_assigned_user', 'Users', 'users', 'id', 'atomi_Invoice_Commission_Report', 'atomi_invoice_commission_report', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('114db5ce-07d9-79aa-0795-5acd076b2922', 'securitygroups_contacts', 'SecurityGroups', 'securitygroups', 'id', 'Contacts', 'contacts', 'id', 'securitygroups_records', 'securitygroup_id', 'record_id', 'many-to-many', 'module', 'Contacts', 0, 0),
('11c11d85-da82-bdc7-9293-5acd07c5ed53', 'inbound_email_created_by', 'Users', 'users', 'id', 'InboundEmail', 'inbound_email', 'created_by', NULL, NULL, NULL, 'one-to-one', NULL, NULL, 0, 0),
('127095d9-5607-8ab9-de56-5acd07354830', 'projects_emails', 'Project', 'project', 'id', 'Emails', 'emails', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Project', 0, 0),
('12b1bfc8-0f39-0e04-f99a-5acd07dd6bb1', 'securitygroups_users', 'SecurityGroups', 'securitygroups', 'id', 'Users', 'users', 'id', 'securitygroups_users', 'securitygroup_id', 'user_id', 'many-to-many', NULL, NULL, 0, 0),
('1343173f-ec12-6e81-9b32-5acd076277c1', 'opportunity_notes', 'Opportunities', 'opportunities', 'id', 'Notes', 'notes', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Opportunities', 0, 0),
('1364d69c-b77d-d7ed-4ee1-5acd07d0dde6', 'bugs_modified_user', 'Users', 'users', 'id', 'Bugs', 'bugs', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('1472fc5e-3196-1e17-2413-5acd071fffd3', 'aod_index_created_by', 'Users', 'users', 'id', 'AOD_Index', 'aod_index', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('14f902f4-2652-7c0c-9d4e-5acd072cca1e', 'emails_modified_user', 'Users', 'users', 'id', 'Emails', 'emails', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('15c30669-1567-721b-13bb-5acd070ea5ac', 'aok_knowledge_base_categories_assigned_user', 'Users', 'users', 'id', 'AOK_Knowledge_Base_Categories', 'aok_knowledge_base_categories', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('15d91ac2-551a-a99f-6074-5acd0709d51b', 'sugarfeed_assigned_user', 'Users', 'users', 'id', 'SugarFeed', 'sugarfeed', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('162107bc-2af4-1fbb-053b-5acd07b14f02', 'campaign_contacts', 'Campaigns', 'campaigns', 'id', 'Contacts', 'contacts', 'campaign_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('1651fa55-7558-ec53-e18b-5acd0771d0a1', 'aor_charts_created_by', 'Users', 'users', 'id', 'AOR_Charts', 'aor_charts', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('16691c6b-84c9-895c-4a78-5acd070b6aef', 'accounts_created_by', 'Users', 'users', 'id', 'Accounts', 'accounts', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('167652b3-a2c3-2793-0ad5-5acd07c50b25', 'emails_opportunities_rel', 'Emails', 'emails', 'id', 'Opportunities', 'opportunities', 'id', 'emails_beans', 'email_id', 'bean_id', 'many-to-many', 'bean_module', 'Opportunities', 0, 0),
('16ca090d-3ac5-e948-2a66-5acd07f87633', 'aos_line_item_groups_created_by', 'Users', 'users', 'id', 'AOS_Line_Item_Groups', 'aos_line_item_groups', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('16fb04b0-1f75-4fa7-1d9b-5acd0768411c', 'aos_invoices_atomi_invoice_payment_details_1', 'AOS_Invoices', 'aos_invoices', 'id', 'atomi_invoice_payment_details', 'atomi_invoice_payment_details', 'id', 'aos_invoices_atomi_invoice_payment_details_1_c', 'aos_invoices_atomi_invoice_payment_details_1aos_invoices_ida', 'aos_invoic9687details_idb', 'many-to-many', NULL, NULL, 0, 0),
('1739f0b5-3525-9248-54fb-5acd072f93ca', 'securitygroups_atomi_invoice_commission_report', 'SecurityGroups', 'securitygroups', 'id', 'atomi_Invoice_Commission_Report', 'atomi_invoice_commission_report', 'id', 'securitygroups_records', 'securitygroup_id', 'record_id', 'many-to-many', 'module', 'atomi_Invoice_Commission_Report', 0, 0),
('17d92479-1327-72ff-18ef-5acd07f7e809', 'inbound_email_modified_user_id', 'Users', 'users', 'id', 'InboundEmail', 'inbound_email', 'modified_user_id', NULL, NULL, NULL, 'one-to-one', NULL, NULL, 0, 0),
('19649d5d-ce43-a140-f56a-5acd07ad6b7a', 'projects_project_tasks', 'Project', 'project', 'id', 'ProjectTask', 'project_task', 'project_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('1a3c0399-0459-012a-bdc4-5acd072c02a1', 'aok_knowledgebase_modified_user', 'Users', 'users', 'id', 'AOK_KnowledgeBase', 'aok_knowledgebase', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('1a718fec-9392-3955-fade-5acd075a6100', 'prospect_campaign_log', 'Prospects', 'prospects', 'id', 'CampaignLog', 'campaign_log', 'target_id', NULL, NULL, NULL, 'one-to-many', 'target_type', 'Prospects', 0, 0),
('1b8f6d78-53bb-de48-058f-5acd07bf4804', 'aod_index_assigned_user', 'Users', 'users', 'id', 'AOD_Index', 'aod_index', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('1c58f7a9-a710-09b6-86ec-5acd07851ea4', 'fp_events_modified_user', 'Users', 'users', 'id', 'FP_events', 'fp_events', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('1c677a26-d4bf-ea41-c562-5acd079732eb', 'aor_charts_aor_reports', 'AOR_Reports', 'aor_reports', 'id', 'AOR_Charts', 'aor_charts', 'aor_report_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('1cf8df33-1002-3a27-4c53-5acd07fca730', 'emails_tasks_rel', 'Emails', 'emails', 'id', 'Tasks', 'tasks', 'id', 'emails_beans', 'email_id', 'bean_id', 'many-to-many', 'bean_module', 'Tasks', 0, 0),
('1e45ee96-e585-372c-6d99-5acd07b096f2', 'documents_contacts', 'Documents', 'documents', 'id', 'Contacts', 'contacts', 'id', 'documents_contacts', 'document_id', 'contact_id', 'many-to-many', NULL, NULL, 0, 0),
('1f5c88d6-ab64-6797-74f8-5acd07932b20', 'meetings_created_by', 'Users', 'users', 'id', 'Meetings', 'meetings', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('20046a11-0e43-7836-764e-5acd07beebca', 'projects_assigned_user', 'Users', 'users', 'id', 'Project', 'project', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('20310093-a045-8ee9-1d9a-5acd074fd2a4', 'securitygroups_aos_product_categories', 'SecurityGroups', 'securitygroups', 'id', 'AOS_Product_Categories', 'aos_product_categories', 'id', 'securitygroups_records', 'securitygroup_id', 'record_id', 'many-to-many', 'module', 'AOS_Product_Categories', 0, 0),
('211a952b-de48-60b1-3ea4-5acd075766e1', 'jjwg_address_cache_modified_user', 'Users', 'users', 'id', 'jjwg_Address_Cache', 'jjwg_address_cache', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('2256cd22-56c2-c7e2-1259-5acd07422935', 'fp_events_created_by', 'Users', 'users', 'id', 'FP_events', 'fp_events', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('2280edf7-7f23-488a-7096-5acd07046ce5', 'emails_created_by', 'Users', 'users', 'id', 'Emails', 'emails', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('22c6f245-10c7-5b4c-d3b8-5acd072e7d29', 'bugs_created_by', 'Users', 'users', 'id', 'Bugs', 'bugs', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('233f2213-cd9c-ca08-bf71-5acd07ef8364', 'aos_quotes_modified_user', 'Users', 'users', 'id', 'AOS_Quotes', 'aos_quotes', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('239829d4-f5be-9ccc-bf36-5acd07c85b0d', 'emails_users_rel', 'Emails', 'emails', 'id', 'Users', 'users', 'id', 'emails_beans', 'email_id', 'bean_id', 'many-to-many', 'bean_module', 'Users', 0, 0),
('23e5e2be-9576-95cc-2b71-5acd073e6ddf', 'accounts_assigned_user', 'Users', 'users', 'id', 'Accounts', 'accounts', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('244f5678-6384-b3f5-e55f-5acd0751e9e7', 'contacts_email_addresses', 'Contacts', 'contacts', 'id', 'EmailAddresses', 'email_addresses', 'id', 'email_addr_bean_rel', 'bean_id', 'email_address_id', 'many-to-many', 'bean_module', 'Contacts', 0, 0),
('24771a7c-30ef-0ead-aa14-5acd07b0e616', 'aok_knowledgebase_created_by', 'Users', 'users', 'id', 'AOK_KnowledgeBase', 'aok_knowledgebase', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('248acb1c-3e48-f41d-3da6-5acd07f7431c', 'campaign_leads', 'Campaigns', 'campaigns', 'id', 'Leads', 'leads', 'campaign_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('24b17162-df56-5f68-43cc-5acd0780b45a', 'am_projecttemplates_created_by', 'Users', 'users', 'id', 'AM_ProjectTemplates', 'am_projecttemplates', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('24bfaa1a-7256-eaca-3b0e-5acd07c79814', 'aos_pdf_templates_modified_user', 'Users', 'users', 'id', 'AOS_PDF_Templates', 'aos_pdf_templates', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('24bfae78-552c-bf13-1f70-5acd07681ec5', 'documents_opportunities', 'Documents', 'documents', 'id', 'Opportunities', 'opportunities', 'id', 'documents_opportunities', 'document_id', 'opportunity_id', 'many-to-many', NULL, NULL, 0, 0),
('26ba2939-c388-369b-8fdc-5acd07f49f8b', 'jjwg_address_cache_created_by', 'Users', 'users', 'id', 'jjwg_Address_Cache', 'jjwg_address_cache', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('26f07802-230c-e759-c437-5acd07fe2db9', 'projects_modified_user', 'Users', 'users', 'id', 'Project', 'project', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('26fb9e3c-9c98-0e0d-c08b-5acd0724a1a9', 'aos_products_modified_user', 'Users', 'users', 'id', 'AOS_Products', 'aos_products', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('274b51a9-9a02-27fc-b08a-5acd07d2d81a', 'bugs_assigned_user', 'Users', 'users', 'id', 'Bugs', 'bugs', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('286854f6-75e7-6ab7-8efc-5acd07a9bb3f', 'securitygroups_notes', 'SecurityGroups', 'securitygroups', 'id', 'Notes', 'notes', 'id', 'securitygroups_records', 'securitygroup_id', 'record_id', 'many-to-many', 'module', 'Notes', 0, 0),
('2954dc8c-273b-3754-9d92-5acd071b1bc1', 'fp_events_assigned_user', 'Users', 'users', 'id', 'FP_events', 'fp_events', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('2a173134-9a1b-cd70-fdb0-5acd07dbd5c3', 'aos_quotes_created_by', 'Users', 'users', 'id', 'AOS_Quotes', 'aos_quotes', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('2a4e493d-1138-cf20-8afc-5acd07b5b76b', 'atomi_invoice_payment_details_modified_user', 'Users', 'users', 'id', 'atomi_invoice_payment_details', 'atomi_invoice_payment_details', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('2b390572-6b42-a0d0-6315-5acd076a4c45', 'documents_cases', 'Documents', 'documents', 'id', 'Cases', 'cases', 'id', 'documents_cases', 'document_id', 'case_id', 'many-to-many', NULL, NULL, 0, 0),
('2be53cf4-57a8-bcbe-d7c6-5acd07cd8162', 'campaign_prospects', 'Campaigns', 'campaigns', 'id', 'Prospects', 'prospects', 'campaign_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('2c5b4c42-fc4c-32c2-6b18-5acd07380160', 'aop_case_events_modified_user', 'Users', 'users', 'id', 'AOP_Case_Events', 'aop_case_events', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('2d7d2605-4505-5cba-bda2-5acd079c3bb8', 'jjwg_address_cache_assigned_user', 'Users', 'users', 'id', 'jjwg_Address_Cache', 'jjwg_address_cache', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('2dcac7a2-5e71-e083-e5d7-5acd07790185', 'projects_created_by', 'Users', 'users', 'id', 'Project', 'project', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('2ee49076-44b5-1a48-7db6-5acd0733c116', 'eapm_modified_user', 'Users', 'users', 'id', 'EAPM', 'eapm', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('2f85d719-2627-bda8-a663-5acd073190bb', 'documents_bugs', 'Documents', 'documents', 'id', 'Bugs', 'bugs', 'id', 'documents_bugs', 'document_id', 'bug_id', 'many-to-many', NULL, NULL, 0, 0),
('2f9cad64-b1bd-3bd7-3438-5acd072d86ea', 'atomi_invoice_payment_details_created_by', 'Users', 'users', 'id', 'atomi_invoice_payment_details', 'atomi_invoice_payment_details', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('2fccf757-df52-e829-488c-5acd073bfe26', 'aor_conditions_modified_user', 'Users', 'users', 'id', 'AOR_Conditions', 'aor_conditions', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('2fe186b6-22bd-3b70-cb4b-5acd070a7a33', 'securitygroups_fp_events', 'SecurityGroups', 'securitygroups', 'id', 'FP_events', 'fp_events', 'id', 'securitygroups_records', 'securitygroup_id', 'record_id', 'many-to-many', 'module', 'FP_events', 0, 0),
('3098015e-3532-27a3-6deb-5acd076abd89', 'securitygroups_bugs', 'SecurityGroups', 'securitygroups', 'id', 'Bugs', 'bugs', 'id', 'securitygroups_records', 'securitygroup_id', 'record_id', 'many-to-many', 'module', 'Bugs', 0, 0),
('30c4b21e-1185-bdc8-5c17-5acd07d0a77c', 'aos_quotes_assigned_user', 'Users', 'users', 'id', 'AOS_Quotes', 'aos_quotes', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('3273e62d-a06d-fe75-7956-5acd07990b34', 'meetings_assigned_user', 'Users', 'users', 'id', 'Meetings', 'meetings', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('328a0bfb-0872-55a6-1b34-5acd071b3650', 'campaign_opportunities', 'Campaigns', 'campaigns', 'id', 'Opportunities', 'opportunities', 'campaign_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('3298375e-b30e-4ce7-a182-5acd070f80f1', 'emails_assigned_user', 'Users', 'users', 'id', 'Emails', 'emails', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('332b7213-9812-1ed8-1fcf-5acd07ed711e', 'emails_project_task_rel', 'Emails', 'emails', 'id', 'ProjectTask', 'project_task', 'id', 'emails_beans', 'email_id', 'bean_id', 'many-to-many', 'bean_module', 'ProjectTask', 0, 0),
('336a6070-246b-ab91-80f2-5acd077e68e2', 'email_template_email_marketings', 'EmailTemplates', 'email_templates', 'id', 'EmailMarketing', 'email_marketing', 'template_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('338db462-06dc-8805-4295-5acd07e64ba8', 'lead_notes', 'Leads', 'leads', 'id', 'Notes', 'notes', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Leads', 0, 0),
('33f06b7b-2ee3-3ea3-fa05-5acd07afb833', 'aop_case_events_created_by', 'Users', 'users', 'id', 'AOP_Case_Events', 'aop_case_events', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('3439d6ce-2eb8-2636-8fd1-5acd0764936b', 'securitygroups_accounts', 'SecurityGroups', 'securitygroups', 'id', 'Accounts', 'accounts', 'id', 'securitygroups_records', 'securitygroup_id', 'record_id', 'many-to-many', 'module', 'Accounts', 0, 0),
('34959c39-b3b1-e9ae-594b-5acd0755ced7', 'contacts_email_addresses_primary', 'Contacts', 'contacts', 'id', 'EmailAddresses', 'email_addresses', 'id', 'email_addr_bean_rel', 'bean_id', 'email_address_id', 'many-to-many', 'primary_address', '1', 0, 0),
('3512b8e4-9c02-86db-fb08-5acd07db6afb', 'bug_tasks', 'Bugs', 'bugs', 'id', 'Tasks', 'tasks', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Bugs', 0, 0),
('35200826-eeea-fa84-41e4-5acd07a831e0', 'contacts_cases', 'Contacts', 'contacts', 'id', 'Cases', 'cases', 'id', 'contacts_cases', 'contact_id', 'case_id', 'many-to-many', NULL, NULL, 0, 0),
('35810148-9c85-79f0-1ad2-5acd0762a946', 'saved_search_assigned_user', 'Users', 'users', 'id', 'SavedSearch', 'saved_search', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('35dbc81c-d85b-96be-d14b-5acd073c39f9', 'am_projecttemplates_assigned_user', 'Users', 'users', 'id', 'AM_ProjectTemplates', 'am_projecttemplates', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('3645cdb7-1db3-c7cf-49a9-5acd075bd586', 'eapm_created_by', 'Users', 'users', 'id', 'EAPM', 'eapm', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('3695c6cd-8eed-4004-60b0-5acd07612475', 'atomi_invoice_payment_details_assigned_user', 'Users', 'users', 'id', 'atomi_invoice_payment_details', 'atomi_invoice_payment_details', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('37627ba7-01d4-aa93-b314-5acd07862801', 'aor_conditions_created_by', 'Users', 'users', 'id', 'AOR_Conditions', 'aor_conditions', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('37cd86d5-6705-ba6b-9031-5acd07b719c7', 'securitygroups_aos_quotes', 'SecurityGroups', 'securitygroups', 'id', 'AOS_Quotes', 'aos_quotes', 'id', 'securitygroups_records', 'securitygroup_id', 'record_id', 'many-to-many', 'module', 'AOS_Quotes', 0, 0),
('3858890c-022c-f215-46fe-5acd07b5fcb0', 'notes_modified_user', 'Users', 'users', 'id', 'Notes', 'notes', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('396ef5f4-b1c8-2a33-1910-5acd07f356b4', 'campaign_email_marketing', 'Campaigns', 'campaigns', 'id', 'EmailMarketing', 'email_marketing', 'campaign_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('39d3774b-d2f0-6e4e-91b2-5acd076abdb7', 'aok_knowledgebase_assigned_user', 'Users', 'users', 'id', 'AOK_KnowledgeBase', 'aok_knowledgebase', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('39e62ab5-9c87-bd89-9fac-5acd07047e7e', 'alerts_created_by', 'Users', 'users', 'id', 'Alerts', 'alerts', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('3a7d3347-7810-4437-147a-5acd077e64cd', 'aop_case_events_assigned_user', 'Users', 'users', 'id', 'AOP_Case_Events', 'aop_case_events', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('3b50f30d-6c5e-1a2f-f3f8-5acd07b0d6cd', 'contact_direct_reports', 'Contacts', 'contacts', 'id', 'Contacts', 'contacts', 'reports_to_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('3b71dede-8ca9-1f04-3e45-5acd070c8f33', 'bug_meetings', 'Bugs', 'bugs', 'id', 'Meetings', 'meetings', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Bugs', 0, 0),
('3d4929de-aaa2-5016-c7bf-5acd071570b0', 'securitygroups_atomi_invoice_payment_details', 'SecurityGroups', 'securitygroups', 'id', 'atomi_invoice_payment_details', 'atomi_invoice_payment_details', 'id', 'securitygroups_records', 'securitygroup_id', 'record_id', 'many-to-many', 'module', 'atomi_invoice_payment_details', 0, 0),
('3d70776f-ee1c-392a-4c45-5acd071cf769', 'eapm_assigned_user', 'Users', 'users', 'id', 'EAPM', 'eapm', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('3e0a0e3c-48dd-40d1-7ede-5acd07113cce', 'projects_meetings', 'Project', 'project', 'id', 'Meetings', 'meetings', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Project', 0, 0),
('3e86c610-9a3a-087e-cf91-5acd07d21bfb', 'aos_quotes_aos_product_quotes', 'AOS_Quotes', 'aos_quotes', 'id', 'AOS_Products_Quotes', 'aos_products_quotes', 'parent_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('3fe418c5-868f-dd75-6814-5acd072466eb', 'bug_calls', 'Bugs', 'bugs', 'id', 'Calls', 'calls', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Bugs', 0, 0),
('401a9585-9ada-720c-d748-5acd071dab67', 'campaign_emailman', 'Campaigns', 'campaigns', 'id', 'EmailMan', 'emailman', 'campaign_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('40b09e81-3956-15e4-0cd5-5acd0767ce29', 'fp_event_locations_modified_user', 'Users', 'users', 'id', 'FP_Event_Locations', 'fp_event_locations', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('40f3e473-6cc2-f814-a0dd-5acd074a7442', 'securitygroups_projecttask', 'SecurityGroups', 'securitygroups', 'id', 'ProjectTask', 'project_task', 'id', 'securitygroups_records', 'securitygroup_id', 'record_id', 'many-to-many', 'module', 'ProjectTask', 0, 0),
('429e72f0-a24d-2d83-d23e-5acd0747ac86', 'cases_aop_case_events', 'Cases', 'cases', 'id', 'AOP_Case_Events', 'aop_case_events', 'case_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('43a0d251-5ab0-e163-d7af-5acd0742d91b', 'calls_reschedule_modified_user', 'Users', 'users', 'id', 'Calls_Reschedule', 'calls_reschedule', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('4429483f-da0c-867a-6326-5acd072e73d5', 'securitygroups_meetings', 'SecurityGroups', 'securitygroups', 'id', 'Meetings', 'meetings', 'id', 'securitygroups_records', 'securitygroup_id', 'record_id', 'many-to-many', 'module', 'Meetings', 0, 0),
('44625cdf-56ce-0894-3f76-5acd07f6d63a', 'securitygroups_emails', 'SecurityGroups', 'securitygroups', 'id', 'Emails', 'emails', 'id', 'securitygroups_records', 'securitygroup_id', 'record_id', 'many-to-many', 'module', 'Emails', 0, 0),
('44b81068-1117-248b-51ca-5acd07abf162', 'alerts_assigned_user', 'Users', 'users', 'id', 'Alerts', 'alerts', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('45910cd9-56e6-72e7-0f8d-5acd07c988f0', 'fp_event_locations_created_by', 'Users', 'users', 'id', 'FP_Event_Locations', 'fp_event_locations', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('464db261-f8f0-135f-ff2c-5acd07c593d7', 'aok_knowledgebase_categories', 'AOK_KnowledgeBase', 'aok_knowledgebase', 'id', 'AOK_Knowledge_Base_Categories', 'aok_knowledge_base_categories', 'id', 'aok_knowledgebase_categories', 'aok_knowledgebase_id', 'aok_knowledge_base_categories_id', 'many-to-many', NULL, NULL, 0, 0),
('46ea270f-71d8-7793-4e96-5acd07616f0f', 'account_campaign_log', 'Accounts', 'accounts', 'id', 'CampaignLog', 'campaign_log', 'target_id', NULL, NULL, NULL, 'one-to-many', 'target_type', 'Accounts', 0, 0),
('46f106ff-06dc-9383-e14f-5acd07712454', 'campaign_campaignlog', 'Campaigns', 'campaigns', 'id', 'CampaignLog', 'campaign_log', 'campaign_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('474e06fd-777c-41fb-fbb4-5acd078a7a7f', 'contacts_users', 'Contacts', 'contacts', 'id', 'Users', 'users', 'id', 'contacts_users', 'contact_id', 'user_id', 'many-to-many', NULL, NULL, 0, 0),
('480c4787-9ce5-8576-65a1-5acd07605559', 'aos_quotes_aos_line_item_groups', 'AOS_Quotes', 'aos_quotes', 'id', 'AOS_Line_Item_Groups', 'aos_line_item_groups', 'parent_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('487920bd-6e4e-b689-02fa-5acd07b8c67d', 'project_tasks_notes', 'ProjectTask', 'project_task', 'id', 'Notes', 'notes', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'ProjectTask', 0, 0),
('48d2a501-01fa-bd5f-2caf-5acd078bd4b3', 'notes_created_by', 'Users', 'users', 'id', 'Notes', 'notes', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('48f6a2dd-03dc-a46a-a41a-5acd0704ab37', 'bug_emails', 'Bugs', 'bugs', 'id', 'Emails', 'emails', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Bugs', 0, 0),
('4a197ada-ff1e-432e-9b19-5acd07e5a002', 'accounts_email_addresses', 'Accounts', 'accounts', 'id', 'EmailAddresses', 'email_addresses', 'id', 'email_addr_bean_rel', 'bean_id', 'email_address_id', 'many-to-many', 'bean_module', 'Accounts', 0, 0),
('4ab9b981-40b4-5390-4902-5acd07844142', 'am_projecttemplates_project_1', 'AM_ProjectTemplates', 'am_projecttemplates', 'id', 'Project', 'project', 'id', 'am_projecttemplates_project_1_c', 'am_projecttemplates_project_1am_projecttemplates_ida', 'am_projecttemplates_project_1project_idb', 'many-to-many', NULL, NULL, 0, 0),
('4ae20de5-3c15-8b34-6762-5acd07fadde0', 'contact_leads', 'Contacts', 'contacts', 'id', 'Leads', 'leads', 'contact_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('4c9a3f7a-51d2-e9d5-a579-5acd074cc947', 'fp_event_locations_assigned_user', 'Users', 'users', 'id', 'FP_Event_Locations', 'fp_event_locations', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('4d54ef0a-7369-2425-917d-5acd079aab01', 'bug_notes', 'Bugs', 'bugs', 'id', 'Notes', 'notes', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Bugs', 0, 0),
('4d7d9efe-800c-a704-59b9-5acd075e4998', 'lead_meetings', 'Leads', 'leads', 'id', 'Meetings', 'meetings', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Leads', 0, 0),
('4daa4402-581f-872c-01a3-5acd0792b582', 'campaign_assigned_user', 'Users', 'users', 'id', 'Campaigns', 'campaigns', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('4de3d5bb-e99f-3cde-b512-5acd07ab0bf1', 'aor_scheduled_reports_modified_user', 'Users', 'users', 'id', 'AOR_Scheduled_Reports', 'aor_scheduled_reports', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('4f66ca56-c649-f6a0-7e2e-5acd07817951', 'project_tasks_tasks', 'ProjectTask', 'project_task', 'id', 'Tasks', 'tasks', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'ProjectTask', 0, 0),
('4f75da70-f69c-e5bd-d185-5acd07198bcb', 'campaign_campaigntrakers', 'Campaigns', 'campaigns', 'id', 'CampaignTrackers', 'campaign_trkrs', 'campaign_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('51438def-4e51-d44a-ed2f-5acd07aca0fd', 'opportunity_emails', 'Opportunities', 'opportunities', 'id', 'Emails', 'emails', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Opportunities', 0, 0),
('5175a3e3-6c32-cd42-d2b6-5acd079aefac', 'oauthkeys_modified_user', 'Users', 'users', 'id', 'OAuthKeys', 'oauth_consumer', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('53a8848c-4c0a-ff95-c4b4-5acd07532272', 'securitygroups_fp_event_locations', 'SecurityGroups', 'securitygroups', 'id', 'FP_Event_Locations', 'fp_event_locations', 'id', 'securitygroups_records', 'securitygroup_id', 'record_id', 'many-to-many', 'module', 'FP_Event_Locations', 0, 0),
('53c0a119-1efd-e4b1-562e-5acd0774102e', 'am_projecttemplates_contacts_1', 'AM_ProjectTemplates', 'am_projecttemplates', 'id', 'Contacts', 'contacts', 'id', 'am_projecttemplates_contacts_1_c', 'am_projecttemplates_ida', 'contacts_idb', 'many-to-many', NULL, NULL, 0, 0),
('53c4c38a-5c3e-850c-c611-5acd07f0e582', 'spots_modified_user', 'Users', 'users', 'id', 'Spots', 'spots', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('53de5eda-6894-0cf1-d92f-5acd076a2c96', 'atomi_vendor_modified_user', 'Users', 'users', 'id', 'atomi_vendor', 'atomi_vendor', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('53ea5a23-196f-90fc-27de-5acd07cce438', 'bugs_release', 'Releases', 'releases', 'id', 'Bugs', 'bugs', 'found_in_release', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('54881b2e-38ea-3053-68e0-5acd07f53157', 'campaign_modified_user', 'Users', 'users', 'id', 'Campaigns', 'campaigns', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('55294a55-0f04-4f38-96b3-5acd07a26007', 'aor_scheduled_reports_created_by', 'Users', 'users', 'id', 'AOR_Scheduled_Reports', 'aor_scheduled_reports', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('5591b819-3189-15c0-4cd8-5acd07897030', 'meetings_notes', 'Meetings', 'meetings', 'id', 'Notes', 'notes', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Meetings', 0, 0),
('563f7070-87e1-8ac1-4415-5acd07a99f0e', 'project_tasks_meetings', 'ProjectTask', 'project_task', 'id', 'Meetings', 'meetings', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'ProjectTask', 0, 0),
('573cb005-9282-f412-a51e-5acd072a4f55', 'am_tasktemplates_modified_user', 'Users', 'users', 'id', 'AM_TaskTemplates', 'am_tasktemplates', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('573deb1d-641d-10e2-f87e-5acd07f1996a', 'jjwg_maps_created_by', 'Users', 'users', 'id', 'jjwg_Maps', 'jjwg_maps', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('57fe6e5a-9aa3-8b86-08c5-5acd07b01b71', 'bugs_fixed_in_release', 'Releases', 'releases', 'id', 'Bugs', 'bugs', 'fixed_in_release', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('5825d0cf-7bc3-b78f-b5a5-5acd07ba67fa', 'aos_pdf_templates_created_by', 'Users', 'users', 'id', 'AOS_PDF_Templates', 'aos_pdf_templates', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('584aa653-d4b2-95f7-6596-5acd07e1c24c', 'am_projecttemplates_users_1', 'AM_ProjectTemplates', 'am_projecttemplates', 'id', 'Users', 'users', 'id', 'am_projecttemplates_users_1_c', 'am_projecttemplates_ida', 'users_idb', 'many-to-many', NULL, NULL, 0, 0),
('58af084d-a3d4-aa86-2463-5acd07808ddf', 'sugarfeed_modified_user', 'Users', 'users', 'id', 'SugarFeed', 'sugarfeed', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('59ae0b16-5f27-a8b0-3700-5acd07cc4cd4', 'emails_projects_rel', 'Emails', 'emails', 'id', 'Project', 'project', 'id', 'emails_beans', 'email_id', 'bean_id', 'many-to-many', 'bean_module', 'Project', 0, 0),
('5a3cdaf4-1f5c-e829-47a4-5acd07361b63', 'optimistic_locking', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0),
('5a5c72a8-7aa8-02bd-0b0d-5acd07206d9a', 'accounts_email_addresses_primary', 'Accounts', 'accounts', 'id', 'EmailAddresses', 'email_addresses', 'id', 'email_addr_bean_rel', 'bean_id', 'email_address_id', 'many-to-many', 'primary_address', '1', 0, 0),
('5b005833-2edc-f16b-6a29-5acd07979cc3', 'account_aos_quotes', 'Accounts', 'accounts', 'id', 'AOS_Quotes', 'aos_quotes', 'billing_account_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('5c58d2cc-1483-ef24-0c4a-5acd07eaa6a8', 'aop_case_updates_modified_user', 'Users', 'users', 'id', 'AOP_Case_Updates', 'aop_case_updates', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('5d200058-b5f8-6a62-e0b9-5acd07c04435', 'project_tasks_calls', 'ProjectTask', 'project_task', 'id', 'Calls', 'calls', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'ProjectTask', 0, 0),
('5d656f50-6fa8-69a5-6ffc-5acd070612d4', 'contact_notes', 'Contacts', 'contacts', 'id', 'Notes', 'notes', 'contact_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('5da66a6c-8009-efe5-3724-5acd072631c5', 'aow_actions_modified_user', 'Users', 'users', 'id', 'AOW_Actions', 'aow_actions', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('5daa3bfe-750b-8569-50d9-5acd071be236', 'atomi_vendor_created_by', 'Users', 'users', 'id', 'atomi_vendor', 'atomi_vendor', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('5ebee403-c847-c15c-77b3-5acd07931e97', 'am_tasktemplates_am_projecttemplates', 'AM_ProjectTemplates', 'am_projecttemplates', 'id', 'AM_TaskTemplates', 'am_tasktemplates', 'id', 'am_tasktemplates_am_projecttemplates_c', 'am_tasktemplates_am_projecttemplatesam_projecttemplates_ida', 'am_tasktemplates_am_projecttemplatesam_tasktemplates_idb', 'many-to-many', NULL, NULL, 0, 0),
('60b225b8-656f-fffd-6f91-5acd077b916f', 'emails_prospects_rel', 'Emails', 'emails', 'id', 'Prospects', 'prospects', 'id', 'emails_beans', 'email_id', 'bean_id', 'many-to-many', 'bean_module', 'Prospects', 0, 0),
('60f1fab0-311d-dae4-baac-5acd07ddd246', 'aos_products_created_by', 'Users', 'users', 'id', 'AOS_Products', 'aos_products', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('60f53a16-4d30-4b8c-4d45-5acd0721b971', 'user_direct_reports', 'Users', 'users', 'id', 'Users', 'users', 'reports_to_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('618520cf-768f-3e8a-88bc-5acd07433c0b', 'jjwg_maps_assigned_user', 'Users', 'users', 'id', 'jjwg_Maps', 'jjwg_maps', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('619b65e5-7932-9536-e7df-5acd07d3d976', 'opportunity_leads', 'Opportunities', 'opportunities', 'id', 'Leads', 'leads', 'opportunity_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('622d36aa-cf20-cb2e-8b56-5acd07620523', 'emails_notes_rel', 'Emails', 'emails', 'id', 'Notes', 'notes', 'parent_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('627b0e27-4cfa-9c61-9275-5acd0727e75b', 'securitygroups_jjwg_areas', 'SecurityGroups', 'securitygroups', 'id', 'jjwg_Areas', 'jjwg_areas', 'id', 'securitygroups_records', 'securitygroup_id', 'record_id', 'many-to-many', 'module', 'jjwg_Areas', 0, 0),
('63324f9d-9f01-f569-9835-5acd07d3b5ae', 'aos_contracts_documents', 'AOS_Contracts', 'aos_contracts', 'id', 'Documents', 'documents', 'id', 'aos_contracts_documents', 'aos_contracts_id', 'documents_id', 'many-to-many', NULL, NULL, 0, 0),
('639bffae-21da-3e96-267c-5acd07f8c679', 'unified_search', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0),
('6452544c-22ba-d05b-4e48-5acd079b5beb', 'aow_actions_created_by', 'Users', 'users', 'id', 'AOW_Actions', 'aow_actions', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('64959845-13a7-16ab-3263-5acd0739daab', 'atomi_vendor_assigned_user', 'Users', 'users', 'id', 'atomi_vendor', 'atomi_vendor', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('659c795a-b0a5-53ca-2f04-5acd07b84922', 'prospectlists_assigned_user', 'Users', 'users', 'id', 'prospectlists', 'prospect_lists', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('6639014e-d7b6-be87-7608-5acd07f1f64b', 'account_leads', 'Accounts', 'accounts', 'id', 'Leads', 'leads', 'account_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('677cfb0c-7320-dda9-3adc-5acd075b5e26', 'meetings_contacts', 'Meetings', 'meetings', 'id', 'Contacts', 'contacts', 'id', 'meetings_contacts', 'meeting_id', 'contact_id', 'many-to-many', NULL, NULL, 0, 0),
('680caf49-5c4d-5672-1f9e-5acd0778702a', 'aos_pdf_templates_assigned_user', 'Users', 'users', 'id', 'AOS_PDF_Templates', 'aos_pdf_templates', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('685158ed-eb0e-5ab4-2fda-5acd07206b3a', 'securitygroups_jjwg_maps', 'SecurityGroups', 'securitygroups', 'id', 'jjwg_Maps', 'jjwg_maps', 'id', 'securitygroups_records', 'securitygroup_id', 'record_id', 'many-to-many', 'module', 'jjwg_Maps', 0, 0),
('686e1d0b-e3af-0f8a-895e-5acd07fec506', 'users_email_addresses', 'Users', 'users', 'id', 'EmailAddresses', 'email_addresses', 'id', 'email_addr_bean_rel', 'bean_id', 'email_address_id', 'many-to-many', 'bean_module', 'Users', 0, 0),
('68fa1285-c41a-d4fa-3ead-5acd07a38163', 'project_tasks_emails', 'ProjectTask', 'project_task', 'id', 'Emails', 'emails', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'ProjectTask', 0, 0),
('69610b93-78c8-0430-8ace-5acd0720cf2e', 'aos_quotes_aos_contracts', 'AOS_Quotes', 'aos_quotes', 'id', 'AOS_Contracts', 'aos_contracts', 'id', 'aos_quotes_os_contracts_c', 'aos_quotese81e_quotes_ida', 'aos_quotes4dc0ntracts_idb', 'many-to-many', NULL, NULL, 0, 0),
('698cd658-ef8c-8b2e-ca30-5acd07e3204d', 'aos_contracts_modified_user', 'Users', 'users', 'id', 'AOS_Contracts', 'aos_contracts', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('6a017941-3854-efd9-51a5-5acd073eb446', 'account_aos_invoices', 'Accounts', 'accounts', 'id', 'AOS_Invoices', 'aos_invoices', 'billing_account_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('6b39e05a-bd22-e1b6-349d-5acd07da428f', 'securitygroups_atomi_vendor', 'SecurityGroups', 'securitygroups', 'id', 'atomi_vendor', 'atomi_vendor', 'id', 'securitygroups_records', 'securitygroup_id', 'record_id', 'many-to-many', 'module', 'atomi_vendor', 0, 0),
('6b8eafeb-21ad-8778-5c08-5acd077acd71', 'aop_case_updates_created_by', 'Users', 'users', 'id', 'AOP_Case_Updates', 'aop_case_updates', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('6ba63977-6da3-5ca2-f163-5acd074871ed', 'meetings_users', 'Meetings', 'meetings', 'id', 'Users', 'users', 'id', 'meetings_users', 'meeting_id', 'user_id', 'many-to-many', NULL, NULL, 0, 0),
('6c63d115-0343-7242-7302-5acd07fabd0d', 'calls_modified_user', 'Users', 'users', 'id', 'Calls', 'calls', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('6ce28010-f2bc-6d6a-c00b-5acd07d11dee', 'securitygroups_prospectlists', 'SecurityGroups', 'securitygroups', 'id', 'ProspectLists', 'prospect_lists', 'id', 'securitygroups_records', 'securitygroup_id', 'record_id', 'many-to-many', 'module', 'ProspectLists', 0, 0),
('6d83efde-27ee-65c6-7836-5acd0722c5bc', 'contact_tasks', 'Contacts', 'contacts', 'id', 'Tasks', 'tasks', 'contact_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('6dd8f8c7-339e-7aa7-2d58-5acd07f15f05', 'aos_quotes_aos_invoices', 'AOS_Quotes', 'aos_quotes', 'id', 'AOS_Invoices', 'aos_invoices', 'id', 'aos_quotes_aos_invoices_c', 'aos_quotes77d9_quotes_ida', 'aos_quotes6b83nvoices_idb', 'many-to-many', NULL, NULL, 0, 0),
('6eb8962f-85c3-da33-8f1b-5acd0748d28a', 'users_email_addresses_primary', 'Users', 'users', 'id', 'EmailAddresses', 'email_addresses', 'id', 'email_addr_bean_rel', 'bean_id', 'email_address_id', 'many-to-many', 'primary_address', '1', 0, 0),
('6eddee27-e0e6-7cb6-9d52-5acd07120f21', 'jjwg_Maps_accounts', 'jjwg_Maps', 'jjwg_Maps', 'parent_id', 'Accounts', 'accounts', 'id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Accounts', 0, 0),
('704b2c4e-da76-19c1-5afa-5acd0782c0a2', 'aos_contracts_created_by', 'Users', 'users', 'id', 'AOS_Contracts', 'aos_contracts', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('710b669c-9bbf-90b7-5343-5acd0714057e', 'aos_products_assigned_user', 'Users', 'users', 'id', 'AOS_Products', 'aos_products', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('713c0887-9204-dbd3-3dc5-5acd07abf1e4', 'prospect_emails', 'Prospects', 'prospects', 'id', 'Emails', 'emails', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Prospects', 0, 0),
('71bfa3da-f585-5598-8004-5acd0762cd88', 'opportunity_currencies', 'Opportunities', 'opportunities', 'currency_id', 'Currencies', 'currencies', 'id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('71f88966-2e10-1dc8-2f76-5acd071ea590', 'meetings_leads', 'Meetings', 'meetings', 'id', 'Leads', 'leads', 'id', 'meetings_leads', 'meeting_id', 'lead_id', 'many-to-many', NULL, NULL, 0, 0),
('71f9ef84-9521-1e7b-bef5-5acd0742b23d', 'aop_case_updates_assigned_user', 'Users', 'users', 'id', 'AOP_Case_Updates', 'aop_case_updates', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('722249d4-8ddc-66bb-8d67-5acd0712b9ee', 'atomi_vendor_email_addresses', 'atomi_vendor', 'atomi_vendor', 'id', 'EmailAddresses', 'email_addresses', 'id', 'email_addr_bean_rel', 'bean_id', 'email_address_id', 'many-to-many', 'bean_module', 'atomi_vendor', 0, 0),
('735308e0-c76f-28af-6b22-5acd07c5df15', 'schedulers_created_by_rel', 'Users', 'users', 'id', 'Schedulers', 'schedulers', 'created_by', NULL, NULL, NULL, 'one-to-one', NULL, NULL, 0, 0),
('739a0cb3-d932-64bb-6087-5acd073e835c', 'emails_contacts_rel', 'Emails', 'emails', 'id', 'Contacts', 'contacts', 'id', 'emails_beans', 'email_id', 'bean_id', 'many-to-many', 'bean_module', 'Contacts', 0, 0),
('743a75f3-d041-cbb9-a302-5acd0763a14e', 'aos_quotes_project', 'AOS_Quotes', 'aos_quotes', 'id', 'Project', 'project', 'id', 'aos_quotes_project_c', 'aos_quotes1112_quotes_ida', 'aos_quotes7207project_idb', 'many-to-many', NULL, NULL, 0, 0),
('75090968-620b-0d8e-7241-5acd077a1baa', 'securitygroups_project_task', 'SecurityGroups', 'securitygroups', 'id', 'ProjectTask', 'project_task', 'id', 'securitygroups_records', 'securitygroup_id', 'record_id', 'many-to-many', 'module', 'ProjectTask', 0, 0),
('7568affb-087e-9c60-f9e0-5acd07ba25e4', 'aow_workflow_modified_user', 'Users', 'users', 'id', 'AOW_WorkFlow', 'aow_workflow', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('77136fda-30c5-5da5-c6f3-5acd075f1474', 'aos_contracts_assigned_user', 'Users', 'users', 'id', 'AOS_Contracts', 'aos_contracts', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('77a190c3-9895-d18c-ea36-5acd077cfe95', 'securitygroups_aos_products', 'SecurityGroups', 'securitygroups', 'id', 'AOS_Products', 'aos_products', 'id', 'securitygroups_records', 'securitygroup_id', 'record_id', 'many-to-many', 'module', 'AOS_Products', 0, 0),
('78020149-d867-280c-b8b8-5acd075f592b', 'member_accounts', 'Accounts', 'accounts', 'id', 'Accounts', 'accounts', 'parent_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('78451ef3-e93a-347c-01d3-5acd0751f4da', 'jjwg_Maps_contacts', 'jjwg_Maps', 'jjwg_Maps', 'parent_id', 'Contacts', 'contacts', 'id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Contacts', 0, 0),
('78bb2367-727c-5085-c957-5acd075e8226', 'aow_processed_aow_actions', 'AOW_Processed', 'aow_processed', 'id', 'AOW_Actions', 'aow_actions', 'id', 'aow_processed_aow_actions', 'aow_processed_id', 'aow_action_id', 'many-to-many', NULL, NULL, 0, 0),
('78e8b2e8-05a3-4f96-bf92-5acd0755536a', 'cases_aop_case_updates', 'Cases', 'cases', 'id', 'AOP_Case_Updates', 'aop_case_updates', 'case_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('790e644b-9acc-2bd7-fac5-5acd0706e0cc', 'atomi_vendor_email_addresses_primary', 'atomi_vendor', 'atomi_vendor', 'id', 'EmailAddresses', 'email_addresses', 'id', 'email_addr_bean_rel', 'bean_id', 'email_address_id', 'many-to-many', 'primary_address', '1', 0, 0),
('79a7f55d-f246-23f4-7dd0-5acd07357b68', 'securitygroups_aok_knowledgebase', 'SecurityGroups', 'securitygroups', 'id', 'AOK_KnowledgeBase', 'aok_knowledgebase', 'id', 'securitygroups_records', 'securitygroup_id', 'record_id', 'many-to-many', 'module', 'AOK_KnowledgeBase', 0, 0),
('7a9b6c53-f6d1-7e4d-1d9c-5acd075a5c2e', 'account_aos_contracts', 'Accounts', 'accounts', 'id', 'AOS_Contracts', 'aos_contracts', 'contract_account_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('7b01264d-dc7c-b138-55e9-5acd07ee44f2', 'tasks_modified_user', 'Users', 'users', 'id', 'Tasks', 'tasks', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('7b3c98cd-1870-30a9-12c4-5acd07c32c4d', 'securitygroups_aos_pdf_templates', 'SecurityGroups', 'securitygroups', 'id', 'AOS_PDF_Templates', 'aos_pdf_templates', 'id', 'securitygroups_records', 'securitygroup_id', 'record_id', 'many-to-many', 'module', 'AOS_PDF_Templates', 0, 0),
('7c191702-9723-f1ff-c8db-5acd0743cb77', 'aod_indexevent_modified_user', 'Users', 'users', 'id', 'AOD_IndexEvent', 'aod_indexevent', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('7c2a6180-ab5b-c43e-79ce-5acd071ed821', 'opportunities_contacts', 'Opportunities', 'opportunities', 'id', 'Contacts', 'contacts', 'id', 'opportunities_contacts', 'opportunity_id', 'contact_id', 'many-to-many', NULL, NULL, 0, 0),
('7caff8a1-183d-7368-23bd-5acd07856a20', 'aow_workflow_created_by', 'Users', 'users', 'id', 'AOW_WorkFlow', 'aow_workflow', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('7dd234bd-0876-ea6d-a0ee-5acd07ce21b5', 'securitygroups_aos_contracts', 'SecurityGroups', 'securitygroups', 'id', 'AOS_Contracts', 'aos_contracts', 'id', 'securitygroups_records', 'securitygroup_id', 'record_id', 'many-to-many', 'module', 'AOS_Contracts', 0, 0),
('7e2891ca-73b4-6406-cc4e-5acd0732c39d', 'leads_modified_user', 'Users', 'users', 'id', 'Leads', 'leads', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('7e2894df-4ed7-eb81-8d90-5acd07194a38', 'lead_calls', 'Leads', 'leads', 'id', 'Calls', 'calls', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Leads', 0, 0),
('7e633927-ceed-3605-cde0-5acd074030c4', 'oauthkeys_created_by', 'Users', 'users', 'id', 'OAuthKeys', 'oauth_consumer', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('7ebeb3d6-0dfc-3cc6-8354-5acd07d3556c', 'product_categories', 'AOS_Product_Categories', 'aos_product_categories', 'id', 'AOS_Products', 'aos_products', 'aos_product_category_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('7f0b9f31-1520-69af-973a-5acd079c6807', 'jjwg_Maps_leads', 'jjwg_Maps', 'jjwg_Maps', 'parent_id', 'Leads', 'leads', 'id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Leads', 0, 0),
('7f3a0073-3151-46e2-a477-5acd07442d86', 'campaignlog_contact', 'CampaignLog', 'campaign_log', 'related_id', 'Contacts', 'contacts', 'id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('7f5d8f00-dcfd-1046-518a-5acd0776ce80', 'project_tasks_assigned_user', 'Users', 'users', 'id', 'ProjectTask', 'project_task', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('7f635aea-c6a4-7c53-c83e-5acd0714e84f', 'calls_reschedule_created_by', 'Users', 'users', 'id', 'Calls_Reschedule', 'calls_reschedule', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('80049e8a-d7a5-a6d6-2f0f-5acd07bb2317', 'aop_case_updates_notes', 'AOP_Case_Updates', 'aop_case_updates', 'id', 'Notes', 'notes', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'AOP_Case_Updates', 0, 0),
('80984cb7-ad86-e0c1-e05a-5acd074c479b', 'contact_tasks_parent', 'Contacts', 'contacts', 'id', 'Tasks', 'tasks', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Contacts', 0, 0),
('80bf7f80-60d8-fee0-98e7-5acd07de3744', 'schedulers_modified_user_id_rel', 'Users', 'users', 'id', 'Schedulers', 'schedulers', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('81ffc313-77a2-9754-c388-5acd07530583', 'opportunities_campaign', 'Campaigns', 'campaigns', 'id', 'Opportunities', 'opportunities', 'campaign_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('823d4abd-a418-63b8-280b-5acd07c75aea', 'prospect_list_campaigns', 'ProspectLists', 'prospect_lists', 'id', 'Campaigns', 'campaigns', 'id', 'prospect_list_campaigns', 'prospect_list_id', 'campaign_id', 'many-to-many', NULL, NULL, 0, 0),
('834c04d1-82dc-bec6-f48d-5acd072968b8', 'aos_line_item_groups_assigned_user', 'Users', 'users', 'id', 'AOS_Line_Item_Groups', 'aos_line_item_groups', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('83c6d8db-06cb-ed0b-8710-5acd07e36292', 'aow_workflow_assigned_user', 'Users', 'users', 'id', 'AOW_WorkFlow', 'aow_workflow', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('84000223-09cf-1652-6d96-5acd07fc799e', 'opportunity_tasks', 'Opportunities', 'opportunities', 'id', 'Tasks', 'tasks', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Opportunities', 0, 0),
('84bb958f-c0c3-ce60-82c1-5acd07c0c8a3', 'oauthkeys_assigned_user', 'Users', 'users', 'id', 'OAuthKeys', 'oauth_consumer', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('84bc988c-853c-1fd3-53f2-5acd07799067', 'fp_event_locations_fp_events_1', 'FP_Event_Locations', 'fp_event_locations', 'id', 'FP_events', 'fp_events', 'id', 'fp_event_locations_fp_events_1_c', 'fp_event_locations_fp_events_1fp_event_locations_ida', 'fp_event_locations_fp_events_1fp_events_idb', 'many-to-many', NULL, NULL, 0, 0),
('85d2d6b3-556f-4df4-809f-5acd079538ea', 'jjwg_Maps_opportunities', 'jjwg_Maps', 'jjwg_Maps', 'parent_id', 'Opportunities', 'opportunities', 'id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Opportunities', 0, 0),
('85fa11cb-855c-03f3-56a6-5acd077dd391', 'campaignlog_lead', 'CampaignLog', 'campaign_log', 'related_id', 'Leads', 'leads', 'id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('86083d3d-690c-d55f-c1b0-5acd079cd99e', 'tasks_created_by', 'Users', 'users', 'id', 'Tasks', 'tasks', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('86c8a5cb-08f9-d1d0-ae62-5acd0703cb0d', 'prospect_list_contacts', 'ProspectLists', 'prospect_lists', 'id', 'Contacts', 'contacts', 'id', 'prospect_lists_prospects', 'prospect_list_id', 'related_id', 'many-to-many', 'related_type', 'Contacts', 0, 0),
('874e409c-3c20-ebe9-00ff-5acd07152fcb', 'lead_emails', 'Leads', 'leads', 'id', 'Emails', 'emails', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Leads', 0, 0),
('8761c6c9-775f-8b0a-b5ae-5acd07c7d877', 'aos_contracts_tasks', 'AOS_Contracts', 'aos_contracts', 'id', 'Tasks', 'tasks', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'AOS_Contracts', 0, 0),
('88df3b41-6daa-5d32-c095-5acd07732c20', 'account_cases', 'Accounts', 'accounts', 'id', 'Cases', 'cases', 'account_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('8930a023-58b3-730d-3673-5acd077d77df', 'fp_events_contacts', 'FP_events', 'fp_events', 'id', 'Contacts', 'contacts', 'id', 'fp_events_contacts_c', 'fp_events_contactsfp_events_ida', 'fp_events_contactscontacts_idb', 'many-to-many', NULL, NULL, 0, 0),
('89bae1c5-bfaf-1b1b-0a97-5acd07e374c5', 'project_tasks_modified_user', 'Users', 'users', 'id', 'ProjectTask', 'project_task', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('8a1ad956-902f-255b-df47-5acd0709eab2', 'leads_created_by', 'Users', 'users', 'id', 'Leads', 'leads', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('8a7d19f0-e2db-10bd-cc7f-5acd07be6030', 'securitygroups_aow_workflow', 'SecurityGroups', 'securitygroups', 'id', 'AOW_WorkFlow', 'aow_workflow', 'id', 'securitygroups_records', 'securitygroup_id', 'record_id', 'many-to-many', 'module', 'AOW_WorkFlow', 0, 0),
('8b8f69dc-0391-65bf-61b5-5acd07031666', 'prospects_modified_user', 'Users', 'users', 'id', 'Prospects', 'prospects', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('8ba7b81e-6345-8c76-e85b-5acd07584fe7', 'lead_campaign_log', 'Leads', 'leads', 'id', 'CampaignLog', 'campaign_log', 'target_id', NULL, NULL, NULL, 'one-to-many', 'target_type', 'Leads', 0, 0),
('8c391b48-d428-9c15-8542-5acd07380523', 'calls_reschedule_assigned_user', 'Users', 'users', 'id', 'Calls_Reschedule', 'calls_reschedule', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('8c6d2c3e-b515-ac9a-706a-5acd077777d8', 'campaignlog_created_opportunities', 'CampaignLog', 'campaign_log', 'related_id', 'Opportunities', 'opportunities', 'id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('8c7a533d-a2fd-56f4-ce72-5acd0704e05e', 'jjwg_Maps_cases', 'jjwg_Maps', 'jjwg_Maps', 'parent_id', 'Cases', 'cases', 'id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Cases', 0, 0);
INSERT INTO `relationships` (`id`, `relationship_name`, `lhs_module`, `lhs_table`, `lhs_key`, `rhs_module`, `rhs_table`, `rhs_key`, `join_table`, `join_key_lhs`, `join_key_rhs`, `relationship_type`, `relationship_role_column`, `relationship_role_column_value`, `reverse`, `deleted`) VALUES
('8d4211de-08ec-2a01-ccbd-5acd07c1f15b', 'prospect_list_prospects', 'ProspectLists', 'prospect_lists', 'id', 'Prospects', 'prospects', 'id', 'prospect_lists_prospects', 'prospect_list_id', 'related_id', 'many-to-many', 'related_type', 'Prospects', 0, 0),
('8e37be38-6ffc-2ef5-f728-5acd077a6061', 'aos_contracts_notes', 'AOS_Contracts', 'aos_contracts', 'id', 'Notes', 'notes', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'AOS_Contracts', 0, 0),
('8ed14b74-ec23-0ae0-b2a6-5acd07c3ba90', 'leads_assigned_user', 'Users', 'users', 'id', 'Leads', 'leads', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('8ff5b454-53ad-daae-42a6-5acd07c8b625', 'fp_events_fp_event_locations_1', 'FP_events', 'fp_events', 'id', 'FP_Event_Locations', 'fp_event_locations', 'id', 'fp_events_fp_event_locations_1_c', 'fp_events_fp_event_locations_1fp_events_ida', 'fp_events_fp_event_locations_1fp_event_locations_idb', 'many-to-many', NULL, NULL, 0, 0),
('900913db-9878-2a99-7dab-5acd079500ee', 'documents_modified_user', 'Users', 'users', 'id', 'Documents', 'documents', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('905dd769-40f9-2345-a13c-5acd07e0a619', 'consumer_tokens', 'OAuthKeys', 'oauth_consumer', 'id', 'OAuthTokens', 'oauth_tokens', 'consumer', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('90800cd9-b28e-0c07-9423-5acd07315d42', 'sub_product_categories', 'AOS_Product_Categories', 'aos_product_categories', 'id', 'AOS_Product_Categories', 'aos_product_categories', 'parent_category_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('908bd3ca-0bad-1992-70ec-5acd07a9674d', 'project_tasks_created_by', 'Users', 'users', 'id', 'ProjectTask', 'project_task', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('90e641c1-8fe8-8b89-dedd-5acd07174441', 'contact_notes_parent', 'Contacts', 'contacts', 'id', 'Notes', 'notes', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Contacts', 0, 0),
('91512a7d-1722-5556-57ca-5acd074cd89e', 'schedulers_jobs_rel', 'Schedulers', 'schedulers', 'id', 'SchedulersJobs', 'job_queue', 'scheduler_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('9161a633-a4de-5687-0d25-5acd074d17f5', 'aow_workflow_aow_conditions', 'AOW_WorkFlow', 'aow_workflow', 'id', 'AOW_Conditions', 'aow_conditions', 'aow_workflow_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('91911c76-5bd6-59f7-7ce0-5acd07c2c2f2', 'prospect_list_leads', 'ProspectLists', 'prospect_lists', 'id', 'Leads', 'leads', 'id', 'prospect_lists_prospects', 'prospect_list_id', 'related_id', 'many-to-many', 'related_type', 'Leads', 0, 0),
('92777380-2f57-3fdc-21be-5acd07c736c5', 'opportunity_aos_quotes', 'Opportunities', 'opportunities', 'id', 'AOS_Quotes', 'aos_quotes', 'opportunity_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('92ade928-9719-e7c5-2856-5acd07cbb42a', 'prospects_created_by', 'Users', 'users', 'id', 'Prospects', 'prospects', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('92b90c91-c72d-a608-6991-5acd07ea5d8b', 'aos_invoices_aos_line_item_groups', 'AOS_Invoices', 'aos_invoices', 'id', 'AOS_Line_Item_Groups', 'aos_line_item_groups', 'parent_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('9367816a-eb20-372a-cb32-5acd07fe77e2', 'jjwg_Maps_projects', 'jjwg_Maps', 'jjwg_Maps', 'parent_id', 'Project', 'project', 'id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Project', 0, 0),
('936b268e-f212-3e35-a13c-5acd07d6d1cc', 'campaignlog_targeted_users', 'CampaignLog', 'campaign_log', 'target_id', 'Users', 'users', 'id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('941893f6-1bf6-31e2-f3bb-5acd0768b2a0', 'fp_events_leads_1', 'FP_events', 'fp_events', 'id', 'Leads', 'leads', 'id', 'fp_events_leads_1_c', 'fp_events_leads_1fp_events_ida', 'fp_events_leads_1leads_idb', 'many-to-many', NULL, NULL, 0, 0),
('94fbea4a-82f2-1e70-7c14-5acd07d662a6', 'aos_contracts_meetings', 'AOS_Contracts', 'aos_contracts', 'id', 'Meetings', 'meetings', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'AOS_Contracts', 0, 0),
('95518b65-68f5-9843-179a-5acd07d15cf1', 'securitygroups_leads', 'SecurityGroups', 'securitygroups', 'id', 'Leads', 'leads', 'id', 'securitygroups_records', 'securitygroup_id', 'record_id', 'many-to-many', 'module', 'Leads', 0, 0),
('964d2dfb-3d98-8e47-49e0-5acd07e7845d', 'tasks_assigned_user', 'Users', 'users', 'id', 'Tasks', 'tasks', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('972fc858-e575-f5e4-369b-5acd0717ba41', 'calls_created_by', 'Users', 'users', 'id', 'Calls', 'calls', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('98339c9a-6420-3383-ca5a-5acd07d216c1', 'aow_workflow_aow_actions', 'AOW_WorkFlow', 'aow_workflow', 'id', 'AOW_Actions', 'aow_actions', 'aow_workflow_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('98920693-b860-b82d-8e9b-5acd078931a7', 'accounts_modified_user', 'Users', 'users', 'id', 'Accounts', 'accounts', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('98a3da2d-fd14-967d-a022-5acd07a7fd15', 'account_tasks', 'Accounts', 'accounts', 'id', 'Tasks', 'tasks', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Accounts', 0, 0),
('98e40e81-c30f-3293-3229-5acd07cc9b4e', 'jjwg_maps_modified_user', 'Users', 'users', 'id', 'jjwg_Maps', 'jjwg_maps', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('99262c63-9618-93cb-d8d3-5acd0722f62b', 'aor_reports_modified_user', 'Users', 'users', 'id', 'AOR_Reports', 'aor_reports', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('9963e582-084e-e5bb-7656-5acd0720d566', 'prospects_assigned_user', 'Users', 'users', 'id', 'Prospects', 'prospects', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('99d6d5d7-f296-e8fa-043d-5acd07fa34b7', 'leads_email_addresses', 'Leads', 'leads', 'id', 'EmailAddresses', 'email_addresses', 'id', 'email_addr_bean_rel', 'bean_id', 'email_address_id', 'many-to-many', 'bean_module', 'Leads', 0, 0),
('99e8b94d-f4b2-5d5b-ca76-5acd07ffdfa8', 'prospect_list_users', 'ProspectLists', 'prospect_lists', 'id', 'Users', 'users', 'id', 'prospect_lists_prospects', 'prospect_list_id', 'related_id', 'many-to-many', 'related_type', 'Users', 0, 0),
('9a04b4c3-6f2f-e5fe-d7b2-5acd07441b52', 'jjwg_Maps_meetings', 'jjwg_Maps', 'jjwg_Maps', 'parent_id', 'Meetings', 'meetings', 'id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Meetings', 0, 0),
('9a13e9a5-8567-498a-a0a4-5acd07b9326c', 'campaignlog_sent_emails', 'CampaignLog', 'campaign_log', 'related_id', 'Emails', 'emails', 'id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('9a2f0608-6408-bb96-a03e-5acd07f04030', 'atomi_invoice_commission_report_created_by', 'Users', 'users', 'id', 'atomi_Invoice_Commission_Report', 'atomi_invoice_commission_report', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('9a6e238d-6120-4b85-f825-5acd0721dcba', 'fp_events_prospects_1', 'FP_events', 'fp_events', 'id', 'Prospects', 'prospects', 'id', 'fp_events_prospects_1_c', 'fp_events_prospects_1fp_events_ida', 'fp_events_prospects_1prospects_idb', 'many-to-many', NULL, NULL, 0, 0),
('9a755b0d-744b-3368-2ef0-5acd0768ba74', 'oauthtokens_assigned_user', 'Users', 'users', 'id', 'OAuthTokens', 'oauth_tokens', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('9b062ab4-688b-5ac4-0549-5acd07fa6e05', 'reminders_modified_user', 'Users', 'users', 'id', 'Reminders', 'reminders', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('9bf2402d-2a90-2e86-ac39-5acd07ff3f5d', 'aos_contracts_calls', 'AOS_Contracts', 'aos_contracts', 'id', 'Calls', 'calls', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'AOS_Contracts', 0, 0),
('9c5b0e7a-704a-8b2e-f211-5acd07e0c581', 'aor_charts_modified_user', 'Users', 'users', 'id', 'AOR_Charts', 'aor_charts', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('9da15645-0943-80e8-5813-5acd077cebe8', 'opportunities_modified_user', 'Users', 'users', 'id', 'Opportunities', 'opportunities', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('9e9cdc16-4abe-4fc2-c2c0-5acd07e2b4d1', 'cases_modified_user', 'Users', 'users', 'id', 'Cases', 'cases', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('9efa8b36-af98-ac04-4471-5acd07248b92', 'prospect_list_accounts', 'ProspectLists', 'prospect_lists', 'id', 'Accounts', 'accounts', 'id', 'prospect_lists_prospects', 'prospect_list_id', 'related_id', 'many-to-many', 'related_type', 'Accounts', 0, 0),
('9f190656-b8ca-8f3d-e9ba-5acd07553e83', 'reminders_invitees_assigned_user', 'Users', 'users', 'id', 'Reminders_Invitees', 'reminders_invitees', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('9f59b190-37bb-c794-95d6-5acd07be7ac8', 'spots_created_by', 'Users', 'users', 'id', 'Spots', 'spots', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('a0270e74-2f68-b3a4-dc6a-5acd0778c2bb', 'securitygroups_prospects', 'SecurityGroups', 'securitygroups', 'id', 'Prospects', 'prospects', 'id', 'securitygroups_records', 'securitygroup_id', 'record_id', 'many-to-many', 'module', 'Prospects', 0, 0),
('a027d3a9-c70c-ae9d-1f33-5acd074fae8c', 'aor_reports_created_by', 'Users', 'users', 'id', 'AOR_Reports', 'aor_reports', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('a046e229-0b51-a718-da87-5acd07873a93', 'contact_campaign_log', 'Contacts', 'contacts', 'id', 'CampaignLog', 'campaign_log', 'target_id', NULL, NULL, NULL, 'one-to-many', 'target_type', 'Contacts', 0, 0),
('a0db6569-816c-63fa-0164-5acd077e2e42', 'aos_product_categories_modified_user', 'Users', 'users', 'id', 'AOS_Product_Categories', 'aos_product_categories', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('a0e71d59-f07c-d275-358f-5acd07d7df28', 'jjwg_Maps_prospects', 'jjwg_Maps', 'jjwg_Maps', 'parent_id', 'Prospects', 'prospects', 'id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Prospects', 0, 0),
('a0e8ef21-7f8c-3418-36b2-5acd07230512', 'documents_created_by', 'Users', 'users', 'id', 'Documents', 'documents', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('a112ad69-35ad-02e2-af5b-5acd073e744a', 'securitygroups_modified_user', 'Users', 'users', 'id', 'SecurityGroups', 'securitygroups', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('a13bf15b-3c40-7b1f-9f0c-5acd070a9067', 'schedulersjobs_assigned_user', 'Users', 'users', 'id', 'SchedulersJobs', 'job_queue', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('a1a38fb9-5068-e1e2-8aa4-5acd07445086', 'aow_workflow_aow_processed', 'AOW_WorkFlow', 'aow_workflow', 'id', 'AOW_Processed', 'aow_processed', 'aow_workflow_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('a1e6262c-6e45-a99e-18ea-5acd07e8bf9c', 'jjwg_maps_jjwg_areas', 'jjwg_Maps', 'jjwg_maps', 'id', 'jjwg_Areas', 'jjwg_areas', 'id', 'jjwg_maps_jjwg_areas_c', 'jjwg_maps_5304wg_maps_ida', 'jjwg_maps_41f2g_areas_idb', 'many-to-many', NULL, NULL, 0, 0),
('a27f233a-79de-885a-49f4-5acd072f38f5', 'aos_contracts_aos_products_quotes', 'AOS_Contracts', 'aos_contracts', 'id', 'AOS_Products_Quotes', 'aos_products_quotes', 'parent_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('a304eeb9-f8f2-577e-5ced-5acd0779df13', 'leads_email_addresses_primary', 'Leads', 'leads', 'id', 'EmailAddresses', 'email_addresses', 'id', 'email_addr_bean_rel', 'bean_id', 'email_address_id', 'many-to-many', 'primary_address', '1', 0, 0),
('a4465283-88cd-37b2-957c-5acd0726bd46', 'opportunity_aos_contracts', 'Opportunities', 'opportunities', 'id', 'AOS_Contracts', 'aos_contracts', 'opportunity_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('a51808ee-876a-fedf-0990-5acd07cb202f', 'projects_calls', 'Project', 'project', 'id', 'Calls', 'calls', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Project', 0, 0),
('a634ea79-5b56-f76e-61d2-5acd07d90b9e', 'aos_products_quotes_modified_user', 'Users', 'users', 'id', 'AOS_Products_Quotes', 'aos_products_quotes', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('a6b5451e-0a34-2fd5-83d4-5acd07708076', 'securitygroups_tasks', 'SecurityGroups', 'securitygroups', 'id', 'Tasks', 'tasks', 'id', 'securitygroups_records', 'securitygroup_id', 'record_id', 'many-to-many', 'module', 'Tasks', 0, 0),
('a6c9796f-f31b-d59c-0f3b-5acd071b7418', 'aor_reports_assigned_user', 'Users', 'users', 'id', 'AOR_Reports', 'aor_reports', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('a70292c2-586d-1441-bb9f-5acd07a7cf4b', 'jjwg_maps_jjwg_markers', 'jjwg_Maps', 'jjwg_maps', 'id', 'jjwg_Markers', 'jjwg_markers', 'id', 'jjwg_maps_jjwg_markers_c', 'jjwg_maps_b229wg_maps_ida', 'jjwg_maps_2e31markers_idb', 'many-to-many', NULL, NULL, 0, 0),
('a7305a6f-d2e2-054f-18cc-5acd07baa181', 'securitygroups_created_by', 'Users', 'users', 'id', 'SecurityGroups', 'securitygroups', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('a7488b30-26e4-0f6b-6d6a-5acd079d1f81', 'prospects_email_addresses', 'Prospects', 'prospects', 'id', 'EmailAddresses', 'email_addresses', 'id', 'email_addr_bean_rel', 'bean_id', 'email_address_id', 'many-to-many', 'bean_module', 'Prospects', 0, 0),
('a7f0f6b6-a4e9-33c4-5b2a-5acd07cac336', 'am_tasktemplates_created_by', 'Users', 'users', 'id', 'AM_TaskTemplates', 'am_tasktemplates', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('a8636bd0-55d7-6319-cf86-5acd07eb50fc', 'roles_users', 'Roles', 'roles', 'id', 'Users', 'users', 'id', 'roles_users', 'role_id', 'user_id', 'many-to-many', NULL, NULL, 0, 0),
('a95be977-6da3-b683-fdb7-5acd07581d02', 'aos_contracts_aos_line_item_groups', 'AOS_Contracts', 'aos_contracts', 'id', 'AOS_Line_Item_Groups', 'aos_line_item_groups', 'parent_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('aa0da240-8af7-9f71-4d1d-5acd07de03d1', 'campaigns_modified_user', 'Users', 'users', 'id', 'Campaigns', 'campaigns', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('ad607d19-4fac-4177-9157-5acd076060a2', 'project_contacts_1', 'Project', 'project', 'id', 'Contacts', 'contacts', 'id', 'project_contacts_1_c', 'project_contacts_1project_ida', 'project_contacts_1contacts_idb', 'many-to-many', NULL, NULL, 0, 0),
('ad9ae279-d287-01b2-7496-5acd073954be', 'securitygroups_aor_reports', 'SecurityGroups', 'securitygroups', 'id', 'AOR_Reports', 'aor_reports', 'id', 'securitygroups_records', 'securitygroup_id', 'record_id', 'many-to-many', 'module', 'AOR_Reports', 0, 0),
('adf7cbce-6b39-8bb8-4b6c-5acd0735ef57', 'prospects_email_addresses_primary', 'Prospects', 'prospects', 'id', 'EmailAddresses', 'email_addresses', 'id', 'email_addr_bean_rel', 'bean_id', 'email_address_id', 'many-to-many', 'primary_address', '1', 0, 0),
('ae1cb64b-9d43-17df-c4b0-5acd07ff2da0', 'securitygroups_assigned_user', 'Users', 'users', 'id', 'SecurityGroups', 'securitygroups', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('ae3324b5-0242-1fc0-8492-5acd07c94bd5', 'account_notes', 'Accounts', 'accounts', 'id', 'Notes', 'notes', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Accounts', 0, 0),
('af0e9a3a-c3b6-4b20-d942-5acd07337cdd', 'am_tasktemplates_assigned_user', 'Users', 'users', 'id', 'AM_TaskTemplates', 'am_tasktemplates', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('af2d37dd-89ea-2494-de50-5acd07123dae', 'emails_accounts_rel', 'Emails', 'emails', 'id', 'Accounts', 'accounts', 'id', 'emails_beans', 'email_id', 'bean_id', 'many-to-many', 'bean_module', 'Accounts', 0, 0),
('b09d1b5c-165b-d060-2b30-5acd075b28d6', 'spots_assigned_user', 'Users', 'users', 'id', 'Spots', 'spots', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('b0e974a2-e98a-ab49-1a55-5acd07cf68f0', 'campaigns_created_by', 'Users', 'users', 'id', 'Campaigns', 'campaigns', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('b150ac10-e27e-6d67-65a4-5acd07389faf', 'contact_aos_quotes', 'Contacts', 'contacts', 'id', 'AOS_Quotes', 'aos_quotes', 'billing_contact_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('b1aca7fe-958a-f7ac-6a46-5acd07d7be12', 'am_projecttemplates_modified_user', 'Users', 'users', 'id', 'AM_ProjectTemplates', 'am_projecttemplates', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('b45ec509-a7d1-889d-e499-5acd0788b8cb', 'securitygroups_emailtemplates', 'SecurityGroups', 'securitygroups', 'id', 'EmailTemplates', 'email_templates', 'id', 'securitygroups_records', 'securitygroup_id', 'record_id', 'many-to-many', 'module', 'EmailTemplates', 0, 0),
('b45ede8b-6a22-da34-ab87-5acd07ac6e5b', 'aor_reports_aor_fields', 'AOR_Reports', 'aor_reports', 'id', 'AOR_Fields', 'aor_fields', 'aor_report_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('b4c8fc28-fb1b-8170-0f6b-5acd0784b6a2', 'prospect_tasks', 'Prospects', 'prospects', 'id', 'Tasks', 'tasks', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Prospects', 0, 0),
('b4ec259b-0f12-915d-bb08-5acd0713ce17', 'calls_assigned_user', 'Users', 'users', 'id', 'Calls', 'calls', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('b59ccb27-edee-eb95-76da-5acd073c2c8b', 'jjwg_markers_modified_user', 'Users', 'users', 'id', 'jjwg_Markers', 'jjwg_markers', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('b65004d6-a176-0328-b589-5acd07b1b642', 'opportunities_created_by', 'Users', 'users', 'id', 'Opportunities', 'opportunities', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('b72ac98c-533f-708f-06e9-5acd071b0d91', 'securitygroups_project', 'SecurityGroups', 'securitygroups', 'id', 'Project', 'project', 'id', 'securitygroups_records', 'securitygroup_id', 'record_id', 'many-to-many', 'module', 'Project', 0, 0),
('b7431883-f122-28b0-8e3f-5acd0745126a', 'favorites_modified_user', 'Users', 'users', 'id', 'Favorites', 'favorites', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('b7a70b85-cbb8-0e3f-34d0-5acd0727e60f', 'emails_bugs_rel', 'Emails', 'emails', 'id', 'Bugs', 'bugs', 'id', 'emails_beans', 'email_id', 'bean_id', 'many-to-many', 'bean_module', 'Bugs', 0, 0),
('b7ecca41-711e-f4ff-5d6d-5acd0761b107', 'campaigns_assigned_user', 'Users', 'users', 'id', 'Campaigns', 'campaigns', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('b8249756-05f9-1f4e-0525-5acd073b466f', 'accounts_bugs', 'Accounts', 'accounts', 'id', 'Bugs', 'bugs', 'id', 'accounts_bugs', 'account_id', 'bug_id', 'many-to-many', NULL, NULL, 0, 0),
('b8e925ae-76af-30df-4521-5acd07e63c99', 'aow_processed_modified_user', 'Users', 'users', 'id', 'AOW_Processed', 'aow_processed', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('b92b55d6-10c8-4f2e-5e9a-5acd07fe7c22', 'documents_assigned_user', 'Users', 'users', 'id', 'Documents', 'documents', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('b9aed5f3-fd87-5038-4ab4-5acd07eb6427', 'tasks_notes', 'Tasks', 'tasks', 'id', 'Notes', 'notes', 'parent_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('bb262d7f-925e-1d9d-f1b5-5acd077f8165', 'aor_reports_aor_conditions', 'AOR_Reports', 'aor_reports', 'id', 'AOR_Conditions', 'aor_conditions', 'aor_report_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('bb422476-5b55-ed47-0f85-5acd07d06cca', 'outbound_email_modified_user', 'Users', 'users', 'id', 'OutboundEmailAccounts', 'outbound_email', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('bb881dd6-8cd1-37fa-e8c3-5acd0759a03e', 'aos_product_categories_created_by', 'Users', 'users', 'id', 'AOS_Product_Categories', 'aos_product_categories', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('bb9beec0-5794-4126-51f2-5acd0778c01d', 'prospect_notes', 'Prospects', 'prospects', 'id', 'Notes', 'notes', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Prospects', 0, 0),
('bc07a078-2bc5-64ae-e92b-5acd071cd3e7', 'jjwg_markers_created_by', 'Users', 'users', 'id', 'jjwg_Markers', 'jjwg_markers', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('bcffa8c8-58fe-ab8c-a441-5acd0729fd1c', 'projects_bugs', 'Project', 'project', 'id', 'Bugs', 'bugs', 'id', 'projects_bugs', 'project_id', 'bug_id', 'many-to-many', NULL, NULL, 0, 0),
('bd1dc856-9deb-0890-14e5-5acd07a0ecb8', 'securitygroups_spots', 'SecurityGroups', 'securitygroups', 'id', 'Spots', 'spots', 'id', 'securitygroups_records', 'securitygroup_id', 'record_id', 'many-to-many', 'module', 'Spots', 0, 0),
('be334ac1-515d-7a09-2b8f-5acd0705c1aa', 'opportunities_assigned_user', 'Users', 'users', 'id', 'Opportunities', 'opportunities', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('be912063-cf3c-a579-be89-5acd07a66a3c', 'securitygroups_campaigns', 'SecurityGroups', 'securitygroups', 'id', 'Campaigns', 'campaigns', 'id', 'securitygroups_records', 'securitygroup_id', 'record_id', 'many-to-many', 'module', 'Campaigns', 0, 0),
('bf127186-0bf3-1da3-f52c-5acd072629c5', 'favorites_created_by', 'Users', 'users', 'id', 'Favorites', 'favorites', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('c006b9fb-ff44-ba75-7e38-5acd070ab3d1', 'projects_notes', 'Project', 'project', 'id', 'Notes', 'notes', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Project', 0, 0),
('c1093000-faea-b853-ed73-5acd0726daa8', 'outbound_email_created_by', 'Users', 'users', 'id', 'OutboundEmailAccounts', 'outbound_email', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('c1210430-4cf0-48a2-77bd-5acd071de3f3', 'securitygroups_prospect_lists', 'SecurityGroups', 'securitygroups', 'id', 'ProspectLists', 'prospect_lists', 'id', 'securitygroups_records', 'securitygroup_id', 'record_id', 'many-to-many', 'module', 'ProspectLists', 0, 0),
('c12c76c4-a937-e79c-f4d2-5acd078ad1ec', 'account_meetings', 'Accounts', 'accounts', 'id', 'Meetings', 'meetings', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Accounts', 0, 0),
('c1a63818-84b0-30ea-ae6d-5acd079258b8', 'contact_aos_invoices', 'Contacts', 'contacts', 'id', 'AOS_Invoices', 'aos_invoices', 'billing_contact_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('c1eb3b5d-1068-1427-158b-5acd070457a8', 'aor_scheduled_reports_aor_reports', 'AOR_Reports', 'aor_reports', 'id', 'AOR_Scheduled_Reports', 'aor_scheduled_reports', 'aor_report_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('c215aa93-2189-f411-7fed-5acd07c49279', 'emails_leads_rel', 'Emails', 'emails', 'id', 'Leads', 'leads', 'id', 'emails_beans', 'email_id', 'bean_id', 'many-to-many', 'bean_module', 'Leads', 0, 0),
('c295bf5b-a163-724e-7c9c-5acd07c2844e', 'jjwg_markers_assigned_user', 'Users', 'users', 'id', 'jjwg_Markers', 'jjwg_markers', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('c2caff06-8cda-f067-e3ee-5acd07fb6c08', 'securitygroups_documents', 'SecurityGroups', 'securitygroups', 'id', 'Documents', 'documents', 'id', 'securitygroups_records', 'securitygroup_id', 'record_id', 'many-to-many', 'module', 'Documents', 0, 0),
('c31055b6-c391-d7ee-b934-5acd07e04b23', 'cases_created_by', 'Users', 'users', 'id', 'Cases', 'cases', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('c31374b0-36f3-a6b8-e731-5acd07f82a71', 'aow_processed_created_by', 'Users', 'users', 'id', 'AOW_Processed', 'aow_processed', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('c35d7149-7bca-1132-c485-5acd07dea0ce', 'projects_cases', 'Project', 'project', 'id', 'Cases', 'cases', 'id', 'projects_cases', 'project_id', 'case_id', 'many-to-many', NULL, NULL, 0, 0),
('c394f3c2-1595-7e38-775b-5acd072c592a', 'accounts_contacts', 'Accounts', 'accounts', 'id', 'Contacts', 'contacts', 'id', 'accounts_contacts', 'account_id', 'contact_id', 'many-to-many', NULL, NULL, 0, 0),
('c452414e-51e0-b3d5-67c4-5acd07ad017d', 'aos_products_quotes_created_by', 'Users', 'users', 'id', 'AOS_Products_Quotes', 'aos_products_quotes', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('c4e3ad06-419d-fa08-b1e7-5acd07ebf14e', 'securitygroups_opportunities', 'SecurityGroups', 'securitygroups', 'id', 'Opportunities', 'opportunities', 'id', 'securitygroups_records', 'securitygroup_id', 'record_id', 'many-to-many', 'module', 'Opportunities', 0, 0),
('c59853a5-0dfc-29ad-216f-5acd0745929a', 'favorites_assigned_user', 'Users', 'users', 'id', 'Favorites', 'favorites', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('c5f47e43-fcab-feea-3ba9-5acd07eff570', 'reminders_created_by', 'Users', 'users', 'id', 'Reminders', 'reminders', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('c656d42a-4b77-ef8f-ba69-5acd079c3ded', 'prospect_meetings', 'Prospects', 'prospects', 'id', 'Meetings', 'meetings', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Prospects', 0, 0),
('c7bd06af-7e60-0d71-095d-5acd07150937', 'projects_accounts', 'Project', 'project', 'id', 'Accounts', 'accounts', 'id', 'projects_accounts', 'project_id', 'account_id', 'many-to-many', NULL, NULL, 0, 0),
('c7c422ef-86a3-95dd-bc25-5acd0787fcbf', 'outbound_email_assigned_user', 'Users', 'users', 'id', 'OutboundEmailAccounts', 'outbound_email', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('c7ec5aa5-1b6d-991f-daa4-5acd07d68531', 'securitygroups_calls', 'SecurityGroups', 'securitygroups', 'id', 'Calls', 'calls', 'id', 'securitygroups_records', 'securitygroup_id', 'record_id', 'many-to-many', 'module', 'Calls', 0, 0),
('c8f21a61-c939-100e-c172-5acd0753e38f', 'aos_invoices_modified_user', 'Users', 'users', 'id', 'AOS_Invoices', 'aos_invoices', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('c9310718-0a52-e153-bb17-5acd0724d893', 'aod_index_modified_user', 'Users', 'users', 'id', 'AOD_Index', 'aod_index', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('c99dd842-1bea-1906-6fa8-5acd07406891', 'securitygroups_jjwg_markers', 'SecurityGroups', 'securitygroups', 'id', 'jjwg_Markers', 'jjwg_markers', 'id', 'securitygroups_records', 'securitygroup_id', 'record_id', 'many-to-many', 'module', 'jjwg_Markers', 0, 0),
('ca074026-d33a-5b86-744c-5acd0721a5eb', 'accounts_opportunities', 'Accounts', 'accounts', 'id', 'Opportunities', 'opportunities', 'id', 'accounts_opportunities', 'account_id', 'opportunity_id', 'many-to-many', NULL, NULL, 0, 0),
('cb2ac1ad-4ffa-11b7-0247-5acd07596d7b', 'cases_assigned_user', 'Users', 'users', 'id', 'Cases', 'cases', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('cbc6cc52-258a-16c0-e70a-5acd0762babd', 'opportunity_calls', 'Opportunities', 'opportunities', 'id', 'Calls', 'calls', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Opportunities', 0, 0),
('cc725133-fc09-2153-e1d4-5acd07251dce', 'reminders_assigned_user', 'Users', 'users', 'id', 'Reminders', 'reminders', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('ce30b7e3-2e58-5b13-3a9c-5acd07ae2448', 'projects_contacts', 'Project', 'project', 'id', 'Contacts', 'contacts', 'id', 'projects_contacts', 'project_id', 'contact_id', 'many-to-many', NULL, NULL, 0, 0),
('cf1a5250-b85b-5348-869e-5acd0704894b', 'aos_invoices_created_by', 'Users', 'users', 'id', 'AOS_Invoices', 'aos_invoices', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('cf8121bd-a857-2abd-307a-5acd071909fd', 'securitygroups_cases', 'SecurityGroups', 'securitygroups', 'id', 'Cases', 'cases', 'id', 'securitygroups_records', 'securitygroup_id', 'record_id', 'many-to-many', 'module', 'Cases', 0, 0),
('cfadc9c6-f8c1-197b-c185-5acd0773ea7d', 'emails_aos_contracts_rel', 'Emails', 'emails', 'id', 'AOS_Contracts', 'aos_contracts', 'id', 'emails_beans', 'email_id', 'bean_id', 'many-to-many', 'bean_module', 'AOS_Contracts', 0, 0),
('d0100f13-231e-0554-2c71-5acd076d7b6a', 'campaign_accounts', 'Campaigns', 'campaigns', 'id', 'Accounts', 'accounts', 'campaign_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('d113d816-c084-4436-55eb-5acd07db4082', 'aos_products_quotes_assigned_user', 'Users', 'users', 'id', 'AOS_Products_Quotes', 'aos_products_quotes', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('d12594df-de0c-66c4-422b-5acd07b2a020', 'calls_contacts', 'Calls', 'calls', 'id', 'Contacts', 'contacts', 'id', 'calls_contacts', 'call_id', 'contact_id', 'many-to-many', NULL, NULL, 0, 0),
('d1c13f60-1214-f3e9-2c12-5acd073c3832', 'contact_aos_contracts', 'Contacts', 'contacts', 'id', 'AOS_Contracts', 'aos_contracts', 'contact_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('d26b4304-08d9-2406-c9e8-5acd07c302b7', 'emailtemplates_assigned_user', 'Users', 'users', 'id', 'EmailTemplates', 'email_templates', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('d283611d-edf4-39ff-db8a-5acd078b6012', 'projects_opportunities', 'Project', 'project', 'id', 'Opportunities', 'opportunities', 'id', 'projects_opportunities', 'project_id', 'opportunity_id', 'many-to-many', NULL, NULL, 0, 0),
('d31a1deb-3c7f-194d-da20-5acd075faf7f', 'contacts_modified_user', 'Users', 'users', 'id', 'Contacts', 'contacts', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('d35acdad-5909-3909-9127-5acd077bce9b', 'document_revisions', 'Documents', 'documents', 'id', 'DocumentRevisions', 'document_revisions', 'document_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('d5e5d9d9-5103-de0c-f952-5acd07b9b23c', 'aos_invoices_assigned_user', 'Users', 'users', 'id', 'AOS_Invoices', 'aos_invoices', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('d602c34c-721d-d19a-5e25-5acd07e8da1a', 'case_calls', 'Cases', 'cases', 'id', 'Calls', 'calls', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Cases', 0, 0),
('d6af010b-e361-435a-a9bd-5acd07d9c1a3', 'alerts_modified_user', 'Users', 'users', 'id', 'Alerts', 'alerts', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('d6d96126-2874-8ea2-bb7a-5acd074b0669', 'aod_indexevent_created_by', 'Users', 'users', 'id', 'AOD_IndexEvent', 'aod_indexevent', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('d6e14a57-e351-d122-0323-5acd07fc8d08', 'aow_conditions_modified_user', 'Users', 'users', 'id', 'AOW_Conditions', 'aow_conditions', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('d6e1abcd-fe00-bab4-18d0-5acd07256303', 'account_calls', 'Accounts', 'accounts', 'id', 'Calls', 'calls', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Accounts', 0, 0),
('d76400aa-b222-54ec-a6ce-5acd0715cd3b', 'aobh_businesshours_modified_user', 'Users', 'users', 'id', 'AOBH_BusinessHours', 'aobh_businesshours', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('d92442fc-bbb2-b4b8-3f19-5acd07938c8e', 'acl_roles_actions', 'ACLRoles', 'acl_roles', 'id', 'ACLActions', 'acl_actions', 'id', 'acl_roles_actions', 'role_id', 'action_id', 'many-to-many', NULL, NULL, 0, 0),
('d974cd8c-ba3d-a4d7-cc0a-5acd0778de1c', 'aor_fields_modified_user', 'Users', 'users', 'id', 'AOR_Fields', 'aor_fields', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('da5875c6-e097-aa43-780c-5acd0782ff25', 'case_tasks', 'Cases', 'cases', 'id', 'Tasks', 'tasks', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Cases', 0, 0),
('da833aa0-6964-7a1e-d5f0-5acd07297f3c', 'prospect_calls', 'Prospects', 'prospects', 'id', 'Calls', 'calls', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Prospects', 0, 0),
('da8be853-88a9-5599-b1c6-5acd07b5c049', 'aos_product_quotes_aos_products', 'AOS_Products', 'aos_products', 'id', 'AOS_Products_Quotes', 'aos_products_quotes', 'product_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('dab7e907-7ace-9982-bd5d-5acd07bf3693', 'aok_knowledge_base_categories_modified_user', 'Users', 'users', 'id', 'AOK_Knowledge_Base_Categories', 'aok_knowledge_base_categories', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('dae1061c-a742-8c8b-b35f-5acd07387105', 'templatesectionline_modified_user', 'Users', 'users', 'id', 'TemplateSectionLine', 'templatesectionline', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('daffb2ea-3311-ad46-b0c1-5acd07ec153c', 'calls_notes', 'Calls', 'calls', 'id', 'Notes', 'notes', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Calls', 0, 0),
('dbd3c826-94b9-b3ec-0439-5acd07544fbf', 'opportunity_meetings', 'Opportunities', 'opportunities', 'id', 'Meetings', 'meetings', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Opportunities', 0, 0),
('dbe4c94f-62e7-4e08-5eb5-5acd07ffc4f7', 'lead_direct_reports', 'Leads', 'leads', 'id', 'Leads', 'leads', 'reports_to_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('dc2fbb61-24c6-5a29-1186-5acd07ba96d1', 'calls_users', 'Calls', 'calls', 'id', 'Users', 'users', 'id', 'calls_users', 'call_id', 'user_id', 'many-to-many', NULL, NULL, 0, 0),
('dd606880-b90a-a13e-608a-5acd077b8055', 'acl_roles_users', 'ACLRoles', 'acl_roles', 'id', 'Users', 'users', 'id', 'acl_roles_users', 'role_id', 'user_id', 'many-to-many', NULL, NULL, 0, 0),
('de22dae8-70bd-ad57-ad95-5acd07238dac', 'aow_conditions_created_by', 'Users', 'users', 'id', 'AOW_Conditions', 'aow_conditions', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('df4c1fcb-c3eb-005d-2efd-5acd078969b6', 'contacts_aop_case_updates', 'Contacts', 'contacts', 'id', 'AOP_Case_Updates', 'aop_case_updates', 'contact_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('df91f72d-9435-6a71-f7c6-5acd0706c59b', 'securitygroups_aos_invoices', 'SecurityGroups', 'securitygroups', 'id', 'AOS_Invoices', 'aos_invoices', 'id', 'securitygroups_records', 'securitygroup_id', 'record_id', 'many-to-many', 'module', 'AOS_Invoices', 0, 0),
('dff30844-5d19-73db-acee-5acd0700ea8a', 'emails_meetings_rel', 'Emails', 'emails', 'id', 'Meetings', 'meetings', 'parent_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('e0041311-66d7-5e5a-8cf0-5acd0756e30b', 'templatesectionline_created_by', 'Users', 'users', 'id', 'TemplateSectionLine', 'templatesectionline', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('e00b2f09-58d6-802d-f46a-5acd077a5719', 'aod_indexevent_assigned_user', 'Users', 'users', 'id', 'AOD_IndexEvent', 'aod_indexevent', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('e13815ac-fb7d-5a68-84b8-5acd07a2b346', 'case_notes', 'Cases', 'cases', 'id', 'Notes', 'notes', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Cases', 0, 0),
('e147e85d-2efd-c8db-b23e-5acd072a8007', 'reminders_invitees_modified_user', 'Users', 'users', 'id', 'Reminders_Invitees', 'reminders_invitees', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('e31ba079-cfe3-61b0-0ad8-5acd074d2b56', 'calls_leads', 'Calls', 'calls', 'id', 'Leads', 'leads', 'id', 'calls_leads', 'call_id', 'lead_id', 'many-to-many', NULL, NULL, 0, 0),
('e3ff2925-a381-a8fb-72b2-5acd07ad7480', 'email_marketing_prospect_lists', 'EmailMarketing', 'email_marketing', 'id', 'ProspectLists', 'prospect_lists', 'id', 'email_marketing_prospect_lists', 'email_marketing_id', 'prospect_list_id', 'many-to-many', NULL, NULL, 0, 0),
('e4e4ed5b-e696-aaea-aa5d-5acd07fca72b', 'contacts_created_by', 'Users', 'users', 'id', 'Contacts', 'contacts', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('e544a616-17a5-304f-a357-5acd073cfe4c', 'case_meetings', 'Cases', 'cases', 'id', 'Meetings', 'meetings', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Cases', 0, 0),
('e658091b-962b-2692-015b-5acd07cf99a5', 'aos_invoices_aos_product_quotes', 'AOS_Invoices', 'aos_invoices', 'id', 'AOS_Products_Quotes', 'aos_products_quotes', 'parent_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('e6a62382-24da-86dd-fa22-5acd07dc02f2', 'jjwg_areas_modified_user', 'Users', 'users', 'id', 'jjwg_Areas', 'jjwg_areas', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('e726519b-8b80-0571-0d45-5acd07b47c6e', 'aobh_businesshours_created_by', 'Users', 'users', 'id', 'AOBH_BusinessHours', 'aobh_businesshours', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('e829edd0-0fe3-4d23-2370-5acd07a362fe', 'leads_documents', 'Leads', 'leads', 'id', 'Documents', 'documents', 'id', 'linked_documents', 'parent_id', 'document_id', 'many-to-many', 'parent_type', 'Leads', 0, 0),
('e9274879-7e45-1452-a874-5acd0717b8de', 'project_users_1', 'Project', 'project', 'id', 'Users', 'users', 'id', 'project_users_1_c', 'project_users_1project_ida', 'project_users_1users_idb', 'many-to-many', NULL, NULL, 0, 0),
('e94180c8-b294-d4ca-d9aa-5acd0763121b', 'account_emails', 'Accounts', 'accounts', 'id', 'Emails', 'emails', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Accounts', 0, 0),
('e97ea34c-ba34-7373-44e0-5acd07ba31c6', 'cases_bugs', 'Cases', 'cases', 'id', 'Bugs', 'bugs', 'id', 'cases_bugs', 'case_id', 'bug_id', 'many-to-many', NULL, NULL, 0, 0),
('e9fec508-c040-d483-4cf0-5acd07442e3b', 'reminders_invitees_created_by', 'Users', 'users', 'id', 'Reminders_Invitees', 'reminders_invitees', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('eb94ba93-0cf8-0f00-d569-5acd07bddda6', 'case_emails', 'Cases', 'cases', 'id', 'Emails', 'emails', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Cases', 0, 0),
('ebc930dd-d440-87f9-69d8-5acd07e787fd', 'notes_assigned_user', 'Users', 'users', 'id', 'Notes', 'notes', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('ec33430c-4058-1a0f-fddd-5acd0724fdac', 'aor_fields_created_by', 'Users', 'users', 'id', 'AOR_Fields', 'aor_fields', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('ed29e4fa-7dee-43f8-478a-5acd074b91d1', 'revisions_created_by', 'Users', 'users', 'id', 'DocumentRevisions', 'document_revisions', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('ed6bb436-4080-466d-015c-5acd074f7d94', 'jjwg_areas_created_by', 'Users', 'users', 'id', 'jjwg_Areas', 'jjwg_areas', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('edc0e8da-2c5d-f08f-703c-5acd07a04d56', 'contacts_bugs', 'Contacts', 'contacts', 'id', 'Bugs', 'bugs', 'id', 'contacts_bugs', 'contact_id', 'bug_id', 'many-to-many', NULL, NULL, 0, 0),
('ee1cc8d7-b013-9791-54a4-5acd07ee9d95', 'aok_knowledge_base_categories_created_by', 'Users', 'users', 'id', 'AOK_Knowledge_Base_Categories', 'aok_knowledge_base_categories', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('ee7e35fd-6739-f5c9-95a6-5acd07fce307', 'aos_line_item_groups_modified_user', 'Users', 'users', 'id', 'AOS_Line_Item_Groups', 'aos_line_item_groups', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('ee8aa1d9-d374-7f5a-d7b5-5acd07e92ba7', 'lead_tasks', 'Leads', 'leads', 'id', 'Tasks', 'tasks', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Leads', 0, 0),
('ef2fcaff-4643-9a8d-5695-5acd07a69a14', 'aos_product_categories_assigned_user', 'Users', 'users', 'id', 'AOS_Product_Categories', 'aos_product_categories', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('ef3f0db6-6469-3762-d1f3-5acd07f076bb', 'groups_aos_product_quotes', 'AOS_Line_Item_Groups', 'aos_line_item_groups', 'id', 'AOS_Products_Quotes', 'aos_products_quotes', 'group_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('efe947d5-ada0-8a68-65bc-5acd078daaca', 'cases_created_contact', 'Contacts', 'contacts', 'id', 'Cases', 'cases', 'contact_created_by_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('f19efc64-11c8-9d6a-d065-5acd07570d4c', 'documents_accounts', 'Documents', 'documents', 'id', 'Accounts', 'accounts', 'id', 'documents_accounts', 'document_id', 'account_id', 'many-to-many', NULL, NULL, 0, 0),
('f1ded40c-7d0e-f71c-30f5-5acd0706bf19', 'atomi_invoice_commission_report_modified_user', 'Users', 'users', 'id', 'atomi_Invoice_Commission_Report', 'atomi_invoice_commission_report', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('f2a0381b-459c-30d2-c763-5acd0727e615', 'securitygroups_acl_roles', 'SecurityGroups', 'securitygroups', 'id', 'ACLRoles', 'acl_roles', 'id', 'securitygroups_acl_roles', 'securitygroup_id', 'role_id', 'many-to-many', NULL, NULL, 0, 0),
('f350d19e-8e96-6a63-d6d3-5acd078f107a', 'calls_reschedule', 'Calls', 'calls', 'id', 'Calls_Reschedule', 'calls_reschedule', 'call_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('f35b0f96-7d58-ca91-a972-5acd0770a48c', 'jjwg_areas_assigned_user', 'Users', 'users', 'id', 'jjwg_Areas', 'jjwg_areas', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('f3a6a924-ee42-7095-6b37-5acd07165e08', 'projects_tasks', 'Project', 'project', 'id', 'Tasks', 'tasks', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Project', 0, 0),
('f58004b3-3d9c-042b-22b3-5acd07d72638', 'sugarfeed_created_by', 'Users', 'users', 'id', 'SugarFeed', 'sugarfeed', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('f6f407c4-c2db-7e71-a8f2-5acd071e54b1', 'emails_cases_rel', 'Emails', 'emails', 'id', 'Cases', 'cases', 'id', 'emails_beans', 'email_id', 'bean_id', 'many-to-many', 'bean_module', 'Cases', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `releases`
--

CREATE TABLE `releases` (
  `id` char(36) NOT NULL,
  `deleted` tinyint(1) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `name` varchar(50) DEFAULT NULL,
  `list_order` int(4) DEFAULT NULL,
  `status` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `reminders`
--

CREATE TABLE `reminders` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `popup` tinyint(1) DEFAULT NULL,
  `email` tinyint(1) DEFAULT NULL,
  `email_sent` tinyint(1) DEFAULT NULL,
  `timer_popup` varchar(32) DEFAULT NULL,
  `timer_email` varchar(32) DEFAULT NULL,
  `related_event_module` varchar(32) DEFAULT NULL,
  `related_event_module_id` char(36) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `reminders_invitees`
--

CREATE TABLE `reminders_invitees` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `reminder_id` char(36) NOT NULL,
  `related_invitee_module` varchar(32) DEFAULT NULL,
  `related_invitee_module_id` char(36) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` char(36) NOT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `name` varchar(150) DEFAULT NULL,
  `description` text,
  `modules` text,
  `deleted` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `roles_modules`
--

CREATE TABLE `roles_modules` (
  `id` varchar(36) NOT NULL,
  `role_id` varchar(36) DEFAULT NULL,
  `module_id` varchar(36) DEFAULT NULL,
  `allow` tinyint(1) DEFAULT '0',
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `roles_users`
--

CREATE TABLE `roles_users` (
  `id` varchar(36) NOT NULL,
  `role_id` varchar(36) DEFAULT NULL,
  `user_id` varchar(36) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `saved_search`
--

CREATE TABLE `saved_search` (
  `id` char(36) NOT NULL,
  `name` varchar(150) DEFAULT NULL,
  `search_module` varchar(150) DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `assigned_user_id` char(36) DEFAULT NULL,
  `contents` text,
  `description` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `schedulers`
--

CREATE TABLE `schedulers` (
  `id` varchar(36) NOT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `job` varchar(255) DEFAULT NULL,
  `date_time_start` datetime DEFAULT NULL,
  `date_time_end` datetime DEFAULT NULL,
  `job_interval` varchar(100) DEFAULT NULL,
  `time_from` time DEFAULT NULL,
  `time_to` time DEFAULT NULL,
  `last_run` datetime DEFAULT NULL,
  `status` varchar(100) DEFAULT NULL,
  `catch_up` tinyint(1) DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `schedulers`
--

INSERT INTO `schedulers` (`id`, `deleted`, `date_entered`, `date_modified`, `created_by`, `modified_user_id`, `name`, `job`, `date_time_start`, `date_time_end`, `job_interval`, `time_from`, `time_to`, `last_run`, `status`, `catch_up`) VALUES
('100184ab-9fe0-9eaf-3d27-5a7c8810a34f', 0, '2018-02-08 17:24:14', '2018-02-08 17:24:14', '1', '1', 'Check Inbound Mailboxes', 'function::pollMonitoredInboxesAOP', '2015-01-01 09:45:01', NULL, '*::*::*::*::*', NULL, NULL, NULL, 'Active', 0),
('29f15b05-4190-8635-0ea1-5a7c882b15d7', 0, '2018-02-08 17:24:14', '2018-02-08 17:24:14', '1', '1', 'Run Nightly Process Bounced Campaign Emails', 'function::pollMonitoredInboxesForBouncedCampaignEmails', '2015-01-01 06:30:01', NULL, '0::2-6::*::*::*', NULL, NULL, NULL, 'Active', 1),
('5568ebcc-e55f-4939-33b6-5a7c886d83d6', 0, '2018-02-08 17:24:14', '2018-02-08 17:24:14', '1', '1', 'Run Nightly Mass Email Campaigns', 'function::runMassEmailCampaign', '2015-01-01 17:30:01', NULL, '0::2-6::*::*::*', NULL, NULL, NULL, 'Active', 1),
('5f8d52b0-23e4-f76b-0dc3-5a7c88e75583', 0, '2018-02-08 17:24:14', '2018-02-08 17:24:14', '1', '1', 'Prune Database on 1st of Month', 'function::pruneDatabase', '2015-01-01 17:00:01', NULL, '0::4::1::*::*', NULL, NULL, NULL, 'Inactive', 0),
('645c0e7e-6090-44e8-4e08-5a7c88fa7e8a', 0, '2018-02-08 17:24:14', '2018-02-08 17:24:14', '1', '1', 'Perform Lucene Index', 'function::aodIndexUnindexed', '2015-01-01 06:15:01', NULL, '0::0::*::*::*', NULL, NULL, NULL, 'Active', 0),
('6a230bbb-eea3-49f9-5d88-5a7c888f2042', 0, '2018-02-08 17:24:14', '2018-02-08 17:24:14', '1', '1', 'Optimise AOD Index', 'function::aodOptimiseIndex', '2015-01-01 13:45:01', NULL, '0::*/3::*::*::*', NULL, NULL, NULL, 'Active', 0),
('7dd3e3a3-752d-ece2-fdd1-5a7c8814a11f', 0, '2018-02-08 17:24:14', '2018-02-08 17:24:14', '1', '1', 'Run Email Reminder Notifications', 'function::sendEmailReminders', '2015-01-01 07:45:01', NULL, '*::*::*::*::*', NULL, NULL, NULL, 'Active', 0),
('b285070c-88e7-4b15-ec80-5a7c88ec8a0f', 0, '2018-02-08 17:24:14', '2018-02-08 17:24:14', '1', '1', 'Prune Tracker Tables', 'function::trimTracker', '2015-01-01 07:45:01', NULL, '0::2::1::*::*', NULL, NULL, NULL, 'Active', 1),
('b43be5ce-5fe5-5a7b-d104-5a7c88c8940c', 0, '2018-02-08 17:24:14', '2018-02-08 17:24:14', '1', '1', 'Clean Jobs Queue', 'function::cleanJobQueue', '2015-01-01 07:15:01', NULL, '0::5::*::*::*', NULL, NULL, NULL, 'Active', 0),
('be903497-ce2c-1d3c-2056-5a7c88872df2', 0, '2018-02-08 17:24:14', '2018-02-08 17:24:14', '1', '1', 'Removal of documents from filesystem', 'function::removeDocumentsFromFS', '2015-01-01 15:45:01', NULL, '0::3::1::*::*', NULL, NULL, NULL, 'Active', 0),
('c30b93f7-1bf6-98cd-1642-5a7c8848621c', 0, '2018-02-08 17:24:14', '2018-02-08 17:24:14', '1', '1', 'Prune SuiteCRM Feed Tables', 'function::trimSugarFeeds', '2015-01-01 08:15:01', NULL, '0::2::1::*::*', NULL, NULL, NULL, 'Active', 1),
('e8f533cf-42b5-2fd9-47d6-5a7c88e6d1f1', 0, '2018-02-08 17:24:14', '2018-02-08 17:24:14', '1', '1', 'Process Workflow Tasks', 'function::processAOW_Workflow', '2015-01-01 16:30:01', NULL, '*::*::*::*::*', NULL, NULL, NULL, 'Active', 1),
('f2f595d2-9903-607d-3d90-5a7c885c0106', 0, '2018-02-08 17:24:14', '2018-02-08 17:24:14', '1', '1', 'Run Report Generation Scheduled Tasks', 'function::aorRunScheduledReports', '2015-01-01 19:30:01', NULL, '*::*::*::*::*', NULL, NULL, NULL, 'Active', 1);

-- --------------------------------------------------------

--
-- Table structure for table `securitygroups`
--

CREATE TABLE `securitygroups` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `noninheritable` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `securitygroups_acl_roles`
--

CREATE TABLE `securitygroups_acl_roles` (
  `id` char(36) NOT NULL,
  `securitygroup_id` char(36) DEFAULT NULL,
  `role_id` char(36) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `securitygroups_audit`
--

CREATE TABLE `securitygroups_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text,
  `after_value_text` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `securitygroups_default`
--

CREATE TABLE `securitygroups_default` (
  `id` char(36) NOT NULL,
  `securitygroup_id` char(36) DEFAULT NULL,
  `module` varchar(50) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `securitygroups_records`
--

CREATE TABLE `securitygroups_records` (
  `id` char(36) NOT NULL,
  `securitygroup_id` char(36) DEFAULT NULL,
  `record_id` char(36) DEFAULT NULL,
  `module` char(36) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `securitygroups_users`
--

CREATE TABLE `securitygroups_users` (
  `id` varchar(36) NOT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `securitygroup_id` varchar(36) DEFAULT NULL,
  `user_id` varchar(36) DEFAULT NULL,
  `primary_group` tinyint(1) DEFAULT NULL,
  `noninheritable` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `spots`
--

CREATE TABLE `spots` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `config` longtext,
  `type` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `sugarfeed`
--

CREATE TABLE `sugarfeed` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `related_module` varchar(100) DEFAULT NULL,
  `related_id` char(36) DEFAULT NULL,
  `link_url` varchar(255) DEFAULT NULL,
  `link_type` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `sugarfeed`
--

INSERT INTO `sugarfeed` (`id`, `name`, `date_entered`, `date_modified`, `modified_user_id`, `created_by`, `description`, `deleted`, `assigned_user_id`, `related_module`, `related_id`, `link_url`, `link_type`) VALUES
('5b355b30-c89b-ab52-4ee7-5a7fd4b25ac7', '<b>{this.CREATED_BY}</b> {SugarFeed.CREATED_CONTACT} [Contacts:744a98de-033e-85c2-a97d-5a7fd473764f:Sagar Munot]', '2018-02-11 05:27:28', '2018-02-11 05:27:28', '1', '1', NULL, 0, '1', 'Contacts', '744a98de-033e-85c2-a97d-5a7fd473764f', NULL, NULL),
('6151cea2-3113-d23b-8fb0-5ac9f72b97e6', '<b>{this.CREATED_BY}</b> {SugarFeed.CREATED_CONTACT} [Contacts:657b58ac-ece1-3ecb-81b0-5ac9f7e5a9a5:New Contact Last]', '2018-04-08 11:04:45', '2018-04-08 11:04:45', '1', '1', NULL, 0, '1', 'Contacts', '657b58ac-ece1-3ecb-81b0-5ac9f7e5a9a5', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tasks`
--

CREATE TABLE `tasks` (
  `id` char(36) NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `status` varchar(100) DEFAULT 'Not Started',
  `date_due_flag` tinyint(1) DEFAULT '0',
  `date_due` datetime DEFAULT NULL,
  `date_start_flag` tinyint(1) DEFAULT '0',
  `date_start` datetime DEFAULT NULL,
  `parent_type` varchar(255) DEFAULT NULL,
  `parent_id` char(36) DEFAULT NULL,
  `contact_id` char(36) DEFAULT NULL,
  `priority` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `templatesectionline`
--

CREATE TABLE `templatesectionline` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `thumbnail` varchar(255) DEFAULT NULL,
  `grp` varchar(255) DEFAULT NULL,
  `ord` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tracker`
--

CREATE TABLE `tracker` (
  `id` int(11) NOT NULL,
  `monitor_id` char(36) NOT NULL,
  `user_id` varchar(36) DEFAULT NULL,
  `module_name` varchar(255) DEFAULT NULL,
  `item_id` varchar(36) DEFAULT NULL,
  `item_summary` varchar(255) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `action` varchar(255) DEFAULT NULL,
  `session_id` varchar(36) DEFAULT NULL,
  `visible` tinyint(1) DEFAULT '0',
  `deleted` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tracker`
--

INSERT INTO `tracker` (`id`, `monitor_id`, `user_id`, `module_name`, `item_id`, `item_summary`, `date_modified`, `action`, `session_id`, `visible`, `deleted`) VALUES
(4, 'eb6bf6a4-bd21-a5e0-b56d-5a7c8d08b3e2', '1', 'AOS_Product_Categories', '5e5bc32c-d98d-45b9-8e75-5a7c8d758d96', 'Cameras', '2018-02-08 17:49:55', 'detailview', 'jktnb7dka5nkg3odctcehf3u8t', 1, 0),
(22, 'c128e7a9-d20a-1a05-e46b-5a7db211fbf7', '1', 'AOS_Product_Categories', '41fa8396-98a5-6e4e-8211-5a7db0f485a3', 'Laptop', '2018-02-09 14:39:42', 'detailview', 'u19hg6l0buo5397p43gr7f4ei5', 1, 0),
(26, '3a4a0f3b-6a6e-4ef5-d758-5a7e752ac679', '1', 'Accounts', 'f30070f4-e846-d94c-512c-5a7c8cf49739', 'Sagar Customer', '2018-02-10 04:32:58', 'editview', '6tspsp98a14koun9jf5au8iukr', 1, 0),
(28, '703003fa-3fb3-6665-a9f6-5a7e874c4e02', '1', 'atomi_vendor', '89898a84-1e7d-ac82-701e-5a7d59b49b20', 'Vendor 1', '2018-02-10 05:47:56', 'detailview', '6tspsp98a14koun9jf5au8iukr', 1, 0),
(78, 'da630d93-a4bf-080a-3a59-5a831ada9db4', '1', 'AOS_Invoices', '988ebd91-9570-070d-2a03-5a7fd4a863ed', 'Invoice Product Group', '2018-02-13 17:02:48', 'editview', 'dmiumn3u2otjfaajsim14ord2g', 0, 0),
(87, '9d4c0f81-c615-6242-2c37-5a8342ae1c12', '1', 'AOS_Invoices', '2ce93268-0818-ae9c-e14d-5a8342abf0d6', 'test', '2018-02-13 19:55:11', 'detailview', '2s7vrl2rtuv2ffr2u3mlqh2lkj', 0, 0),
(96, '655d3103-d55c-ba1d-d1de-5a87e5eb1281', '1', 'AOS_Invoices', '4ad5f14a-7e95-a9f8-0bbe-5a87e5785af8', 'Test', '2018-02-17 08:19:59', 'editview', 'f4e3rd415t3uppvnuu5r124c2c', 0, 0),
(97, '32669156-3b90-b83c-08d6-5a87f3b28efe', '1', 'AOS_Invoices', '1b19c503-8f3e-6a34-4efe-5a87f39cb6fe', 'kk', '2018-02-17 09:18:15', 'detailview', 'f4e3rd415t3uppvnuu5r124c2c', 0, 0),
(104, 'd2b20dab-1d05-58a1-8c60-5a886f5f7478', '1', 'AOS_Invoices', '356a1894-bfa6-c8c3-c9c9-5a87faf9c01a', 'sad', '2018-02-17 18:08:10', 'detailview', 'v2csd8in7tp4ub6dr844a2sa1p', 0, 0),
(108, 'd68da9b3-60d9-2079-d25b-5a8c5ead1b43', '1', 'AOS_Invoices', '9dada791-4f81-c16d-f1a2-5a886facdd7c', 'xzc', '2018-02-20 17:45:41', 'editview', 'f6t5jdtg5groushe48bi3h349a', 0, 0),
(109, '572f5b05-c5f7-b1b2-adab-5a8c6054958d', '1', 'AOS_Invoices', '14cb0270-8b5a-b97f-0fbf-5a8c6075be38', 'BB', '2018-02-20 17:54:39', 'detailview', 'f6t5jdtg5groushe48bi3h349a', 0, 0),
(110, 'c07d8795-4a90-7fc3-01f4-5a8c68dd3fc2', '1', 'AOS_Invoices', 'a35fec64-ef4d-9a85-860c-5a8c68f185c5', 'MM', '2018-02-20 18:29:13', 'detailview', 'f6t5jdtg5groushe48bi3h349a', 0, 0),
(113, 'b020dbfc-27ee-1cca-78b0-5a8c6d78d37c', '1', 'AOS_Invoices', '4515cdab-b602-6926-bd33-5a8c6d0732de', 'FG', '2018-02-20 18:49:17', 'detailview', 'f6t5jdtg5groushe48bi3h349a', 0, 0),
(114, '1d89f6d0-34c4-3c27-6a12-5a8c7062753b', '1', 'AOS_Invoices', '9f44dde8-f13e-d096-97b6-5a8c70fcd9da', 'GB', '2018-02-20 18:59:22', 'detailview', 'f6t5jdtg5groushe48bi3h349a', 0, 0),
(116, 'b2bec025-04fa-b79d-ed18-5a8da59eb1ad', '1', 'AOS_Product_Categories', 'd89a0a55-baca-7252-187a-5a8da552517d', 'Service Category', '2018-02-21 17:00:12', 'detailview', 'd80qhj4l654bpjc2bf9elbj3bn', 1, 0),
(124, '68d97b1e-0574-2dcf-1516-5a9454918f6d', '1', 'AOS_Invoices', '71420db4-a15f-29b8-d707-5a8c71306b94', 'TT', '2018-02-26 18:41:09', 'detailview', 'akj9vgfqnp91recah4dh6ema1g', 0, 0),
(128, 'c6bb21a0-5d63-94ce-7831-5a94600c2788', '1', 'AOS_Invoices', 'd0d2954a-886f-02b7-f731-5a945f574754', 'aaaaaa', '2018-02-26 19:30:15', 'editview', '8vh6hrq5sf0sgktrs2abcgid68', 0, 0),
(130, '908c06ed-aa13-fa00-c424-5a946153e1a1', '1', 'AOS_Invoices', '62f3d11c-1125-d41a-ba6d-5a9461282497', 'sdas', '2018-02-26 19:36:50', 'detailview', '7mqgt80itfgt7re659l9ega9ph', 0, 0),
(131, 'c9192444-bac0-df9f-2712-5a966934b296', '1', 'AOS_Invoices', '2a4411aa-de09-647f-c9b9-5a966970f2e5', 'Test Invoice', '2018-02-28 08:36:13', 'detailview', '5kle2ikgeujudjo1pppk2b1k2s', 0, 0),
(168, '4d0935eb-516b-1abf-aaec-5a96f8b7a9eb', '1', 'AOS_Invoices', '2b2e08d4-ec57-65f4-4b67-5a96dc755616', 'Yoo', '2018-02-28 18:45:55', 'editview', 'j88oc6vnru75vhd2stue1std4m', 0, 0),
(209, '497cb7f0-5406-925b-3eb6-5a970d6522ac', '1', 'AOS_Invoices', 'dab57763-968a-6cf7-7c7f-5a96fcf801a3', 'With Type', '2018-02-28 20:15:27', 'detailview', 'j88oc6vnru75vhd2stue1std4m', 0, 0),
(232, '648efaa0-8232-afdb-a66d-5a996060273a', '1', 'AOS_Invoices', '78b710b2-02a0-31de-6ff1-5a97a4cd0b1c', 'My Invoice', '2018-03-02 14:33:08', 'detailview', 'eb22h66up4c35sst9b5eoq98je', 0, 0),
(241, 'd45057d7-b26a-20b6-5b23-5a99831c9dd6', '1', 'AOS_Invoices', '6b14d6e9-2cb1-9025-4649-5a996336fea7', 'Sagar Test', '2018-03-02 17:01:18', 'editview', 'eb22h66up4c35sst9b5eoq98je', 0, 0),
(299, '38f61886-d7a3-f4c1-f2c9-5a9adc8cb496', '1', 'AOS_Invoices', 'c5ab8e95-7c6f-67ed-52a2-5a998b4b067f', 'Cool', '2018-03-03 17:34:08', 'editview', 'qs5655mn0mj8fiocfra178149e', 0, 0),
(321, 'cc186df3-d924-5de0-43bf-5a9af3e80a5c', '1', 'Users', '1', 'Administrator', '2018-03-03 19:10:42', 'editview', 'qs5655mn0mj8fiocfra178149e', 1, 0),
(323, 'f41d5480-5bc2-a325-e515-5a9af31f5ef5', '1', 'ACLRoles', '3a1a72f5-d5ba-b5e7-ef69-5a9af3949ab6', 'Super Admin', '2018-03-03 19:12:24', 'detailview', 'qs5655mn0mj8fiocfra178149e', 1, 0),
(394, '9f78c285-b8b0-f7e2-b8e9-5a9bcbe8281f', '1', 'ACLRoles', 'f33b6a10-a642-275e-77b6-5a9af450670d', 'Account Mgr', '2018-03-04 10:34:48', 'detailview', '60jhd99f9npusko2f3eil2amse', 1, 0),
(396, 'eac5abd3-05a0-c543-6a60-5a9bcce6fbd8', '4668226f-4e70-347c-9740-5a9af48bdd5f', 'AOS_Products', 'b41f30e3-9130-7948-5394-5a7dcb040144', 'Laptop-DELL', '2018-03-04 10:37:47', 'detailview', 'bhltu5fkknul4helf8tagv243p', 1, 0),
(423, '8a79a9f7-8a17-efbb-b9d8-5aa03017a5ba', '1', 'AOS_Invoices', '810f71ca-8449-a336-249f-5aa02a3164f2', 'kkkk', '2018-03-07 18:33:59', 'editview', 'bdffu2lh60dlfn4lgpggvclt1g', 1, 0),
(439, '6b435bda-fedf-3c7e-6622-5aa03a1d027f', '1', 'atomi_invoice_payment_details', '3837917e-606e-09d8-f1b3-5aa03aae4ed8', NULL, '2018-03-07 19:18:20', 'editview', 'bdffu2lh60dlfn4lgpggvclt1g', 1, 0),
(442, '45096c3c-7e45-a321-2c2a-5aa03d246521', '1', 'atomi_invoice_payment_details', '31041076-5b7b-b7e6-4539-5aa03ce54697', NULL, '2018-03-07 19:28:01', 'editview', 'bdffu2lh60dlfn4lgpggvclt1g', 1, 0),
(521, '7eccbeaf-0139-629e-1190-5aa38ac050f4', '1', 'AOS_Invoices', 'aebac00a-217c-02cb-8855-5aa0354eaa78', 'Good', '2018-03-10 07:32:55', 'editview', 'ej419kagidfn76cqldfnud7v4j', 1, 0),
(524, '7d908f14-b1ba-833f-8b5a-5aa38c7f3c88', '1', 'AOS_Invoices', 'f4103cac-9c8c-66ea-94e7-5aa03c012a33', 'My New Invoice', '2018-03-10 07:44:01', 'detailview', 'ej419kagidfn76cqldfnud7v4j', 1, 0),
(525, '31c1313c-fc20-640b-7d92-5aa38e0fbbe0', '1', 'AOS_Invoices', '2a7dab67-6c92-0d11-a2e2-5aa38edb1bbc', 'sdas', '2018-03-10 07:50:09', 'detailview', 'ej419kagidfn76cqldfnud7v4j', 1, 0),
(580, '77be2912-59f8-5950-2111-5aa51bc5e45e', '1', 'AOS_Invoices', '3d2b4d73-db81-2189-fcac-5aa3c9a104da', 'asdas', '2018-03-11 12:05:37', 'detailview', 'sdrikn901cka9f2ssmev10vbm4', 1, 0),
(581, 'd60b229a-94ef-0e59-5999-5aa779628172', '1', 'AOS_Invoices', '9222ff14-ade5-2797-099b-5aa778d10069', 'Check Stock', '2018-03-13 07:08:48', 'detailview', 'p581m360ihfc4vqkftd5jlkdhs', 1, 0),
(582, 'bd5c816c-3133-c903-195c-5aa77b40880e', '1', 'AOS_Invoices', 'c9996ecb-93a1-3d07-6fd2-5aa77b9682b7', 'Test exp', '2018-03-13 07:20:52', 'detailview', 'p581m360ihfc4vqkftd5jlkdhs', 1, 0),
(593, '4e120a27-1e62-8f5f-b704-5aa8076b3437', '1', 'AOS_Invoices', 'aaf5068a-8a1a-e990-969a-5aa8003512a4', 'sdasas', '2018-03-13 17:15:45', 'editview', 'oh6090qkeg2kkl3dhpsfvdc3g5', 1, 0),
(615, '8e42b726-8360-0b9d-313c-5aa8145672a8', '1', 'AOS_Products', '68b9b1a0-0c4b-72e3-df46-5a7e88b54e85', 'laptop-LG', '2018-03-13 18:11:15', 'detailview', 'oh6090qkeg2kkl3dhpsfvdc3g5', 1, 0),
(646, '36316d69-b018-2d76-c025-5aa81ff3012a', '1', 'AOS_Invoices', '9d974535-0d46-1917-f476-5aa81e3416a1', 'dadas', '2018-03-13 18:59:14', 'detailview', 'oh6090qkeg2kkl3dhpsfvdc3g5', 1, 0),
(665, '50c45057-6358-824e-7901-5aa827d0dc17', '1', 'AOS_Invoices', '377ad549-b0db-4125-d80a-5aa824afe928', 'xzczx', '2018-03-13 19:33:41', 'editview', 'oh6090qkeg2kkl3dhpsfvdc3g5', 1, 0),
(666, '38cf20f2-87c9-8bd9-5f1f-5aa952a53ae3', '1', 'Accounts', '206b1561-8ff0-8fa6-7179-5aa95288c61d', 'sads', '2018-03-14 16:47:27', 'detailview', 'k5mae9r4n33k27qul5nea4utqm', 1, 0),
(667, '74da34a9-d968-4bc5-776b-5aa9520690ed', '1', 'Accounts', '734c4075-0718-fa26-cfb6-5aa9521c4a82', 'Noon Doo', '2018-03-14 16:50:43', 'detailview', 'k5mae9r4n33k27qul5nea4utqm', 1, 0),
(668, '2add0cc3-a775-64e5-e55f-5aa95315ecdc', '1', 'Accounts', 'aa244f48-f036-6fe9-c233-5aa95340e88a', 'Loo Moo', '2018-03-14 16:54:44', 'detailview', 'k5mae9r4n33k27qul5nea4utqm', 1, 0),
(678, '14b0bcf0-64e8-bc30-d524-5aa9646e58b8', '1', 'AOS_Invoices', '5f366521-463b-5afd-99d3-5aa9633c7c9c', 'test asds', '2018-03-14 18:07:03', 'detailview', 'k5mae9r4n33k27qul5nea4utqm', 0, 0),
(679, 'a6b901f8-e865-5026-8cd9-5aa968580a91', '1', 'AOS_Invoices', 'caba7f6e-bf6c-ad72-23c3-5aa7f68a978d', 'Test Demo', '2018-03-14 18:21:25', 'editview', 'k5mae9r4n33k27qul5nea4utqm', 1, 0),
(681, 'b4651592-b74a-832c-1b30-5aa970116da5', '1', 'AOS_Invoices', 'a16ad0ab-0bad-e58d-7208-5aa97052de75', 'dsadas', '2018-03-14 18:57:00', 'detailview', 'k5mae9r4n33k27qul5nea4utqm', 0, 0),
(682, 'ba6f7d0c-83be-1bdb-6cd7-5aa97086c63c', '1', 'AOS_Invoices', 'ab1a6d0b-7294-8d23-537b-5aa970af352d', 'asaaaaaaaa', '2018-03-14 18:58:51', 'detailview', 'k5mae9r4n33k27qul5nea4utqm', 0, 0),
(683, '5e093b9d-8f99-74d1-a6ab-5aa971d64449', '1', 'AOS_Invoices', '2926ccd8-fcf4-279c-0d5f-5aa971d3b26e', 'ssdfsdf', '2018-03-14 18:59:48', 'detailview', 'k5mae9r4n33k27qul5nea4utqm', 0, 0),
(688, 'c7e89f74-8d17-da59-bb84-5aa97333c935', '1', 'AOS_Invoices', '31be0d38-09b1-3111-856e-5aa972fe10e1', 'dsf', '2018-03-14 19:07:56', 'detailview', 'k5mae9r4n33k27qul5nea4utqm', 1, 0),
(691, 'a4118662-9a6a-59ef-980c-5aa976dc31ea', '1', 'AOS_Invoices', '2613f4cb-db18-a784-2c17-5aa9709c6d59', 'KK invoice', '2018-03-14 19:24:09', 'editview', 'k5mae9r4n33k27qul5nea4utqm', 1, 0),
(701, '6f0dfae9-1c01-1109-f9c5-5aa97ae69a8b', '1', 'AOS_Invoices', '1c92664d-e617-d964-32b8-5aa978e031b7', 'Kool', '2018-03-14 19:40:44', 'detailview', 'k5mae9r4n33k27qul5nea4utqm', 1, 0),
(706, 'bf3a9237-f14d-9405-b5a8-5aa9811218c0', '1', 'AOS_Products', 'b41f30e3-9130-7948-5394-5a7dcb040144', 'Laptop-DELL', '2018-03-14 20:07:44', 'detailview', 'k5mae9r4n33k27qul5nea4utqm', 1, 0),
(712, '707d5bec-e84f-de86-306c-5aabf96e88a9', '1', 'AOS_Products', 'd35e7f95-d564-30f9-7f72-5a7dae107104', 'Cam123', '2018-03-16 17:05:16', 'detailview', '6h21889hbpvcdb7lfjr2nroau7', 1, 0),
(713, '55243398-b696-4008-00aa-5aabf9cdacc8', '1', 'Accounts', 'a40aba2e-402a-3b35-6153-5aabf9798656', 'Demo Account', '2018-03-16 17:06:15', 'detailview', '6h21889hbpvcdb7lfjr2nroau7', 1, 0),
(716, '683e8d9a-a17b-416a-d1c0-5ab8fdf2590f', '1', 'atomi_invoice_payment_details', 'a94b9e71-362e-f629-893f-5aa001e9dddf', 'test', '2018-03-26 14:03:29', 'detailview', '7k8qj1qsvg1ht9skisv9jf8gc5', 1, 0),
(717, '815f1222-d994-9d20-9e20-5ab8fd2c7930', '1', 'AOS_Invoices', '46abeb6e-67cc-a761-0e16-5a9ae35c5046', 'Demo', '2018-03-26 14:03:43', 'detailview', '7k8qj1qsvg1ht9skisv9jf8gc5', 1, 0),
(719, '3c311483-3bce-dd1b-d040-5aba5f4e5ac1', '1', 'AOS_Invoices', '31fcbec2-4e08-c3e3-a8a8-5aabfa6047a2', 'Test Inv', '2018-03-27 15:15:03', 'detailview', '4p7hn9umgoe40d7m3po04md1k4', 1, 0),
(723, '95450b3a-9913-32a0-ddd0-5aba6195f33e', '1', 'atomi_invoice_payment_details', '45d3460b-61da-3cc8-bfa8-5aba609d1ba6', NULL, '2018-03-27 15:22:08', 'editview', '4p7hn9umgoe40d7m3po04md1k4', 1, 0),
(727, '99153c99-83da-18cc-0590-5aba998a1e87', '1', 'AOS_Invoices', '49137101-7b02-ae0e-8af5-5aa8025d27a1', 'Dooo', '2018-03-27 19:22:10', 'detailview', '4p7hn9umgoe40d7m3po04md1k4', 1, 0),
(728, '55499ab1-481c-af0c-5d71-5aba9a37e749', '1', 'AOS_Invoices', 'ae2f5095-c4c0-e9b8-6404-5aba60b3d29d', 'XCCCC', '2018-03-27 19:26:39', 'detailview', '4p7hn9umgoe40d7m3po04md1k4', 1, 0),
(729, '5797ab10-0c77-c0b6-6bdb-5aba9dad52bc', '4668226f-4e70-347c-9740-5a9af48bdd5f', 'AOS_Invoices', '4c634805-e71a-9041-9e4e-5aba9d6b5c43', 'Created By Account Manager', '2018-03-27 19:38:00', 'detailview', '2updsoq9jfj6bing13tu4cip20', 1, 0),
(759, '200bb633-1324-7287-f260-5ac13f3696a8', '1', 'Users', '4668226f-4e70-347c-9740-5a9af48bdd5f', 'Account Manager', '2018-04-01 20:22:19', 'detailview', 'cuddr88k38rv1h8rm3ms5s1st3', 1, 0),
(760, '30bac7ac-8a9b-9157-c2b6-5ac14294be65', '1', 'AOS_Products', 'b2af9099-a9b4-cb3e-bc3d-5a8da5a57d03', 'test Service', '2018-04-01 20:34:23', 'detailview', 'cuddr88k38rv1h8rm3ms5s1st3', 1, 0),
(807, '65ed85f5-1fa3-4042-2b37-5ac2875759eb', '1', 'AOS_Invoices', '4c634805-e71a-9041-9e4e-5aba9d6b5c43', 'Created By Account Manager', '2018-04-02 19:42:16', 'editview', '6r6l5u1i0v1c36onrqq9llgq80', 1, 0),
(809, '3c9c0234-d2ce-f43b-2ea0-5ac28ae8dfd5', '1', 'AOS_Invoices', '33b43d8b-ff4e-8845-6c74-5ac28a3df51c', 'Back Date2', '2018-04-02 19:56:08', 'detailview', '6r6l5u1i0v1c36onrqq9llgq80', 1, 0),
(811, '14783d8b-4527-6cc8-6a65-5ac28b507c14', '1', 'AOS_Invoices', '62ceca7b-c274-d91b-0b62-5ac28a52ce87', 'Back Date1', '2018-04-02 19:59:09', 'detailview', '6r6l5u1i0v1c36onrqq9llgq80', 1, 0),
(812, 'd3d992b4-afec-ee37-8973-5ac2905af92f', '1', 'AOS_Invoices', 'ec0d1106-d54f-5aa5-082d-5aa8229ffcc2', 'Test123', '2018-04-02 20:19:26', 'detailview', '6r6l5u1i0v1c36onrqq9llgq80', 1, 0),
(821, '569f8305-a0f7-2df4-473c-5ac674ca1d4d', '1', 'Accounts', 'c2e21265-268e-ba71-e850-5aa954e2052d', 'Com Jon', '2018-04-05 19:11:27', 'detailview', 's31e7s6o185u1or387l9frnp84', 1, 0),
(822, '1e82b193-dfb8-0acb-8301-5ac6754c4138', '1', 'AOS_Contracts', '3a81d122-0e13-836c-885c-5ac6757efed9', 'new contract', '2018-04-05 19:15:10', 'detailview', 's31e7s6o185u1or387l9frnp84', 1, 0),
(827, 'a1edd8f8-9de9-130b-679e-5ac678e13354', '1', 'AOS_Products', 'd2977620-4e42-0c55-c324-5aa823d3b55e', 'newProd', '2018-04-05 19:25:10', 'detailview', 's31e7s6o185u1or387l9frnp84', 1, 0),
(830, '2bd9a29b-81c0-c27f-aeed-5ac67803eacd', '1', 'AOS_Invoices', 'bfd9b379-62eb-998f-e1b3-5ac28b70f07d', 'April 2018', '2018-04-05 19:27:34', 'detailview', 's31e7s6o185u1or387l9frnp84', 1, 0),
(884, '52960771-5957-accf-1d95-5aca1286ddff', '1', 'AOS_Quotes', 'e4c3535a-d717-82a6-859b-5ac124a96a27', 'dsad', '2018-04-08 12:58:42', 'detailview', 'nbvictdkfpc5dfup6ele94cpsa', 1, 0),
(911, '81bc0287-9dc6-4e2c-00cf-5aca65fd8b64', '1', 'AOS_PDF_Templates', 'ad1e537f-aba1-bf19-9c9a-5a7fd34c4dff', 'Invoice Group Sample', '2018-04-08 18:55:58', 'editview', 'o9h1nel89ps72sn7k0vjkqinbf', 1, 0),
(912, '7ac01821-9506-e10b-27f2-5aca66ba90a5', '1', 'AOS_Quotes', 'a33b95d5-1d9f-ced7-71f8-5aca5e8f83bb', 'Mike Testing Quotation', '2018-04-08 19:00:22', 'detailview', 'o9h1nel89ps72sn7k0vjkqinbf', 1, 0),
(913, 'c9eb4264-e0df-fb8e-1f7e-5aca674b04d8', '1', 'AOS_PDF_Templates', '80fdc374-2fe0-6815-b8ad-5aca10386f4e', 'Quote Template', '2018-04-08 19:03:09', 'editview', 'o9h1nel89ps72sn7k0vjkqinbf', 1, 0),
(914, 'a8f62be4-2b47-81f1-88b3-5aca68c78ca4', '1', 'AOS_Invoices', '2e1f9c01-4363-480b-5bec-5ac8d206fbb2', 'Look Awesome', '2018-04-08 19:06:53', 'detailview', 'o9h1nel89ps72sn7k0vjkqinbf', 1, 0),
(915, 'aa18f3a5-98cf-d6b5-d75f-5acce543e9a1', '1', 'AOS_Products', '6f5753d0-8ac0-d9df-ca28-5acce575eeff', 'Todays Product', '2018-04-10 16:23:51', 'detailview', 'bo7n3lokm2f6j9qrudp3se0grt', 1, 0),
(917, 'a20fcf2c-5bc4-5093-3194-5accee34bd6d', '1', 'AOS_Invoices', '22755491-d318-2629-7b7f-5accee168475', 'Todays Invoice', '2018-04-10 17:05:04', 'editview', 'bo7n3lokm2f6j9qrudp3se0grt', 1, 0),
(920, 'c9795913-e10b-706d-9186-5acdb0b23c11', '1', 'AOS_Quotes', '119806b4-ad3f-e7e5-5e4a-5ac0a45b179e', 'DMM', '2018-04-11 06:51:37', 'detailview', 'agd4a7bd8oas10fo21lvqr1ntm', 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `upgrade_history`
--

CREATE TABLE `upgrade_history` (
  `id` char(36) NOT NULL,
  `filename` varchar(255) DEFAULT NULL,
  `md5sum` varchar(32) DEFAULT NULL,
  `type` varchar(30) DEFAULT NULL,
  `status` varchar(50) DEFAULT NULL,
  `version` varchar(64) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `description` text,
  `id_name` varchar(255) DEFAULT NULL,
  `manifest` longtext,
  `date_entered` datetime DEFAULT NULL,
  `enabled` tinyint(1) DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `upgrade_history`
--

INSERT INTO `upgrade_history` (`id`, `filename`, `md5sum`, `type`, `status`, `version`, `name`, `description`, `id_name`, `manifest`, `date_entered`, `enabled`) VALUES
('53c96fb4-2588-04bb-890a-5a7c91c7a3f0', 'upload/upgrades/module/atomicsolutions2018_03_26_162221.zip', 'bcae014968fad88292374501373e7752', 'module', 'installed', '1522074140', 'atomicsolutions', 'atomicsolutions', 'atomicsolutions', 'YTozOntzOjg6Im1hbmlmZXN0IjthOjEzOntpOjA7YToxOntzOjI1OiJhY2NlcHRhYmxlX3N1Z2FyX3ZlcnNpb25zIjthOjE6e2k6MDtzOjA6IiI7fX1pOjE7YToxOntzOjI0OiJhY2NlcHRhYmxlX3N1Z2FyX2ZsYXZvcnMiO2E6Mzp7aTowO3M6MjoiQ0UiO2k6MTtzOjM6IlBSTyI7aToyO3M6MzoiRU5UIjt9fXM6NjoicmVhZG1lIjtzOjA6IiI7czozOiJrZXkiO3M6NToiYXRvbWkiO3M6NjoiYXV0aG9yIjtzOjQ6Ik1pa2UiO3M6MTE6ImRlc2NyaXB0aW9uIjtzOjE1OiJhdG9taWNzb2x1dGlvbnMiO3M6NDoiaWNvbiI7czowOiIiO3M6MTY6ImlzX3VuaW5zdGFsbGFibGUiO2I6MTtzOjQ6Im5hbWUiO3M6MTU6ImF0b21pY3NvbHV0aW9ucyI7czoxNDoicHVibGlzaGVkX2RhdGUiO3M6MTk6IjIwMTgtMDMtMjYgMTQ6MjI6MjAiO3M6NDoidHlwZSI7czo2OiJtb2R1bGUiO3M6NzoidmVyc2lvbiI7aToxNTIyMDc0MTQwO3M6MTM6InJlbW92ZV90YWJsZXMiO3M6NjoicHJvbXB0Ijt9czoxMToiaW5zdGFsbGRlZnMiO2E6Nzp7czoyOiJpZCI7czoxNToiYXRvbWljc29sdXRpb25zIjtzOjU6ImJlYW5zIjthOjM6e2k6MDthOjQ6e3M6NjoibW9kdWxlIjtzOjMxOiJhdG9taV9JbnZvaWNlX0NvbW1pc3Npb25fUmVwb3J0IjtzOjU6ImNsYXNzIjtzOjMxOiJhdG9taV9JbnZvaWNlX0NvbW1pc3Npb25fUmVwb3J0IjtzOjQ6InBhdGgiO3M6NzU6Im1vZHVsZXMvYXRvbWlfSW52b2ljZV9Db21taXNzaW9uX1JlcG9ydC9hdG9taV9JbnZvaWNlX0NvbW1pc3Npb25fUmVwb3J0LnBocCI7czozOiJ0YWIiO2I6MTt9aToxO2E6NDp7czo2OiJtb2R1bGUiO3M6Mjk6ImF0b21pX2ludm9pY2VfcGF5bWVudF9kZXRhaWxzIjtzOjU6ImNsYXNzIjtzOjI5OiJhdG9taV9pbnZvaWNlX3BheW1lbnRfZGV0YWlscyI7czo0OiJwYXRoIjtzOjcxOiJtb2R1bGVzL2F0b21pX2ludm9pY2VfcGF5bWVudF9kZXRhaWxzL2F0b21pX2ludm9pY2VfcGF5bWVudF9kZXRhaWxzLnBocCI7czozOiJ0YWIiO2I6MTt9aToyO2E6NDp7czo2OiJtb2R1bGUiO3M6MTI6ImF0b21pX3ZlbmRvciI7czo1OiJjbGFzcyI7czoxMjoiYXRvbWlfdmVuZG9yIjtzOjQ6InBhdGgiO3M6Mzc6Im1vZHVsZXMvYXRvbWlfdmVuZG9yL2F0b21pX3ZlbmRvci5waHAiO3M6MzoidGFiIjtiOjE7fX1zOjEwOiJsYXlvdXRkZWZzIjthOjA6e31zOjEzOiJyZWxhdGlvbnNoaXBzIjthOjA6e31zOjk6ImltYWdlX2RpciI7czoxNjoiPGJhc2VwYXRoPi9pY29ucyI7czo0OiJjb3B5IjthOjM6e2k6MDthOjI6e3M6NDoiZnJvbSI7czo2MzoiPGJhc2VwYXRoPi9TdWdhck1vZHVsZXMvbW9kdWxlcy9hdG9taV9JbnZvaWNlX0NvbW1pc3Npb25fUmVwb3J0IjtzOjI6InRvIjtzOjM5OiJtb2R1bGVzL2F0b21pX0ludm9pY2VfQ29tbWlzc2lvbl9SZXBvcnQiO31pOjE7YToyOntzOjQ6ImZyb20iO3M6NjE6IjxiYXNlcGF0aD4vU3VnYXJNb2R1bGVzL21vZHVsZXMvYXRvbWlfaW52b2ljZV9wYXltZW50X2RldGFpbHMiO3M6MjoidG8iO3M6Mzc6Im1vZHVsZXMvYXRvbWlfaW52b2ljZV9wYXltZW50X2RldGFpbHMiO31pOjI7YToyOntzOjQ6ImZyb20iO3M6NDQ6IjxiYXNlcGF0aD4vU3VnYXJNb2R1bGVzL21vZHVsZXMvYXRvbWlfdmVuZG9yIjtzOjI6InRvIjtzOjIwOiJtb2R1bGVzL2F0b21pX3ZlbmRvciI7fX1zOjg6Imxhbmd1YWdlIjthOjE6e2k6MDthOjM6e3M6NDoiZnJvbSI7czo1OToiPGJhc2VwYXRoPi9TdWdhck1vZHVsZXMvbGFuZ3VhZ2UvYXBwbGljYXRpb24vZW5fdXMubGFuZy5waHAiO3M6OToidG9fbW9kdWxlIjtzOjExOiJhcHBsaWNhdGlvbiI7czo4OiJsYW5ndWFnZSI7czo1OiJlbl91cyI7fX19czoxNjoidXBncmFkZV9tYW5pZmVzdCI7czowOiIiO30=', '2018-02-08 18:06:17', 1);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` char(36) NOT NULL,
  `user_name` varchar(60) DEFAULT NULL,
  `user_hash` varchar(255) DEFAULT NULL,
  `system_generated_password` tinyint(1) DEFAULT NULL,
  `pwd_last_changed` datetime DEFAULT NULL,
  `authenticate_id` varchar(100) DEFAULT NULL,
  `sugar_login` tinyint(1) DEFAULT '1',
  `first_name` varchar(30) DEFAULT NULL,
  `last_name` varchar(30) DEFAULT NULL,
  `is_admin` tinyint(1) DEFAULT '0',
  `external_auth_only` tinyint(1) DEFAULT '0',
  `receive_notifications` tinyint(1) DEFAULT '1',
  `description` text,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `title` varchar(50) DEFAULT NULL,
  `photo` varchar(255) DEFAULT NULL,
  `department` varchar(50) DEFAULT NULL,
  `phone_home` varchar(50) DEFAULT NULL,
  `phone_mobile` varchar(50) DEFAULT NULL,
  `phone_work` varchar(50) DEFAULT NULL,
  `phone_other` varchar(50) DEFAULT NULL,
  `phone_fax` varchar(50) DEFAULT NULL,
  `status` varchar(100) DEFAULT NULL,
  `address_street` varchar(150) DEFAULT NULL,
  `address_city` varchar(100) DEFAULT NULL,
  `address_state` varchar(100) DEFAULT NULL,
  `address_country` varchar(100) DEFAULT NULL,
  `address_postalcode` varchar(20) DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT NULL,
  `portal_only` tinyint(1) DEFAULT '0',
  `show_on_employees` tinyint(1) DEFAULT '1',
  `employee_status` varchar(100) DEFAULT NULL,
  `messenger_id` varchar(100) DEFAULT NULL,
  `messenger_type` varchar(100) DEFAULT NULL,
  `reports_to_id` char(36) DEFAULT NULL,
  `is_group` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `user_name`, `user_hash`, `system_generated_password`, `pwd_last_changed`, `authenticate_id`, `sugar_login`, `first_name`, `last_name`, `is_admin`, `external_auth_only`, `receive_notifications`, `description`, `date_entered`, `date_modified`, `modified_user_id`, `created_by`, `title`, `photo`, `department`, `phone_home`, `phone_mobile`, `phone_work`, `phone_other`, `phone_fax`, `status`, `address_street`, `address_city`, `address_state`, `address_country`, `address_postalcode`, `deleted`, `portal_only`, `show_on_employees`, `employee_status`, `messenger_id`, `messenger_type`, `reports_to_id`, `is_group`) VALUES
('1', 'admin', '$1$aMQlVcKH$bNx61GJVBdJx.m2jL.9F91', 0, NULL, NULL, 1, 'Mike', 'Administrator', 1, 0, 1, NULL, '2018-02-08 17:24:14', '2018-02-08 17:24:14', '1', '', 'Administrator', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', NULL, NULL, NULL, NULL, NULL, 0, 0, 1, 'Active', NULL, NULL, '', 0),
('4668226f-4e70-347c-9740-5a9af48bdd5f', 'sagar', '$1$aMQlVcKH$bNx61GJVBdJx.m2jL.9F91', 0, NULL, NULL, 1, 'Account', 'Manager', 0, 0, 1, NULL, '2018-03-03 19:17:07', '2018-03-03 19:23:07', '4668226f-4e70-347c-9740-5a9af48bdd5f', '1', 'Account Manager', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', NULL, NULL, NULL, NULL, NULL, 0, 0, 1, 'Active', NULL, NULL, '1', 0);

-- --------------------------------------------------------

--
-- Table structure for table `users_feeds`
--

CREATE TABLE `users_feeds` (
  `user_id` varchar(36) DEFAULT NULL,
  `feed_id` varchar(36) DEFAULT NULL,
  `rank` int(11) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `users_last_import`
--

CREATE TABLE `users_last_import` (
  `id` char(36) NOT NULL,
  `assigned_user_id` char(36) DEFAULT NULL,
  `import_module` varchar(36) DEFAULT NULL,
  `bean_type` varchar(36) DEFAULT NULL,
  `bean_id` char(36) DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `users_password_link`
--

CREATE TABLE `users_password_link` (
  `id` char(36) NOT NULL,
  `username` varchar(36) DEFAULT NULL,
  `date_generated` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `users_signatures`
--

CREATE TABLE `users_signatures` (
  `id` char(36) NOT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT NULL,
  `user_id` varchar(36) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `signature` text,
  `signature_html` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `user_preferences`
--

CREATE TABLE `user_preferences` (
  `id` char(36) NOT NULL,
  `category` varchar(50) DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `assigned_user_id` char(36) DEFAULT NULL,
  `contents` longtext
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `user_preferences`
--

INSERT INTO `user_preferences` (`id`, `category`, `deleted`, `date_entered`, `date_modified`, `assigned_user_id`, `contents`) VALUES
('103c7703-2d05-0ed5-6fd9-5ac9eff7833d', 'Home2_ATOMI_INVOICE_PAYMENT_DETAILS_1331a0b0-bc77-', 0, '2018-04-08 10:32:18', '2018-04-08 10:32:18', '1', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('10418bfe-d21b-295b-d685-5a9168a3dc78', 'Home2_AOS_PRODUCTS_5a936dc4-0d83-2743-1296-5a7e76a', 0, '2018-02-24 13:26:31', '2018-02-24 13:26:31', '1', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('109c1d8d-25d2-ba0c-4e5d-5aba319ef099', 'Home2_ATOMI_INVOICE_PAYMENT_DETAILS_1331a0b0-bc77-', 0, '2018-03-27 11:54:49', '2018-03-27 11:54:49', '1', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('11d65e4d-3e68-3dc3-e93f-5ac083cd08c4', 'Home2_ATOMI_INVOICE_COMMISSION_REPORT_e25d7fbd-70a', 0, '2018-04-01 06:59:49', '2018-04-01 06:59:49', '1', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('1286f287-b3e7-a648-cd57-5aba9d13124c', 'AOS_Invoices2_AOS_INVOICES', 0, '2018-03-27 19:36:01', '2018-03-27 19:36:01', '4668226f-4e70-347c-9740-5a9af48bdd5f', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('1347ce80-6df2-0e5f-e8ca-5ac296a7f7c0', 'EmailMan2_EMAILMAN', 0, '2018-04-02 20:45:52', '2018-04-02 20:45:52', '1', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('14b7e8dd-298c-d535-b6b0-5a9bcb2267ee', 'Home2_AOS_PRODUCTS_5a936dc4-0d83-2743-1296-5a7e76a', 0, '2018-03-04 10:34:11', '2018-03-04 10:34:11', '1', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('15aa651f-a154-8e38-0f83-5abba5b33f3f', 'Home2_AOS_PRODUCTS_5a936dc4-0d83-2743-1296-5a7e76a', 0, '2018-03-28 14:25:53', '2018-03-28 14:25:53', '1', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('15e54000-8218-4d53-9d5e-5acda1a54f24', 'Home2_ATOMI_INVOICE_COMMISSION_REPORT_e25d7fbd-70a', 0, '2018-04-11 05:49:03', '2018-04-11 05:49:03', '1', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('163819a4-f47a-dff7-7cac-5a7c8d778829', 'AOS_Products2_AOS_PRODUCTS', 0, '2018-02-08 17:50:20', '2018-03-03 19:10:55', '1', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('16735cf9-ef21-9eb2-53b6-5ab903cdbde2', 'atomi_Invoice_Commission_Report2_ATOMI_INVOICE_COM', 0, '2018-03-26 14:27:36', '2018-03-26 14:27:36', '1', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('18f025b2-a9f7-e21e-01df-5a96e90fdca9', 'Home2_AOS_PRODUCTS_5a936dc4-0d83-2743-1296-5a7e76a', 0, '2018-02-28 17:42:08', '2018-02-28 17:42:08', '1', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('1a2ef60c-e2aa-1c8c-28dd-5aa4f1dcb389', 'Home2_AOS_PRODUCTS_5a936dc4-0d83-2743-1296-5a7e76a', 0, '2018-03-11 09:07:30', '2018-03-11 09:07:30', '1', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('1bfdfeca-4b27-22dd-6966-5ac4e722f43d', 'Home2_AOW_WORKFLOW_19fce43f-9c23-6be9-00ba-5ab8fde', 0, '2018-04-04 14:55:28', '2018-04-04 14:55:28', '1', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('1c8a1268-83c9-6cd1-329e-5ac75efcc148', 'Home2_AOS_PRODUCTS_5a936dc4-0d83-2743-1296-5a7e76a', 0, '2018-04-06 11:47:27', '2018-04-06 11:47:27', '1', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('1d62f83f-0929-089c-6a95-5a9af342d4e1', 'Home2_AOS_PRODUCTS_5a936dc4-0d83-2743-1296-5a7e76a', 0, '2018-03-03 19:10:50', '2018-03-03 19:10:50', '1', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('1de95713-ec58-3d67-9740-5acce1d0a84f', 'Home2_ATOMI_INVOICE_PAYMENT_DETAILS_1331a0b0-bc77-', 0, '2018-04-10 16:08:32', '2018-04-10 16:08:32', '1', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('1e253a50-e72f-d65d-e4c1-5ac4e8cbd97a', 'Home2_ATOMI_INVOICE_COMMISSION_REPORT_e25d7fbd-70a', 0, '2018-04-04 14:59:57', '2018-04-04 14:59:57', '1', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('1e3ab848-1d39-64fc-e82b-5a96d7a97424', 'Home2_AOS_PRODUCTS_5a936dc4-0d83-2743-1296-5a7e76a', 0, '2018-02-28 16:24:09', '2018-02-28 16:24:09', '1', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('1f6fac67-8979-a278-1c2a-5a7c8839df42', 'Home2_LEAD', 0, '2018-02-08 17:27:26', '2018-03-03 19:10:55', '1', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('201f6ef1-d27c-abc2-5454-5aa92546af8b', 'Home2_AOS_PRODUCTS_5a936dc4-0d83-2743-1296-5a7e76a', 0, '2018-03-14 13:36:13', '2018-03-14 13:36:13', '1', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('20db2cfe-aae4-ad2e-9ed7-5a9af31520ad', 'Home2_AOS_PRODUCTS_5a936dc4-0d83-2743-1296-5a7e76a', 0, '2018-03-03 19:10:55', '2018-03-03 19:10:55', '1', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('20f2a0ff-2050-8b37-8203-5ac236022c96', 'Home2_AOW_WORKFLOW_19fce43f-9c23-6be9-00ba-5ab8fde', 0, '2018-04-02 13:54:51', '2018-04-02 13:54:51', '1', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('216319e3-761a-df51-daca-5a9af3b9a687', 'AOS_Products', 0, '2018-03-03 19:10:50', '2018-03-03 19:10:55', '1', 'YTowOnt9'),
('21c378ba-13b4-260b-209a-5a9af465ae27', 'SecurityGroups2_SECURITYGROUP', 0, '2018-03-03 19:17:18', '2018-03-03 19:17:18', '1', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('21c67259-1fbb-e225-70da-5a914eafa417', 'Home2_AOS_PRODUCTS_5a936dc4-0d83-2743-1296-5a7e76a', 0, '2018-02-24 11:37:39', '2018-02-24 11:37:39', '1', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('21db8ee6-677a-b8a9-d9d0-5ac9c9f9e14b', 'Home2_ATOMI_INVOICE_PAYMENT_DETAILS_1331a0b0-bc77-', 0, '2018-04-08 07:48:01', '2018-04-08 07:48:01', '1', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('22a7ebb5-36e2-4fd5-9edb-5acda17d52cc', 'Home2_AOS_PRODUCTS_5a936dc4-0d83-2743-1296-5a7e76a', 0, '2018-04-11 05:49:03', '2018-04-11 05:49:03', '1', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('23009257-20d9-5f63-a937-5accb99cadad', 'Home2_AOW_WORKFLOW_19fce43f-9c23-6be9-00ba-5ab8fde', 0, '2018-04-10 13:19:35', '2018-04-10 13:19:35', '1', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('2633ceb9-690a-88b8-1268-5a8d79e9e20e', 'Home2_AOS_PRODUCTS_5a936dc4-0d83-2743-1296-5a7e76a', 0, '2018-02-21 13:53:57', '2018-02-21 13:53:57', '1', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('283a235f-696f-d739-d0e9-5aca5b9d51e8', 'Home2_AOW_WORKFLOW_19fce43f-9c23-6be9-00ba-5ab8fde', 0, '2018-04-08 18:13:06', '2018-04-08 18:13:06', '1', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('287f7d82-adc5-be60-77d7-5ab8fdad9c88', 'Home2_ATOMI_INVOICE_PAYMENT_DETAILS', 0, '2018-03-26 14:03:00', '2018-03-26 14:03:00', '1', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('2a9f7943-b7ce-72dc-9490-5ac71eee61e7', 'Home2_ATOMI_INVOICE_PAYMENT_DETAILS_1331a0b0-bc77-', 0, '2018-04-06 07:14:39', '2018-04-06 07:14:39', '1', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('2b4608a4-a946-0a55-593e-5acce1f15358', 'Home2_AOS_PRODUCTS_5a936dc4-0d83-2743-1296-5a7e76a', 0, '2018-04-10 16:08:32', '2018-04-10 16:08:32', '1', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('2bb76638-648e-7d9f-3f19-5a847d10999d', 'Home2_AOS_PRODUCTS_5a936dc4-0d83-2743-1296-5a7e76a', 0, '2018-02-14 18:19:13', '2018-02-14 18:19:13', '1', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('2be9dbfb-738c-27f7-a3cd-5abb40df6c23', 'Home2_AOS_PRODUCTS_5a936dc4-0d83-2743-1296-5a7e76a', 0, '2018-03-28 07:12:10', '2018-03-28 07:12:10', '1', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('2c46f586-c15b-2a0d-6eee-5a7d9f01926b', 'Cases2_CASE', 0, '2018-02-09 13:18:38', '2018-02-09 13:18:38', '1', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('2c59f9a3-1ce5-e244-ba5f-5ac9ef5433a5', 'Home2_ATOMI_INVOICE_COMMISSION_REPORT_e25d7fbd-70a', 0, '2018-04-08 10:32:18', '2018-04-08 10:32:18', '1', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('2c7b18c0-9a76-5828-06a4-5ab92af49eb0', 'Home2_AOS_PRODUCTS_5a936dc4-0d83-2743-1296-5a7e76a', 0, '2018-03-26 17:14:42', '2018-03-26 17:14:42', '1', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('2d153344-2067-af3b-b82d-5ac4e7a1ebaf', 'Home2_ATOMI_INVOICE_PAYMENT_DETAILS_1331a0b0-bc77-', 0, '2018-04-04 14:55:28', '2018-04-04 14:55:28', '1', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('2d48f5a0-861d-4c5b-a285-5aba31c27e7e', 'Home2_AOS_PRODUCTS_5a936dc4-0d83-2743-1296-5a7e76a', 0, '2018-03-27 11:54:49', '2018-03-27 11:54:49', '1', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('2d931d50-6e39-194b-0fa1-5ac8c416c3dd', 'Home2_ATOMI_INVOICE_PAYMENT_DETAILS_1331a0b0-bc77-', 0, '2018-04-07 13:14:32', '2018-04-07 13:14:32', '1', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('2df1ecff-4b5f-4e07-974f-5a9a4e46afb3', 'Home2_AOS_PRODUCTS_5a936dc4-0d83-2743-1296-5a7e76a', 0, '2018-03-03 07:29:11', '2018-03-03 07:29:11', '1', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('2e0f16bb-001b-7ae7-652a-5a9af39dcee8', 'Emails', 0, '2018-03-03 19:10:50', '2018-03-03 19:10:55', '1', 'YTowOnt9'),
('2e1f5672-b2b9-7207-573f-5a9e9a51ca15', 'Home2_AOS_PRODUCTS_5a936dc4-0d83-2743-1296-5a7e76a', 0, '2018-03-06 13:42:55', '2018-03-06 13:42:55', '1', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('2f7bd684-c3da-9d2a-a528-5a9af3ef0e1e', 'Home2_AOS_PRODUCTS_5a936dc4-0d83-2743-1296-5a7e76a', 0, '2018-03-03 19:10:50', '2018-03-03 19:10:50', '1', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('30327861-bc8b-9753-7334-5aba6140c156', 'atomi_invoice_payment_details2_ATOMI_INVOICE_PAYME', 0, '2018-03-27 15:20:32', '2018-03-27 15:20:32', '1', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('31e5578d-74ee-2e4a-53aa-5ac0a0c8cfdd', 'Opportunities2_OPPORTUNITY', 0, '2018-04-01 09:04:30', '2018-04-01 09:04:30', '1', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('3351a223-30c2-caeb-4eea-5ab8fd7f02c5', 'Home2_AOW_WORKFLOW', 0, '2018-03-26 14:03:12', '2018-03-26 14:03:12', '1', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('345ea04a-87c8-6cee-f47c-5a9d87a7b9dd', 'Home2_AOS_PRODUCTS_5a936dc4-0d83-2743-1296-5a7e76a', 0, '2018-03-05 18:08:33', '2018-03-05 18:08:33', '1', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('34907648-ee5c-4a3c-14eb-5a85337bcb29', 'Home2_AOS_PRODUCTS_5a936dc4-0d83-2743-1296-5a7e76a', 0, '2018-02-15 07:16:05', '2018-02-15 07:16:05', '1', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('36deab70-d5b0-226a-cc30-5ac4e75f3445', 'Home2_AOS_PRODUCTS_5a936dc4-0d83-2743-1296-5a7e76a', 0, '2018-04-04 14:55:28', '2018-04-04 14:55:28', '1', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('38a140c0-d2a5-cd91-945d-5aba31d73fde', 'Home2_AOW_WORKFLOW_19fce43f-9c23-6be9-00ba-5ab8fde', 0, '2018-03-27 11:54:49', '2018-03-27 11:54:49', '1', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('38e0752f-13b4-b9a0-d10a-5a9af6f7da0e', 'Home2_ACCOUNT', 0, '2018-03-03 19:23:11', '2018-03-03 19:23:11', '4668226f-4e70-347c-9740-5a9af48bdd5f', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('39a87028-88e2-7891-23fd-5accb9811dd1', 'Home2_ATOMI_INVOICE_PAYMENT_DETAILS_1331a0b0-bc77-', 0, '2018-04-10 13:19:35', '2018-04-10 13:19:35', '1', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('3bbee390-f2ff-d221-2852-5a7c923da6ef', 'atomi_vendor2_ATOMI_VENDOR', 0, '2018-02-08 18:11:39', '2018-02-08 18:11:39', '1', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('3d36a7fb-2265-e938-90e4-5a96f7f2f6fc', 'Home2_AOS_PRODUCTS_5a936dc4-0d83-2743-1296-5a7e76a', 0, '2018-02-28 18:41:27', '2018-02-28 18:41:27', '1', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('3d8bbe20-08f0-1eb8-ee9f-5ac71e4a64aa', 'Home2_AOS_PRODUCTS_5a936dc4-0d83-2743-1296-5a7e76a', 0, '2018-04-06 07:14:39', '2018-04-06 07:14:39', '1', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('3d9abb96-2878-9cfe-61d5-5ac62646d64e', 'Home2_AOW_WORKFLOW_19fce43f-9c23-6be9-00ba-5ab8fde', 0, '2018-04-05 13:38:46', '2018-04-05 13:38:46', '1', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('3e2051a3-0a9a-c68e-77b7-5aa4f090d810', 'Home2_AOS_PRODUCTS_5a936dc4-0d83-2743-1296-5a7e76a', 0, '2018-03-11 09:03:39', '2018-03-11 09:03:39', '1', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('3edaa838-0c72-2614-2d8f-5ac9efb23b07', 'Home2_AOS_PRODUCTS_5a936dc4-0d83-2743-1296-5a7e76a', 0, '2018-04-08 10:32:18', '2018-04-08 10:32:18', '1', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('3fd04c89-c6fb-f20e-21ae-5a886f975da4', 'Home2_AOS_PRODUCTS_5a936dc4-0d83-2743-1296-5a7e76a', 0, '2018-02-17 18:07:52', '2018-02-17 18:07:52', '1', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('402d0959-5176-fd36-5d5c-5ac236304163', 'Home2_ATOMI_INVOICE_PAYMENT_DETAILS_1331a0b0-bc77-', 0, '2018-04-02 13:54:51', '2018-04-02 13:54:51', '1', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('421a5819-25b6-8be3-974a-5ac9f4a0bc9a', 'Home2_ATOMI_INVOICE_COMMISSION_REPORT_e25d7fbd-70a', 0, '2018-04-08 10:51:34', '2018-04-08 10:51:34', '1', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('42c62a95-2980-4f60-ccc5-5a9af6abcc32', 'AOS_Products2_AOS_PRODUCTS', 0, '2018-03-03 19:23:29', '2018-03-03 19:23:29', '4668226f-4e70-347c-9740-5a9af48bdd5f', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('42efa7ee-6b01-ab78-9d94-5ac9c9951b59', 'Home2_AOS_PRODUCTS_5a936dc4-0d83-2743-1296-5a7e76a', 0, '2018-04-08 07:48:01', '2018-04-08 07:48:01', '1', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('43a80909-071b-b258-b5f1-5a7c888a282f', 'Home2_LEAD_ee438aa7-40cd-1083-364d-5a7c881ac6fd', 0, '2018-02-08 17:27:35', '2018-03-03 19:10:55', '1', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('459e4012-31be-741e-58cd-5ac083ba2b5b', 'Home2_AOW_WORKFLOW_19fce43f-9c23-6be9-00ba-5ab8fde', 0, '2018-04-01 06:59:49', '2018-04-01 06:59:49', '1', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('45cb4819-3d5d-a5a1-8e61-5aca5b9b6d8e', 'Home2_ATOMI_INVOICE_COMMISSION_REPORT_e25d7fbd-70a', 0, '2018-04-08 18:13:06', '2018-04-08 18:13:06', '1', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('45dd5a7b-1676-0d5a-4090-5accda63a6b1', 'Home2_ATOMI_INVOICE_PAYMENT_DETAILS_1331a0b0-bc77-', 0, '2018-04-10 15:36:36', '2018-04-10 15:36:36', '1', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('473355e1-7f20-c2e7-a809-5a9ff921c17a', 'atomi_invoice_payment_details2_ATOMI_INVOICE_PAYME', 0, '2018-03-07 14:37:13', '2018-03-07 14:37:13', '1', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('4c04008f-6c39-05dd-786e-5a7c8d2d8db0', 'AOS_Product_Categories2_AOS_PRODUCT_CATEGORIES', 0, '2018-02-08 17:49:37', '2018-02-08 17:49:37', '1', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('4cbc8402-285f-94fc-e226-5abd172dbcfa', 'Home2_AOS_PRODUCTS_5a936dc4-0d83-2743-1296-5a7e76a', 0, '2018-03-29 16:43:05', '2018-03-29 16:43:05', '1', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('4d19ee0c-09cd-72af-c139-5a9af6c46cba', 'Home2_LEAD', 0, '2018-03-03 19:23:11', '2018-03-03 19:23:11', '4668226f-4e70-347c-9740-5a9af48bdd5f', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('4d9f4698-a4fd-0a3c-d335-5accb9cb175a', 'Home2_AOS_PRODUCTS_5a936dc4-0d83-2743-1296-5a7e76a', 0, '2018-04-10 13:19:35', '2018-04-10 13:19:35', '1', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('4ef7a5b3-4656-492e-2185-5ac237beeb1d', 'Home2_ATOMI_INVOICE_COMMISSION_REPORT_e25d7fbd-70a', 0, '2018-04-02 14:02:05', '2018-04-02 14:02:05', '1', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('512f9173-c689-999b-6e4a-5aca5b9bb687', 'Home2_ATOMI_INVOICE_PAYMENT_DETAILS_1331a0b0-bc77-', 0, '2018-04-08 18:13:06', '2018-04-08 18:13:06', '1', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('51f42d3b-44db-8e9c-5e47-5aa61efe1101', 'Home2_AOS_PRODUCTS_5a936dc4-0d83-2743-1296-5a7e76a', 0, '2018-03-12 06:31:58', '2018-03-12 06:31:58', '1', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('544fc9ae-e08b-1b61-93dc-5ac10dc3ec4a', 'Home2_AOS_PRODUCTS_5a936dc4-0d83-2743-1296-5a7e76a', 0, '2018-04-01 16:50:52', '2018-04-01 16:50:52', '1', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('56607dea-be1e-41b5-2c9f-5ac2369ee796', 'Home2_AOS_PRODUCTS_5a936dc4-0d83-2743-1296-5a7e76a', 0, '2018-04-02 13:54:51', '2018-04-02 13:54:51', '1', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('57e8df50-d7c6-be26-72d6-5a7c88960b41', 'Home2_SUGARFEED', 0, '2018-02-08 17:27:26', '2018-03-03 19:10:55', '1', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('591d56f3-7801-52af-286d-5a96b7ff527d', 'Home2_AOS_PRODUCTS_5a936dc4-0d83-2743-1296-5a7e76a', 0, '2018-02-28 14:06:33', '2018-02-28 14:06:33', '1', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('59c7016e-477b-86bd-638b-5a9b8885ee41', 'Home2_AOS_PRODUCTS_5a936dc4-0d83-2743-1296-5a7e76a', 0, '2018-03-04 05:47:09', '2018-03-04 05:47:09', '1', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('5ad5fc62-df18-dc28-2218-5ac9c921d88a', 'Home2_ATOMI_INVOICE_COMMISSION_REPORT_e25d7fbd-70a', 0, '2018-04-08 07:48:01', '2018-04-08 07:48:01', '1', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('5b1cfe75-8770-53ff-7b0d-5a9940c50f72', 'Home2_AOS_PRODUCTS_5a936dc4-0d83-2743-1296-5a7e76a', 0, '2018-03-02 12:14:42', '2018-03-02 12:14:42', '1', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('5b760a8f-34e2-749f-fa01-5a930c80c9a0', 'Home2_AOS_PRODUCTS_5a936dc4-0d83-2743-1296-5a7e76a', 0, '2018-02-25 19:19:59', '2018-02-25 19:19:59', '1', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('5ea8ccd9-3a90-7fdc-7a18-5ac847930c79', 'Home2_AOW_WORKFLOW_19fce43f-9c23-6be9-00ba-5ab8fde', 0, '2018-04-07 04:22:38', '2018-04-07 04:22:38', '1', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('5f17b364-8e9d-2b7d-d67a-5a7e89723cbd', 'Contacts2_CONTACT', 0, '2018-02-10 05:56:30', '2018-03-03 19:10:55', '1', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('60c46678-c4cc-ff63-d5be-5a91064e709c', 'Home2_AOS_PRODUCTS_5a936dc4-0d83-2743-1296-5a7e76a', 0, '2018-02-24 06:32:06', '2018-02-24 06:32:06', '1', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('61dfde5d-f927-cc0b-c261-5ac4e8822b1d', 'Home2_AOW_WORKFLOW_19fce43f-9c23-6be9-00ba-5ab8fde', 0, '2018-04-04 14:59:57', '2018-04-04 14:59:57', '1', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('62646c98-af13-c803-75b6-5a859636a048', 'Home2_AOS_PRODUCTS_5a936dc4-0d83-2743-1296-5a7e76a', 0, '2018-02-15 14:16:08', '2018-02-15 14:16:08', '1', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('62d8edb1-ca28-6ab4-439e-5a7dcbb52fdd', 'Project2_PROJECT', 0, '2018-02-09 16:26:33', '2018-02-09 16:26:33', '1', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('63704bf9-8e4b-bb5e-3a15-5ac8c4d09f85', 'Home2_ATOMI_INVOICE_COMMISSION_REPORT_e25d7fbd-70a', 0, '2018-04-07 13:14:32', '2018-04-07 13:14:32', '1', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('645bf289-7051-09d0-e352-5accdac8d3f2', 'Home2_AOS_PRODUCTS_5a936dc4-0d83-2743-1296-5a7e76a', 0, '2018-04-10 15:36:36', '2018-04-10 15:36:36', '1', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('65ca5d79-6594-1b26-182b-5abb4054e623', 'Home2_AOW_WORKFLOW_19fce43f-9c23-6be9-00ba-5ab8fde', 0, '2018-03-28 07:12:10', '2018-03-28 07:12:10', '1', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('670e88df-4e9f-fd86-2f1a-5a7e76119532', 'Home2_AOS_PRODUCTS', 0, '2018-02-10 04:34:56', '2018-03-03 19:10:55', '1', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('6748755a-6e89-8e5f-1ebc-5ac6268ea0a1', 'Home2_ATOMI_INVOICE_PAYMENT_DETAILS_1331a0b0-bc77-', 0, '2018-04-05 13:38:46', '2018-04-05 13:38:46', '1', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('69a95a22-e9ff-1469-a38f-5ab92a7c8cf0', 'Home2_AOW_WORKFLOW_19fce43f-9c23-6be9-00ba-5ab8fde', 0, '2018-03-26 17:14:42', '2018-03-26 17:14:42', '1', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('69b541c5-14be-a707-194d-5a7c8ff31618', 'Leads2_LEAD', 0, '2018-02-08 17:57:19', '2018-02-08 17:57:19', '1', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('6a0a5bde-1f16-213b-8118-5aca5bd5f908', 'Home2_AOS_PRODUCTS_5a936dc4-0d83-2743-1296-5a7e76a', 0, '2018-04-08 18:13:06', '2018-04-08 18:13:06', '1', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('6d0f7de3-85f4-7a52-a403-5ac75e76f737', 'Home2_ATOMI_INVOICE_COMMISSION_REPORT_e25d7fbd-70a', 0, '2018-04-06 11:47:27', '2018-04-06 11:47:27', '1', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('6f0aca45-124f-1ab8-9653-5a930ddd2868', 'EmailTemplates2_EMAILTEMPLATE', 0, '2018-02-25 19:26:41', '2018-02-25 19:26:41', '1', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('6f4de02c-3c41-bea0-40bf-5ac4e8c446bb', 'Home2_ATOMI_INVOICE_PAYMENT_DETAILS_1331a0b0-bc77-', 0, '2018-04-04 14:59:57', '2018-04-04 14:59:57', '1', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('703c28d1-57f2-85db-8ceb-5aa7c6644252', 'Home2_AOS_PRODUCTS_5a936dc4-0d83-2743-1296-5a7e76a', 0, '2018-03-13 12:40:52', '2018-03-13 12:40:52', '1', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('71556c8e-fe2a-d4a1-237f-5a8ef82224b1', 'Home2_AOS_PRODUCTS_5a936dc4-0d83-2743-1296-5a7e76a', 0, '2018-02-22 17:06:56', '2018-02-22 17:06:56', '1', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('73670f9e-2cda-8f8f-63eb-5a8ff9bca38f', 'Home2_AOS_PRODUCTS_5a936dc4-0d83-2743-1296-5a7e76a', 0, '2018-02-23 11:22:51', '2018-02-23 11:22:51', '1', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('77c9e08c-7c6b-a8e9-0c3b-5ac1066660cb', 'Home2_AOW_WORKFLOW_19fce43f-9c23-6be9-00ba-5ab8fde', 0, '2018-04-01 16:20:55', '2018-04-01 16:20:55', '1', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('78dfc9d5-e25b-c265-2b3f-5a7c8839cd04', 'Home', 0, '2018-02-08 17:27:26', '2018-03-28 14:33:30', '1', 'YToyOntzOjg6ImRhc2hsZXRzIjthOjEwOntzOjM2OiJlYmQ1YjNjYi1jZjI2LTQ4MmQtOTg3Zi01YTdjODgyYjVkMWEiO2E6NDp7czo5OiJjbGFzc05hbWUiO3M6MTY6IlN1Z2FyRmVlZERhc2hsZXQiO3M6NjoibW9kdWxlIjtzOjk6IlN1Z2FyRmVlZCI7czoxMToiZm9yY2VDb2x1bW4iO2k6MTtzOjEyOiJmaWxlTG9jYXRpb24iO3M6NjQ6Im1vZHVsZXMvU3VnYXJGZWVkL0Rhc2hsZXRzL1N1Z2FyRmVlZERhc2hsZXQvU3VnYXJGZWVkRGFzaGxldC5waHAiO31zOjM2OiJlYzU3Y2VjZS0yYjkxLWI2NTctNjBkOC01YTdjODgyZjliNTkiO2E6NTp7czo5OiJjbGFzc05hbWUiO3M6MTQ6Ik15Q2FsbHNEYXNobGV0IjtzOjY6Im1vZHVsZSI7czo1OiJDYWxscyI7czoxMToiZm9yY2VDb2x1bW4iO2k6MDtzOjEyOiJmaWxlTG9jYXRpb24iO3M6NTY6Im1vZHVsZXMvQ2FsbHMvRGFzaGxldHMvTXlDYWxsc0Rhc2hsZXQvTXlDYWxsc0Rhc2hsZXQucGhwIjtzOjc6Im9wdGlvbnMiO2E6MDp7fX1zOjM2OiJlY2RhNmE5Mi0wOWVlLTYwNGUtZDY1NS01YTdjODgzYzJjMDciO2E6NTp7czo5OiJjbGFzc05hbWUiO3M6MTc6Ik15TWVldGluZ3NEYXNobGV0IjtzOjY6Im1vZHVsZSI7czo4OiJNZWV0aW5ncyI7czoxMToiZm9yY2VDb2x1bW4iO2k6MDtzOjEyOiJmaWxlTG9jYXRpb24iO3M6NjU6Im1vZHVsZXMvTWVldGluZ3MvRGFzaGxldHMvTXlNZWV0aW5nc0Rhc2hsZXQvTXlNZWV0aW5nc0Rhc2hsZXQucGhwIjtzOjc6Im9wdGlvbnMiO2E6MDp7fX1zOjM2OiJlZDMxNWM2Zi1jMmI4LThiOGEtNjAyZS01YTdjODgzMjZmNGYiO2E6NTp7czo5OiJjbGFzc05hbWUiO3M6MjI6Ik15T3Bwb3J0dW5pdGllc0Rhc2hsZXQiO3M6NjoibW9kdWxlIjtzOjEzOiJPcHBvcnR1bml0aWVzIjtzOjExOiJmb3JjZUNvbHVtbiI7aTowO3M6MTI6ImZpbGVMb2NhdGlvbiI7czo4MDoibW9kdWxlcy9PcHBvcnR1bml0aWVzL0Rhc2hsZXRzL015T3Bwb3J0dW5pdGllc0Rhc2hsZXQvTXlPcHBvcnR1bml0aWVzRGFzaGxldC5waHAiO3M6Nzoib3B0aW9ucyI7YTowOnt9fXM6MzY6ImVkZDM3YjBmLTMzODEtNTlkYS05YWZiLTVhN2M4ODliM2MxNiI7YTo1OntzOjk6ImNsYXNzTmFtZSI7czoxNzoiTXlBY2NvdW50c0Rhc2hsZXQiO3M6NjoibW9kdWxlIjtzOjg6IkFjY291bnRzIjtzOjExOiJmb3JjZUNvbHVtbiI7aTowO3M6MTI6ImZpbGVMb2NhdGlvbiI7czo2NToibW9kdWxlcy9BY2NvdW50cy9EYXNobGV0cy9NeUFjY291bnRzRGFzaGxldC9NeUFjY291bnRzRGFzaGxldC5waHAiO3M6Nzoib3B0aW9ucyI7YTowOnt9fXM6MzY6ImVlNDM4YWE3LTQwY2QtMTA4My0zNjRkLTVhN2M4ODFhYzZmZCI7YTo1OntzOjk6ImNsYXNzTmFtZSI7czoxNDoiTXlMZWFkc0Rhc2hsZXQiO3M6NjoibW9kdWxlIjtzOjU6IkxlYWRzIjtzOjExOiJmb3JjZUNvbHVtbiI7aTowO3M6MTI6ImZpbGVMb2NhdGlvbiI7czo1NjoibW9kdWxlcy9MZWFkcy9EYXNobGV0cy9NeUxlYWRzRGFzaGxldC9NeUxlYWRzRGFzaGxldC5waHAiO3M6Nzoib3B0aW9ucyI7YTowOnt9fXM6MzY6IjVhOTM2ZGM0LTBkODMtMjc0My0xMjk2LTVhN2U3NmFjZmNkYyI7YTo0OntzOjk6ImNsYXNzTmFtZSI7czoxOToiQU9TX1Byb2R1Y3RzRGFzaGxldCI7czo2OiJtb2R1bGUiO3M6MTI6IkFPU19Qcm9kdWN0cyI7czo3OiJvcHRpb25zIjthOjA6e31zOjEyOiJmaWxlTG9jYXRpb24iO3M6NzM6Im1vZHVsZXMvQU9TX1Byb2R1Y3RzL0Rhc2hsZXRzL0FPU19Qcm9kdWN0c0Rhc2hsZXQvQU9TX1Byb2R1Y3RzRGFzaGxldC5waHAiO31zOjM2OiIxMzMxYTBiMC1iYzc3LTA2YmMtYjY2ZC01YWI4ZmQ0MTI1NjYiO2E6NDp7czo5OiJjbGFzc05hbWUiO3M6MzY6ImF0b21pX2ludm9pY2VfcGF5bWVudF9kZXRhaWxzRGFzaGxldCI7czo2OiJtb2R1bGUiO3M6Mjk6ImF0b21pX2ludm9pY2VfcGF5bWVudF9kZXRhaWxzIjtzOjc6Im9wdGlvbnMiO2E6MDp7fXM6MTI6ImZpbGVMb2NhdGlvbiI7czoxMjQ6Im1vZHVsZXMvYXRvbWlfaW52b2ljZV9wYXltZW50X2RldGFpbHMvRGFzaGxldHMvYXRvbWlfaW52b2ljZV9wYXltZW50X2RldGFpbHNEYXNobGV0L2F0b21pX2ludm9pY2VfcGF5bWVudF9kZXRhaWxzRGFzaGxldC5waHAiO31zOjM2OiIxOWZjZTQzZi05YzIzLTZiZTktMDBiYS01YWI4ZmRlMmVkN2IiO2E6NDp7czo5OiJjbGFzc05hbWUiO3M6MTk6IkFPV19Xb3JrRmxvd0Rhc2hsZXQiO3M6NjoibW9kdWxlIjtzOjEyOiJBT1dfV29ya0Zsb3ciO3M6Nzoib3B0aW9ucyI7YTowOnt9czoxMjoiZmlsZUxvY2F0aW9uIjtzOjczOiJtb2R1bGVzL0FPV19Xb3JrRmxvdy9EYXNobGV0cy9BT1dfV29ya0Zsb3dEYXNobGV0L0FPV19Xb3JrRmxvd0Rhc2hsZXQucGhwIjt9czozNjoiZTI1ZDdmYmQtNzBhMC1jNDFhLWE5MzYtNWFiYmE3YzI2ZjI1IjthOjQ6e3M6OToiY2xhc3NOYW1lIjtzOjM4OiJhdG9taV9JbnZvaWNlX0NvbW1pc3Npb25fUmVwb3J0RGFzaGxldCI7czo2OiJtb2R1bGUiO3M6MzE6ImF0b21pX0ludm9pY2VfQ29tbWlzc2lvbl9SZXBvcnQiO3M6Nzoib3B0aW9ucyI7YTowOnt9czoxMjoiZmlsZUxvY2F0aW9uIjtzOjEzMDoibW9kdWxlcy9hdG9taV9JbnZvaWNlX0NvbW1pc3Npb25fUmVwb3J0L0Rhc2hsZXRzL2F0b21pX0ludm9pY2VfQ29tbWlzc2lvbl9SZXBvcnREYXNobGV0L2F0b21pX0ludm9pY2VfQ29tbWlzc2lvbl9SZXBvcnREYXNobGV0LnBocCI7fX1zOjU6InBhZ2VzIjthOjE6e2k6MDthOjM6e3M6NzoiY29sdW1ucyI7YToyOntpOjA7YToyOntzOjU6IndpZHRoIjtzOjM6IjYwJSI7czo4OiJkYXNobGV0cyI7YTo5OntpOjA7czozNjoiZTI1ZDdmYmQtNzBhMC1jNDFhLWE5MzYtNWFiYmE3YzI2ZjI1IjtpOjE7czozNjoiMTlmY2U0M2YtOWMyMy02YmU5LTAwYmEtNWFiOGZkZTJlZDdiIjtpOjI7czozNjoiMTMzMWEwYjAtYmM3Ny0wNmJjLWI2NmQtNWFiOGZkNDEyNTY2IjtpOjM7czozNjoiNWE5MzZkYzQtMGQ4My0yNzQzLTEyOTYtNWE3ZTc2YWNmY2RjIjtpOjQ7czozNjoiZWM1N2NlY2UtMmI5MS1iNjU3LTYwZDgtNWE3Yzg4MmY5YjU5IjtpOjU7czozNjoiZWNkYTZhOTItMDllZS02MDRlLWQ2NTUtNWE3Yzg4M2MyYzA3IjtpOjY7czozNjoiZWQzMTVjNmYtYzJiOC04YjhhLTYwMmUtNWE3Yzg4MzI2ZjRmIjtpOjc7czozNjoiZWRkMzdiMGYtMzM4MS01OWRhLTlhZmItNWE3Yzg4OWIzYzE2IjtpOjg7czozNjoiZWU0MzhhYTctNDBjZC0xMDgzLTM2NGQtNWE3Yzg4MWFjNmZkIjt9fWk6MTthOjI6e3M6NToid2lkdGgiO3M6MzoiNDAlIjtzOjg6ImRhc2hsZXRzIjthOjE6e2k6MDtzOjM2OiJlYmQ1YjNjYi1jZjI2LTQ4MmQtOTg3Zi01YTdjODgyYjVkMWEiO319fXM6MTA6Im51bUNvbHVtbnMiO3M6MToiMyI7czoxNDoicGFnZVRpdGxlTGFiZWwiO3M6MjA6IkxCTF9IT01FX1BBR0VfMV9OQU1FIjt9fX0='),
('78eac3c1-359d-3c91-4a4e-5ac0832c32a6', 'Home2_ATOMI_INVOICE_PAYMENT_DETAILS_1331a0b0-bc77-', 0, '2018-04-01 06:59:49', '2018-04-01 06:59:49', '1', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('7b42e6c2-1731-f98d-03f1-5a9d5823a25e', 'Home2_AOS_PRODUCTS_5a936dc4-0d83-2743-1296-5a7e76a', 0, '2018-03-05 14:49:08', '2018-03-05 14:49:08', '1', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('7cdf41ef-15eb-947a-e267-5ac4e8f775ff', 'Home2_AOS_PRODUCTS_5a936dc4-0d83-2743-1296-5a7e76a', 0, '2018-04-04 14:59:57', '2018-04-04 14:59:57', '1', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('7d5d30bb-9a46-4b15-ccc7-5a7c88cd5ec4', 'global', 0, '2018-02-08 17:24:14', '2018-04-10 15:36:19', '1', 'YTo1Mzp7czo4OiJ0aW1lem9uZSI7czoxMzoiRXVyb3BlL0JlcmxpbiI7czoxMjoibWFpbG1lcmdlX29uIjtzOjI6Im9uIjtzOjE2OiJzd2FwX2xhc3Rfdmlld2VkIjtzOjA6IiI7czoxNDoic3dhcF9zaG9ydGN1dHMiO3M6MDoiIjtzOjE5OiJuYXZpZ2F0aW9uX3BhcmFkaWdtIjtzOjI6ImdtIjtzOjEzOiJzdWJwYW5lbF90YWJzIjtzOjA6IiI7czoxMDoidXNlcl90aGVtZSI7czo2OiJTdWl0ZVAiO3M6MTQ6Im1vZHVsZV9mYXZpY29uIjtzOjA6IiI7czo5OiJoaWRlX3RhYnMiO2E6MDp7fXM6MTE6InJlbW92ZV90YWJzIjthOjA6e31zOjc6Im5vX29wcHMiO3M6Mzoib2ZmIjtzOjEzOiJyZW1pbmRlcl90aW1lIjtpOjE4MDA7czoxOToiZW1haWxfcmVtaW5kZXJfdGltZSI7aTozNjAwO3M6MTY6InJlbWluZGVyX2NoZWNrZWQiO3M6MToiMSI7czoyMjoiZW1haWxfcmVtaW5kZXJfY2hlY2tlZCI7TjtzOjI6InV0IjtzOjE6IjEiO3M6NToiZGF0ZWYiO3M6NToibS9kL1kiO3M6MTU6Im1haWxfc210cHNlcnZlciI7czoxNDoic210cC5nbWFpbC5jb20iO3M6MTM6Im1haWxfc210cHBvcnQiO3M6MzoiNTg3IjtzOjEzOiJtYWlsX3NtdHB1c2VyIjtzOjI2OiJtdW5vdC5zYWdhci50ZXN0QGdtYWlsLmNvbSI7czoxMzoibWFpbF9zbXRwcGFzcyI7czo5OiJ1andhbG1vdGkiO3M6MjY6ImRlZmF1bHRfbG9jYWxlX25hbWVfZm9ybWF0IjtzOjU6InMgZiBsIjtzOjE2OiJleHBvcnRfZGVsaW1pdGVyIjtzOjE6IiwiO3M6MjI6ImRlZmF1bHRfZXhwb3J0X2NoYXJzZXQiO3M6NToiVVRGLTgiO3M6MTQ6InVzZV9yZWFsX25hbWVzIjtzOjI6Im9uIjtzOjE3OiJtYWlsX3NtdHBhdXRoX3JlcSI7czoxOiIxIjtzOjEyOiJtYWlsX3NtdHBzc2wiO2k6MTtzOjE3OiJlbWFpbF9zaG93X2NvdW50cyI7aTowO3M6MjE6ImRlZmF1bHRfZW1haWxfY2hhcnNldCI7czo1OiJVVEYtOCI7czoxOToidGhlbWVfY3VycmVudF9ncm91cCI7czozOiJBbGwiO3M6OToiQWNjb3VudHNRIjthOjE6e3M6MTM6InNlYXJjaEZvcm1UYWIiO3M6MTU6ImFkdmFuY2VkX3NlYXJjaCI7fXM6MTE6IkFPU19RdW90ZXNRIjthOjE6e3M6MTM6InNlYXJjaEZvcm1UYWIiO3M6MTI6ImJhc2ljX3NlYXJjaCI7fXM6MTM6IkFPU19JbnZvaWNlc1EiO2E6MTp7czoxMzoic2VhcmNoRm9ybVRhYiI7czoxNToiYWR2YW5jZWRfc2VhcmNoIjt9czoxODoiQU9TX1BERl9UZW1wbGF0ZXNRIjthOjE6e3M6MTM6InNlYXJjaEZvcm1UYWIiO3M6MTI6ImJhc2ljX3NlYXJjaCI7fXM6MjM6IkFPU19Qcm9kdWN0X0NhdGVnb3JpZXNRIjthOjE6e3M6MTM6InNlYXJjaEZvcm1UYWIiO3M6MTU6ImFkdmFuY2VkX3NlYXJjaCI7fXM6MTM6IkFPU19Qcm9kdWN0c1EiO2E6OTp7czo2OiJtb2R1bGUiO3M6MTI6IkFPU19Qcm9kdWN0cyI7czo2OiJhY3Rpb24iO3M6NToiUG9wdXAiO3M6NToicXVlcnkiO3M6NDoidHJ1ZSI7czo0OiJ0eXBlIjtzOjQ6Ikdvb2QiO3M6MTc6ImhpZGVfY2xlYXJfYnV0dG9uIjtzOjQ6InRydWUiO3M6NDoibW9kZSI7czo2OiJzaW5nbGUiO3M6NjoiY3JlYXRlIjtzOjU6ImZhbHNlIjtzOjEzOiJmaWVsZF90b19uYW1lIjthOjEwOntpOjA7czo0OiJuYW1lIjtpOjE7czoxMToiZGVzY3JpcHRpb24iO2k6MjtzOjExOiJwYXJ0X251bWJlciI7aTozO3M6MTQ6InRpZXJfNV9wcmljZV9jIjtpOjQ7czoyMToidGllcl81X3ByaWNlX2hpZGRlbl9jIjtpOjU7czoxNDoidGllcl80X3ByaWNlX2MiO2k6NjtzOjE0OiJ0aWVyXzNfcHJpY2VfYyI7aTo3O3M6MTQ6InRpZXJfMl9wcmljZV9jIjtpOjg7czoxNDoidGllcl8xX3ByaWNlX2MiO2k6OTtzOjE0OiJ0aWVyXzBfcHJpY2VfYyI7fXM6MTM6InNlYXJjaEZvcm1UYWIiO3M6MTU6ImFkdmFuY2VkX3NlYXJjaCI7fXM6MTQ6IlByb3NwZWN0TGlzdHNRIjthOjE6e3M6MTM6InNlYXJjaEZvcm1UYWIiO3M6MTI6ImJhc2ljX3NlYXJjaCI7fXM6NjoiTGVhZHNRIjthOjE6e3M6MTM6InNlYXJjaEZvcm1UYWIiO3M6MTI6ImJhc2ljX3NlYXJjaCI7fXM6MTM6ImF0b21pX3ZlbmRvclEiO2E6MTp7czoxMzoic2VhcmNoRm9ybVRhYiI7czoxNToiYWR2YW5jZWRfc2VhcmNoIjt9czo2OiJDYXNlc1EiO2E6MTp7czoxMzoic2VhcmNoRm9ybVRhYiI7czoxMjoiYmFzaWNfc2VhcmNoIjt9czo4OiJQcm9qZWN0USI7YToxOntzOjEzOiJzZWFyY2hGb3JtVGFiIjtzOjEyOiJiYXNpY19zZWFyY2giO31zOjk6IkNvbnRhY3RzUSI7YToxOntzOjEzOiJzZWFyY2hGb3JtVGFiIjtzOjE1OiJhZHZhbmNlZF9zZWFyY2giO31zOjE1OiJFbWFpbFRlbXBsYXRlc1EiO2E6MTp7czoxMzoic2VhcmNoRm9ybVRhYiI7czoxMjoiYmFzaWNfc2VhcmNoIjt9czoxMToiZWRpdG9yX3R5cGUiO3M6NjoibW96YWlrIjtzOjk6IkFDTFJvbGVzUSI7YToxOntzOjEzOiJzZWFyY2hGb3JtVGFiIjtzOjEyOiJiYXNpY19zZWFyY2giO31zOjY6IlVzZXJzUSI7YToxOntzOjEzOiJzZWFyY2hGb3JtVGFiIjtzOjE1OiJhZHZhbmNlZF9zZWFyY2giO31zOjE1OiJTZWN1cml0eUdyb3Vwc1EiO2E6MTp7czoxMzoic2VhcmNoRm9ybVRhYiI7czoxNToiYWR2YW5jZWRfc2VhcmNoIjt9czoxMToibG9naW5mYWlsZWQiO3M6MToiMCI7czozMDoiYXRvbWlfaW52b2ljZV9wYXltZW50X2RldGFpbHNRIjthOjE6e3M6MTM6InNlYXJjaEZvcm1UYWIiO3M6MTI6ImJhc2ljX3NlYXJjaCI7fXM6MzI6ImF0b21pX0ludm9pY2VfQ29tbWlzc2lvbl9SZXBvcnRRIjthOjE6e3M6MTM6InNlYXJjaEZvcm1UYWIiO3M6MTI6ImJhc2ljX3NlYXJjaCI7fXM6MTQ6Ik9wcG9ydHVuaXRpZXNRIjthOjE6e3M6MTM6InNlYXJjaEZvcm1UYWIiO3M6MTU6ImFkdmFuY2VkX3NlYXJjaCI7fXM6OToiRW1haWxNYW5RIjthOjE6e3M6MTM6InNlYXJjaEZvcm1UYWIiO3M6MTI6ImJhc2ljX3NlYXJjaCI7fXM6MTQ6IkFPU19Db250cmFjdHNRIjthOjE6e3M6MTM6InNlYXJjaEZvcm1UYWIiO3M6MTU6ImFkdmFuY2VkX3NlYXJjaCI7fX0='),
('7ef12fab-8e5f-39fe-60aa-5aa0d3c07855', 'Home2_AOS_PRODUCTS_5a936dc4-0d83-2743-1296-5a7e76a', 0, '2018-03-08 06:09:33', '2018-03-08 06:09:33', '1', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('7fbd89be-6f7e-e128-0fec-5a83cea655c0', 'Home2_AOS_PRODUCTS_5a936dc4-0d83-2743-1296-5a7e76a', 0, '2018-02-14 05:51:54', '2018-02-14 05:51:54', '1', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('802b9769-3afb-dd6e-c858-5ac75eb3faa3', 'Home2_AOW_WORKFLOW_19fce43f-9c23-6be9-00ba-5ab8fde', 0, '2018-04-06 11:47:27', '2018-04-06 11:47:27', '1', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('8064515e-b2a3-09da-de5e-5aa12248afe1', 'Home2_AOS_PRODUCTS_5a936dc4-0d83-2743-1296-5a7e76a', 0, '2018-03-08 11:46:29', '2018-03-08 11:46:29', '1', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('814104ac-fdd3-6db0-c60c-5a9af3834d73', 'Users2_USER', 0, '2018-03-03 19:12:42', '2018-03-03 19:12:42', '1', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('834054d6-9196-0d96-647e-5a87166c8838', 'Home2_AOS_PRODUCTS_5a936dc4-0d83-2743-1296-5a7e76a', 0, '2018-02-16 17:35:41', '2018-02-16 17:35:41', '1', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('8400678c-6f75-686e-2f8a-5ac67547a226', 'AOS_Contracts2_AOS_CONTRACTS', 0, '2018-04-05 19:12:00', '2018-04-05 19:12:00', '1', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('850225d5-7c8e-f969-8084-5abba7133ba1', 'Home2_ATOMI_INVOICE_COMMISSION_REPORT', 0, '2018-03-28 14:33:28', '2018-03-28 14:33:28', '1', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('876e0710-75ab-b149-d06a-5ac1064d4805', 'Home2_ATOMI_INVOICE_PAYMENT_DETAILS_1331a0b0-bc77-', 0, '2018-04-01 16:20:55', '2018-04-01 16:20:55', '1', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('8abe89f9-b804-d43c-bc8e-5aa7dfa91246', 'Home2_AOS_PRODUCTS_5a936dc4-0d83-2743-1296-5a7e76a', 0, '2018-03-13 14:25:53', '2018-03-13 14:25:53', '1', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('8b350033-086d-f2da-9246-5ac10dd16020', 'Home2_ATOMI_INVOICE_PAYMENT_DETAILS_1331a0b0-bc77-', 0, '2018-04-01 16:50:52', '2018-04-01 16:50:52', '1', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('8bfc9d7f-9724-d4d1-295f-5ac626a7bfa9', 'Home2_ATOMI_INVOICE_COMMISSION_REPORT_e25d7fbd-70a', 0, '2018-04-05 13:38:46', '2018-04-05 13:38:46', '1', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('8c28008d-3aa3-8a6b-62c7-5a82ffd584f3', 'Home2_AOS_PRODUCTS_5a936dc4-0d83-2743-1296-5a7e76a', 0, '2018-02-13 15:10:50', '2018-02-13 15:10:50', '1', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('8c361418-a420-6280-807c-5aa3896200fa', 'Home2_AOS_PRODUCTS_5a936dc4-0d83-2743-1296-5a7e76a', 0, '2018-03-10 07:28:46', '2018-03-10 07:28:46', '1', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('8c66e931-aa8c-bfcb-b460-5a944ca01563', 'Home2_AOS_PRODUCTS_5a936dc4-0d83-2743-1296-5a7e76a', 0, '2018-02-26 18:04:01', '2018-02-26 18:04:01', '1', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('8dcaeb39-4580-1829-fadf-5a9af6e7357e', 'ETag', 0, '2018-03-03 19:23:07', '2018-03-03 19:23:07', '4668226f-4e70-347c-9740-5a9af48bdd5f', 'YToxOntzOjEyOiJtYWluTWVudUVUYWciO2k6MTt9'),
('8df2aee7-0dfd-25fd-e812-5a7c886f5540', 'ETag', 0, '2018-02-08 17:24:14', '2018-03-26 14:23:26', '1', 'YToxOntzOjEyOiJtYWluTWVudUVUYWciO2k6NDt9'),
('8e578e85-e7d9-5236-a6c9-5abd1767f8c9', 'Home2_AOW_WORKFLOW_19fce43f-9c23-6be9-00ba-5ab8fde', 0, '2018-03-29 16:43:05', '2018-03-29 16:43:05', '1', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('8efe75c5-3187-2310-ea71-5abd17826711', 'Home2_ATOMI_INVOICE_COMMISSION_REPORT_e25d7fbd-70a', 0, '2018-03-29 16:43:05', '2018-03-29 16:43:05', '1', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('8fc70247-bd9b-b298-2307-5a7c8cdfda72', 'AOS_Invoices2_AOS_INVOICES', 0, '2018-02-08 17:45:30', '2018-03-14 19:00:48', '1', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('904e8e15-671f-68dc-8214-5a9aff7c01a2', 'Users2_USER', 0, '2018-03-03 20:03:32', '2018-03-03 20:03:32', '4668226f-4e70-347c-9740-5a9af48bdd5f', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('91c722ba-c2fb-bcf0-0066-5ac0836f259b', 'Home2_AOS_PRODUCTS_5a936dc4-0d83-2743-1296-5a7e76a', 0, '2018-04-01 06:59:49', '2018-04-01 06:59:49', '1', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('9467b7d2-f404-a12c-fb2d-5ac106d92c5d', 'Home2_AOS_PRODUCTS_5a936dc4-0d83-2743-1296-5a7e76a', 0, '2018-04-01 16:20:55', '2018-04-01 16:20:55', '1', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('94709fd8-b086-4219-7637-5ac10da822ae', 'Home2_ATOMI_INVOICE_COMMISSION_REPORT_e25d7fbd-70a', 0, '2018-04-01 16:50:52', '2018-04-01 16:50:52', '1', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('94bb789c-3c1a-84cc-e374-5a9af65f2249', 'Home2_SUGARFEED', 0, '2018-03-03 19:23:11', '2018-03-03 19:23:11', '4668226f-4e70-347c-9740-5a9af48bdd5f', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('94fbc57d-ef4e-a70d-beb7-5aba9d5d177b', 'Accounts2_ACCOUNT', 0, '2018-03-27 19:36:35', '2018-03-27 19:36:35', '4668226f-4e70-347c-9740-5a9af48bdd5f', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('9586f7cb-3d75-8061-ee7d-5a7c8c6e24d2', 'Accounts', 0, '2018-02-08 17:43:48', '2018-02-08 17:43:48', '1', 'YToxOntzOjIyOiJMaXN0Vmlld0Rpc3BsYXlDb2x1bW5zIjthOjA6e319'),
('95d54293-60c5-82f4-27ba-5a9ad41dda24', 'Home2_AOS_PRODUCTS_5a936dc4-0d83-2743-1296-5a7e76a', 0, '2018-03-03 17:00:03', '2018-03-03 17:00:03', '1', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('963f9bc3-5a04-bc7d-c49e-5a9af61fee81', 'Home', 0, '2018-03-03 19:23:11', '2018-03-03 19:23:11', '4668226f-4e70-347c-9740-5a9af48bdd5f', 'YToyOntzOjg6ImRhc2hsZXRzIjthOjY6e3M6MzY6ImU4OWQ3YWM2LTgxNDYtYjY2MC1kYzcxLTVhOWFmNjliYTgxNiI7YTo0OntzOjk6ImNsYXNzTmFtZSI7czoxNjoiU3VnYXJGZWVkRGFzaGxldCI7czo2OiJtb2R1bGUiO3M6OToiU3VnYXJGZWVkIjtzOjExOiJmb3JjZUNvbHVtbiI7aToxO3M6MTI6ImZpbGVMb2NhdGlvbiI7czo2NDoibW9kdWxlcy9TdWdhckZlZWQvRGFzaGxldHMvU3VnYXJGZWVkRGFzaGxldC9TdWdhckZlZWREYXNobGV0LnBocCI7fXM6MzY6ImYxZTQ0ZGU1LTQ3MWQtOGQ1ZC1iY2MyLTVhOWFmNjBmNWY4ZiI7YTo1OntzOjk6ImNsYXNzTmFtZSI7czoxNDoiTXlDYWxsc0Rhc2hsZXQiO3M6NjoibW9kdWxlIjtzOjU6IkNhbGxzIjtzOjExOiJmb3JjZUNvbHVtbiI7aTowO3M6MTI6ImZpbGVMb2NhdGlvbiI7czo1NjoibW9kdWxlcy9DYWxscy9EYXNobGV0cy9NeUNhbGxzRGFzaGxldC9NeUNhbGxzRGFzaGxldC5waHAiO3M6Nzoib3B0aW9ucyI7YTowOnt9fXM6MzY6Ijc1OTgwYWVmLTkxMGMtYjhmOC1lNjQwLTVhOWFmNjdmMDk2NCI7YTo1OntzOjk6ImNsYXNzTmFtZSI7czoxNzoiTXlNZWV0aW5nc0Rhc2hsZXQiO3M6NjoibW9kdWxlIjtzOjg6Ik1lZXRpbmdzIjtzOjExOiJmb3JjZUNvbHVtbiI7aTowO3M6MTI6ImZpbGVMb2NhdGlvbiI7czo2NToibW9kdWxlcy9NZWV0aW5ncy9EYXNobGV0cy9NeU1lZXRpbmdzRGFzaGxldC9NeU1lZXRpbmdzRGFzaGxldC5waHAiO3M6Nzoib3B0aW9ucyI7YTowOnt9fXM6MzY6IjEwMzFjNjE1LTJkMjYtYjk4NC1iZWE1LTVhOWFmNmUwNDBiOCI7YTo1OntzOjk6ImNsYXNzTmFtZSI7czoyMjoiTXlPcHBvcnR1bml0aWVzRGFzaGxldCI7czo2OiJtb2R1bGUiO3M6MTM6Ik9wcG9ydHVuaXRpZXMiO3M6MTE6ImZvcmNlQ29sdW1uIjtpOjA7czoxMjoiZmlsZUxvY2F0aW9uIjtzOjgwOiJtb2R1bGVzL09wcG9ydHVuaXRpZXMvRGFzaGxldHMvTXlPcHBvcnR1bml0aWVzRGFzaGxldC9NeU9wcG9ydHVuaXRpZXNEYXNobGV0LnBocCI7czo3OiJvcHRpb25zIjthOjA6e319czozNjoiMWI5MDhmZjEtMWNjMC1mNDVkLWZhMTctNWE5YWY2MGFmOTY0IjthOjU6e3M6OToiY2xhc3NOYW1lIjtzOjE3OiJNeUFjY291bnRzRGFzaGxldCI7czo2OiJtb2R1bGUiO3M6ODoiQWNjb3VudHMiO3M6MTE6ImZvcmNlQ29sdW1uIjtpOjA7czoxMjoiZmlsZUxvY2F0aW9uIjtzOjY1OiJtb2R1bGVzL0FjY291bnRzL0Rhc2hsZXRzL015QWNjb3VudHNEYXNobGV0L015QWNjb3VudHNEYXNobGV0LnBocCI7czo3OiJvcHRpb25zIjthOjA6e319czozNjoiMjkxNjNkZDAtYjY2NS1mZTA1LWQzYTgtNWE5YWY2Y2IyOWQzIjthOjU6e3M6OToiY2xhc3NOYW1lIjtzOjE0OiJNeUxlYWRzRGFzaGxldCI7czo2OiJtb2R1bGUiO3M6NToiTGVhZHMiO3M6MTE6ImZvcmNlQ29sdW1uIjtpOjA7czoxMjoiZmlsZUxvY2F0aW9uIjtzOjU2OiJtb2R1bGVzL0xlYWRzL0Rhc2hsZXRzL015TGVhZHNEYXNobGV0L015TGVhZHNEYXNobGV0LnBocCI7czo3OiJvcHRpb25zIjthOjA6e319fXM6NToicGFnZXMiO2E6MTp7aTowO2E6Mzp7czo3OiJjb2x1bW5zIjthOjI6e2k6MDthOjI6e3M6NToid2lkdGgiO3M6MzoiNjAlIjtzOjg6ImRhc2hsZXRzIjthOjU6e2k6MDtzOjM2OiJmMWU0NGRlNS00NzFkLThkNWQtYmNjMi01YTlhZjYwZjVmOGYiO2k6MTtzOjM2OiI3NTk4MGFlZi05MTBjLWI4ZjgtZTY0MC01YTlhZjY3ZjA5NjQiO2k6MjtzOjM2OiIxMDMxYzYxNS0yZDI2LWI5ODQtYmVhNS01YTlhZjZlMDQwYjgiO2k6MztzOjM2OiIxYjkwOGZmMS0xY2MwLWY0NWQtZmExNy01YTlhZjYwYWY5NjQiO2k6NDtzOjM2OiIyOTE2M2RkMC1iNjY1LWZlMDUtZDNhOC01YTlhZjZjYjI5ZDMiO319aToxO2E6Mjp7czo1OiJ3aWR0aCI7czozOiI0MCUiO3M6ODoiZGFzaGxldHMiO2E6MTp7aTowO3M6MzY6ImU4OWQ3YWM2LTgxNDYtYjY2MC1kYzcxLTVhOWFmNjliYTgxNiI7fX19czoxMDoibnVtQ29sdW1ucyI7czoxOiIzIjtzOjE0OiJwYWdlVGl0bGVMYWJlbCI7czoyMDoiTEJMX0hPTUVfUEFHRV8xX05BTUUiO319fQ=='),
('972a4db4-617f-9aea-50e3-5acce1d7e6d5', 'Home2_ATOMI_INVOICE_COMMISSION_REPORT_e25d7fbd-70a', 0, '2018-04-10 16:08:32', '2018-04-10 16:08:32', '1', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('976d1047-b047-aef2-f49c-5a8c5ac996da', 'Home2_AOS_PRODUCTS_5a936dc4-0d83-2743-1296-5a7e76a', 0, '2018-02-20 17:26:02', '2018-02-20 17:26:02', '1', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ==');
INSERT INTO `user_preferences` (`id`, `category`, `deleted`, `date_entered`, `date_modified`, `assigned_user_id`, `contents`) VALUES
('97950cc5-cce2-ae0d-9092-5a7e7669c003', 'Home2_AOS_PRODUCTS_5a936dc4-0d83-2743-1296-5a7e76a', 0, '2018-02-10 04:34:56', '2018-02-10 04:34:56', '1', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('983c08ae-5d17-4767-1657-5ac9c9522420', 'Home2_AOW_WORKFLOW_19fce43f-9c23-6be9-00ba-5ab8fde', 0, '2018-04-08 07:48:01', '2018-04-08 07:48:01', '1', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('99a33a8d-d3ee-b7ff-384c-5abba7883e33', 'Home2_ATOMI_INVOICE_COMMISSION_REPORT_e25d7fbd-70a', 0, '2018-03-28 14:33:30', '2018-03-28 14:33:30', '1', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('9a4f87d4-032a-18fb-db1e-5ab8fb0df698', 'atomi_invoice_payment_details2_ATOMI_INVOICE_PAYME', 0, '2018-03-26 13:52:49', '2018-03-26 13:52:49', '1', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('9a5d0d20-2a16-2c4d-7b83-5a7fd2430416', 'Home2_AOS_PRODUCTS_5a936dc4-0d83-2743-1296-5a7e76a', 0, '2018-02-11 05:20:37', '2018-02-11 05:20:37', '1', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('9c5234aa-b778-e1c4-0ed8-5ab7509a99c7', 'Home2_AOS_PRODUCTS_5a936dc4-0d83-2743-1296-5a7e76a', 0, '2018-03-25 07:33:55', '2018-03-25 07:33:55', '1', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('9c690c39-056a-8359-8862-5a9af374430f', 'ACLRoles2_ACLROLE', 0, '2018-03-03 19:11:38', '2018-03-03 19:11:38', '1', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('9cef8d46-53fe-0c6d-1077-5a7c88230cab', 'Home2_CALL', 0, '2018-02-08 17:27:26', '2018-03-03 19:10:55', '1', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('9d805d69-cf00-7741-6226-5ac8c414801b', 'Home2_AOS_PRODUCTS_5a936dc4-0d83-2743-1296-5a7e76a', 0, '2018-04-07 13:14:32', '2018-04-07 13:14:32', '1', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('9d903875-ac4b-6af4-b033-5ac4e7a3c5e0', 'Home2_ATOMI_INVOICE_COMMISSION_REPORT_e25d7fbd-70a', 0, '2018-04-04 14:55:28', '2018-04-04 14:55:28', '1', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('9e2317bb-41d8-4546-f2e3-5a9af6737fd1', 'global', 0, '2018-03-03 19:22:54', '2018-03-27 19:36:54', '4668226f-4e70-347c-9740-5a9af48bdd5f', 'YTozMTp7czoxMDoidXNlcl90aGVtZSI7czo2OiJTdWl0ZVAiO3M6MTM6InJlbWluZGVyX3RpbWUiO2k6MTgwMDtzOjE5OiJlbWFpbF9yZW1pbmRlcl90aW1lIjtpOjM2MDA7czoxMjoibWFpbG1lcmdlX29uIjtzOjI6Im9uIjtzOjg6InRpbWV6b25lIjtzOjEzOiJFdXJvcGUvQmVybGluIjtzOjE2OiJzd2FwX2xhc3Rfdmlld2VkIjtzOjA6IiI7czoxNDoic3dhcF9zaG9ydGN1dHMiO3M6MDoiIjtzOjE5OiJuYXZpZ2F0aW9uX3BhcmFkaWdtIjtzOjI6ImdtIjtzOjEzOiJzdWJwYW5lbF90YWJzIjtzOjA6IiI7czoxNDoibW9kdWxlX2Zhdmljb24iO3M6MDoiIjtzOjk6ImhpZGVfdGFicyI7YTowOnt9czo3OiJub19vcHBzIjtzOjM6Im9mZiI7czoxNjoicmVtaW5kZXJfY2hlY2tlZCI7czoxOiIxIjtzOjIyOiJlbWFpbF9yZW1pbmRlcl9jaGVja2VkIjtzOjE6IjEiO3M6MjoidXQiO3M6MToiMSI7czo4OiJjdXJyZW5jeSI7czozOiItOTkiO3M6MzU6ImRlZmF1bHRfY3VycmVuY3lfc2lnbmlmaWNhbnRfZGlnaXRzIjtzOjE6IjIiO3M6MTE6Im51bV9ncnBfc2VwIjtzOjE6IiwiO3M6NzoiZGVjX3NlcCI7czoxOiIuIjtzOjU6ImRhdGVmIjtzOjU6Im0vZC9ZIjtzOjU6InRpbWVmIjtzOjQ6Img6aWEiO3M6MjY6ImRlZmF1bHRfbG9jYWxlX25hbWVfZm9ybWF0IjtzOjU6InMgZiBsIjtzOjE0OiJ1c2VfcmVhbF9uYW1lcyI7czoyOiJvbiI7czoxNzoibWFpbF9zbXRwYXV0aF9yZXEiO3M6MDoiIjtzOjEyOiJtYWlsX3NtdHBzc2wiO2k6MDtzOjE3OiJlbWFpbF9zaG93X2NvdW50cyI7aTowO3M6MTk6InRoZW1lX2N1cnJlbnRfZ3JvdXAiO3M6MzoiQWxsIjtzOjEzOiJBT1NfUHJvZHVjdHNRIjthOjE6e3M6MTM6InNlYXJjaEZvcm1UYWIiO3M6MTU6ImFkdmFuY2VkX3NlYXJjaCI7fXM6NjoiVXNlcnNRIjthOjE6e3M6MTM6InNlYXJjaEZvcm1UYWIiO3M6MTU6ImFkdmFuY2VkX3NlYXJjaCI7fXM6ODoiUHJvamVjdFEiO2E6MTp7czoxMzoic2VhcmNoRm9ybVRhYiI7czoxMjoiYmFzaWNfc2VhcmNoIjt9czo5OiJBY2NvdW50c1EiO2E6MTp7czoxMzoic2VhcmNoRm9ybVRhYiI7czoxNToiYWR2YW5jZWRfc2VhcmNoIjt9fQ=='),
('9e2a6b27-f069-fa00-37c0-5aa3c21b741d', 'Home2_AOS_PRODUCTS_5a936dc4-0d83-2743-1296-5a7e76a', 0, '2018-03-10 11:33:25', '2018-03-10 11:33:25', '1', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('9ef05eae-95a8-6c06-7c6e-5a9af61c255c', 'Home2_LEAD_29163dd0-b665-fe05-d3a8-5a9af6cb29d3', 0, '2018-03-03 19:23:16', '2018-03-03 19:23:16', '4668226f-4e70-347c-9740-5a9af48bdd5f', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('9f16d6c7-75c2-801c-5e0d-5ac23788f225', 'Home2_AOW_WORKFLOW_19fce43f-9c23-6be9-00ba-5ab8fde', 0, '2018-04-02 14:02:05', '2018-04-02 14:02:05', '1', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('9f2ff3ce-ac65-7abc-7408-5ab8fd05d3d7', 'Home2_ATOMI_INVOICE_PAYMENT_DETAILS_1331a0b0-bc77-', 0, '2018-03-26 14:03:01', '2018-03-26 14:03:01', '1', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('a127701a-6a2c-eed6-223f-5a96efc9bba0', 'Home2_AOS_PRODUCTS_5a936dc4-0d83-2743-1296-5a7e76a', 0, '2018-02-28 18:04:45', '2018-02-28 18:04:45', '1', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('a41c93d2-a97b-4908-b5e6-5ac9f486f781', 'Home2_AOW_WORKFLOW_19fce43f-9c23-6be9-00ba-5ab8fde', 0, '2018-04-08 10:51:34', '2018-04-08 10:51:34', '1', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('a664c12f-677e-7231-61be-5abba54c8608', 'Home2_AOW_WORKFLOW_19fce43f-9c23-6be9-00ba-5ab8fde', 0, '2018-03-28 14:25:53', '2018-03-28 14:25:53', '1', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('a91b4667-0ce2-7983-06c3-5a7c8d9356cb', 'AOS_PDF_Templates2_AOS_PDF_TEMPLATES', 0, '2018-02-08 17:47:47', '2018-03-03 19:10:55', '1', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('aa42b10f-3f1d-8ffb-304f-5a7f1a044d8e', 'Home2_AOS_PRODUCTS_5a936dc4-0d83-2743-1296-5a7e76a', 0, '2018-02-10 16:13:13', '2018-02-10 16:13:13', '1', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('aa856e36-b271-3310-aa95-5a831adb36a0', 'Home2_AOS_PRODUCTS_5a936dc4-0d83-2743-1296-5a7e76a', 0, '2018-02-13 17:01:55', '2018-02-13 17:01:55', '1', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('acf1c0b4-9aa3-b496-fa04-5aabf5f393cc', 'Home2_AOS_PRODUCTS_5a936dc4-0d83-2743-1296-5a7e76a', 0, '2018-03-16 16:50:44', '2018-03-16 16:50:44', '1', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('af540aa8-3f6d-950c-b8e9-5a7ebad53eb6', 'Home2_AOS_PRODUCTS_5a936dc4-0d83-2743-1296-5a7e76a', 0, '2018-02-10 09:27:08', '2018-02-10 09:27:08', '1', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('af575bc9-6cec-4af4-d0e2-5acda1713821', 'Home2_AOW_WORKFLOW_19fce43f-9c23-6be9-00ba-5ab8fde', 0, '2018-04-11 05:49:03', '2018-04-11 05:49:03', '1', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('b3338e03-c14e-ce0b-419d-5abba5dafbd2', 'Home2_ATOMI_INVOICE_PAYMENT_DETAILS_1331a0b0-bc77-', 0, '2018-03-28 14:25:53', '2018-03-28 14:25:53', '1', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('b495c797-945a-2b99-a0cd-5accda6eddde', 'Home2_ATOMI_INVOICE_COMMISSION_REPORT_e25d7fbd-70a', 0, '2018-04-10 15:36:36', '2018-04-10 15:36:36', '1', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('b6095e9d-b82d-fb2f-1fc6-5a9440bbe7dd', 'Home2_AOS_PRODUCTS_5a936dc4-0d83-2743-1296-5a7e76a', 0, '2018-02-26 17:15:05', '2018-02-26 17:15:05', '1', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('b61a5d31-fd49-1ba9-eccb-5ac847c2d114', 'Home2_ATOMI_INVOICE_PAYMENT_DETAILS_1331a0b0-bc77-', 0, '2018-04-07 04:22:38', '2018-04-07 04:22:38', '1', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('b65eac67-791e-3a76-b2d3-5ac8470a30d2', 'Home2_ATOMI_INVOICE_COMMISSION_REPORT_e25d7fbd-70a', 0, '2018-04-07 04:22:38', '2018-04-07 04:22:38', '1', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('b71461d2-6778-d195-d07e-5a7c8b247c87', 'Accounts2_ACCOUNT', 0, '2018-02-08 17:41:13', '2018-03-03 19:10:55', '1', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czo0OiJuYW1lIjtzOjk6InNvcnRPcmRlciI7czozOiJBU0MiO319'),
('b8988bb6-d5c9-27ee-1a97-5ac9f439886d', 'Home2_ATOMI_INVOICE_PAYMENT_DETAILS_1331a0b0-bc77-', 0, '2018-04-08 10:51:34', '2018-04-08 10:51:34', '1', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('b90e04a3-0331-5bd6-c5c8-5ab92a94f0e6', 'Home2_ATOMI_INVOICE_PAYMENT_DETAILS_1331a0b0-bc77-', 0, '2018-03-26 17:14:42', '2018-03-26 17:14:42', '1', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('b9e4fbe2-9141-9892-d2b6-5a817247c80b', 'Home2_AOS_PRODUCTS_5a936dc4-0d83-2743-1296-5a7e76a', 0, '2018-02-12 10:55:39', '2018-02-12 10:55:39', '1', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('ba1c067c-20e7-679c-d2a0-5a9bcc0137b1', 'Project2_PROJECT', 0, '2018-03-04 10:37:11', '2018-03-04 10:37:11', '4668226f-4e70-347c-9740-5a9af48bdd5f', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('bc9fc46c-c4bb-fd32-44a7-5a7c88c47e9f', 'Home2_MEETING', 0, '2018-02-08 17:27:26', '2018-03-03 19:10:55', '1', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('bcd95786-f2b5-ca3b-6c29-5a96efa82799', 'Home2_AOS_PRODUCTS_5a936dc4-0d83-2743-1296-5a7e76a', 0, '2018-02-28 18:07:27', '2018-02-28 18:07:27', '1', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('bd102d3f-9f5e-49ab-b8cf-5a9af3cae933', 'Dashboard', 0, '2018-03-03 19:10:50', '2018-03-03 19:10:55', '1', 'YTowOnt9'),
('be33e3c7-eccc-02f4-c790-5aa771941139', 'Home2_AOS_PRODUCTS_5a936dc4-0d83-2743-1296-5a7e76a', 0, '2018-03-13 06:35:39', '2018-03-13 06:35:39', '1', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('be400802-2a80-6331-7a5f-5accdaab9752', 'Home2_AOW_WORKFLOW_19fce43f-9c23-6be9-00ba-5ab8fde', 0, '2018-04-10 15:36:36', '2018-04-10 15:36:36', '1', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('bed7ab15-e47f-c9b9-749d-5a7c8f23c304', 'ProspectLists2_PROSPECTLIST', 0, '2018-02-08 17:56:11', '2018-02-08 17:56:11', '1', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('bfc09efb-8ba3-a27c-1933-5a94611abe5a', 'Home2_AOS_PRODUCTS_5a936dc4-0d83-2743-1296-5a7e76a', 0, '2018-02-26 19:36:44', '2018-02-26 19:36:44', '1', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('c0300eef-8b81-1ef9-820d-5ac62676f010', 'Home2_AOS_PRODUCTS_5a936dc4-0d83-2743-1296-5a7e76a', 0, '2018-04-05 13:38:46', '2018-04-05 13:38:46', '1', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('c4326efd-d9d9-a329-5176-5ac71ee4d169', 'Home2_ATOMI_INVOICE_COMMISSION_REPORT_e25d7fbd-70a', 0, '2018-04-06 07:14:39', '2018-04-06 07:14:39', '1', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('c952a5d3-0883-d650-1d08-5a9668e0a3c2', 'Home2_AOS_PRODUCTS_5a936dc4-0d83-2743-1296-5a7e76a', 0, '2018-02-28 08:31:02', '2018-02-28 08:31:02', '1', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('c9921466-8ef3-3a03-2acf-5a9af64ba187', 'Home2_CALL', 0, '2018-03-03 19:23:11', '2018-03-03 19:23:11', '4668226f-4e70-347c-9740-5a9af48bdd5f', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('cb942981-21be-94bc-31d9-5abd1728e4e9', 'Home2_ATOMI_INVOICE_PAYMENT_DETAILS_1331a0b0-bc77-', 0, '2018-03-29 16:43:05', '2018-03-29 16:43:05', '1', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('cfd0a7e0-4b52-1cea-2338-5a85c15ac20c', 'Home2_AOS_PRODUCTS_5a936dc4-0d83-2743-1296-5a7e76a', 0, '2018-02-15 17:19:12', '2018-02-15 17:19:12', '1', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('d06daee4-ef10-b6ad-b6b9-5a87bdd8a9e0', 'Home2_AOS_PRODUCTS_5a936dc4-0d83-2743-1296-5a7e76a', 0, '2018-02-17 05:28:45', '2018-02-17 05:28:45', '1', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('d0d4c238-899c-f809-c7fd-5ab8efbafc86', 'Home2_AOS_PRODUCTS_5a936dc4-0d83-2743-1296-5a7e76a', 0, '2018-03-26 13:05:02', '2018-03-26 13:05:02', '1', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('d0e40cc9-884a-a916-b4b6-5a7c88809309', 'Home2_ACCOUNT', 0, '2018-02-08 17:27:26', '2018-03-03 19:10:55', '1', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('d3bdaf61-1384-19ed-87b7-5a9af6900369', 'Home2_MEETING', 0, '2018-03-03 19:23:11', '2018-03-03 19:23:11', '4668226f-4e70-347c-9740-5a9af48bdd5f', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('d8240e4b-26ae-7dca-3a31-5ac23797d904', 'Home2_ATOMI_INVOICE_PAYMENT_DETAILS_1331a0b0-bc77-', 0, '2018-04-02 14:02:05', '2018-04-02 14:02:05', '1', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('d886f9bb-10ff-ef44-16b1-5acce198ea97', 'Home2_AOW_WORKFLOW_19fce43f-9c23-6be9-00ba-5ab8fde', 0, '2018-04-10 16:08:32', '2018-04-10 16:08:32', '1', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('d892b923-59b5-fb3e-4276-5a7c8c3559f8', 'AOS_Quotes2_AOS_QUOTES', 0, '2018-02-08 17:45:20', '2018-02-08 17:45:20', '1', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('d895b77a-0c77-165d-d1a9-5a9af34baf12', 'AOS_Invoices', 0, '2018-03-03 19:10:50', '2018-03-14 18:20:48', '1', 'YToxOntzOjIyOiJMaXN0Vmlld0Rpc3BsYXlDb2x1bW5zIjthOjA6e319'),
('d98f00da-c266-3029-9780-5a7c88cd40bb', 'Home2_OPPORTUNITY', 0, '2018-02-08 17:27:26', '2018-03-03 19:10:55', '1', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('d99f3771-c5d6-68e4-f028-5ac8c42ef56e', 'Home2_AOW_WORKFLOW_19fce43f-9c23-6be9-00ba-5ab8fde', 0, '2018-04-07 13:14:32', '2018-04-07 13:14:32', '1', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('dda096ea-959d-6523-6a2b-5acda19bd5d6', 'Home2_ATOMI_INVOICE_PAYMENT_DETAILS_1331a0b0-bc77-', 0, '2018-04-11 05:49:03', '2018-04-11 05:49:03', '1', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('df4fb80b-92e0-d31c-ff08-5a9af656f1a9', 'Home2_OPPORTUNITY', 0, '2018-03-03 19:23:11', '2018-03-03 19:23:11', '4668226f-4e70-347c-9740-5a9af48bdd5f', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('e01d1540-79b0-cf43-5ac8-5a9ff2508fad', 'Home2_AOS_PRODUCTS_5a936dc4-0d83-2743-1296-5a7e76a', 0, '2018-03-07 14:09:46', '2018-03-07 14:09:46', '1', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('e23fef2d-0963-4ae7-5af4-5ac10dd9dee5', 'Home2_AOW_WORKFLOW_19fce43f-9c23-6be9-00ba-5ab8fde', 0, '2018-04-01 16:50:52', '2018-04-01 16:50:52', '1', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('e2760cff-b5c4-0eea-539d-5ac9ef2283ef', 'Home2_AOW_WORKFLOW_19fce43f-9c23-6be9-00ba-5ab8fde', 0, '2018-04-08 10:32:18', '2018-04-08 10:32:18', '1', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('e4d7168f-9f60-469b-c6d9-5ac9f46d0594', 'Home2_AOS_PRODUCTS_5a936dc4-0d83-2743-1296-5a7e76a', 0, '2018-04-08 10:51:34', '2018-04-08 10:51:34', '1', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('e4e7b323-92ea-051f-a615-5aa7e3ca01bb', 'Home2_AOS_PRODUCTS_5a936dc4-0d83-2743-1296-5a7e76a', 0, '2018-03-13 14:42:31', '2018-03-13 14:42:31', '1', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('e5e1a02e-dff5-b93b-646d-5ac237b92fe9', 'Home2_AOS_PRODUCTS_5a936dc4-0d83-2743-1296-5a7e76a', 0, '2018-04-02 14:02:05', '2018-04-02 14:02:05', '1', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('e774e79f-20bc-7f5e-3230-5abb406db3ac', 'Home2_ATOMI_INVOICE_PAYMENT_DETAILS_1331a0b0-bc77-', 0, '2018-03-28 07:12:10', '2018-03-28 07:12:10', '1', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('e819fd61-039f-10a6-f6e4-5ac847a909a5', 'Home2_AOS_PRODUCTS_5a936dc4-0d83-2743-1296-5a7e76a', 0, '2018-04-07 04:22:38', '2018-04-07 04:22:38', '1', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('ec7f0e0c-0e75-f234-c312-5ab903f73a63', 'Home2_AOW_WORKFLOW_19fce43f-9c23-6be9-00ba-5ab8fde', 0, '2018-03-26 14:27:23', '2018-03-26 14:27:23', '1', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('ee071aae-316b-d919-5550-5ac106807bcb', 'Home2_ATOMI_INVOICE_COMMISSION_REPORT_e25d7fbd-70a', 0, '2018-04-01 16:20:55', '2018-04-01 16:20:55', '1', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('f00dda1d-517f-4a8f-c783-5ac236078145', 'Home2_ATOMI_INVOICE_COMMISSION_REPORT_e25d7fbd-70a', 0, '2018-04-02 13:54:51', '2018-04-02 13:54:51', '1', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('f0219c5a-c7aa-1de7-d198-5ac75ee22e18', 'Home2_ATOMI_INVOICE_PAYMENT_DETAILS_1331a0b0-bc77-', 0, '2018-04-06 11:47:27', '2018-04-06 11:47:27', '1', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('f1beaa39-7eba-b499-db98-5a97a3e2a0d1', 'Home2_AOS_PRODUCTS_5a936dc4-0d83-2743-1296-5a7e76a', 0, '2018-03-01 06:53:34', '2018-03-01 06:53:34', '1', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('f262b862-6385-0c91-6585-5accb98047e0', 'Home2_ATOMI_INVOICE_COMMISSION_REPORT_e25d7fbd-70a', 0, '2018-04-10 13:19:35', '2018-04-10 13:19:35', '1', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('f5880064-6b58-b0c1-5054-5ac71e913eb6', 'Home2_AOW_WORKFLOW_19fce43f-9c23-6be9-00ba-5ab8fde', 0, '2018-04-06 07:14:39', '2018-04-06 07:14:39', '1', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ==');

-- --------------------------------------------------------

--
-- Table structure for table `vcals`
--

CREATE TABLE `vcals` (
  `id` char(36) NOT NULL,
  `deleted` tinyint(1) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `user_id` char(36) NOT NULL,
  `type` varchar(100) DEFAULT NULL,
  `source` varchar(100) DEFAULT NULL,
  `content` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `vcals`
--

INSERT INTO `vcals` (`id`, `deleted`, `date_entered`, `date_modified`, `user_id`, `type`, `source`, `content`) VALUES
('18e94c84-1787-246d-5d09-5ac675afe2b4', 0, '2018-04-05 19:15:04', '2018-04-05 19:15:04', '1', 'vfb', 'sugar', 'BEGIN:VCALENDAR\r\nVERSION:2.0\r\nPRODID:-//SugarCRM//SugarCRM Calendar//EN\r\nBEGIN:VFREEBUSY\r\nORGANIZER;CN=Mike Administrator:VFREEBUSY\r\nDTSTART:2018-04-03 22:00:00\r\nDTEND:2018-06-03 22:00:00\r\nDTSTAMP:2018-04-05 19:15:04\r\nEND:VFREEBUSY\r\nEND:VCALENDAR\r\n');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `accounts`
--
ALTER TABLE `accounts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_accnt_id_del` (`id`,`deleted`),
  ADD KEY `idx_accnt_name_del` (`name`,`deleted`),
  ADD KEY `idx_accnt_assigned_del` (`deleted`,`assigned_user_id`),
  ADD KEY `idx_accnt_parent_id` (`parent_id`);

--
-- Indexes for table `accounts_audit`
--
ALTER TABLE `accounts_audit`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_accounts_parent_id` (`parent_id`);

--
-- Indexes for table `accounts_bugs`
--
ALTER TABLE `accounts_bugs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_acc_bug_acc` (`account_id`),
  ADD KEY `idx_acc_bug_bug` (`bug_id`),
  ADD KEY `idx_account_bug` (`account_id`,`bug_id`);

--
-- Indexes for table `accounts_cases`
--
ALTER TABLE `accounts_cases`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_acc_case_acc` (`account_id`),
  ADD KEY `idx_acc_acc_case` (`case_id`);

--
-- Indexes for table `accounts_contacts`
--
ALTER TABLE `accounts_contacts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_account_contact` (`account_id`,`contact_id`),
  ADD KEY `idx_contid_del_accid` (`contact_id`,`deleted`,`account_id`);

--
-- Indexes for table `accounts_cstm`
--
ALTER TABLE `accounts_cstm`
  ADD PRIMARY KEY (`id_c`);

--
-- Indexes for table `accounts_opportunities`
--
ALTER TABLE `accounts_opportunities`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_account_opportunity` (`account_id`,`opportunity_id`),
  ADD KEY `idx_oppid_del_accid` (`opportunity_id`,`deleted`,`account_id`);

--
-- Indexes for table `acl_actions`
--
ALTER TABLE `acl_actions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_aclaction_id_del` (`id`,`deleted`),
  ADD KEY `idx_category_name` (`category`,`name`);

--
-- Indexes for table `acl_roles`
--
ALTER TABLE `acl_roles`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_aclrole_id_del` (`id`,`deleted`);

--
-- Indexes for table `acl_roles_actions`
--
ALTER TABLE `acl_roles_actions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_acl_role_id` (`role_id`),
  ADD KEY `idx_acl_action_id` (`action_id`),
  ADD KEY `idx_aclrole_action` (`role_id`,`action_id`);

--
-- Indexes for table `acl_roles_users`
--
ALTER TABLE `acl_roles_users`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_aclrole_id` (`role_id`),
  ADD KEY `idx_acluser_id` (`user_id`),
  ADD KEY `idx_aclrole_user` (`role_id`,`user_id`);

--
-- Indexes for table `address_book`
--
ALTER TABLE `address_book`
  ADD KEY `ab_user_bean_idx` (`assigned_user_id`,`bean`);

--
-- Indexes for table `alerts`
--
ALTER TABLE `alerts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `am_projecttemplates`
--
ALTER TABLE `am_projecttemplates`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `am_projecttemplates_audit`
--
ALTER TABLE `am_projecttemplates_audit`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_am_projecttemplates_parent_id` (`parent_id`);

--
-- Indexes for table `am_projecttemplates_contacts_1_c`
--
ALTER TABLE `am_projecttemplates_contacts_1_c`
  ADD PRIMARY KEY (`id`),
  ADD KEY `am_projecttemplates_contacts_1_alt` (`am_projecttemplates_ida`,`contacts_idb`);

--
-- Indexes for table `am_projecttemplates_project_1_c`
--
ALTER TABLE `am_projecttemplates_project_1_c`
  ADD PRIMARY KEY (`id`),
  ADD KEY `am_projecttemplates_project_1_ida1` (`am_projecttemplates_project_1am_projecttemplates_ida`),
  ADD KEY `am_projecttemplates_project_1_alt` (`am_projecttemplates_project_1project_idb`);

--
-- Indexes for table `am_projecttemplates_users_1_c`
--
ALTER TABLE `am_projecttemplates_users_1_c`
  ADD PRIMARY KEY (`id`),
  ADD KEY `am_projecttemplates_users_1_alt` (`am_projecttemplates_ida`,`users_idb`);

--
-- Indexes for table `am_tasktemplates`
--
ALTER TABLE `am_tasktemplates`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `am_tasktemplates_am_projecttemplates_c`
--
ALTER TABLE `am_tasktemplates_am_projecttemplates_c`
  ADD PRIMARY KEY (`id`),
  ADD KEY `am_tasktemplates_am_projecttemplates_ida1` (`am_tasktemplates_am_projecttemplatesam_projecttemplates_ida`),
  ADD KEY `am_tasktemplates_am_projecttemplates_alt` (`am_tasktemplates_am_projecttemplatesam_tasktemplates_idb`);

--
-- Indexes for table `am_tasktemplates_audit`
--
ALTER TABLE `am_tasktemplates_audit`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_am_tasktemplates_parent_id` (`parent_id`);

--
-- Indexes for table `aobh_businesshours`
--
ALTER TABLE `aobh_businesshours`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `aod_index`
--
ALTER TABLE `aod_index`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `aod_indexevent`
--
ALTER TABLE `aod_indexevent`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_record_module` (`record_module`),
  ADD KEY `idx_record_id` (`record_id`);

--
-- Indexes for table `aod_indexevent_audit`
--
ALTER TABLE `aod_indexevent_audit`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_aod_indexevent_parent_id` (`parent_id`);

--
-- Indexes for table `aod_index_audit`
--
ALTER TABLE `aod_index_audit`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_aod_index_parent_id` (`parent_id`);

--
-- Indexes for table `aok_knowledgebase`
--
ALTER TABLE `aok_knowledgebase`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `aok_knowledgebase_audit`
--
ALTER TABLE `aok_knowledgebase_audit`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_aok_knowledgebase_parent_id` (`parent_id`);

--
-- Indexes for table `aok_knowledgebase_categories`
--
ALTER TABLE `aok_knowledgebase_categories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `aok_knowledgebase_categories_alt` (`aok_knowledgebase_id`,`aok_knowledge_base_categories_id`);

--
-- Indexes for table `aok_knowledge_base_categories`
--
ALTER TABLE `aok_knowledge_base_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `aok_knowledge_base_categories_audit`
--
ALTER TABLE `aok_knowledge_base_categories_audit`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_aok_knowledge_base_categories_parent_id` (`parent_id`);

--
-- Indexes for table `aop_case_events`
--
ALTER TABLE `aop_case_events`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `aop_case_events_audit`
--
ALTER TABLE `aop_case_events_audit`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_aop_case_events_parent_id` (`parent_id`);

--
-- Indexes for table `aop_case_updates`
--
ALTER TABLE `aop_case_updates`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `aop_case_updates_audit`
--
ALTER TABLE `aop_case_updates_audit`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_aop_case_updates_parent_id` (`parent_id`);

--
-- Indexes for table `aor_charts`
--
ALTER TABLE `aor_charts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `aor_conditions`
--
ALTER TABLE `aor_conditions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `aor_conditions_index_report_id` (`aor_report_id`);

--
-- Indexes for table `aor_fields`
--
ALTER TABLE `aor_fields`
  ADD PRIMARY KEY (`id`),
  ADD KEY `aor_fields_index_report_id` (`aor_report_id`);

--
-- Indexes for table `aor_reports`
--
ALTER TABLE `aor_reports`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `aor_reports_audit`
--
ALTER TABLE `aor_reports_audit`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_aor_reports_parent_id` (`parent_id`);

--
-- Indexes for table `aor_scheduled_reports`
--
ALTER TABLE `aor_scheduled_reports`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `aos_contracts`
--
ALTER TABLE `aos_contracts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `aos_contracts_audit`
--
ALTER TABLE `aos_contracts_audit`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_aos_contracts_parent_id` (`parent_id`);

--
-- Indexes for table `aos_contracts_documents`
--
ALTER TABLE `aos_contracts_documents`
  ADD PRIMARY KEY (`id`),
  ADD KEY `aos_contracts_documents_alt` (`aos_contracts_id`,`documents_id`);

--
-- Indexes for table `aos_invoices`
--
ALTER TABLE `aos_invoices`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `aos_invoices_atomi_invoice_payment_details_1_c`
--
ALTER TABLE `aos_invoices_atomi_invoice_payment_details_1_c`
  ADD PRIMARY KEY (`id`),
  ADD KEY `aos_invoices_atomi_invoice_payment_details_1_ida1` (`aos_invoices_atomi_invoice_payment_details_1aos_invoices_ida`),
  ADD KEY `aos_invoices_atomi_invoice_payment_details_1_alt` (`aos_invoic9687details_idb`);

--
-- Indexes for table `aos_invoices_audit`
--
ALTER TABLE `aos_invoices_audit`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_aos_invoices_parent_id` (`parent_id`);

--
-- Indexes for table `aos_invoices_cstm`
--
ALTER TABLE `aos_invoices_cstm`
  ADD PRIMARY KEY (`id_c`);

--
-- Indexes for table `aos_line_item_groups`
--
ALTER TABLE `aos_line_item_groups`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `aos_line_item_groups_audit`
--
ALTER TABLE `aos_line_item_groups_audit`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_aos_line_item_groups_parent_id` (`parent_id`);

--
-- Indexes for table `aos_pdf_templates`
--
ALTER TABLE `aos_pdf_templates`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `aos_pdf_templates_audit`
--
ALTER TABLE `aos_pdf_templates_audit`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_aos_pdf_templates_parent_id` (`parent_id`);

--
-- Indexes for table `aos_products`
--
ALTER TABLE `aos_products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `aos_products_audit`
--
ALTER TABLE `aos_products_audit`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_aos_products_parent_id` (`parent_id`);

--
-- Indexes for table `aos_products_cstm`
--
ALTER TABLE `aos_products_cstm`
  ADD PRIMARY KEY (`id_c`);

--
-- Indexes for table `aos_products_quotes`
--
ALTER TABLE `aos_products_quotes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_aospq_par_del` (`parent_id`,`parent_type`,`deleted`);

--
-- Indexes for table `aos_products_quotes_audit`
--
ALTER TABLE `aos_products_quotes_audit`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_aos_products_quotes_parent_id` (`parent_id`);

--
-- Indexes for table `aos_products_quotes_cstm`
--
ALTER TABLE `aos_products_quotes_cstm`
  ADD PRIMARY KEY (`id_c`);

--
-- Indexes for table `aos_product_categories`
--
ALTER TABLE `aos_product_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `aos_product_categories_audit`
--
ALTER TABLE `aos_product_categories_audit`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_aos_product_categories_parent_id` (`parent_id`);

--
-- Indexes for table `aos_quotes`
--
ALTER TABLE `aos_quotes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `aos_quotes_aos_invoices_c`
--
ALTER TABLE `aos_quotes_aos_invoices_c`
  ADD PRIMARY KEY (`id`),
  ADD KEY `aos_quotes_aos_invoices_alt` (`aos_quotes77d9_quotes_ida`,`aos_quotes6b83nvoices_idb`);

--
-- Indexes for table `aos_quotes_audit`
--
ALTER TABLE `aos_quotes_audit`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_aos_quotes_parent_id` (`parent_id`);

--
-- Indexes for table `aos_quotes_cstm`
--
ALTER TABLE `aos_quotes_cstm`
  ADD PRIMARY KEY (`id_c`);

--
-- Indexes for table `aos_quotes_os_contracts_c`
--
ALTER TABLE `aos_quotes_os_contracts_c`
  ADD PRIMARY KEY (`id`),
  ADD KEY `aos_quotes_aos_contracts_alt` (`aos_quotese81e_quotes_ida`,`aos_quotes4dc0ntracts_idb`);

--
-- Indexes for table `aos_quotes_project_c`
--
ALTER TABLE `aos_quotes_project_c`
  ADD PRIMARY KEY (`id`),
  ADD KEY `aos_quotes_project_alt` (`aos_quotes1112_quotes_ida`,`aos_quotes7207project_idb`);

--
-- Indexes for table `aow_actions`
--
ALTER TABLE `aow_actions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `aow_action_index_workflow_id` (`aow_workflow_id`);

--
-- Indexes for table `aow_conditions`
--
ALTER TABLE `aow_conditions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `aow_conditions_index_workflow_id` (`aow_workflow_id`);

--
-- Indexes for table `aow_processed`
--
ALTER TABLE `aow_processed`
  ADD PRIMARY KEY (`id`),
  ADD KEY `aow_processed_index_workflow` (`aow_workflow_id`,`status`,`parent_id`,`deleted`),
  ADD KEY `aow_processed_index_status` (`status`),
  ADD KEY `aow_processed_index_workflow_id` (`aow_workflow_id`);

--
-- Indexes for table `aow_processed_aow_actions`
--
ALTER TABLE `aow_processed_aow_actions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_aow_processed_aow_actions` (`aow_processed_id`,`aow_action_id`),
  ADD KEY `idx_actid_del_freid` (`aow_action_id`,`deleted`,`aow_processed_id`);

--
-- Indexes for table `aow_workflow`
--
ALTER TABLE `aow_workflow`
  ADD PRIMARY KEY (`id`),
  ADD KEY `aow_workflow_index_status` (`status`);

--
-- Indexes for table `aow_workflow_audit`
--
ALTER TABLE `aow_workflow_audit`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_aow_workflow_parent_id` (`parent_id`);

--
-- Indexes for table `atomi_invoice_commission_report`
--
ALTER TABLE `atomi_invoice_commission_report`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `atomi_invoice_commission_report_audit`
--
ALTER TABLE `atomi_invoice_commission_report_audit`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_atomi_invoice_commission_report_parent_id` (`parent_id`);

--
-- Indexes for table `atomi_invoice_commission_report_cstm`
--
ALTER TABLE `atomi_invoice_commission_report_cstm`
  ADD PRIMARY KEY (`id_c`);

--
-- Indexes for table `atomi_invoice_payment_details`
--
ALTER TABLE `atomi_invoice_payment_details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `atomi_invoice_payment_details_audit`
--
ALTER TABLE `atomi_invoice_payment_details_audit`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_atomi_invoice_payment_details_parent_id` (`parent_id`);

--
-- Indexes for table `atomi_invoice_payment_details_cstm`
--
ALTER TABLE `atomi_invoice_payment_details_cstm`
  ADD PRIMARY KEY (`id_c`);

--
-- Indexes for table `atomi_vendor`
--
ALTER TABLE `atomi_vendor`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `atomi_vendor_audit`
--
ALTER TABLE `atomi_vendor_audit`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_atomi_vendor_parent_id` (`parent_id`);

--
-- Indexes for table `bugs`
--
ALTER TABLE `bugs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `bugsnumk` (`bug_number`),
  ADD KEY `bug_number` (`bug_number`),
  ADD KEY `idx_bug_name` (`name`),
  ADD KEY `idx_bugs_assigned_user` (`assigned_user_id`);

--
-- Indexes for table `bugs_audit`
--
ALTER TABLE `bugs_audit`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_bugs_parent_id` (`parent_id`);

--
-- Indexes for table `calls`
--
ALTER TABLE `calls`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_call_name` (`name`),
  ADD KEY `idx_status` (`status`),
  ADD KEY `idx_calls_date_start` (`date_start`),
  ADD KEY `idx_calls_par_del` (`parent_id`,`parent_type`,`deleted`),
  ADD KEY `idx_calls_assigned_del` (`deleted`,`assigned_user_id`);

--
-- Indexes for table `calls_contacts`
--
ALTER TABLE `calls_contacts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_con_call_call` (`call_id`),
  ADD KEY `idx_con_call_con` (`contact_id`),
  ADD KEY `idx_call_contact` (`call_id`,`contact_id`);

--
-- Indexes for table `calls_leads`
--
ALTER TABLE `calls_leads`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_lead_call_call` (`call_id`),
  ADD KEY `idx_lead_call_lead` (`lead_id`),
  ADD KEY `idx_call_lead` (`call_id`,`lead_id`);

--
-- Indexes for table `calls_reschedule`
--
ALTER TABLE `calls_reschedule`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `calls_reschedule_audit`
--
ALTER TABLE `calls_reschedule_audit`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_calls_reschedule_parent_id` (`parent_id`);

--
-- Indexes for table `calls_users`
--
ALTER TABLE `calls_users`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_usr_call_call` (`call_id`),
  ADD KEY `idx_usr_call_usr` (`user_id`),
  ADD KEY `idx_call_users` (`call_id`,`user_id`);

--
-- Indexes for table `campaigns`
--
ALTER TABLE `campaigns`
  ADD PRIMARY KEY (`id`),
  ADD KEY `camp_auto_tracker_key` (`tracker_key`),
  ADD KEY `idx_campaign_name` (`name`);

--
-- Indexes for table `campaigns_audit`
--
ALTER TABLE `campaigns_audit`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_campaigns_parent_id` (`parent_id`);

--
-- Indexes for table `campaign_log`
--
ALTER TABLE `campaign_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_camp_tracker` (`target_tracker_key`),
  ADD KEY `idx_camp_campaign_id` (`campaign_id`),
  ADD KEY `idx_camp_more_info` (`more_information`),
  ADD KEY `idx_target_id` (`target_id`),
  ADD KEY `idx_target_id_deleted` (`target_id`,`deleted`);

--
-- Indexes for table `campaign_trkrs`
--
ALTER TABLE `campaign_trkrs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `campaign_tracker_key_idx` (`tracker_key`);

--
-- Indexes for table `cases`
--
ALTER TABLE `cases`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `casesnumk` (`case_number`),
  ADD KEY `case_number` (`case_number`),
  ADD KEY `idx_case_name` (`name`),
  ADD KEY `idx_account_id` (`account_id`),
  ADD KEY `idx_cases_stat_del` (`assigned_user_id`,`status`,`deleted`);

--
-- Indexes for table `cases_audit`
--
ALTER TABLE `cases_audit`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_cases_parent_id` (`parent_id`);

--
-- Indexes for table `cases_bugs`
--
ALTER TABLE `cases_bugs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_cas_bug_cas` (`case_id`),
  ADD KEY `idx_cas_bug_bug` (`bug_id`),
  ADD KEY `idx_case_bug` (`case_id`,`bug_id`);

--
-- Indexes for table `cases_cstm`
--
ALTER TABLE `cases_cstm`
  ADD PRIMARY KEY (`id_c`);

--
-- Indexes for table `config`
--
ALTER TABLE `config`
  ADD KEY `idx_config_cat` (`category`);

--
-- Indexes for table `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_cont_last_first` (`last_name`,`first_name`,`deleted`),
  ADD KEY `idx_contacts_del_last` (`deleted`,`last_name`),
  ADD KEY `idx_cont_del_reports` (`deleted`,`reports_to_id`,`last_name`),
  ADD KEY `idx_reports_to_id` (`reports_to_id`),
  ADD KEY `idx_del_id_user` (`deleted`,`id`,`assigned_user_id`),
  ADD KEY `idx_cont_assigned` (`assigned_user_id`);

--
-- Indexes for table `contacts_audit`
--
ALTER TABLE `contacts_audit`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_contacts_parent_id` (`parent_id`);

--
-- Indexes for table `contacts_bugs`
--
ALTER TABLE `contacts_bugs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_con_bug_con` (`contact_id`),
  ADD KEY `idx_con_bug_bug` (`bug_id`),
  ADD KEY `idx_contact_bug` (`contact_id`,`bug_id`);

--
-- Indexes for table `contacts_cases`
--
ALTER TABLE `contacts_cases`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_con_case_con` (`contact_id`),
  ADD KEY `idx_con_case_case` (`case_id`),
  ADD KEY `idx_contacts_cases` (`contact_id`,`case_id`);

--
-- Indexes for table `contacts_cstm`
--
ALTER TABLE `contacts_cstm`
  ADD PRIMARY KEY (`id_c`);

--
-- Indexes for table `contacts_users`
--
ALTER TABLE `contacts_users`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_con_users_con` (`contact_id`),
  ADD KEY `idx_con_users_user` (`user_id`),
  ADD KEY `idx_contacts_users` (`contact_id`,`user_id`);

--
-- Indexes for table `cron_remove_documents`
--
ALTER TABLE `cron_remove_documents`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_cron_remove_document_bean_id` (`bean_id`),
  ADD KEY `idx_cron_remove_document_stamp` (`date_modified`);

--
-- Indexes for table `currencies`
--
ALTER TABLE `currencies`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_currency_name` (`name`,`deleted`);

--
-- Indexes for table `custom_fields`
--
ALTER TABLE `custom_fields`
  ADD KEY `idx_beanid_set_num` (`bean_id`,`set_num`);

--
-- Indexes for table `documents`
--
ALTER TABLE `documents`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_doc_cat` (`category_id`,`subcategory_id`);

--
-- Indexes for table `documents_accounts`
--
ALTER TABLE `documents_accounts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `documents_accounts_account_id` (`account_id`,`document_id`),
  ADD KEY `documents_accounts_document_id` (`document_id`,`account_id`);

--
-- Indexes for table `documents_bugs`
--
ALTER TABLE `documents_bugs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `documents_bugs_bug_id` (`bug_id`,`document_id`),
  ADD KEY `documents_bugs_document_id` (`document_id`,`bug_id`);

--
-- Indexes for table `documents_cases`
--
ALTER TABLE `documents_cases`
  ADD PRIMARY KEY (`id`),
  ADD KEY `documents_cases_case_id` (`case_id`,`document_id`),
  ADD KEY `documents_cases_document_id` (`document_id`,`case_id`);

--
-- Indexes for table `documents_contacts`
--
ALTER TABLE `documents_contacts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `documents_contacts_contact_id` (`contact_id`,`document_id`),
  ADD KEY `documents_contacts_document_id` (`document_id`,`contact_id`);

--
-- Indexes for table `documents_opportunities`
--
ALTER TABLE `documents_opportunities`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_docu_opps_oppo_id` (`opportunity_id`,`document_id`),
  ADD KEY `idx_docu_oppo_docu_id` (`document_id`,`opportunity_id`);

--
-- Indexes for table `document_revisions`
--
ALTER TABLE `document_revisions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `documentrevision_mimetype` (`file_mime_type`);

--
-- Indexes for table `eapm`
--
ALTER TABLE `eapm`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_app_active` (`assigned_user_id`,`application`,`validated`);

--
-- Indexes for table `emailman`
--
ALTER TABLE `emailman`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_eman_list` (`list_id`,`user_id`,`deleted`),
  ADD KEY `idx_eman_campaign_id` (`campaign_id`),
  ADD KEY `idx_eman_relid_reltype_id` (`related_id`,`related_type`,`campaign_id`);

--
-- Indexes for table `emails`
--
ALTER TABLE `emails`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_email_name` (`name`),
  ADD KEY `idx_message_id` (`message_id`),
  ADD KEY `idx_email_parent_id` (`parent_id`),
  ADD KEY `idx_email_assigned` (`assigned_user_id`,`type`,`status`),
  ADD KEY `idx_email_cat` (`category_id`);

--
-- Indexes for table `emails_beans`
--
ALTER TABLE `emails_beans`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_emails_beans_bean_id` (`bean_id`),
  ADD KEY `idx_emails_beans_email_bean` (`email_id`,`bean_id`,`deleted`);

--
-- Indexes for table `emails_email_addr_rel`
--
ALTER TABLE `emails_email_addr_rel`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_eearl_email_id` (`email_id`,`address_type`),
  ADD KEY `idx_eearl_address_id` (`email_address_id`);

--
-- Indexes for table `emails_text`
--
ALTER TABLE `emails_text`
  ADD PRIMARY KEY (`email_id`),
  ADD KEY `emails_textfromaddr` (`from_addr`);

--
-- Indexes for table `email_addresses`
--
ALTER TABLE `email_addresses`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_ea_caps_opt_out_invalid` (`email_address_caps`,`opt_out`,`invalid_email`),
  ADD KEY `idx_ea_opt_out_invalid` (`email_address`,`opt_out`,`invalid_email`);

--
-- Indexes for table `email_addr_bean_rel`
--
ALTER TABLE `email_addr_bean_rel`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_email_address_id` (`email_address_id`),
  ADD KEY `idx_bean_id` (`bean_id`,`bean_module`);

--
-- Indexes for table `email_cache`
--
ALTER TABLE `email_cache`
  ADD KEY `idx_ie_id` (`ie_id`),
  ADD KEY `idx_mail_date` (`ie_id`,`mbox`,`senddate`),
  ADD KEY `idx_mail_from` (`ie_id`,`mbox`,`fromaddr`),
  ADD KEY `idx_mail_subj` (`subject`),
  ADD KEY `idx_mail_to` (`toaddr`);

--
-- Indexes for table `email_marketing`
--
ALTER TABLE `email_marketing`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_emmkt_name` (`name`),
  ADD KEY `idx_emmkit_del` (`deleted`);

--
-- Indexes for table `email_marketing_prospect_lists`
--
ALTER TABLE `email_marketing_prospect_lists`
  ADD PRIMARY KEY (`id`),
  ADD KEY `email_mp_prospects` (`email_marketing_id`,`prospect_list_id`);

--
-- Indexes for table `email_templates`
--
ALTER TABLE `email_templates`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_email_template_name` (`name`);

--
-- Indexes for table `favorites`
--
ALTER TABLE `favorites`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `fields_meta_data`
--
ALTER TABLE `fields_meta_data`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_meta_id_del` (`id`,`deleted`),
  ADD KEY `idx_meta_cm_del` (`custom_module`,`deleted`);

--
-- Indexes for table `folders`
--
ALTER TABLE `folders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_parent_folder` (`parent_folder`);

--
-- Indexes for table `folders_rel`
--
ALTER TABLE `folders_rel`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_poly_module_poly_id` (`polymorphic_module`,`polymorphic_id`),
  ADD KEY `idx_fr_id_deleted_poly` (`folder_id`,`deleted`,`polymorphic_id`);

--
-- Indexes for table `folders_subscriptions`
--
ALTER TABLE `folders_subscriptions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_folder_id_assigned_user_id` (`folder_id`,`assigned_user_id`);

--
-- Indexes for table `fp_events`
--
ALTER TABLE `fp_events`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `fp_events_audit`
--
ALTER TABLE `fp_events_audit`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_fp_events_parent_id` (`parent_id`);

--
-- Indexes for table `fp_events_contacts_c`
--
ALTER TABLE `fp_events_contacts_c`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fp_events_contacts_alt` (`fp_events_contactsfp_events_ida`,`fp_events_contactscontacts_idb`);

--
-- Indexes for table `fp_events_fp_event_delegates_1_c`
--
ALTER TABLE `fp_events_fp_event_delegates_1_c`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fp_events_fp_event_delegates_1_ida1` (`fp_events_fp_event_delegates_1fp_events_ida`),
  ADD KEY `fp_events_fp_event_delegates_1_alt` (`fp_events_fp_event_delegates_1fp_event_delegates_idb`);

--
-- Indexes for table `fp_events_fp_event_locations_1_c`
--
ALTER TABLE `fp_events_fp_event_locations_1_c`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fp_events_fp_event_locations_1_alt` (`fp_events_fp_event_locations_1fp_events_ida`,`fp_events_fp_event_locations_1fp_event_locations_idb`);

--
-- Indexes for table `fp_events_leads_1_c`
--
ALTER TABLE `fp_events_leads_1_c`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fp_events_leads_1_alt` (`fp_events_leads_1fp_events_ida`,`fp_events_leads_1leads_idb`);

--
-- Indexes for table `fp_events_prospects_1_c`
--
ALTER TABLE `fp_events_prospects_1_c`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fp_events_prospects_1_alt` (`fp_events_prospects_1fp_events_ida`,`fp_events_prospects_1prospects_idb`);

--
-- Indexes for table `fp_event_locations`
--
ALTER TABLE `fp_event_locations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `fp_event_locations_audit`
--
ALTER TABLE `fp_event_locations_audit`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_fp_event_locations_parent_id` (`parent_id`);

--
-- Indexes for table `fp_event_locations_fp_events_1_c`
--
ALTER TABLE `fp_event_locations_fp_events_1_c`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fp_event_locations_fp_events_1_ida1` (`fp_event_locations_fp_events_1fp_event_locations_ida`),
  ADD KEY `fp_event_locations_fp_events_1_alt` (`fp_event_locations_fp_events_1fp_events_idb`);

--
-- Indexes for table `import_maps`
--
ALTER TABLE `import_maps`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_owner_module_name` (`assigned_user_id`,`module`,`name`,`deleted`);

--
-- Indexes for table `inbound_email`
--
ALTER TABLE `inbound_email`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `inbound_email_autoreply`
--
ALTER TABLE `inbound_email_autoreply`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_ie_autoreplied_to` (`autoreplied_to`);

--
-- Indexes for table `inbound_email_cache_ts`
--
ALTER TABLE `inbound_email_cache_ts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `invoice_payment_details`
--
ALTER TABLE `invoice_payment_details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `jjwg_address_cache`
--
ALTER TABLE `jjwg_address_cache`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `jjwg_address_cache_audit`
--
ALTER TABLE `jjwg_address_cache_audit`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_jjwg_address_cache_parent_id` (`parent_id`);

--
-- Indexes for table `jjwg_areas`
--
ALTER TABLE `jjwg_areas`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `jjwg_areas_audit`
--
ALTER TABLE `jjwg_areas_audit`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_jjwg_areas_parent_id` (`parent_id`);

--
-- Indexes for table `jjwg_maps`
--
ALTER TABLE `jjwg_maps`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `jjwg_maps_audit`
--
ALTER TABLE `jjwg_maps_audit`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_jjwg_maps_parent_id` (`parent_id`);

--
-- Indexes for table `jjwg_maps_jjwg_areas_c`
--
ALTER TABLE `jjwg_maps_jjwg_areas_c`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jjwg_maps_jjwg_areas_alt` (`jjwg_maps_5304wg_maps_ida`,`jjwg_maps_41f2g_areas_idb`);

--
-- Indexes for table `jjwg_maps_jjwg_markers_c`
--
ALTER TABLE `jjwg_maps_jjwg_markers_c`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jjwg_maps_jjwg_markers_alt` (`jjwg_maps_b229wg_maps_ida`,`jjwg_maps_2e31markers_idb`);

--
-- Indexes for table `jjwg_markers`
--
ALTER TABLE `jjwg_markers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `jjwg_markers_audit`
--
ALTER TABLE `jjwg_markers_audit`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_jjwg_markers_parent_id` (`parent_id`);

--
-- Indexes for table `job_queue`
--
ALTER TABLE `job_queue`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_status_scheduler` (`status`,`scheduler_id`),
  ADD KEY `idx_status_time` (`status`,`execute_time`,`date_entered`),
  ADD KEY `idx_status_entered` (`status`,`date_entered`),
  ADD KEY `idx_status_modified` (`status`,`date_modified`);

--
-- Indexes for table `leads`
--
ALTER TABLE `leads`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_lead_acct_name_first` (`account_name`,`deleted`),
  ADD KEY `idx_lead_last_first` (`last_name`,`first_name`,`deleted`),
  ADD KEY `idx_lead_del_stat` (`last_name`,`status`,`deleted`,`first_name`),
  ADD KEY `idx_lead_opp_del` (`opportunity_id`,`deleted`),
  ADD KEY `idx_leads_acct_del` (`account_id`,`deleted`),
  ADD KEY `idx_del_user` (`deleted`,`assigned_user_id`),
  ADD KEY `idx_lead_assigned` (`assigned_user_id`),
  ADD KEY `idx_lead_contact` (`contact_id`),
  ADD KEY `idx_reports_to` (`reports_to_id`),
  ADD KEY `idx_lead_phone_work` (`phone_work`),
  ADD KEY `idx_leads_id_del` (`id`,`deleted`);

--
-- Indexes for table `leads_audit`
--
ALTER TABLE `leads_audit`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_leads_parent_id` (`parent_id`);

--
-- Indexes for table `leads_cstm`
--
ALTER TABLE `leads_cstm`
  ADD PRIMARY KEY (`id_c`);

--
-- Indexes for table `linked_documents`
--
ALTER TABLE `linked_documents`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_parent_document` (`parent_type`,`parent_id`,`document_id`);

--
-- Indexes for table `meetings`
--
ALTER TABLE `meetings`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_mtg_name` (`name`),
  ADD KEY `idx_meet_par_del` (`parent_id`,`parent_type`,`deleted`),
  ADD KEY `idx_meet_stat_del` (`assigned_user_id`,`status`,`deleted`),
  ADD KEY `idx_meet_date_start` (`date_start`);

--
-- Indexes for table `meetings_contacts`
--
ALTER TABLE `meetings_contacts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_con_mtg_mtg` (`meeting_id`),
  ADD KEY `idx_con_mtg_con` (`contact_id`),
  ADD KEY `idx_meeting_contact` (`meeting_id`,`contact_id`);

--
-- Indexes for table `meetings_cstm`
--
ALTER TABLE `meetings_cstm`
  ADD PRIMARY KEY (`id_c`);

--
-- Indexes for table `meetings_leads`
--
ALTER TABLE `meetings_leads`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_lead_meeting_meeting` (`meeting_id`),
  ADD KEY `idx_lead_meeting_lead` (`lead_id`),
  ADD KEY `idx_meeting_lead` (`meeting_id`,`lead_id`);

--
-- Indexes for table `meetings_users`
--
ALTER TABLE `meetings_users`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_usr_mtg_mtg` (`meeting_id`),
  ADD KEY `idx_usr_mtg_usr` (`user_id`),
  ADD KEY `idx_meeting_users` (`meeting_id`,`user_id`);

--
-- Indexes for table `notes`
--
ALTER TABLE `notes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_note_name` (`name`),
  ADD KEY `idx_notes_parent` (`parent_id`,`parent_type`),
  ADD KEY `idx_note_contact` (`contact_id`),
  ADD KEY `idx_notes_assigned_del` (`deleted`,`assigned_user_id`);

--
-- Indexes for table `oauth_consumer`
--
ALTER TABLE `oauth_consumer`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `ckey` (`c_key`);

--
-- Indexes for table `oauth_nonce`
--
ALTER TABLE `oauth_nonce`
  ADD PRIMARY KEY (`conskey`,`nonce`),
  ADD KEY `oauth_nonce_keyts` (`conskey`,`nonce_ts`);

--
-- Indexes for table `oauth_tokens`
--
ALTER TABLE `oauth_tokens`
  ADD PRIMARY KEY (`id`,`deleted`),
  ADD KEY `oauth_state_ts` (`tstate`,`token_ts`),
  ADD KEY `constoken_key` (`consumer`);

--
-- Indexes for table `opportunities`
--
ALTER TABLE `opportunities`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_opp_name` (`name`),
  ADD KEY `idx_opp_assigned` (`assigned_user_id`),
  ADD KEY `idx_opp_id_deleted` (`id`,`deleted`);

--
-- Indexes for table `opportunities_audit`
--
ALTER TABLE `opportunities_audit`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_opportunities_parent_id` (`parent_id`);

--
-- Indexes for table `opportunities_contacts`
--
ALTER TABLE `opportunities_contacts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_con_opp_con` (`contact_id`),
  ADD KEY `idx_con_opp_opp` (`opportunity_id`),
  ADD KEY `idx_opportunities_contacts` (`opportunity_id`,`contact_id`);

--
-- Indexes for table `opportunities_cstm`
--
ALTER TABLE `opportunities_cstm`
  ADD PRIMARY KEY (`id_c`);

--
-- Indexes for table `outbound_email`
--
ALTER TABLE `outbound_email`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `outbound_email_audit`
--
ALTER TABLE `outbound_email_audit`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_outbound_email_parent_id` (`parent_id`);

--
-- Indexes for table `project`
--
ALTER TABLE `project`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `projects_accounts`
--
ALTER TABLE `projects_accounts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_proj_acct_proj` (`project_id`),
  ADD KEY `idx_proj_acct_acct` (`account_id`),
  ADD KEY `projects_accounts_alt` (`project_id`,`account_id`);

--
-- Indexes for table `projects_bugs`
--
ALTER TABLE `projects_bugs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_proj_bug_proj` (`project_id`),
  ADD KEY `idx_proj_bug_bug` (`bug_id`),
  ADD KEY `projects_bugs_alt` (`project_id`,`bug_id`);

--
-- Indexes for table `projects_cases`
--
ALTER TABLE `projects_cases`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_proj_case_proj` (`project_id`),
  ADD KEY `idx_proj_case_case` (`case_id`),
  ADD KEY `projects_cases_alt` (`project_id`,`case_id`);

--
-- Indexes for table `projects_contacts`
--
ALTER TABLE `projects_contacts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_proj_con_proj` (`project_id`),
  ADD KEY `idx_proj_con_con` (`contact_id`),
  ADD KEY `projects_contacts_alt` (`project_id`,`contact_id`);

--
-- Indexes for table `projects_opportunities`
--
ALTER TABLE `projects_opportunities`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_proj_opp_proj` (`project_id`),
  ADD KEY `idx_proj_opp_opp` (`opportunity_id`),
  ADD KEY `projects_opportunities_alt` (`project_id`,`opportunity_id`);

--
-- Indexes for table `projects_products`
--
ALTER TABLE `projects_products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_proj_prod_project` (`project_id`),
  ADD KEY `idx_proj_prod_product` (`product_id`),
  ADD KEY `projects_products_alt` (`project_id`,`product_id`);

--
-- Indexes for table `project_contacts_1_c`
--
ALTER TABLE `project_contacts_1_c`
  ADD PRIMARY KEY (`id`),
  ADD KEY `project_contacts_1_alt` (`project_contacts_1project_ida`,`project_contacts_1contacts_idb`);

--
-- Indexes for table `project_cstm`
--
ALTER TABLE `project_cstm`
  ADD PRIMARY KEY (`id_c`);

--
-- Indexes for table `project_task`
--
ALTER TABLE `project_task`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `project_task_audit`
--
ALTER TABLE `project_task_audit`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_project_task_parent_id` (`parent_id`);

--
-- Indexes for table `project_users_1_c`
--
ALTER TABLE `project_users_1_c`
  ADD PRIMARY KEY (`id`),
  ADD KEY `project_users_1_alt` (`project_users_1project_ida`,`project_users_1users_idb`);

--
-- Indexes for table `prospects`
--
ALTER TABLE `prospects`
  ADD PRIMARY KEY (`id`),
  ADD KEY `prospect_auto_tracker_key` (`tracker_key`),
  ADD KEY `idx_prospects_last_first` (`last_name`,`first_name`,`deleted`),
  ADD KEY `idx_prospecs_del_last` (`last_name`,`deleted`),
  ADD KEY `idx_prospects_id_del` (`id`,`deleted`),
  ADD KEY `idx_prospects_assigned` (`assigned_user_id`);

--
-- Indexes for table `prospects_cstm`
--
ALTER TABLE `prospects_cstm`
  ADD PRIMARY KEY (`id_c`);

--
-- Indexes for table `prospect_lists`
--
ALTER TABLE `prospect_lists`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_prospect_list_name` (`name`);

--
-- Indexes for table `prospect_lists_prospects`
--
ALTER TABLE `prospect_lists_prospects`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_plp_pro_id` (`prospect_list_id`),
  ADD KEY `idx_plp_rel_id` (`related_id`,`related_type`,`prospect_list_id`);

--
-- Indexes for table `prospect_list_campaigns`
--
ALTER TABLE `prospect_list_campaigns`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_pro_id` (`prospect_list_id`),
  ADD KEY `idx_cam_id` (`campaign_id`),
  ADD KEY `idx_prospect_list_campaigns` (`prospect_list_id`,`campaign_id`);

--
-- Indexes for table `relationships`
--
ALTER TABLE `relationships`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_rel_name` (`relationship_name`);

--
-- Indexes for table `releases`
--
ALTER TABLE `releases`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_releases` (`name`,`deleted`);

--
-- Indexes for table `reminders`
--
ALTER TABLE `reminders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_reminder_name` (`name`),
  ADD KEY `idx_reminder_deleted` (`deleted`),
  ADD KEY `idx_reminder_related_event_module` (`related_event_module`),
  ADD KEY `idx_reminder_related_event_module_id` (`related_event_module_id`);

--
-- Indexes for table `reminders_invitees`
--
ALTER TABLE `reminders_invitees`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_reminder_invitee_name` (`name`),
  ADD KEY `idx_reminder_invitee_assigned_user_id` (`assigned_user_id`),
  ADD KEY `idx_reminder_invitee_reminder_id` (`reminder_id`),
  ADD KEY `idx_reminder_invitee_related_invitee_module` (`related_invitee_module`),
  ADD KEY `idx_reminder_invitee_related_invitee_module_id` (`related_invitee_module_id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_role_id_del` (`id`,`deleted`);

--
-- Indexes for table `roles_modules`
--
ALTER TABLE `roles_modules`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_role_id` (`role_id`),
  ADD KEY `idx_module_id` (`module_id`);

--
-- Indexes for table `roles_users`
--
ALTER TABLE `roles_users`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_ru_role_id` (`role_id`),
  ADD KEY `idx_ru_user_id` (`user_id`);

--
-- Indexes for table `saved_search`
--
ALTER TABLE `saved_search`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_desc` (`name`,`deleted`);

--
-- Indexes for table `schedulers`
--
ALTER TABLE `schedulers`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_schedule` (`date_time_start`,`deleted`);

--
-- Indexes for table `securitygroups`
--
ALTER TABLE `securitygroups`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `securitygroups_acl_roles`
--
ALTER TABLE `securitygroups_acl_roles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `securitygroups_audit`
--
ALTER TABLE `securitygroups_audit`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_securitygroups_parent_id` (`parent_id`);

--
-- Indexes for table `securitygroups_default`
--
ALTER TABLE `securitygroups_default`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `securitygroups_records`
--
ALTER TABLE `securitygroups_records`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_securitygroups_records_mod` (`module`,`deleted`,`record_id`,`securitygroup_id`),
  ADD KEY `idx_securitygroups_records_del` (`deleted`,`record_id`,`module`,`securitygroup_id`);

--
-- Indexes for table `securitygroups_users`
--
ALTER TABLE `securitygroups_users`
  ADD PRIMARY KEY (`id`),
  ADD KEY `securitygroups_users_idxa` (`securitygroup_id`),
  ADD KEY `securitygroups_users_idxb` (`user_id`),
  ADD KEY `securitygroups_users_idxc` (`user_id`,`deleted`,`securitygroup_id`,`id`),
  ADD KEY `securitygroups_users_idxd` (`user_id`,`deleted`,`securitygroup_id`);

--
-- Indexes for table `spots`
--
ALTER TABLE `spots`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sugarfeed`
--
ALTER TABLE `sugarfeed`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sgrfeed_date` (`date_entered`,`deleted`);

--
-- Indexes for table `tasks`
--
ALTER TABLE `tasks`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_tsk_name` (`name`),
  ADD KEY `idx_task_con_del` (`contact_id`,`deleted`),
  ADD KEY `idx_task_par_del` (`parent_id`,`parent_type`,`deleted`),
  ADD KEY `idx_task_assigned` (`assigned_user_id`),
  ADD KEY `idx_task_status` (`status`);

--
-- Indexes for table `templatesectionline`
--
ALTER TABLE `templatesectionline`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tracker`
--
ALTER TABLE `tracker`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_tracker_iid` (`item_id`),
  ADD KEY `idx_tracker_userid_vis_id` (`user_id`,`visible`,`id`),
  ADD KEY `idx_tracker_userid_itemid_vis` (`user_id`,`item_id`,`visible`),
  ADD KEY `idx_tracker_monitor_id` (`monitor_id`),
  ADD KEY `idx_tracker_date_modified` (`date_modified`);

--
-- Indexes for table `upgrade_history`
--
ALTER TABLE `upgrade_history`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `upgrade_history_md5_uk` (`md5sum`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_user_name` (`user_name`,`is_group`,`status`,`last_name`,`first_name`,`id`);

--
-- Indexes for table `users_feeds`
--
ALTER TABLE `users_feeds`
  ADD KEY `idx_ud_user_id` (`user_id`,`feed_id`);

--
-- Indexes for table `users_last_import`
--
ALTER TABLE `users_last_import`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_user_id` (`assigned_user_id`);

--
-- Indexes for table `users_password_link`
--
ALTER TABLE `users_password_link`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_username` (`username`);

--
-- Indexes for table `users_signatures`
--
ALTER TABLE `users_signatures`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_usersig_uid` (`user_id`);

--
-- Indexes for table `user_preferences`
--
ALTER TABLE `user_preferences`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_userprefnamecat` (`assigned_user_id`,`category`);

--
-- Indexes for table `vcals`
--
ALTER TABLE `vcals`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_vcal` (`type`,`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `bugs`
--
ALTER TABLE `bugs`
  MODIFY `bug_number` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `campaigns`
--
ALTER TABLE `campaigns`
  MODIFY `tracker_key` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `campaign_trkrs`
--
ALTER TABLE `campaign_trkrs`
  MODIFY `tracker_key` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `cases`
--
ALTER TABLE `cases`
  MODIFY `case_number` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `emailman`
--
ALTER TABLE `emailman`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `prospects`
--
ALTER TABLE `prospects`
  MODIFY `tracker_key` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tracker`
--
ALTER TABLE `tracker`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=921;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
