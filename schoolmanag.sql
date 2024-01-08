-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le : jeu. 19 jan. 2023 à 16:57
-- Version du serveur : 8.0.27
-- Version de PHP : 7.4.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `schoolmanag`
--

-- --------------------------------------------------------

--
-- Structure de la table `continents`
--

DROP TABLE IF EXISTS `continents`;
CREATE TABLE IF NOT EXISTS `continents` (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `school_id` int UNSIGNED DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `continents_school_id_foreign` (`school_id`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `continents`
--

INSERT INTO `continents` (`id`, `code`, `name`, `created_at`, `updated_at`, `school_id`) VALUES
(1, 'AF', 'Africa', NULL, NULL, 1),
(2, 'AN', 'Antarctica', NULL, NULL, 1),
(3, 'AS', 'Asia', NULL, NULL, 1),
(4, 'EU', 'Europe', NULL, NULL, 1),
(5, 'NA', 'North America', NULL, NULL, 1),
(6, 'OC', 'Oceania', NULL, NULL, 1),
(7, 'SA', 'South America', NULL, NULL, 1);

-- --------------------------------------------------------

--
-- Structure de la table `continets`
--

DROP TABLE IF EXISTS `continets`;
CREATE TABLE IF NOT EXISTS `continets` (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `code` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_by` int UNSIGNED DEFAULT '1',
  `updated_by` int UNSIGNED DEFAULT '1',
  `school_id` int UNSIGNED DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `continets_school_id_foreign` (`school_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `countries`
--

DROP TABLE IF EXISTS `countries`;
CREATE TABLE IF NOT EXISTS `countries` (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `native` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `continent` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `capital` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `currency` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `languages` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `school_id` int UNSIGNED DEFAULT '1',
  `academic_id` int UNSIGNED DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `countries_school_id_foreign` (`school_id`),
  KEY `countries_academic_id_foreign` (`academic_id`)
) ENGINE=MyISAM AUTO_INCREMENT=251 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `countries`
--

INSERT INTO `countries` (`id`, `code`, `name`, `native`, `phone`, `continent`, `capital`, `currency`, `languages`, `created_at`, `updated_at`, `school_id`, `academic_id`) VALUES
(1, 'AD', 'Andorra', 'Andorra', '376', 'EU', 'Andorra la Vella', 'EUR', 'ca', NULL, NULL, 1, 1),
(2, 'AE', 'United Arab Emirates', 'دولة الإمارات العربية المتحدة', '971', 'AS', 'Abu Dhabi', 'AED', 'ar', NULL, NULL, 1, 1),
(3, 'AF', 'Afghanistan', 'افغانستان', '93', 'AS', 'Kabul', 'AFN', 'ps,uz,tk', NULL, NULL, 1, 1),
(4, 'AG', 'Antigua and Barbuda', 'Antigua and Barbuda', '1268', 'NA', 'Saint John\'s', 'XCD', 'en', NULL, NULL, 1, 1),
(5, 'AI', 'Anguilla', 'Anguilla', '1264', 'NA', 'The Valley', 'XCD', 'en', NULL, NULL, 1, 1),
(6, 'AL', 'Albania', 'Shqipëria', '355', 'EU', 'Tirana', 'ALL', 'sq', NULL, NULL, 1, 1),
(7, 'AM', 'Armenia', 'Հայաստան', '374', 'AS', 'Yerevan', 'AMD', 'hy,ru', NULL, NULL, 1, 1),
(8, 'AO', 'Angola', 'Angola', '244', 'AF', 'Luanda', 'AOA', 'pt', NULL, NULL, 1, 1),
(9, 'AQ', 'Antarctica', 'Antarctica', '672', 'AN', '', '', '', NULL, NULL, 1, 1),
(10, 'AR', 'Argentina', 'Argentina', '54', 'SA', 'Buenos Aires', 'ARS', 'es,gn', NULL, NULL, 1, 1),
(11, 'AS', 'American Samoa', 'American Samoa', '1684', 'OC', 'Pago Pago', 'USD', 'en,sm', NULL, NULL, 1, 1),
(12, 'AT', 'Austria', 'Österreich', '43', 'EU', 'Vienna', 'EUR', 'de', NULL, NULL, 1, 1),
(13, 'AU', 'Australia', 'Australia', '61', 'OC', 'Canberra', 'AUD', 'en', NULL, NULL, 1, 1),
(14, 'AW', 'Aruba', 'Aruba', '297', 'NA', 'Oranjestad', 'AWG', 'nl,pa', NULL, NULL, 1, 1),
(15, 'AX', 'Åland', 'Åland', '358', 'EU', 'Mariehamn', 'EUR', 'sv', NULL, NULL, 1, 1),
(16, 'AZ', 'Azerbaijan', 'Azərbaycan', '994', 'AS', 'Baku', 'AZN', 'az', NULL, NULL, 1, 1),
(17, 'BA', 'Bosnia and Herzegovina', 'Bosna i Hercegovina', '387', 'EU', 'Sarajevo', 'BAM', 'bs,hr,sr', NULL, NULL, 1, 1),
(18, 'BB', 'Barbados', 'Barbados', '1246', 'NA', 'Bridgetown', 'BBD', 'en', NULL, NULL, 1, 1),
(19, 'BD', 'Bangladesh', 'Bangladesh', '880', 'AS', 'Dhaka', 'BDT', 'bn', NULL, NULL, 1, 1),
(20, 'BE', 'Belgium', 'België', '32', 'EU', 'Brussels', 'EUR', 'nl,fr,de', NULL, NULL, 1, 1),
(21, 'BF', 'Burkina Faso', 'Burkina Faso', '226', 'AF', 'Ouagadougou', 'XOF', 'fr,ff', NULL, NULL, 1, 1),
(22, 'BG', 'Bulgaria', 'България', '359', 'EU', 'Sofia', 'BGN', 'bg', NULL, NULL, 1, 1),
(23, 'BH', 'Bahrain', '‏البحرين', '973', 'AS', 'Manama', 'BHD', 'ar', NULL, NULL, 1, 1),
(24, 'BI', 'Burundi', 'Burundi', '257', 'AF', 'Bujumbura', 'BIF', 'fr,rn', NULL, NULL, 1, 1),
(25, 'BJ', 'Benin', 'Bénin', '229', 'AF', 'Porto-Novo', 'XOF', 'fr', NULL, NULL, 1, 1),
(26, 'BL', 'Saint Barthélemy', 'Saint-Barthélemy', '590', 'NA', 'Gustavia', 'EUR', 'fr', NULL, NULL, 1, 1),
(27, 'BM', 'Bermuda', 'Bermuda', '1441', 'NA', 'Hamilton', 'BMD', 'en', NULL, NULL, 1, 1),
(28, 'BN', 'Brunei', 'Negara Brunei Darussalam', '673', 'AS', 'Bandar Seri Begawan', 'BND', 'ms', NULL, NULL, 1, 1),
(29, 'BO', 'Bolivia', 'Bolivia', '591', 'SA', 'Sucre', 'BOB,BOV', 'es,ay,qu', NULL, NULL, 1, 1),
(30, 'BQ', 'Bonaire', 'Bonaire', '5997', 'NA', 'Kralendijk', 'USD', 'nl', NULL, NULL, 1, 1),
(31, 'BR', 'Brazil', 'Brasil', '55', 'SA', 'Brasília', 'BRL', 'pt', NULL, NULL, 1, 1),
(32, 'BS', 'Bahamas', 'Bahamas', '1242', 'NA', 'Nassau', 'BSD', 'en', NULL, NULL, 1, 1),
(33, 'BT', 'Bhutan', 'ʼbrug-yul', '975', 'AS', 'Thimphu', 'BTN,INR', 'dz', NULL, NULL, 1, 1),
(34, 'BV', 'Bouvet Island', 'Bouvetøya', '47', 'AN', '', 'NOK', 'no,nb,nn', NULL, NULL, 1, 1),
(35, 'BW', 'Botswana', 'Botswana', '267', 'AF', 'Gaborone', 'BWP', 'en,tn', NULL, NULL, 1, 1),
(36, 'BY', 'Belarus', 'Белару́сь', '375', 'EU', 'Minsk', 'BYR', 'be,ru', NULL, NULL, 1, 1),
(37, 'BZ', 'Belize', 'Belize', '501', 'NA', 'Belmopan', 'BZD', 'en,es', NULL, NULL, 1, 1),
(38, 'CA', 'Canada', 'Canada', '1', 'NA', 'Ottawa', 'CAD', 'en,fr', NULL, NULL, 1, 1),
(39, 'CC', 'Cocos [Keeling] Islands', 'Cocos (Keeling) Islands', '61', 'AS', 'West Island', 'AUD', 'en', NULL, NULL, 1, 1),
(40, 'CD', 'Democratic Republic of the Congo', 'République démocratique du Congo', '243', 'AF', 'Kinshasa', 'CDF', 'fr,ln,kg,sw,lu', NULL, NULL, 1, 1),
(41, 'CF', 'Central African Republic', 'Ködörösêse tî Bêafrîka', '236', 'AF', 'Bangui', 'XAF', 'fr,sg', NULL, NULL, 1, 1),
(42, 'CG', 'Republic of the Congo', 'République du Congo', '242', 'AF', 'Brazzaville', 'XAF', 'fr,ln', NULL, NULL, 1, 1),
(43, 'CH', 'Switzerland', 'Schweiz', '41', 'EU', 'Bern', 'CHE,CHF,CHW', 'de,fr,it', NULL, NULL, 1, 1),
(44, 'CI', 'Ivory Coast', 'Côte d\'Ivoire', '225', 'AF', 'Yamoussoukro', 'XOF', 'fr', NULL, NULL, 1, 1),
(45, 'CK', 'Cook Islands', 'Cook Islands', '682', 'OC', 'Avarua', 'NZD', 'en', NULL, NULL, 1, 1),
(46, 'CL', 'Chile', 'Chile', '56', 'SA', 'Santiago', 'CLF,CLP', 'es', NULL, NULL, 1, 1),
(47, 'CM', 'Cameroon', 'Cameroon', '237', 'AF', 'Yaoundé', 'XAF', 'en,fr', NULL, NULL, 1, 1),
(48, 'CN', 'China', '中国', '86', 'AS', 'Beijing', 'CNY', 'zh', NULL, NULL, 1, 1),
(49, 'CO', 'Colombia', 'Colombia', '57', 'SA', 'Bogotá', 'COP', 'es', NULL, NULL, 1, 1),
(50, 'CR', 'Costa Rica', 'Costa Rica', '506', 'NA', 'San José', 'CRC', 'es', NULL, NULL, 1, 1),
(51, 'CU', 'Cuba', 'Cuba', '53', 'NA', 'Havana', 'CUC,CUP', 'es', NULL, NULL, 1, 1),
(52, 'CV', 'Cape Verde', 'Cabo Verde', '238', 'AF', 'Praia', 'CVE', 'pt', NULL, NULL, 1, 1),
(53, 'CW', 'Curacao', 'Curaçao', '5999', 'NA', 'Willemstad', 'ANG', 'nl,pa,en', NULL, NULL, 1, 1),
(54, 'CX', 'Christmas Island', 'Christmas Island', '61', 'AS', 'Flying Fish Cove', 'AUD', 'en', NULL, NULL, 1, 1),
(55, 'CY', 'Cyprus', 'Κύπρος', '357', 'EU', 'Nicosia', 'EUR', 'el,tr,hy', NULL, NULL, 1, 1),
(56, 'CZ', 'Czech Republic', 'Česká republika', '420', 'EU', 'Prague', 'CZK', 'cs,sk', NULL, NULL, 1, 1),
(57, 'DE', 'Germany', 'Deutschland', '49', 'EU', 'Berlin', 'EUR', 'de', NULL, NULL, 1, 1),
(58, 'DJ', 'Djibouti', 'Djibouti', '253', 'AF', 'Djibouti', 'DJF', 'fr,ar', NULL, NULL, 1, 1),
(59, 'DK', 'Denmark', 'Danmark', '45', 'EU', 'Copenhagen', 'DKK', 'da', NULL, NULL, 1, 1),
(60, 'DM', 'Dominica', 'Dominica', '1767', 'NA', 'Roseau', 'XCD', 'en', NULL, NULL, 1, 1),
(61, 'DO', 'Dominican Republic', 'República Dominicana', '1809,1829,1849', 'NA', 'Santo Domingo', 'DOP', 'es', NULL, NULL, 1, 1),
(62, 'DZ', 'Algeria', 'الجزائر', '213', 'AF', 'Algiers', 'DZD', 'ar', NULL, NULL, 1, 1),
(63, 'EC', 'Ecuador', 'Ecuador', '593', 'SA', 'Quito', 'USD', 'es', NULL, NULL, 1, 1),
(64, 'EE', 'Estonia', 'Eesti', '372', 'EU', 'Tallinn', 'EUR', 'et', NULL, NULL, 1, 1),
(65, 'EG', 'Egypt', 'مصر‎', '20', 'AF', 'Cairo', 'EGP', 'ar', NULL, NULL, 1, 1),
(66, 'EH', 'Western Sahara', 'الصحراء الغربية', '212', 'AF', 'El Aaiún', 'MAD,DZD,MRU', 'es', NULL, NULL, 1, 1),
(67, 'ER', 'Eritrea', 'ኤርትራ', '291', 'AF', 'Asmara', 'ERN', 'ti,ar,en', NULL, NULL, 1, 1),
(68, 'ES', 'Spain', 'España', '34', 'EU', 'Madrid', 'EUR', 'es,eu,ca,gl,oc', NULL, NULL, 1, 1),
(69, 'ET', 'Ethiopia', 'ኢትዮጵያ', '251', 'AF', 'Addis Ababa', 'ETB', 'am', NULL, NULL, 1, 1),
(70, 'FI', 'Finland', 'Suomi', '358', 'EU', 'Helsinki', 'EUR', 'fi,sv', NULL, NULL, 1, 1),
(71, 'FJ', 'Fiji', 'Fiji', '679', 'OC', 'Suva', 'FJD', 'en,fj,hi,ur', NULL, NULL, 1, 1),
(72, 'FK', 'Falkland Islands', 'Falkland Islands', '500', 'SA', 'Stanley', 'FKP', 'en', NULL, NULL, 1, 1),
(73, 'FM', 'Micronesia', 'Micronesia', '691', 'OC', 'Palikir', 'USD', 'en', NULL, NULL, 1, 1),
(74, 'FO', 'Faroe Islands', 'Føroyar', '298', 'EU', 'Tórshavn', 'DKK', 'fo', NULL, NULL, 1, 1),
(75, 'FR', 'France', 'France', '33', 'EU', 'Paris', 'EUR', 'fr', NULL, NULL, 1, 1),
(76, 'GA', 'Gabon', 'Gabon', '241', 'AF', 'Libreville', 'XAF', 'fr', NULL, NULL, 1, 1),
(77, 'GB', 'United Kingdom', 'United Kingdom', '44', 'EU', 'London', 'GBP', 'en', NULL, NULL, 1, 1),
(78, 'GD', 'Grenada', 'Grenada', '1473', 'NA', 'St. George\'s', 'XCD', 'en', NULL, NULL, 1, 1),
(79, 'GE', 'Georgia', 'საქართველო', '995', 'AS', 'Tbilisi', 'GEL', 'ka', NULL, NULL, 1, 1),
(80, 'GF', 'French Guiana', 'Guyane française', '594', 'SA', 'Cayenne', 'EUR', 'fr', NULL, NULL, 1, 1),
(81, 'GG', 'Guernsey', 'Guernsey', '44', 'EU', 'St. Peter Port', 'GBP', 'en,fr', NULL, NULL, 1, 1),
(82, 'GH', 'Ghana', 'Ghana', '233', 'AF', 'Accra', 'GHS', 'en', NULL, NULL, 1, 1),
(83, 'GI', 'Gibraltar', 'Gibraltar', '350', 'EU', 'Gibraltar', 'GIP', 'en', NULL, NULL, 1, 1),
(84, 'GL', 'Greenland', 'Kalaallit Nunaat', '299', 'NA', 'Nuuk', 'DKK', 'kl', NULL, NULL, 1, 1),
(85, 'GM', 'Gambia', 'Gambia', '220', 'AF', 'Banjul', 'GMD', 'en', NULL, NULL, 1, 1),
(86, 'GN', 'Guinea', 'Guinée', '224', 'AF', 'Conakry', 'GNF', 'fr,ff', NULL, NULL, 1, 1),
(87, 'GP', 'Guadeloupe', 'Guadeloupe', '590', 'NA', 'Basse-Terre', 'EUR', 'fr', NULL, NULL, 1, 1),
(88, 'GQ', 'Equatorial Guinea', 'Guinea Ecuatorial', '240', 'AF', 'Malabo', 'XAF', 'es,fr', NULL, NULL, 1, 1),
(89, 'GR', 'Greece', 'Ελλάδα', '30', 'EU', 'Athens', 'EUR', 'el', NULL, NULL, 1, 1),
(90, 'GS', 'South Georgia and the South Sandwich Islands', 'South Georgia', '500', 'AN', 'King Edward Point', 'GBP', 'en', NULL, NULL, 1, 1),
(91, 'GT', 'Guatemala', 'Guatemala', '502', 'NA', 'Guatemala City', 'GTQ', 'es', NULL, NULL, 1, 1),
(92, 'GU', 'Guam', 'Guam', '1671', 'OC', 'Hagåtña', 'USD', 'en,ch,es', NULL, NULL, 1, 1),
(93, 'GW', 'Guinea-Bissau', 'Guiné-Bissau', '245', 'AF', 'Bissau', 'XOF', 'pt', NULL, NULL, 1, 1),
(94, 'GY', 'Guyana', 'Guyana', '592', 'SA', 'Georgetown', 'GYD', 'en', NULL, NULL, 1, 1),
(95, 'HK', 'Hong Kong', '香港', '852', 'AS', 'City of Victoria', 'HKD', 'zh,en', NULL, NULL, 1, 1),
(96, 'HM', 'Heard Island and McDonald Islands', 'Heard Island and McDonald Islands', '61', 'AN', '', 'AUD', 'en', NULL, NULL, 1, 1),
(97, 'HN', 'Honduras', 'Honduras', '504', 'NA', 'Tegucigalpa', 'HNL', 'es', NULL, NULL, 1, 1),
(98, 'HR', 'Croatia', 'Hrvatska', '385', 'EU', 'Zagreb', 'HRK', 'hr', NULL, NULL, 1, 1),
(99, 'HT', 'Haiti', 'Haïti', '509', 'NA', 'Port-au-Prince', 'HTG,USD', 'fr,ht', NULL, NULL, 1, 1),
(100, 'HU', 'Hungary', 'Magyarország', '36', 'EU', 'Budapest', 'HUF', 'hu', NULL, NULL, 1, 1),
(101, 'ID', 'Indonesia', 'Indonesia', '62', 'AS', 'Jakarta', 'IDR', 'id', NULL, NULL, 1, 1),
(102, 'IE', 'Ireland', 'Éire', '353', 'EU', 'Dublin', 'EUR', 'ga,en', NULL, NULL, 1, 1),
(103, 'IL', 'Israel', 'יִשְׂרָאֵל', '972', 'AS', 'Jerusalem', 'ILS', 'he,ar', NULL, NULL, 1, 1),
(104, 'IM', 'Isle of Man', 'Isle of Man', '44', 'EU', 'Douglas', 'GBP', 'en,gv', NULL, NULL, 1, 1),
(105, 'IN', 'India', 'भारत', '91', 'AS', 'New Delhi', 'INR', 'hi,en', NULL, NULL, 1, 1),
(106, 'IO', 'British Indian Ocean Territory', 'British Indian Ocean Territory', '246', 'AS', 'Diego Garcia', 'USD', 'en', NULL, NULL, 1, 1),
(107, 'IQ', 'Iraq', 'العراق', '964', 'AS', 'Baghdad', 'IQD', 'ar,ku', NULL, NULL, 1, 1),
(108, 'IR', 'Iran', 'ایران', '98', 'AS', 'Tehran', 'IRR', 'fa', NULL, NULL, 1, 1),
(109, 'IS', 'Iceland', 'Ísland', '354', 'EU', 'Reykjavik', 'ISK', 'is', NULL, NULL, 1, 1),
(110, 'IT', 'Italy', 'Italia', '39', 'EU', 'Rome', 'EUR', 'it', NULL, NULL, 1, 1),
(111, 'JE', 'Jersey', 'Jersey', '44', 'EU', 'Saint Helier', 'GBP', 'en,fr', NULL, NULL, 1, 1),
(112, 'JM', 'Jamaica', 'Jamaica', '1876', 'NA', 'Kingston', 'JMD', 'en', NULL, NULL, 1, 1),
(113, 'JO', 'Jordan', 'الأردن', '962', 'AS', 'Amman', 'JOD', 'ar', NULL, NULL, 1, 1),
(114, 'JP', 'Japan', '日本', '81', 'AS', 'Tokyo', 'JPY', 'ja', NULL, NULL, 1, 1),
(115, 'KE', 'Kenya', 'Kenya', '254', 'AF', 'Nairobi', 'KES', 'en,sw', NULL, NULL, 1, 1),
(116, 'KG', 'Kyrgyzstan', 'Кыргызстан', '996', 'AS', 'Bishkek', 'KGS', 'ky,ru', NULL, NULL, 1, 1),
(117, 'KH', 'Cambodia', 'Kâmpŭchéa', '855', 'AS', 'Phnom Penh', 'KHR', 'km', NULL, NULL, 1, 1),
(118, 'KI', 'Kiribati', 'Kiribati', '686', 'OC', 'South Tarawa', 'AUD', 'en', NULL, NULL, 1, 1),
(119, 'KM', 'Comoros', 'Komori', '269', 'AF', 'Moroni', 'KMF', 'ar,fr', NULL, NULL, 1, 1),
(120, 'KN', 'Saint Kitts and Nevis', 'Saint Kitts and Nevis', '1869', 'NA', 'Basseterre', 'XCD', 'en', NULL, NULL, 1, 1),
(121, 'KP', 'North Korea', '북한', '850', 'AS', 'Pyongyang', 'KPW', 'ko', NULL, NULL, 1, 1),
(122, 'KR', 'South Korea', '대한민국', '82', 'AS', 'Seoul', 'KRW', 'ko', NULL, NULL, 1, 1),
(123, 'KW', 'Kuwait', 'الكويت', '965', 'AS', 'Kuwait City', 'KWD', 'ar', NULL, NULL, 1, 1),
(124, 'KY', 'Cayman Islands', 'Cayman Islands', '1345', 'NA', 'George Town', 'KYD', 'en', NULL, NULL, 1, 1),
(125, 'KZ', 'Kazakhstan', 'Қазақстан', '76,77', 'AS', 'Astana', 'KZT', 'kk,ru', NULL, NULL, 1, 1),
(126, 'LA', 'Laos', 'ສປປລາວ', '856', 'AS', 'Vientiane', 'LAK', 'lo', NULL, NULL, 1, 1),
(127, 'LB', 'Lebanon', 'لبنان', '961', 'AS', 'Beirut', 'LBP', 'ar,fr', NULL, NULL, 1, 1),
(128, 'LC', 'Saint Lucia', 'Saint Lucia', '1758', 'NA', 'Castries', 'XCD', 'en', NULL, NULL, 1, 1),
(129, 'LI', 'Liechtenstein', 'Liechtenstein', '423', 'EU', 'Vaduz', 'CHF', 'de', NULL, NULL, 1, 1),
(130, 'LK', 'Sri Lanka', 'śrī laṃkāva', '94', 'AS', 'Colombo', 'LKR', 'si,ta', NULL, NULL, 1, 1),
(131, 'LR', 'Liberia', 'Liberia', '231', 'AF', 'Monrovia', 'LRD', 'en', NULL, NULL, 1, 1),
(132, 'LS', 'Lesotho', 'Lesotho', '266', 'AF', 'Maseru', 'LSL,ZAR', 'en,st', NULL, NULL, 1, 1),
(133, 'LT', 'Lithuania', 'Lietuva', '370', 'EU', 'Vilnius', 'EUR', 'lt', NULL, NULL, 1, 1),
(134, 'LU', 'Luxembourg', 'Luxembourg', '352', 'EU', 'Luxembourg', 'EUR', 'fr,de,lb', NULL, NULL, 1, 1),
(135, 'LV', 'Latvia', 'Latvija', '371', 'EU', 'Riga', 'EUR', 'lv', NULL, NULL, 1, 1),
(136, 'LY', 'Libya', '‏ليبيا', '218', 'AF', 'Tripoli', 'LYD', 'ar', NULL, NULL, 1, 1),
(137, 'MA', 'Morocco', 'المغرب', '212', 'AF', 'Rabat', 'MAD', 'ar', NULL, NULL, 1, 1),
(138, 'MC', 'Monaco', 'Monaco', '377', 'EU', 'Monaco', 'EUR', 'fr', NULL, NULL, 1, 1),
(139, 'MD', 'Moldova', 'Moldova', '373', 'EU', 'Chișinău', 'MDL', 'ro', NULL, NULL, 1, 1),
(140, 'ME', 'Montenegro', 'Црна Гора', '382', 'EU', 'Podgorica', 'EUR', 'sr,bs,sq,hr', NULL, NULL, 1, 1),
(141, 'MF', 'Saint Martin', 'Saint-Martin', '590', 'NA', 'Marigot', 'EUR', 'en,fr,nl', NULL, NULL, 1, 1),
(142, 'MG', 'Madagascar', 'Madagasikara', '261', 'AF', 'Antananarivo', 'MGA', 'fr,mg', NULL, NULL, 1, 1),
(143, 'MH', 'Marshall Islands', 'M̧ajeļ', '692', 'OC', 'Majuro', 'USD', 'en,mh', NULL, NULL, 1, 1),
(144, 'MK', 'Macedonia', 'Македонија', '389', 'EU', 'Skopje', 'MKD', 'mk', NULL, NULL, 1, 1),
(145, 'ML', 'Mali', 'Mali', '223', 'AF', 'Bamako', 'XOF', 'fr', NULL, NULL, 1, 1),
(146, 'MM', 'Myanmar [Burma]', 'မြန်မာ', '95', 'AS', 'Naypyidaw', 'MMK', 'my', NULL, NULL, 1, 1),
(147, 'MN', 'Mongolia', 'Монгол улс', '976', 'AS', 'Ulan Bator', 'MNT', 'mn', NULL, NULL, 1, 1),
(148, 'MO', 'Macao', '澳門', '853', 'AS', '', 'MOP', 'zh,pt', NULL, NULL, 1, 1),
(149, 'MP', 'Northern Mariana Islands', 'Northern Mariana Islands', '1670', 'OC', 'Saipan', 'USD', 'en,ch', NULL, NULL, 1, 1),
(150, 'MQ', 'Martinique', 'Martinique', '596', 'NA', 'Fort-de-France', 'EUR', 'fr', NULL, NULL, 1, 1),
(151, 'MR', 'Mauritania', 'موريتانيا', '222', 'AF', 'Nouakchott', 'MRU', 'ar', NULL, NULL, 1, 1),
(152, 'MS', 'Montserrat', 'Montserrat', '1664', 'NA', 'Plymouth', 'XCD', 'en', NULL, NULL, 1, 1),
(153, 'MT', 'Malta', 'Malta', '356', 'EU', 'Valletta', 'EUR', 'mt,en', NULL, NULL, 1, 1),
(154, 'MU', 'Mauritius', 'Maurice', '230', 'AF', 'Port Louis', 'MUR', 'en', NULL, NULL, 1, 1),
(155, 'MV', 'Maldives', 'Maldives', '960', 'AS', 'Malé', 'MVR', 'dv', NULL, NULL, 1, 1),
(156, 'MW', 'Malawi', 'Malawi', '265', 'AF', 'Lilongwe', 'MWK', 'en,ny', NULL, NULL, 1, 1),
(157, 'MX', 'Mexico', 'México', '52', 'NA', 'Mexico City', 'MXN', 'es', NULL, NULL, 1, 1),
(158, 'MY', 'Malaysia', 'Malaysia', '60', 'AS', 'Kuala Lumpur', 'MYR', 'ms', NULL, NULL, 1, 1),
(159, 'MZ', 'Mozambique', 'Moçambique', '258', 'AF', 'Maputo', 'MZN', 'pt', NULL, NULL, 1, 1),
(160, 'NA', 'Namibia', 'Namibia', '264', 'AF', 'Windhoek', 'NAD,ZAR', 'en,af', NULL, NULL, 1, 1),
(161, 'NC', 'New Caledonia', 'Nouvelle-Calédonie', '687', 'OC', 'Nouméa', 'XPF', 'fr', NULL, NULL, 1, 1),
(162, 'NE', 'Niger', 'Niger', '227', 'AF', 'Niamey', 'XOF', 'fr', NULL, NULL, 1, 1),
(163, 'NF', 'Norfolk Island', 'Norfolk Island', '672', 'OC', 'Kingston', 'AUD', 'en', NULL, NULL, 1, 1),
(164, 'NG', 'Nigeria', 'Nigeria', '234', 'AF', 'Abuja', 'NGN', 'en', NULL, NULL, 1, 1),
(165, 'NI', 'Nicaragua', 'Nicaragua', '505', 'NA', 'Managua', 'NIO', 'es', NULL, NULL, 1, 1),
(166, 'NL', 'Netherlands', 'Nederland', '31', 'EU', 'Amsterdam', 'EUR', 'nl', NULL, NULL, 1, 1),
(167, 'NO', 'Norway', 'Norge', '47', 'EU', 'Oslo', 'NOK', 'no,nb,nn', NULL, NULL, 1, 1),
(168, 'NP', 'Nepal', 'नपल', '977', 'AS', 'Kathmandu', 'NPR', 'ne', NULL, NULL, 1, 1),
(169, 'NR', 'Nauru', 'Nauru', '674', 'OC', 'Yaren', 'AUD', 'en,na', NULL, NULL, 1, 1),
(170, 'NU', 'Niue', 'Niuē', '683', 'OC', 'Alofi', 'NZD', 'en', NULL, NULL, 1, 1),
(171, 'NZ', 'New Zealand', 'New Zealand', '64', 'OC', 'Wellington', 'NZD', 'en,mi', NULL, NULL, 1, 1),
(172, 'OM', 'Oman', 'عمان', '968', 'AS', 'Muscat', 'OMR', 'ar', NULL, NULL, 1, 1),
(173, 'PA', 'Panama', 'Panamá', '507', 'NA', 'Panama City', 'PAB,USD', 'es', NULL, NULL, 1, 1),
(174, 'PE', 'Peru', 'Perú', '51', 'SA', 'Lima', 'PEN', 'es', NULL, NULL, 1, 1),
(175, 'PF', 'French Polynesia', 'Polynésie française', '689', 'OC', 'Papeetē', 'XPF', 'fr', NULL, NULL, 1, 1),
(176, 'PG', 'Papua New Guinea', 'Papua Niugini', '675', 'OC', 'Port Moresby', 'PGK', 'en', NULL, NULL, 1, 1),
(177, 'PH', 'Philippines', 'Pilipinas', '63', 'AS', 'Manila', 'PHP', 'en', NULL, NULL, 1, 1),
(178, 'PK', 'Pakistan', 'Pakistan', '92', 'AS', 'Islamabad', 'PKR', 'en,ur', NULL, NULL, 1, 1),
(179, 'PL', 'Poland', 'Polska', '48', 'EU', 'Warsaw', 'PLN', 'pl', NULL, NULL, 1, 1),
(180, 'PM', 'Saint Pierre and Miquelon', 'Saint-Pierre-et-Miquelon', '508', 'NA', 'Saint-Pierre', 'EUR', 'fr', NULL, NULL, 1, 1),
(181, 'PN', 'Pitcairn Islands', 'Pitcairn Islands', '64', 'OC', 'Adamstown', 'NZD', 'en', NULL, NULL, 1, 1),
(182, 'PR', 'Puerto Rico', 'Puerto Rico', '1787,1939', 'NA', 'San Juan', 'USD', 'es,en', NULL, NULL, 1, 1),
(183, 'PS', 'Palestine', 'فلسطين', '970', 'AS', 'Ramallah', 'ILS', 'ar', NULL, NULL, 1, 1),
(184, 'PT', 'Portugal', 'Portugal', '351', 'EU', 'Lisbon', 'EUR', 'pt', NULL, NULL, 1, 1),
(185, 'PW', 'Palau', 'Palau', '680', 'OC', 'Ngerulmud', 'USD', 'en', NULL, NULL, 1, 1),
(186, 'PY', 'Paraguay', 'Paraguay', '595', 'SA', 'Asunción', 'PYG', 'es,gn', NULL, NULL, 1, 1),
(187, 'QA', 'Qatar', 'قطر', '974', 'AS', 'Doha', 'QAR', 'ar', NULL, NULL, 1, 1),
(188, 'RE', 'Réunion', 'La Réunion', '262', 'AF', 'Saint-Denis', 'EUR', 'fr', NULL, NULL, 1, 1),
(189, 'RO', 'Romania', 'România', '40', 'EU', 'Bucharest', 'RON', 'ro', NULL, NULL, 1, 1),
(190, 'RS', 'Serbia', 'Србија', '381', 'EU', 'Belgrade', 'RSD', 'sr', NULL, NULL, 1, 1),
(191, 'RU', 'Russia', 'Россия', '7', 'EU', 'Moscow', 'RUB', 'ru', NULL, NULL, 1, 1),
(192, 'RW', 'Rwanda', 'Rwanda', '250', 'AF', 'Kigali', 'RWF', 'rw,en,fr', NULL, NULL, 1, 1),
(193, 'SA', 'Saudi Arabia', 'العربية السعودية', '966', 'AS', 'Riyadh', 'SAR', 'ar', NULL, NULL, 1, 1),
(194, 'SB', 'Solomon Islands', 'Solomon Islands', '677', 'OC', 'Honiara', 'SBD', 'en', NULL, NULL, 1, 1),
(195, 'SC', 'Seychelles', 'Seychelles', '248', 'AF', 'Victoria', 'SCR', 'fr,en', NULL, NULL, 1, 1),
(196, 'SD', 'Sudan', 'السودان', '249', 'AF', 'Khartoum', 'SDG', 'ar,en', NULL, NULL, 1, 1),
(197, 'SE', 'Sweden', 'Sverige', '46', 'EU', 'Stockholm', 'SEK', 'sv', NULL, NULL, 1, 1),
(198, 'SG', 'Singapore', 'Singapore', '65', 'AS', 'Singapore', 'SGD', 'en,ms,ta,zh', NULL, NULL, 1, 1),
(199, 'SH', 'Saint Helena', 'Saint Helena', '290', 'AF', 'Jamestown', 'SHP', 'en', NULL, NULL, 1, 1),
(200, 'SI', 'Slovenia', 'Slovenija', '386', 'EU', 'Ljubljana', 'EUR', 'sl', NULL, NULL, 1, 1),
(201, 'SJ', 'Svalbard and Jan Mayen', 'Svalbard og Jan Mayen', '4779', 'EU', 'Longyearbyen', 'NOK', 'no', NULL, NULL, 1, 1),
(202, 'SK', 'Slovakia', 'Slovensko', '421', 'EU', 'Bratislava', 'EUR', 'sk', NULL, NULL, 1, 1),
(203, 'SL', 'Sierra Leone', 'Sierra Leone', '232', 'AF', 'Freetown', 'SLL', 'en', NULL, NULL, 1, 1),
(204, 'SM', 'San Marino', 'San Marino', '378', 'EU', 'City of San Marino', 'EUR', 'it', NULL, NULL, 1, 1),
(205, 'SN', 'Senegal', 'Sénégal', '221', 'AF', 'Dakar', 'XOF', 'fr', NULL, NULL, 1, 1),
(206, 'SO', 'Somalia', 'Soomaaliya', '252', 'AF', 'Mogadishu', 'SOS', 'so,ar', NULL, NULL, 1, 1),
(207, 'SR', 'Suriname', 'Suriname', '597', 'SA', 'Paramaribo', 'SRD', 'nl', NULL, NULL, 1, 1),
(208, 'SS', 'South Sudan', 'South Sudan', '211', 'AF', 'Juba', 'SSP', 'en', NULL, NULL, 1, 1),
(209, 'ST', 'São Tomé and Príncipe', 'São Tomé e Príncipe', '239', 'AF', 'São Tomé', 'STN', 'pt', NULL, NULL, 1, 1),
(210, 'SV', 'El Salvador', 'El Salvador', '503', 'NA', 'San Salvador', 'SVC,USD', 'es', NULL, NULL, 1, 1),
(211, 'SX', 'Sint Maarten', 'Sint Maarten', '1721', 'NA', 'Philipsburg', 'ANG', 'nl,en', NULL, NULL, 1, 1),
(212, 'SY', 'Syria', 'سوريا', '963', 'AS', 'Damascus', 'SYP', 'ar', NULL, NULL, 1, 1),
(213, 'SZ', 'Swaziland', 'Swaziland', '268', 'AF', 'Lobamba', 'SZL', 'en,ss', NULL, NULL, 1, 1),
(214, 'TC', 'Turks and Caicos Islands', 'Turks and Caicos Islands', '1649', 'NA', 'Cockburn Town', 'USD', 'en', NULL, NULL, 1, 1),
(215, 'TD', 'Chad', 'Tchad', '235', 'AF', 'N\'Djamena', 'XAF', 'fr,ar', NULL, NULL, 1, 1),
(216, 'TF', 'French Southern Territories', 'Territoire des Terres australes et antarctiques fr', '262', 'AN', 'Port-aux-Français', 'EUR', 'fr', NULL, NULL, 1, 1),
(217, 'TG', 'Togo', 'Togo', '228', 'AF', 'Lomé', 'XOF', 'fr', NULL, NULL, 1, 1),
(218, 'TH', 'Thailand', 'ประเทศไทย', '66', 'AS', 'Bangkok', 'THB', 'th', NULL, NULL, 1, 1),
(219, 'TJ', 'Tajikistan', 'Тоҷикистон', '992', 'AS', 'Dushanbe', 'TJS', 'tg,ru', NULL, NULL, 1, 1),
(220, 'TK', 'Tokelau', 'Tokelau', '690', 'OC', 'Fakaofo', 'NZD', 'en', NULL, NULL, 1, 1),
(221, 'TL', 'East Timor', 'Timor-Leste', '670', 'OC', 'Dili', 'USD', 'pt', NULL, NULL, 1, 1),
(222, 'TM', 'Turkmenistan', 'Türkmenistan', '993', 'AS', 'Ashgabat', 'TMT', 'tk,ru', NULL, NULL, 1, 1),
(223, 'TN', 'Tunisia', 'تونس', '216', 'AF', 'Tunis', 'TND', 'ar', NULL, NULL, 1, 1),
(224, 'TO', 'Tonga', 'Tonga', '676', 'OC', 'Nuku\'alofa', 'TOP', 'en,to', NULL, NULL, 1, 1),
(225, 'TR', 'Turkey', 'Türkiye', '90', 'AS', 'Ankara', 'TRY', 'tr', NULL, NULL, 1, 1),
(226, 'TT', 'Trinidad and Tobago', 'Trinidad and Tobago', '1868', 'NA', 'Port of Spain', 'TTD', 'en', NULL, NULL, 1, 1),
(227, 'TV', 'Tuvalu', 'Tuvalu', '688', 'OC', 'Funafuti', 'AUD', 'en', NULL, NULL, 1, 1),
(228, 'TW', 'Taiwan', '臺灣', '886', 'AS', 'Taipei', 'TWD', 'zh', NULL, NULL, 1, 1),
(229, 'TZ', 'Tanzania', 'Tanzania', '255', 'AF', 'Dodoma', 'TZS', 'sw,en', NULL, NULL, 1, 1),
(230, 'UA', 'Ukraine', 'Україна', '380', 'EU', 'Kyiv', 'UAH', 'uk', NULL, NULL, 1, 1),
(231, 'UG', 'Uganda', 'Uganda', '256', 'AF', 'Kampala', 'UGX', 'en,sw', NULL, NULL, 1, 1),
(232, 'UM', 'U.S. Minor Outlying Islands', 'United States Minor Outlying Islands', '1', 'OC', '', 'USD', 'en', NULL, NULL, 1, 1),
(233, 'US', 'United States', 'United States', '1', 'NA', 'Washington D.C.', 'USD,USN,USS', 'en', NULL, NULL, 1, 1),
(234, 'UY', 'Uruguay', 'Uruguay', '598', 'SA', 'Montevideo', 'UYI,UYU', 'es', NULL, NULL, 1, 1),
(235, 'UZ', 'Uzbekistan', 'O‘zbekiston', '998', 'AS', 'Tashkent', 'UZS', 'uz,ru', NULL, NULL, 1, 1),
(236, 'VA', 'Vatican City', 'Vaticano', '39066,379', 'EU', 'Vatican City', 'EUR', 'it,la', NULL, NULL, 1, 1),
(237, 'VC', 'Saint Vincent and the Grenadines', 'Saint Vincent and the Grenadines', '1784', 'NA', 'Kingstown', 'XCD', 'en', NULL, NULL, 1, 1),
(238, 'VE', 'Venezuela', 'Venezuela', '58', 'SA', 'Caracas', 'VES', 'es', NULL, NULL, 1, 1),
(239, 'VG', 'British Virgin Islands', 'British Virgin Islands', '1284', 'NA', 'Road Town', 'USD', 'en', NULL, NULL, 1, 1),
(240, 'VI', 'U.S. Virgin Islands', 'United States Virgin Islands', '1340', 'NA', 'Charlotte Amalie', 'USD', 'en', NULL, NULL, 1, 1),
(241, 'VN', 'Vietnam', 'Việt Nam', '84', 'AS', 'Hanoi', 'VND', 'vi', NULL, NULL, 1, 1),
(242, 'VU', 'Vanuatu', 'Vanuatu', '678', 'OC', 'Port Vila', 'VUV', 'bi,en,fr', NULL, NULL, 1, 1),
(243, 'WF', 'Wallis and Futuna', 'Wallis et Futuna', '681', 'OC', 'Mata-Utu', 'XPF', 'fr', NULL, NULL, 1, 1),
(244, 'WS', 'Samoa', 'Samoa', '685', 'OC', 'Apia', 'WST', 'sm,en', NULL, NULL, 1, 1),
(245, 'XK', 'Kosovo', 'Republika e Kosovës', '377,381,383,386', 'EU', 'Pristina', 'EUR', 'sq,sr', NULL, NULL, 1, 1),
(246, 'YE', 'Yemen', 'اليَمَن', '967', 'AS', 'Sana\'a', 'YER', 'ar', NULL, NULL, 1, 1),
(247, 'YT', 'Mayotte', 'Mayotte', '262', 'AF', 'Mamoudzou', 'EUR', 'fr', NULL, NULL, 1, 1),
(248, 'ZA', 'South Africa', 'South Africa', '27', 'AF', 'Pretoria', 'ZAR', 'af,en,nr,st,ss,tn,ts,ve,xh,zu', NULL, NULL, 1, 1),
(249, 'ZM', 'Zambia', 'Zambia', '260', 'AF', 'Lusaka', 'ZMK', 'en', NULL, NULL, 1, 1),
(250, 'ZW', 'Zimbabwe', 'Zimbabwe', '263', 'AF', 'Harare', 'USD,ZAR,BWP,GBP,AUD,CNY,INR,JP', 'en,sn,nd', NULL, NULL, 1, 1);

-- --------------------------------------------------------

--
-- Structure de la table `custom_result_settings`
--

DROP TABLE IF EXISTS `custom_result_settings`;
CREATE TABLE IF NOT EXISTS `custom_result_settings` (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `exam_term_id1` int NOT NULL,
  `percentage1` double(8,2) NOT NULL,
  `exam_term_id2` int NOT NULL,
  `percentage2` double(8,2) NOT NULL,
  `exam_term_id3` int NOT NULL,
  `percentage3` double(8,2) NOT NULL,
  `academic_year` int NOT NULL,
  `created_by` int UNSIGNED DEFAULT '1',
  `updated_by` int UNSIGNED DEFAULT '1',
  `school_id` int UNSIGNED DEFAULT '1',
  `academic_id` int UNSIGNED DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `custom_result_settings_school_id_foreign` (`school_id`),
  KEY `custom_result_settings_academic_id_foreign` (`academic_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `infix_module_infos`
--

DROP TABLE IF EXISTS `infix_module_infos`;
CREATE TABLE IF NOT EXISTS `infix_module_infos` (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `module_id` int DEFAULT NULL,
  `parent_id` int DEFAULT '0',
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `route` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `active_status` tinyint NOT NULL DEFAULT '1',
  `created_by` int UNSIGNED DEFAULT '1',
  `updated_by` int UNSIGNED DEFAULT '1',
  `school_id` int UNSIGNED DEFAULT '1',
  `type` int DEFAULT NULL COMMENT '1 for module, 2 for module link, 3 for module links crud',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `infix_module_infos_created_by_foreign` (`created_by`),
  KEY `infix_module_infos_updated_by_foreign` (`updated_by`),
  KEY `infix_module_infos_school_id_foreign` (`school_id`)
) ENGINE=MyISAM AUTO_INCREMENT=571 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `infix_module_infos`
--

INSERT INTO `infix_module_infos` (`id`, `module_id`, `parent_id`, `name`, `route`, `active_status`, `created_by`, `updated_by`, `school_id`, `type`, `created_at`, `updated_at`) VALUES
(1, 1, 0, 'Dashboard Menu', '', 1, 1, 1, 1, 1, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(2, 1, 1, '➡ Number of Student', '', 1, 1, 1, 1, 3, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(3, 1, 1, '➡ Number of Teacher', '', 1, 1, 1, 1, 3, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(4, 1, 1, '➡ Number of Parents', '', 1, 1, 1, 1, 3, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(5, 1, 1, '➡ Number of Staff', '', 1, 1, 1, 1, 3, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(6, 1, 1, '➡ Current Month Income and Expense Chart', '', 1, 1, 1, 1, 3, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(7, 1, 1, '➡ Current Year Income and Expense Chart', '', 1, 1, 1, 1, 3, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(8, 1, 1, '➡ Notice Board', '', 1, 1, 1, 1, 3, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(9, 1, 1, '➡ Calendar Section', '', 1, 1, 1, 1, 3, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(10, 1, 1, '➡ To Do list', '', 1, 1, 1, 1, 3, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(11, 2, 0, 'Admin Section Menu', '', 1, 1, 1, 1, 1, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(12, 2, 11, 'Admission Query menu', 'admission-query', 1, 1, 1, 1, 2, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(13, 2, 12, 'Add', '', 1, 1, 1, 1, 3, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(14, 2, 12, 'Edit', '', 1, 1, 1, 1, 3, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(15, 2, 12, 'Delete', '', 1, 1, 1, 1, 3, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(16, 2, 11, 'Visitor Book Menu', 'visitor', 1, 1, 1, 1, 2, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(17, 2, 16, 'Add', '', 1, 1, 1, 1, 3, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(18, 2, 16, 'Edit', '', 1, 1, 1, 1, 3, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(19, 2, 16, 'Delete', '', 1, 1, 1, 1, 3, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(20, 2, 16, 'Download', '', 1, 1, 1, 1, 3, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(21, 2, 11, 'Complaint Menu', 'complaint', 1, 1, 1, 1, 2, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(22, 2, 21, 'Add', '', 1, 1, 1, 1, 3, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(23, 2, 21, 'Edit', '', 1, 1, 1, 1, 3, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(24, 2, 21, 'Delete', '', 1, 1, 1, 1, 3, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(25, 2, 21, 'Download', '', 1, 1, 1, 1, 3, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(26, 2, 21, 'View', '', 1, 1, 1, 1, 3, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(27, 2, 11, 'Postal Receive Menu', 'postal-receive', 1, 1, 1, 1, 2, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(28, 2, 27, 'Add', '', 1, 1, 1, 1, 3, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(29, 2, 27, 'Edit', '', 1, 1, 1, 1, 3, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(30, 2, 27, 'Delete', '', 1, 1, 1, 1, 3, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(31, 2, 27, 'Download', '', 1, 1, 1, 1, 3, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(32, 2, 11, 'Postal Dispatch Menu', 'postal-dispatch', 1, 1, 1, 1, 2, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(33, 2, 32, 'Add', '', 1, 1, 1, 1, 3, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(34, 2, 32, 'Edit', '', 1, 1, 1, 1, 3, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(35, 2, 32, 'Delete', '', 1, 1, 1, 1, 3, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(36, 2, 11, 'Phone Call Log Menu', 'phone-call', 1, 1, 1, 1, 2, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(37, 2, 36, 'Add', '', 1, 1, 1, 1, 3, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(38, 2, 36, 'Edit', '', 1, 1, 1, 1, 3, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(39, 2, 36, 'Delete', '', 1, 1, 1, 1, 3, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(40, 2, 36, 'Download', '', 1, 1, 1, 1, 3, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(41, 2, 11, 'Admin Setup Menu', 'setup-admin', 1, 1, 1, 1, 2, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(42, 2, 41, 'Add', '', 1, 1, 1, 1, 3, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(43, 2, 41, 'Edit', '', 1, 1, 1, 1, 3, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(44, 2, 41, 'Delete', '', 1, 1, 1, 1, 3, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(45, 2, 11, 'Student ID Menu', 'student-id-card', 1, 1, 1, 1, 2, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(46, 2, 45, 'Add', '', 1, 1, 1, 1, 3, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(47, 2, 45, 'Edit', '', 1, 1, 1, 1, 3, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(48, 2, 45, 'Delete', '', 1, 1, 1, 1, 3, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(49, 2, 11, 'Student Certificate Menu', 'student-certificate', 1, 1, 1, 1, 2, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(50, 2, 49, 'Add', '', 1, 1, 1, 1, 3, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(51, 2, 49, 'Edit', '', 1, 1, 1, 1, 3, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(52, 2, 49, 'Delete', '', 1, 1, 1, 1, 3, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(53, 2, 11, 'Generate Certificate Menu', 'generate-certificate', 1, 1, 1, 1, 2, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(54, 2, 53, 'Add', '', 1, 1, 1, 1, 3, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(55, 2, 53, 'Edit', '', 1, 1, 1, 1, 3, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(56, 2, 53, 'Delete', '', 1, 1, 1, 1, 3, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(57, 2, 11, 'Generate ID Card Menu', 'generate-id-card', 1, 1, 1, 1, 2, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(58, 2, 57, 'Add', '', 1, 1, 1, 1, 3, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(59, 2, 57, 'Edit', '', 1, 1, 1, 1, 3, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(60, 2, 57, 'Delete', '', 1, 1, 1, 1, 3, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(61, 3, 0, 'Student Menu', '', 1, 1, 1, 1, 1, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(62, 3, 61, 'Student Admission Menu', 'student-admission', 1, 1, 1, 1, 2, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(63, 3, 62, 'Import Student', '', 1, 1, 1, 1, 3, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(64, 3, 61, 'Student List Menu', 'student-list', 1, 1, 1, 1, 2, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(65, 3, 64, 'Add', '', 1, 1, 1, 1, 3, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(66, 3, 64, 'Edit', '', 1, 1, 1, 1, 3, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(67, 3, 64, 'Delete', '', 1, 1, 1, 1, 3, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(68, 3, 61, 'Student Attendance Menu', 'student-attendance', 1, 1, 1, 1, 2, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(69, 3, 68, 'Add', '', 1, 1, 1, 1, 3, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(70, 3, 61, 'Student Attendance Report Menu', 'student-attendance-report', 1, 1, 1, 1, 2, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(71, 3, 61, 'Student Category Menu', 'student-category', 1, 1, 1, 1, 2, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(72, 3, 71, 'Add', '', 1, 1, 1, 1, 3, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(73, 3, 71, 'Edit', '', 1, 1, 1, 1, 3, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(74, 3, 71, 'Delete', '', 1, 1, 1, 1, 3, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(75, 3, 71, 'Download', '', 1, 1, 1, 1, 3, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(76, 3, 61, 'Student Group Menu', 'student-group', 1, 1, 1, 1, 2, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(77, 3, 76, 'Add', '', 1, 1, 1, 1, 3, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(79, 3, 76, 'Edit', '', 1, 1, 1, 1, 3, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(80, 3, 76, 'Delete', '', 1, 1, 1, 1, 3, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(81, 3, 61, 'Student Promote Menu', 'student-promote', 1, 1, 1, 1, 2, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(82, 3, 81, 'Add', '', 1, 1, 1, 1, 3, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(83, 3, 61, 'Disabled Students Menu', 'disabled-student', 1, 1, 1, 1, 2, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(84, 3, 83, 'Add', '', 1, 1, 1, 1, 3, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(85, 3, 83, 'Edit', '', 1, 1, 1, 1, 3, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(86, 3, 83, 'Delete', '', 1, 1, 1, 1, 3, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(87, 4, 0, 'Study Material Menu', '', 1, 1, 1, 1, 1, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(88, 4, 87, 'Upload Content Menu', 'upload-content', 1, 1, 1, 1, 2, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(89, 4, 88, 'Add', '', 1, 1, 1, 1, 3, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(90, 4, 88, 'Download', '', 1, 1, 1, 1, 3, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(91, 4, 88, 'Delete', '', 1, 1, 1, 1, 3, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(92, 4, 87, 'Assignment Menu', 'assignment-list', 1, 1, 1, 1, 2, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(93, 4, 92, 'Add', '', 0, 1, 1, 1, 3, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(94, 4, 92, 'Download', '', 1, 1, 1, 1, 3, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(95, 4, 92, 'Delete', '', 1, 1, 1, 1, 3, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(96, 4, 87, 'Study Material Menu', 'study-metarial-list', 1, 1, 1, 1, 2, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(97, 4, 96, 'Add', '', 0, 1, 1, 1, 3, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(98, 4, 96, 'Download', '', 1, 1, 1, 1, 3, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(99, 4, 96, 'Delete', '', 1, 1, 1, 1, 3, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(100, 4, 87, 'Syllabus Menu', 'syllabus-list', 1, 1, 1, 1, 2, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(101, 4, 100, 'Add', '', 0, 1, 1, 1, 3, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(102, 4, 100, 'Edit', '', 0, 1, 1, 1, 3, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(103, 4, 100, 'Delete', '', 1, 1, 1, 1, 3, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(104, 4, 100, 'Download', '', 1, 1, 1, 1, 3, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(105, 4, 87, 'Other Downloads Menu', 'other-download-list', 1, 1, 1, 1, 2, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(106, 4, 105, 'Download', '', 1, 1, 1, 1, 3, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(107, 4, 105, 'Delete', '', 1, 1, 1, 1, 3, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(108, 5, 0, 'Fees Collection Menu', '', 1, 1, 1, 1, 1, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(109, 5, 108, 'Collect Fees Menu', 'collect-fees', 1, 1, 1, 1, 2, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(110, 5, 109, ' Collect Fees', '', 1, 1, 1, 1, 3, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(111, 5, 109, 'Add', '', 1, 1, 1, 1, 3, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(112, 5, 109, 'Print', '', 1, 1, 1, 1, 3, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(113, 5, 108, 'Search Fees Payment Menu', 'search-fees-payment', 1, 1, 1, 1, 2, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(114, 5, 113, 'Add', '', 0, 1, 1, 1, 3, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(115, 5, 113, 'View', '', 1, 1, 1, 1, 3, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(116, 5, 108, 'Search Fees Due Menu', 'search-fees-due', 1, 1, 1, 1, 2, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(117, 5, 116, 'View', '', 1, 1, 1, 1, 3, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(118, 5, 108, 'Fees Master Menu', 'fees-master', 1, 1, 1, 1, 2, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(119, 5, 118, 'Add', '', 1, 1, 1, 1, 3, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(120, 5, 118, 'Edit', '', 1, 1, 1, 1, 3, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(121, 5, 118, 'Delete', '', 1, 1, 1, 1, 3, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(122, 5, 118, 'Assign', '', 1, 1, 1, 1, 3, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(123, 5, 108, 'Fees Group Menu', 'fees-group', 1, 1, 1, 1, 2, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(124, 5, 123, 'Add', '', 1, 1, 1, 1, 3, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(125, 5, 123, 'Edit', '', 1, 1, 1, 1, 3, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(126, 5, 123, 'Delete', '', 1, 1, 1, 1, 3, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(127, 5, 108, 'Fees Type Menu', 'fees-type', 1, 1, 1, 1, 2, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(128, 5, 127, 'Add', '', 1, 1, 1, 1, 3, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(129, 5, 127, 'Edit', '', 1, 1, 1, 1, 3, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(130, 5, 127, 'Delete', '', 1, 1, 1, 1, 3, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(131, 5, 108, 'Fees Discount Menu', 'fees-discount', 1, 1, 1, 1, 2, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(132, 5, 131, 'Add', '', 1, 1, 1, 1, 3, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(133, 5, 131, 'Edit', '', 1, 1, 1, 1, 3, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(134, 5, 131, 'Delete', '', 1, 1, 1, 1, 3, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(135, 5, 131, 'Assign', '', 1, 1, 1, 1, 3, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(136, 5, 108, 'Fees Carry Forward Menu', 'fees-forward', 1, 1, 1, 1, 2, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(137, 6, 0, 'Accounts Menu', '', 1, 1, 1, 1, 1, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(138, 6, 137, 'Profit Menu', 'profit', 1, 1, 1, 1, 2, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(139, 6, 137, 'Income Menu', 'add-income', 1, 1, 1, 1, 2, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(140, 6, 139, 'Add', '', 1, 1, 1, 1, 3, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(141, 6, 139, 'Edit', '', 1, 1, 1, 1, 3, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(142, 6, 139, 'Delete', '', 1, 1, 1, 1, 3, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(143, 6, 137, 'Expense Menu', 'add-expense', 1, 1, 1, 1, 2, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(144, 6, 143, 'Add', '', 1, 1, 1, 1, 3, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(145, 6, 143, 'Edit', '', 1, 1, 1, 1, 3, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(146, 6, 143, 'Delete', '', 1, 1, 1, 1, 3, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(147, 6, 137, 'Search Menu', 'search-account', 1, 1, 1, 1, 2, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(148, 6, 137, 'Chart of Account Menu', 'chart-of-account', 1, 1, 1, 1, 2, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(149, 6, 148, 'Add', '', 1, 1, 1, 1, 3, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(150, 6, 148, 'Edit', '', 1, 1, 1, 1, 3, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(151, 6, 148, 'Delete', '', 1, 1, 1, 1, 3, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(152, 6, 137, 'Payment method Menu', 'payment-method', 1, 1, 1, 1, 2, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(153, 6, 152, 'Add', '', 1, 1, 1, 1, 3, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(154, 6, 152, 'Edit', '', 1, 1, 1, 1, 3, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(155, 6, 152, 'Delete', '', 1, 1, 1, 1, 3, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(156, 6, 137, 'Bank Account Menu', 'bank-account', 1, 1, 1, 1, 2, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(157, 6, 156, 'Add', '', 1, 1, 1, 1, 3, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(158, 6, 156, 'Edit', '', 1, 1, 1, 1, 3, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(159, 6, 156, 'Delete', '', 1, 1, 1, 1, 3, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(160, 7, 0, 'Human Resource Menu', '', 1, 1, 1, 1, 1, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(161, 7, 160, 'Staff Directory Menu', 'staff-directory', 1, 1, 1, 1, 2, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(162, 7, 161, 'Add', '', 1, 1, 1, 1, 3, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(163, 7, 161, 'Edit', '', 1, 1, 1, 1, 3, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(164, 7, 161, 'Delete', '', 1, 1, 1, 1, 3, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(165, 7, 160, 'Staff Attendance Menu', 'staff-attendance', 1, 1, 1, 1, 2, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(166, 7, 165, 'Add', '', 1, 1, 1, 1, 3, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(167, 7, 165, 'Edit', '', 0, 1, 1, 1, 3, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(168, 7, 165, 'Delete', '', 0, 1, 1, 1, 3, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(169, 7, 160, 'Staff Attendance Report Menu', 'staff-attendance-report', 1, 1, 1, 1, 2, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(170, 7, 160, 'Payroll Menu', 'payroll', 1, 1, 1, 1, 2, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(171, 7, 170, 'Edit', '', 0, 1, 1, 1, 3, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(172, 7, 170, 'Delete', '', 0, 1, 1, 1, 3, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(173, 7, 170, 'Search', '', 1, 1, 1, 1, 3, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(174, 7, 170, 'Generate Payroll', '', 1, 1, 1, 1, 3, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(175, 7, 170, 'Create', '', 1, 1, 1, 1, 3, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(176, 7, 170, 'Proceed To Pay', '', 1, 1, 1, 1, 3, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(177, 7, 170, 'View Payslip', '', 1, 1, 1, 1, 3, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(178, 7, 160, 'Payroll Report Menu', 'payroll-report', 1, 1, 1, 1, 2, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(179, 7, 178, 'Report Search', '', 1, 1, 1, 1, 3, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(180, 7, 160, 'Designations Menu', 'designation', 1, 1, 1, 1, 2, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(181, 7, 180, 'Add', '', 1, 1, 1, 1, 3, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(182, 7, 180, 'Edit', '', 1, 1, 1, 1, 3, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(183, 7, 180, 'Delete', '', 1, 1, 1, 1, 3, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(184, 7, 160, 'Departments Menu', 'department', 1, 1, 1, 1, 2, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(185, 7, 184, 'Add', '', 1, 1, 1, 1, 3, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(186, 7, 184, 'Edit', '', 1, 1, 1, 1, 3, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(187, 7, 184, 'Delete', '', 1, 1, 1, 1, 3, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(188, 8, 0, 'Leave Menu', '', 1, 1, 1, 1, 1, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(189, 8, 188, 'Approve Leave Menu', 'approve-leave', 1, 1, 1, 1, 2, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(190, 8, 189, 'Add', '', 0, 1, 1, 1, 3, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(191, 8, 189, 'Edit', '', 1, 1, 1, 1, 3, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(192, 8, 189, 'Delete', '', 1, 1, 1, 1, 3, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(193, 8, 188, 'Apply Leave Menu', 'apply-leave', 1, 1, 1, 1, 2, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(194, 8, 193, 'View', '', 1, 1, 1, 1, 3, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(195, 8, 193, 'Delete', '', 1, 1, 1, 1, 3, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(196, 8, 188, 'Pending Leave Menu', 'pending-leave', 1, 1, 1, 1, 2, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(197, 8, 196, 'View', '', 1, 1, 1, 1, 3, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(198, 8, 196, 'Delete', '', 1, 1, 1, 1, 3, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(199, 8, 188, 'Leave Define Menu', 'leave-define', 1, 1, 1, 1, 2, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(200, 8, 199, 'Add', '', 1, 1, 1, 1, 3, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(201, 8, 199, 'Edit', '', 1, 1, 1, 1, 3, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(202, 8, 199, 'Delete', '', 1, 1, 1, 1, 3, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(203, 8, 188, 'Leave Type Menu', 'leave-type', 1, 1, 1, 1, 2, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(204, 8, 203, 'Add', '', 1, 1, 1, 1, 3, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(205, 8, 203, 'Edit', '', 1, 1, 1, 1, 3, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(206, 8, 203, 'Delete', '', 1, 1, 1, 1, 3, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(207, 9, 0, 'Examination Menu', '', 1, 1, 1, 1, 1, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(208, 9, 207, 'Add Exam Type Menu', 'exam-type', 1, 1, 1, 1, 2, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(209, 9, 208, 'Add', '', 1, 1, 1, 1, 3, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(210, 9, 208, 'Edit', '', 1, 1, 1, 1, 3, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(211, 9, 208, 'Delete', '', 1, 1, 1, 1, 3, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(214, 9, 207, 'Exam Setup Menu', 'exam', 1, 1, 1, 1, 2, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(215, 9, 214, 'Add', '', 1, 1, 1, 1, 3, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(216, 9, 214, 'Delete', '', 1, 1, 1, 1, 3, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(217, 9, 207, 'Exam Schedule Menu', 'exam-schedule', 1, 1, 1, 1, 2, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(218, 9, 217, 'Add', '', 1, 1, 1, 1, 3, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(219, 9, 217, 'Create', '', 1, 1, 1, 1, 3, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(220, 9, 207, 'Exam Attendance Menu', 'exam-attendance', 0, 1, 1, 1, 2, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(221, 9, 220, 'Add', '', 1, 1, 1, 1, 3, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(222, 9, 220, 'Marks Register Menu', 'marks-register', 0, 1, 1, 1, 2, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(223, 9, 220, 'Add', '', 1, 1, 1, 1, 3, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(224, 9, 220, 'Create', '', 1, 1, 1, 1, 3, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(225, 9, 207, 'Marks Grade Menu', 'marks-grade', 1, 1, 1, 1, 2, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(226, 9, 225, 'Add', '', 1, 1, 1, 1, 3, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(227, 9, 225, 'Edit', '', 1, 1, 1, 1, 3, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(228, 9, 225, 'Delete', '', 1, 1, 1, 1, 3, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(229, 9, 207, 'Send Marks By SMS Menu', 'send-marks-by-sms', 1, 1, 1, 1, 2, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(230, 9, 207, 'Question Group Menu', 'question-group', 1, 1, 1, 1, 2, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(231, 9, 230, 'Add', '', 1, 1, 1, 1, 3, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(232, 9, 230, 'Edit', '', 1, 1, 1, 1, 3, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(233, 9, 230, 'Delete', '', 1, 1, 1, 1, 3, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(234, 9, 207, 'Question Bank Menu', 'question-bank', 1, 1, 1, 1, 2, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(235, 9, 234, 'Add', '', 1, 1, 1, 1, 3, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(236, 9, 234, 'Edit', '', 1, 1, 1, 1, 3, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(237, 9, 234, 'Delete', '', 1, 1, 1, 1, 3, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(238, 9, 207, 'Online Exam Menu', 'online-exam', 1, 1, 1, 1, 2, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(239, 9, 238, 'Add', '', 1, 1, 1, 1, 3, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(240, 9, 238, 'Edit', '', 1, 1, 1, 1, 3, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(241, 9, 238, 'Delete', '', 1, 1, 1, 1, 3, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(242, 9, 238, 'Manage Question', '', 1, 1, 1, 1, 3, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(243, 9, 238, 'Marks Register', '', 1, 1, 1, 1, 3, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(244, 9, 238, 'Result', '', 1, 1, 1, 1, 3, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(245, 10, 0, 'Academics Menu', '', 1, 1, 1, 1, 1, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(246, 10, 245, 'Class Routine Menu', 'class-routine-new', 1, 1, 1, 1, 2, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(247, 10, 246, 'Add', '', 1, 1, 1, 1, 3, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(248, 10, 246, 'Edit', '', 1, 1, 1, 1, 3, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(249, 10, 246, 'Delete', '', 1, 1, 1, 1, 3, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(250, 10, 245, 'Assign Subject Menu', 'assign-subject', 1, 1, 1, 1, 2, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(251, 10, 250, 'Add', '', 1, 1, 1, 1, 3, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(252, 10, 250, 'Delete', '', 1, 1, 1, 1, 3, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(253, 10, 245, 'Assign Class Teacher Menu', 'assign-class-teacher', 1, 1, 1, 1, 2, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(254, 10, 253, 'Add', '', 1, 1, 1, 1, 3, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(255, 10, 253, 'Edit', '', 1, 1, 1, 1, 3, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(256, 10, 253, 'Delete', '', 1, 1, 1, 1, 3, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(257, 10, 245, 'Subjects Menu', 'subject', 1, 1, 1, 1, 2, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(258, 10, 257, 'Add', '', 1, 1, 1, 1, 3, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(259, 10, 257, 'Edit', '', 1, 1, 1, 1, 3, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(260, 10, 257, 'Delete', '', 1, 1, 1, 1, 3, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(261, 10, 245, 'Class Menu', 'class', 1, 1, 1, 1, 2, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(262, 10, 261, 'Add', '', 1, 1, 1, 1, 3, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(263, 10, 261, 'Edit', '', 1, 1, 1, 1, 3, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(264, 10, 261, 'Delete', '', 1, 1, 1, 1, 3, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(265, 10, 245, 'Section Menu', 'section', 1, 1, 1, 1, 2, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(266, 10, 265, 'Add', '', 1, 1, 1, 1, 3, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(267, 10, 265, 'Edit', '', 1, 1, 1, 1, 3, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(268, 10, 265, 'Delete', '', 1, 1, 1, 1, 3, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(269, 10, 245, 'Class Room Menu', 'class-room', 1, 1, 1, 1, 2, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(270, 10, 269, 'Add', '', 1, 1, 1, 1, 3, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(271, 10, 269, 'Edit', '', 1, 1, 1, 1, 3, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(272, 10, 269, 'Delete', '', 1, 1, 1, 1, 3, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(273, 10, 245, 'CL/EX Time Setup Menu', 'class-time', 1, 1, 1, 1, 2, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(274, 10, 273, 'Add', '', 1, 1, 1, 1, 3, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(275, 10, 273, 'Edit', '', 1, 1, 1, 1, 3, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(276, 10, 273, 'Delete', '', 1, 1, 1, 1, 3, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(277, 11, 0, 'Homework Menu', '', 1, 1, 1, 1, 1, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(278, 11, 277, 'Add Homework Menu', 'add-homeworks', 1, 1, 1, 1, 2, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(279, 11, 278, 'Add', '', 1, 1, 1, 1, 3, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(280, 11, 277, 'Homework List Menu', 'homework-list', 1, 1, 1, 1, 2, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(281, 11, 280, 'Evaluation', '', 1, 1, 1, 1, 3, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(282, 11, 280, 'Edit', '', 1, 1, 1, 1, 3, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(283, 11, 280, 'Delete', '', 1, 1, 1, 1, 3, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(284, 11, 277, 'Homework Evaluation Report Menu', 'evaluation-report', 1, 1, 1, 1, 2, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(285, 11, 284, 'View', '', 1, 1, 1, 1, 3, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(286, 12, 0, 'Communicate Menu', '', 1, 1, 1, 1, 1, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(287, 12, 286, 'Notice Board Menu', 'notice-list', 1, 1, 1, 1, 2, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(288, 12, 287, 'Add', '', 1, 1, 1, 1, 3, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(289, 12, 287, 'Edit', '', 1, 1, 1, 1, 3, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(290, 12, 287, 'Delete', '', 1, 1, 1, 1, 3, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(291, 12, 286, 'Send Email / SMS  Menu', 'send-email-sms-view', 1, 1, 1, 1, 2, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(292, 12, 291, 'Send', '', 1, 1, 1, 1, 3, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(293, 12, 286, 'Email / SMS Log Menu', 'email-sms-log', 1, 1, 1, 1, 2, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(294, 12, 286, 'Event Menu', 'event', 1, 1, 1, 1, 2, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(295, 12, 294, 'Add', '', 1, 1, 1, 1, 3, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(296, 12, 294, 'Edit', '', 1, 1, 1, 1, 3, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(297, 12, 294, 'Delete', '', 1, 1, 1, 1, 3, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(298, 13, 0, 'Library Menu', '', 1, 1, 1, 1, 1, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(299, 13, 298, 'Add Book Menu', 'add-book', 1, 1, 1, 1, 2, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(300, 13, 299, 'Add', '', 1, 1, 1, 1, 3, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(301, 13, 298, 'Book List  Menu', 'book-list', 1, 1, 1, 1, 2, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(302, 13, 301, 'Edit', '', 1, 1, 1, 1, 3, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(303, 13, 301, 'Delete', '', 1, 1, 1, 1, 3, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(304, 13, 298, 'Book Category Menu', 'book-category-list', 1, 1, 1, 1, 2, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(305, 13, 304, 'Add', '', 1, 1, 1, 1, 3, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(306, 13, 304, 'Edit', '', 1, 1, 1, 1, 3, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(307, 13, 304, 'Delete', '', 1, 1, 1, 1, 3, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(308, 13, 298, 'Add Member Menu', 'library-member', 1, 1, 1, 1, 2, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(309, 13, 308, 'Add', '', 1, 1, 1, 1, 3, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(310, 13, 308, 'Cancel', '', 1, 1, 1, 1, 3, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(311, 13, 298, 'Issue/Return Book Menu', 'member-list', 1, 1, 1, 1, 2, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(312, 13, 311, 'Issue', '', 1, 1, 1, 1, 3, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(313, 13, 311, 'Return', '', 1, 1, 1, 1, 3, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(314, 13, 298, 'All Issued Book', 'all-issed-book', 1, 1, 1, 1, 2, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(315, 14, 0, 'Inventory Menu', '', 1, 1, 1, 1, 1, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(316, 14, 315, 'Item Category Menu', 'item-category', 1, 1, 1, 1, 2, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(317, 14, 316, 'Add', '', 1, 1, 1, 1, 3, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(318, 14, 316, 'Edit', '', 1, 1, 1, 1, 3, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(319, 14, 316, 'Delete', '', 1, 1, 1, 1, 3, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(320, 14, 315, 'Item List Menu', 'item-list', 1, 1, 1, 1, 2, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(321, 14, 320, 'Add', '', 1, 1, 1, 1, 3, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(322, 14, 320, 'Edit', '', 1, 1, 1, 1, 3, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(323, 14, 320, 'Delete', '', 1, 1, 1, 1, 3, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(324, 14, 315, 'Item Store Menu', 'item-store', 1, 1, 1, 1, 2, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(325, 14, 324, 'Add', '', 1, 1, 1, 1, 3, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(326, 14, 324, 'Edit', '', 1, 1, 1, 1, 3, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(327, 14, 324, 'Delete', '', 1, 1, 1, 1, 3, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(328, 14, 315, 'Supplier Menu', 'suppliers', 1, 1, 1, 1, 2, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(329, 14, 328, 'Add', '', 1, 1, 1, 1, 3, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(330, 14, 328, 'Edit', '', 1, 1, 1, 1, 3, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(331, 14, 328, 'Delete', '', 1, 1, 1, 1, 3, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(332, 14, 315, 'Item Receive Menu', 'item-receive', 1, 1, 1, 1, 2, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(333, 14, 332, 'Add', '', 1, 1, 1, 1, 3, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(334, 14, 315, 'Item Receive List Menu', 'item-receive-list', 1, 1, 1, 1, 2, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(335, 14, 334, 'Add', '', 1, 1, 1, 1, 3, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(336, 14, 334, 'Edit', '', 1, 1, 1, 1, 3, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(337, 14, 334, 'View', '', 1, 1, 1, 1, 3, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(338, 14, 334, 'Cancel', '', 1, 1, 1, 1, 3, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(339, 14, 315, 'Item Sell Menu', 'item-sell-list', 1, 1, 1, 1, 2, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(340, 14, 339, 'Add', '', 1, 1, 1, 1, 3, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(341, 14, 339, 'Edit', '', 1, 1, 1, 1, 3, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(342, 14, 339, 'Delete', '', 1, 1, 1, 1, 3, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(343, 14, 339, 'Add Payment', '', 1, 1, 1, 1, 3, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(344, 14, 339, 'View Payment', '', 1, 1, 1, 1, 3, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(345, 14, 315, 'Item Issue Menu', 'item-issue', 1, 1, 1, 1, 2, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(346, 14, 345, 'Add', '', 1, 1, 1, 1, 3, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(347, 14, 345, 'Return', '', 1, 1, 1, 1, 3, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(348, 15, 0, 'Transport Menu', '', 1, 1, 1, 1, 1, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(349, 15, 348, 'Routes Menu', 'transport-route', 1, 1, 1, 1, 2, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(350, 15, 349, 'Add', '', 1, 1, 1, 1, 3, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(351, 15, 349, 'Edit', '', 1, 1, 1, 1, 3, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(352, 15, 349, 'Delete', '', 1, 1, 1, 1, 3, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(353, 15, 348, 'Vehicle Menu', 'vehicle', 1, 1, 1, 1, 2, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(354, 15, 353, 'Add', '', 1, 1, 1, 1, 3, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(355, 15, 353, 'Edit', '', 1, 1, 1, 1, 3, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(356, 15, 353, 'Delete', '', 1, 1, 1, 1, 3, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(357, 15, 348, 'Assign Vehicle Menu', 'assign-vehicle', 1, 1, 1, 1, 2, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(358, 15, 357, 'Add', '', 1, 1, 1, 1, 3, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(359, 15, 357, 'Edit', '', 1, 1, 1, 1, 3, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(360, 15, 357, 'Delete', '', 1, 1, 1, 1, 3, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(361, 15, 348, 'Student Transport Report Menu', 'student-transport-report', 1, 1, 1, 1, 2, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(362, 16, 0, 'Dormitory Menu', '', 1, 1, 1, 1, 1, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(363, 16, 362, 'Dormitory Rooms Menu', 'room-list', 1, 1, 1, 1, 2, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(364, 16, 363, 'Add', '', 1, 1, 1, 1, 3, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(365, 16, 363, 'Edit', '', 1, 1, 1, 1, 3, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(366, 16, 363, 'Delete', '', 1, 1, 1, 1, 3, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(367, 16, 362, 'Dormitory Menu', 'dormitory-list', 1, 1, 1, 1, 2, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(368, 16, 367, 'Add', '', 1, 1, 1, 1, 3, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(369, 16, 367, 'Edit', '', 1, 1, 1, 1, 3, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(370, 16, 367, 'Delete', '', 1, 1, 1, 1, 3, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(371, 16, 362, 'Room Type Menu', 'room-type', 1, 1, 1, 1, 2, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(372, 16, 371, 'Add', '', 1, 1, 1, 1, 3, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(373, 16, 371, 'Edit', '', 1, 1, 1, 1, 3, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(374, 16, 371, 'Delete', '', 1, 1, 1, 1, 3, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(375, 16, 362, 'Student Dormitory Report Menu', 'student-dormitory-report', 1, 1, 1, 1, 2, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(376, 17, 0, 'Reports Menu', 'student-report', 1, 1, 1, 1, 1, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(377, 17, 376, 'Guardian Report Menu', 'guardian-report', 1, 1, 1, 1, 2, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(378, 17, 376, 'Student History Menu', 'student-history', 1, 1, 1, 1, 2, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(379, 17, 376, 'Student Login Report', 'student-login-report', 1, 1, 1, 1, 2, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(380, 17, 379, 'Edit', '', 1, 1, 1, 1, 3, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(381, 17, 376, 'Fees Statement Menu', 'fees-statement', 1, 1, 1, 1, 2, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(382, 17, 376, 'Balance Fees Report Menu', 'balance-fees-report', 1, 1, 1, 1, 2, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(383, 17, 376, 'Transaction Report Menu', 'transaction-report', 1, 1, 1, 1, 2, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(384, 17, 376, 'Class Report Menu', 'class-report', 1, 1, 1, 1, 2, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(385, 17, 376, 'Class Routine Menu', 'class-routine-report', 1, 1, 1, 1, 2, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(386, 17, 376, 'Exam Routine Menu', 'exam-routine-report', 1, 1, 1, 1, 2, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(387, 17, 376, 'Teacher Class Routine Menu', 'teacher-class-routine-report', 1, 1, 1, 1, 2, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(388, 17, 376, 'Merit List Report Menu', 'merit-list-report', 1, 1, 1, 1, 2, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(389, 17, 376, 'Online Exam Report Menu', 'online-exam-report', 1, 1, 1, 1, 2, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(390, 17, 376, 'Mark Sheet Report Menu', 'mark-sheet-report-student', 1, 1, 1, 1, 2, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(391, 17, 376, 'Tabulation Sheet Report Menu', 'tabulation-sheet-report', 1, 1, 1, 1, 2, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(392, 17, 376, 'Progress Card Report Menu', 'progress-card-report', 1, 1, 1, 1, 2, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(393, 17, 376, 'Student Fine Report Menu', 'student-fine-report', 1, 1, 1, 1, 2, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(394, 17, 376, 'User Log Menu', 'user-log', 1, 1, 1, 1, 2, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(395, 8, 394, 'Add', '', 1, 1, 1, 1, 3, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(396, 8, 394, 'Edit', '', 1, 1, 1, 1, 3, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(397, 9, 394, 'Exam Setup Edit', '', 1, 1, 1, 1, 3, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(398, 18, 0, 'Systemm settings module', '', 1, 1, 1, 1, 1, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(399, 18, 398, 'Manage Add-ons', '', 1, 1, 1, 1, 2, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(400, 18, 399, 'Verify', '', 1, 1, 1, 1, 3, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(401, 18, 398, 'Manage Currency', '', 1, 1, 1, 1, 2, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(402, 18, 401, 'Add', '', 1, 1, 1, 1, 3, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(403, 18, 401, 'Edit', '', 1, 1, 1, 1, 3, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(404, 18, 401, 'Delete', '', 1, 1, 1, 1, 3, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(405, 18, 398, 'General Settings', '', 1, 1, 1, 1, 2, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(406, 18, 405, 'Logo Change', '', 1, 1, 1, 1, 3, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(407, 18, 405, 'Fevicon Change', '', 1, 1, 1, 1, 3, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(408, 18, 405, 'Edit', '', 1, 1, 1, 1, 3, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(409, 18, 405, 'Update', '', 1, 1, 1, 1, 3, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(410, 18, 398, 'Email Setting', '', 1, 1, 1, 1, 2, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(411, 18, 410, 'Update', '', 1, 1, 1, 1, 3, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(412, 18, 398, 'Payment Method Settings', '', 1, 1, 1, 1, 2, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(413, 18, 412, 'Gateway Update', '', 1, 1, 1, 1, 3, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(414, 18, 412, 'PayPal Update', '', 1, 1, 1, 1, 3, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(415, 18, 412, 'Stripe Update', '', 1, 1, 1, 1, 3, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(416, 18, 412, 'Paystack Update', '', 1, 1, 1, 1, 3, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(417, 18, 398, 'Role', '', 1, 1, 1, 1, 2, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(418, 18, 417, 'Add', '', 1, 1, 1, 1, 3, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(419, 18, 417, 'Edit', '', 1, 1, 1, 1, 3, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(420, 18, 417, 'Delete', '', 1, 1, 1, 1, 3, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(421, 18, 398, 'Login Permission', '', 1, 1, 1, 1, 2, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(422, 18, 421, 'On', '', 1, 1, 1, 1, 3, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(423, 18, 421, 'Off', '', 1, 1, 1, 1, 3, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(424, 18, 398, 'Optional Subject Setup', '', 1, 1, 1, 1, 2, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(425, 18, 424, 'Add', '', 1, 1, 1, 1, 3, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(426, 18, 424, 'Edit', '', 1, 1, 1, 1, 3, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(427, 18, 424, 'Delete', '', 1, 1, 1, 1, 3, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(428, 18, 398, 'Base Setup', '', 1, 1, 1, 1, 2, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(429, 18, 428, 'Add', '', 1, 1, 1, 1, 3, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(430, 18, 428, 'Edit', '', 1, 1, 1, 1, 3, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(431, 18, 428, 'Delete', '', 1, 1, 1, 1, 3, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(432, 18, 398, 'Academic Year', '', 1, 1, 1, 1, 2, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(433, 18, 432, 'Add', '', 1, 1, 1, 1, 3, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(434, 18, 432, 'Edit', '', 1, 1, 1, 1, 3, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(435, 18, 432, 'Delete', '', 1, 1, 1, 1, 3, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(436, 18, 398, 'Custom Result Setting', '', 1, 1, 1, 1, 2, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(437, 18, 436, 'Add', '', 1, 1, 1, 1, 3, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(438, 18, 436, 'Edit', '', 1, 1, 1, 1, 3, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(439, 18, 436, 'Delete', '', 1, 1, 1, 1, 3, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(440, 18, 398, 'Holiday', '', 1, 1, 1, 1, 2, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(441, 18, 440, 'Add', '', 1, 1, 1, 1, 3, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(442, 18, 440, 'Edit', '', 1, 1, 1, 1, 3, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(443, 18, 440, 'Delete', '', 1, 1, 1, 1, 3, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(444, 18, 398, 'Sms Settings', '', 1, 1, 1, 1, 2, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(445, 18, 444, ' Select SMS Service', '', 1, 1, 1, 1, 3, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(446, 18, 444, ' Twilio Update', '', 1, 1, 1, 1, 3, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(447, 18, 444, ' MSG91 Update', '', 1, 1, 1, 1, 3, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(448, 18, 398, 'Weekend', '', 1, 1, 1, 1, 2, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(449, 18, 448, 'Edit', '', 1, 1, 1, 1, 3, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(450, 18, 448, 'Update', '', 1, 1, 1, 1, 3, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(451, 18, 398, 'Language Settings', '', 1, 1, 1, 1, 2, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(452, 18, 451, 'Add', '', 1, 1, 1, 1, 3, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(453, 18, 451, 'Make Default', '', 1, 1, 1, 1, 3, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(454, 18, 451, 'Setup', '', 1, 1, 1, 1, 3, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(455, 18, 451, 'Remove', '', 1, 1, 1, 1, 3, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(456, 18, 398, 'Backup', '', 1, 1, 1, 1, 2, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(457, 18, 456, 'Add', '', 1, 1, 1, 1, 3, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(458, 18, 456, 'Download', '', 1, 1, 1, 1, 3, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(459, 18, 456, 'Delete', '', 1, 1, 1, 1, 3, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(460, 18, 456, 'Image', '', 1, 1, 1, 1, 3, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(461, 18, 456, 'Full Project', '', 1, 1, 1, 1, 3, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(462, 18, 456, 'Database', '', 1, 1, 1, 1, 3, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(463, 18, 398, 'Button Manage', '', 1, 1, 1, 1, 2, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(464, 18, 463, 'Custom URL Update', '', 1, 1, 1, 1, 3, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(465, 18, 463, 'Website On', '', 1, 1, 1, 1, 3, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(466, 18, 463, 'Website Off', '', 1, 1, 1, 1, 3, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(467, 18, 463, 'Dashboard On', '', 1, 1, 1, 1, 3, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(468, 18, 463, 'Dashboard Off', '', 1, 1, 1, 1, 3, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(469, 18, 463, 'Report On', '', 1, 1, 1, 1, 3, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(470, 18, 463, 'Report Off', '', 1, 1, 1, 1, 3, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(471, 18, 463, 'Language On', '', 1, 1, 1, 1, 3, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(472, 18, 463, 'Language Off', '', 1, 1, 1, 1, 3, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(473, 18, 463, 'Style On', '', 1, 1, 1, 1, 3, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(474, 18, 463, 'Style Off', '', 1, 1, 1, 1, 3, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(475, 18, 463, 'LTL To RTL On', '', 1, 1, 1, 1, 3, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(476, 18, 463, 'LTL To RTL Off', '', 1, 1, 1, 1, 3, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(477, 18, 398, 'About', '', 1, 1, 1, 1, 2, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(478, 18, 477, 'Update', '', 1, 1, 1, 1, 2, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(479, 18, 477, 'Add', '', 1, 1, 1, 1, 3, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(480, 18, 398, 'Email Template', '', 1, 1, 1, 1, 2, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(481, 18, 480, 'Save', '', 1, 1, 1, 1, 3, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(482, 18, 398, 'API Permission', '', 1, 1, 1, 1, 2, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(483, 18, 482, 'On', '', 1, 1, 1, 1, 3, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(484, 18, 482, 'Off', '', 1, 1, 1, 1, 3, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(485, 19, 0, 'Style Module', '', 1, 1, 1, 1, 1, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(486, 19, 485, 'Background Settings', '', 1, 1, 1, 1, 2, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(487, 19, 486, 'Add', '', 1, 1, 1, 1, 3, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(488, 19, 486, 'Delete', '', 1, 1, 1, 1, 3, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(489, 19, 486, 'Make Default', '', 1, 1, 1, 1, 3, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(490, 19, 485, 'Color Themes', '', 1, 1, 1, 1, 2, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(491, 19, 490, 'Make Default', '', 1, 1, 1, 1, 3, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(492, 20, 0, 'Front settings Module', '', 1, 1, 1, 1, 1, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(493, 20, 492, 'Home Page', '', 1, 1, 1, 1, 2, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(494, 20, 493, 'Update', '', 1, 1, 1, 1, 3, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(495, 20, 492, 'News List', '', 1, 1, 1, 1, 2, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(496, 20, 495, 'View', '', 1, 1, 1, 1, 3, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(497, 20, 495, 'Add', '', 1, 1, 1, 1, 3, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(498, 20, 495, 'Edit', '', 1, 1, 1, 1, 3, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(499, 20, 495, 'Delete', '', 1, 1, 1, 1, 3, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(500, 20, 492, 'News Category', '', 1, 1, 1, 1, 2, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(501, 20, 500, 'Add', '', 1, 1, 1, 1, 3, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(502, 20, 500, 'Edit', '', 1, 1, 1, 1, 3, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(503, 20, 500, 'Delete', '', 1, 1, 1, 1, 3, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(504, 20, 492, 'Testimonial', '', 1, 1, 1, 1, 2, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(505, 20, 504, 'View', '', 1, 1, 1, 1, 3, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(506, 20, 504, 'Add', '', 1, 1, 1, 1, 3, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(507, 20, 504, 'Edit', '', 1, 1, 1, 1, 3, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(508, 20, 504, 'Delete', '', 1, 1, 1, 1, 3, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(509, 20, 492, 'Course List', '', 1, 1, 1, 1, 2, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(510, 20, 509, 'View', '', 1, 1, 1, 1, 3, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(511, 20, 509, 'Add', '', 1, 1, 1, 1, 3, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(512, 20, 509, 'Edit', '', 1, 1, 1, 1, 3, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(513, 20, 509, 'Delete', '', 1, 1, 1, 1, 3, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(514, 20, 492, 'Contact Page', '', 1, 1, 1, 1, 2, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(515, 20, 514, 'View', '', 1, 1, 1, 1, 3, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(516, 20, 514, 'Edit', '', 1, 1, 1, 1, 3, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(517, 20, 492, 'Contact Messages', '', 1, 1, 1, 1, 2, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(518, 20, 517, 'Edit', '', 1, 1, 1, 1, 3, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(519, 20, 517, 'Delete', '', 1, 1, 1, 1, 3, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(520, 20, 492, 'About Page', '', 1, 1, 1, 1, 2, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(521, 20, 520, 'View', '', 1, 1, 1, 1, 3, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(522, 20, 520, 'Edit', '', 1, 1, 1, 1, 3, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(523, 20, 492, 'News Heading', '', 1, 1, 1, 1, 2, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(524, 20, 523, 'Update', '', 1, 1, 1, 1, 3, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(525, 20, 492, 'Course Heading', '', 1, 1, 1, 1, 2, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(526, 20, 525, 'Update', '', 1, 1, 1, 1, 3, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(527, 20, 492, 'Custom Links', '', 1, 1, 1, 1, 2, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(528, 20, 527, 'Update', '', 1, 1, 1, 1, 3, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(529, 20, 492, 'Social Media', '', 1, 1, 1, 1, 2, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(530, 20, 529, 'Add', '', 1, 1, 1, 1, 3, '2019-07-25 01:21:21', '2019-07-25 03:24:22');
INSERT INTO `infix_module_infos` (`id`, `module_id`, `parent_id`, `name`, `route`, `active_status`, `created_by`, `updated_by`, `school_id`, `type`, `created_at`, `updated_at`) VALUES
(531, 20, 529, 'Edit', '', 1, 1, 1, 1, 3, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(532, 20, 529, 'Delete', '', 1, 1, 1, 1, 3, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(533, 3, 61, 'Subject Wise Attendance', '', 1, 1, 1, 1, 2, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(534, 3, 533, 'Save', '', 1, 1, 1, 1, 3, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(535, 3, 61, 'Subject Wise Attendance Report', '', 1, 1, 1, 1, 2, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(536, 3, 535, 'Print', '', 1, 1, 1, 1, 3, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(537, 10, 245, 'Optional Subject', '', 1, 1, 1, 1, 2, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(538, 17, 376, 'Student Report', '', 1, 1, 1, 1, 2, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(539, 17, 376, 'Previous Result', '', 1, 1, 1, 1, 2, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(540, 17, 376, 'Previous Record', '', 1, 1, 1, 1, 2, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(541, 18, 417, 'Assign Permission', '', 1, 1, 1, 1, 3, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(542, 21, 0, 'Registration', '', 1, 1, 1, 1, 1, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(543, 21, 542, 'Student List', '', 1, 1, 1, 1, 2, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(544, 21, 543, 'View', '', 1, 1, 1, 1, 3, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(545, 21, 543, 'Approve', '', 1, 1, 1, 1, 3, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(546, 21, 543, 'Delete', '', 1, 1, 1, 1, 3, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(547, 21, 542, 'Settings', '', 1, 1, 1, 1, 2, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(548, 21, 547, 'Update', '', 1, 1, 1, 1, 3, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(549, 18, 398, 'Language', '', 1, 1, 1, 1, 2, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(550, 18, 549, 'Add', '', 1, 1, 1, 1, 3, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(551, 18, 549, 'Edit', '', 1, 1, 1, 1, 3, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(552, 18, 549, 'Delete', '', 1, 1, 1, 1, 3, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(553, 8, 193, 'Add', '', 1, 1, 1, 1, 3, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(554, 22, 0, 'Zoom', '', 1, 1, 1, 1, 1, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(555, 22, 554, 'Virtual Class', '', 1, 1, 1, 1, 2, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(556, 22, 555, 'Add', '', 1, 1, 1, 1, 3, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(557, 22, 555, 'Edit', '', 1, 1, 1, 1, 3, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(558, 22, 555, 'Delete', '', 1, 1, 1, 1, 3, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(559, 22, 555, 'Start Class', '', 1, 1, 1, 1, 3, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(560, 22, 554, 'Virtual Meeting', '', 1, 1, 1, 1, 2, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(561, 22, 560, 'Add', '', 1, 1, 1, 1, 3, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(562, 22, 560, 'Edit', '', 1, 1, 1, 1, 3, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(563, 22, 560, 'Delete', '', 1, 1, 1, 1, 3, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(564, 22, 560, 'Start Meeing', '', 1, 1, 1, 1, 3, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(565, 22, 554, 'Class Report', '', 1, 1, 1, 1, 2, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(566, 22, 565, 'Search', '', 1, 1, 1, 1, 3, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(567, 22, 554, 'Meeting Report', '', 1, 1, 1, 1, 2, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(568, 22, 567, 'Search', '', 1, 1, 1, 1, 3, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(569, 22, 554, 'Settings', '', 1, 1, 1, 1, 2, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(570, 22, 569, 'Update', '', 1, 1, 1, 1, 3, '2019-07-25 01:21:21', '2019-07-25 03:24:22');

-- --------------------------------------------------------

--
-- Structure de la table `infix_module_managers`
--

DROP TABLE IF EXISTS `infix_module_managers`;
CREATE TABLE IF NOT EXISTS `infix_module_managers` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `notes` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `version` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `update_url` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `purchase_code` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `installed_domain` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `activated_date` date DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `infix_module_managers`
--

INSERT INTO `infix_module_managers` (`id`, `name`, `email`, `notes`, `version`, `update_url`, `purchase_code`, `installed_domain`, `activated_date`, `created_at`, `updated_at`) VALUES
(1, 'RolePermission', 'support@spondonit.com', 'This is Role Permission Module for manage module. Thanks for using.', '0.1', 'https://spondonit.com/contact', '1651519898', 'http://localhost/Schoolmanag', '2022-05-02', '2022-05-02 18:31:38', '2022-05-02 18:31:38'),
(2, 'TemplateSettings', 'support@spondonit.com', 'This is Template setting module for Email & SMS Template. Thanks for using.', '0.1', 'https://spondonit.com/contact', '1651519898', 'http://localhost/Schoolmanag', '2022-05-02', '2022-05-02 18:31:38', '2022-05-02 18:31:38');

-- --------------------------------------------------------

--
-- Structure de la table `infix_module_student_parent_infos`
--

DROP TABLE IF EXISTS `infix_module_student_parent_infos`;
CREATE TABLE IF NOT EXISTS `infix_module_student_parent_infos` (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `module_id` int DEFAULT NULL,
  `parent_id` int DEFAULT '0',
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `route` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `active_status` tinyint NOT NULL DEFAULT '1',
  `created_by` int UNSIGNED DEFAULT '1',
  `updated_by` int UNSIGNED DEFAULT '1',
  `school_id` int UNSIGNED DEFAULT '1',
  `type` int DEFAULT NULL COMMENT '1 for module, 2 for module link, 3 for module options',
  `user_type` int DEFAULT NULL COMMENT '1 for student, 2 for parent',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `infix_module_student_parent_infos_created_by_foreign` (`created_by`),
  KEY `infix_module_student_parent_infos_updated_by_foreign` (`updated_by`),
  KEY `infix_module_student_parent_infos_school_id_foreign` (`school_id`)
) ENGINE=MyISAM AUTO_INCREMENT=97 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `infix_module_student_parent_infos`
--

INSERT INTO `infix_module_student_parent_infos` (`id`, `module_id`, `parent_id`, `name`, `route`, `active_status`, `created_by`, `updated_by`, `school_id`, `type`, `user_type`, `created_at`, `updated_at`) VALUES
(1, 1, 0, 'Dashboard Menu', '', 1, 1, 1, 1, 1, 1, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(2, 1, 1, 'Subject', '', 1, 1, 1, 1, 3, 1, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(3, 1, 1, 'Notice', '', 1, 1, 1, 1, 3, 1, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(4, 1, 1, 'Exam', '', 1, 1, 1, 1, 3, 1, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(5, 1, 1, 'Online Exam', '', 1, 1, 1, 1, 3, 1, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(6, 1, 1, 'Teachers', '', 1, 1, 1, 1, 3, 1, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(7, 1, 1, 'Issued books', '', 1, 1, 1, 1, 3, 1, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(8, 1, 1, 'Pending homeworks', '', 1, 1, 1, 1, 3, 1, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(9, 1, 1, 'attendance in current month', '', 1, 1, 1, 1, 3, 1, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(10, 1, 1, 'Calendar', '', 1, 1, 1, 1, 3, 1, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(11, 2, 0, 'My Profile', '', 1, 1, 1, 1, 1, 1, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(12, 2, 11, 'Profile', '', 1, 1, 1, 1, 2, 1, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(13, 2, 11, 'Fees', '', 1, 1, 1, 1, 2, 1, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(14, 2, 11, 'Exam', '', 1, 1, 1, 1, 2, 1, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(15, 2, 11, 'Document', '', 1, 1, 1, 1, 2, 1, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(16, 2, 15, 'Upload', '', 1, 1, 1, 1, 3, 1, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(17, 2, 15, 'download', '', 1, 1, 1, 1, 3, 1, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(18, 2, 15, 'delete', '', 1, 1, 1, 1, 3, 1, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(19, 2, 11, 'Timeline', '', 1, 1, 1, 1, 2, 1, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(20, 3, 0, 'Fees', '', 1, 1, 1, 1, 1, 1, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(21, 3, 20, 'Pay Fees', '', 1, 1, 1, 1, 2, 1, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(22, 4, 0, 'Class Routine', '', 1, 1, 1, 1, 1, 1, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(23, 5, 0, 'Homework List', '', 1, 1, 1, 1, 1, 1, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(24, 5, 23, 'View', '', 1, 1, 1, 1, 2, 1, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(25, 5, 23, 'Add Content', '', 1, 1, 1, 1, 2, 1, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(26, 6, 0, 'Download Center', '', 1, 1, 1, 1, 1, 1, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(27, 6, 26, 'Assignment', '', 1, 1, 1, 1, 2, 1, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(28, 6, 27, 'Download', '', 1, 1, 1, 1, 3, 1, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(29, 6, 26, 'Study Material', '', 1, 1, 1, 1, 2, 1, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(30, 6, 29, 'Download', '', 1, 1, 1, 1, 3, 1, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(31, 6, 26, 'Syllabus', '', 1, 1, 1, 1, 2, 1, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(32, 6, 31, 'Download', '', 1, 1, 1, 1, 3, 1, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(33, 6, 26, 'Other Downloads', '', 1, 1, 1, 1, 2, 1, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(34, 6, 33, 'Download', '', 1, 1, 1, 1, 3, 1, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(35, 7, 0, 'Attendance', '', 1, 1, 1, 1, 1, 1, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(36, 8, 0, 'Examination', '', 1, 1, 1, 1, 1, 1, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(37, 8, 36, 'Result', '', 1, 1, 1, 1, 2, 1, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(38, 8, 36, 'Exam Schedule', '', 1, 1, 1, 1, 2, 1, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(39, 9, 0, 'Leave', '', 1, 1, 1, 1, 1, 1, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(40, 9, 39, 'Apply Leave', '', 1, 1, 1, 1, 2, 1, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(41, 9, 40, 'Save', '', 1, 1, 1, 1, 3, 1, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(42, 9, 40, 'Edit', '', 1, 1, 1, 1, 3, 1, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(44, 9, 39, 'Pending Leave', '', 1, 1, 1, 1, 2, 1, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(45, 10, 0, 'Online Exam', '', 1, 1, 1, 1, 1, 1, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(46, 10, 45, 'Active Exams', '', 1, 1, 1, 1, 2, 1, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(47, 10, 45, 'View Results', '', 1, 1, 1, 1, 2, 1, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(48, 11, 0, 'Notice Board', '', 1, 1, 1, 1, 1, 1, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(49, 12, 0, 'Subject', '', 1, 1, 1, 1, 1, 1, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(50, 13, 0, 'Teachers List', '', 1, 1, 1, 1, 1, 1, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(51, 14, 0, 'Library', '', 1, 1, 1, 1, 1, 1, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(52, 14, 51, 'Book List', '', 1, 1, 1, 1, 2, 1, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(53, 14, 51, 'Book Issued', '', 1, 1, 1, 1, 2, 1, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(54, 15, 0, 'Transport', '', 1, 1, 1, 1, 1, 1, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(55, 16, 0, 'Dormitory', '', 1, 1, 1, 1, 1, 1, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(56, 1, 0, 'Dashboard Menu', '', 1, 1, 1, 1, 1, 2, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(57, 1, 56, 'Subject', '', 1, 1, 1, 1, 3, 2, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(58, 1, 56, 'Notice', '', 1, 1, 1, 1, 3, 2, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(59, 1, 56, 'Exam', '', 1, 1, 1, 1, 3, 2, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(60, 1, 56, 'Online Exam', '', 1, 1, 1, 1, 3, 2, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(61, 1, 56, 'Teachers', '', 1, 1, 1, 1, 3, 2, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(62, 1, 56, 'Issued books', '', 1, 1, 1, 1, 3, 2, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(63, 1, 56, 'Pending homeworks', '', 1, 1, 1, 1, 3, 2, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(64, 1, 56, 'attendance in current month', '', 1, 1, 1, 1, 3, 2, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(65, 1, 56, 'Calendar', '', 1, 1, 1, 1, 3, 2, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(66, 2, 0, 'My Children', '', 1, 1, 1, 1, 1, 2, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(67, 2, 66, 'Profile', '', 1, 1, 1, 1, 2, 2, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(68, 2, 66, 'Fees', '', 1, 1, 1, 1, 2, 2, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(69, 2, 66, 'Exam', '', 1, 1, 1, 1, 2, 2, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(70, 2, 66, 'Timeline', '', 1, 1, 1, 1, 2, 2, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(71, 3, 0, 'Fees', '', 1, 1, 1, 1, 1, 2, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(72, 4, 0, 'Class Routine', '', 1, 1, 1, 1, 1, 2, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(73, 5, 0, 'HomeWork ', '', 1, 1, 1, 1, 1, 2, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(74, 5, 73, 'View', '', 1, 1, 1, 1, 3, 2, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(75, 6, 0, 'Attendance ', '', 1, 1, 1, 1, 1, 2, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(76, 7, 0, 'Exam ', '', 1, 1, 1, 1, 1, 2, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(77, 7, 76, 'Exam Result', '', 1, 1, 1, 1, 2, 2, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(78, 7, 76, 'Exam Schedule', '', 1, 1, 1, 1, 2, 2, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(79, 7, 76, 'Online Exam', '', 1, 1, 1, 1, 2, 2, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(80, 8, 0, 'Leave', '', 1, 1, 1, 1, 1, 2, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(81, 8, 80, 'Apply Leave', '', 1, 1, 1, 1, 2, 2, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(82, 8, 81, 'Save', '', 1, 1, 1, 1, 3, 2, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(83, 8, 81, 'Edit', '', 1, 1, 1, 1, 3, 2, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(84, 8, 80, 'Pending Leave', '', 1, 1, 1, 1, 2, 2, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(85, 9, 0, 'Notice Board', '', 1, 1, 1, 1, 1, 2, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(86, 10, 0, 'Subject', '', 1, 1, 1, 1, 1, 2, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(87, 11, 0, 'Teachers List', '', 1, 1, 1, 1, 1, 2, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(88, 12, 0, 'Library', '', 1, 1, 1, 1, 1, 2, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(89, 12, 88, 'Book List', '', 1, 1, 1, 1, 2, 2, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(90, 12, 88, 'Book Issued', '', 1, 1, 1, 1, 2, 2, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(91, 13, 0, 'Transport', '', 1, 1, 1, 1, 1, 2, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(92, 14, 0, 'Dormitory', '', 1, 1, 1, 1, 1, 2, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(93, 9, 40, 'View', '', 1, 1, 1, 1, 3, 1, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(94, 9, 40, 'Delete', '', 1, 1, 1, 1, 3, 1, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(95, 8, 81, 'View', '', 1, 1, 1, 1, 3, 2, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(96, 8, 81, 'Delete', '', 1, 1, 1, 1, 3, 2, '2019-07-25 01:21:21', '2019-07-25 03:24:22');

-- --------------------------------------------------------

--
-- Structure de la table `infix_permission_assigns`
--

DROP TABLE IF EXISTS `infix_permission_assigns`;
CREATE TABLE IF NOT EXISTS `infix_permission_assigns` (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `active_status` tinyint NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `module_id` int DEFAULT NULL COMMENT ' module id, module link id, module link options id',
  `role_id` int UNSIGNED DEFAULT NULL,
  `created_by` int UNSIGNED DEFAULT '1',
  `updated_by` int UNSIGNED DEFAULT '1',
  `school_id` int UNSIGNED DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `infix_permission_assigns_role_id_foreign` (`role_id`),
  KEY `infix_permission_assigns_school_id_foreign` (`school_id`)
) ENGINE=MyISAM AUTO_INCREMENT=4812 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `infix_permission_assigns`
--

INSERT INTO `infix_permission_assigns` (`id`, `active_status`, `created_at`, `updated_at`, `module_id`, `role_id`, `created_by`, `updated_by`, `school_id`) VALUES
(4811, 1, '2022-05-20 19:01:40', '2022-05-20 19:01:40', 567, 4, 1, 1, 1),
(4810, 1, '2022-05-20 19:01:40', '2022-05-20 19:01:40', 566, 4, 1, 1, 1),
(4809, 1, '2022-05-20 19:01:40', '2022-05-20 19:01:40', 565, 4, 1, 1, 1),
(4808, 1, '2022-05-20 19:01:40', '2022-05-20 19:01:40', 564, 4, 1, 1, 1),
(4807, 1, '2022-05-20 19:01:40', '2022-05-20 19:01:40', 563, 4, 1, 1, 1),
(4806, 1, '2022-05-20 19:01:40', '2022-05-20 19:01:40', 562, 4, 1, 1, 1),
(4805, 1, '2022-05-20 19:01:40', '2022-05-20 19:01:40', 561, 4, 1, 1, 1),
(4804, 1, '2022-05-20 19:01:40', '2022-05-20 19:01:40', 560, 4, 1, 1, 1),
(4803, 1, '2022-05-20 19:01:40', '2022-05-20 19:01:40', 559, 4, 1, 1, 1),
(4802, 1, '2022-05-20 19:01:40', '2022-05-20 19:01:40', 558, 4, 1, 1, 1),
(4801, 1, '2022-05-20 19:01:40', '2022-05-20 19:01:40', 557, 4, 1, 1, 1),
(4800, 1, '2022-05-20 19:01:40', '2022-05-20 19:01:40', 556, 4, 1, 1, 1),
(4799, 1, '2022-05-20 19:01:40', '2022-05-20 19:01:40', 555, 4, 1, 1, 1),
(4798, 1, '2022-05-20 19:01:40', '2022-05-20 19:01:40', 554, 4, 1, 1, 1),
(4797, 1, '2022-05-20 19:01:40', '2022-05-20 19:01:40', 478, 4, 1, 1, 1),
(4796, 1, '2022-05-20 19:01:40', '2022-05-20 19:01:40', 477, 4, 1, 1, 1),
(4795, 1, '2022-05-20 19:01:40', '2022-05-20 19:01:40', 462, 4, 1, 1, 1),
(4794, 1, '2022-05-20 19:01:40', '2022-05-20 19:01:40', 461, 4, 1, 1, 1),
(4793, 1, '2022-05-20 19:01:40', '2022-05-20 19:01:40', 460, 4, 1, 1, 1),
(4792, 1, '2022-05-20 19:01:40', '2022-05-20 19:01:40', 459, 4, 1, 1, 1),
(4791, 1, '2022-05-20 19:01:40', '2022-05-20 19:01:40', 458, 4, 1, 1, 1),
(4790, 1, '2022-05-20 19:01:40', '2022-05-20 19:01:40', 457, 4, 1, 1, 1),
(4789, 1, '2022-05-20 19:01:40', '2022-05-20 19:01:40', 456, 4, 1, 1, 1),
(4788, 1, '2022-05-20 19:01:40', '2022-05-20 19:01:40', 453, 4, 1, 1, 1),
(4787, 1, '2022-05-20 19:01:40', '2022-05-20 19:01:40', 451, 4, 1, 1, 1),
(4786, 1, '2022-05-20 19:01:40', '2022-05-20 19:01:40', 398, 4, 1, 1, 1),
(4785, 1, '2022-05-20 19:01:40', '2022-05-20 19:01:40', 538, 4, 1, 1, 1),
(4784, 1, '2022-05-20 19:01:40', '2022-05-20 19:01:40', 397, 4, 1, 1, 1),
(4783, 1, '2022-05-20 19:01:40', '2022-05-20 19:01:40', 396, 4, 1, 1, 1),
(4782, 1, '2022-05-20 19:01:40', '2022-05-20 19:01:40', 395, 4, 1, 1, 1),
(4781, 1, '2022-05-20 19:01:40', '2022-05-20 19:01:40', 394, 4, 1, 1, 1),
(4780, 1, '2022-05-20 19:01:40', '2022-05-20 19:01:40', 390, 4, 1, 1, 1),
(4779, 1, '2022-05-20 19:01:40', '2022-05-20 19:01:40', 389, 4, 1, 1, 1),
(4778, 1, '2022-05-20 19:01:40', '2022-05-20 19:01:40', 388, 4, 1, 1, 1),
(4777, 1, '2022-05-20 19:01:40', '2022-05-20 19:01:40', 387, 4, 1, 1, 1),
(4776, 1, '2022-05-20 19:01:40', '2022-05-20 19:01:40', 386, 4, 1, 1, 1),
(2898, 1, '2022-05-13 11:40:59', '2022-05-13 11:40:59', 570, 5, 1, 1, 1),
(2897, 1, '2022-05-13 11:40:59', '2022-05-13 11:40:59', 569, 5, 1, 1, 1),
(2896, 1, '2022-05-13 11:40:59', '2022-05-13 11:40:59', 568, 5, 1, 1, 1),
(2895, 1, '2022-05-13 11:40:59', '2022-05-13 11:40:59', 567, 5, 1, 1, 1),
(2894, 1, '2022-05-13 11:40:59', '2022-05-13 11:40:59', 566, 5, 1, 1, 1),
(2893, 1, '2022-05-13 11:40:59', '2022-05-13 11:40:59', 565, 5, 1, 1, 1),
(2892, 1, '2022-05-13 11:40:59', '2022-05-13 11:40:59', 564, 5, 1, 1, 1),
(2891, 1, '2022-05-13 11:40:59', '2022-05-13 11:40:59', 563, 5, 1, 1, 1),
(2890, 1, '2022-05-13 11:40:59', '2022-05-13 11:40:59', 562, 5, 1, 1, 1),
(2889, 1, '2022-05-13 11:40:59', '2022-05-13 11:40:59', 561, 5, 1, 1, 1),
(2888, 1, '2022-05-13 11:40:59', '2022-05-13 11:40:59', 560, 5, 1, 1, 1),
(2887, 1, '2022-05-13 11:40:59', '2022-05-13 11:40:59', 559, 5, 1, 1, 1),
(2886, 1, '2022-05-13 11:40:59', '2022-05-13 11:40:59', 558, 5, 1, 1, 1),
(2885, 1, '2022-05-13 11:40:59', '2022-05-13 11:40:59', 557, 5, 1, 1, 1),
(2884, 1, '2022-05-13 11:40:58', '2022-05-13 11:40:58', 556, 5, 1, 1, 1),
(2883, 1, '2022-05-13 11:40:58', '2022-05-13 11:40:58', 555, 5, 1, 1, 1),
(2882, 1, '2022-05-13 11:40:58', '2022-05-13 11:40:58', 554, 5, 1, 1, 1),
(2881, 1, '2022-05-13 11:40:58', '2022-05-13 11:40:58', 548, 5, 1, 1, 1),
(2880, 1, '2022-05-13 11:40:58', '2022-05-13 11:40:58', 547, 5, 1, 1, 1),
(2879, 1, '2022-05-13 11:40:58', '2022-05-13 11:40:58', 546, 5, 1, 1, 1),
(2878, 1, '2022-05-13 11:40:58', '2022-05-13 11:40:58', 545, 5, 1, 1, 1),
(2877, 1, '2022-05-13 11:40:58', '2022-05-13 11:40:58', 544, 5, 1, 1, 1),
(2876, 1, '2022-05-13 11:40:58', '2022-05-13 11:40:58', 543, 5, 1, 1, 1),
(2875, 1, '2022-05-13 11:40:58', '2022-05-13 11:40:58', 542, 5, 1, 1, 1),
(2874, 1, '2022-05-13 11:40:58', '2022-05-13 11:40:58', 491, 5, 1, 1, 1),
(2873, 1, '2022-05-13 11:40:58', '2022-05-13 11:40:58', 490, 5, 1, 1, 1),
(2872, 1, '2022-05-13 11:40:58', '2022-05-13 11:40:58', 489, 5, 1, 1, 1),
(2871, 1, '2022-05-13 11:40:58', '2022-05-13 11:40:58', 488, 5, 1, 1, 1),
(2870, 1, '2022-05-13 11:40:58', '2022-05-13 11:40:58', 487, 5, 1, 1, 1),
(2869, 1, '2022-05-13 11:40:58', '2022-05-13 11:40:58', 486, 5, 1, 1, 1),
(2868, 1, '2022-05-13 11:40:58', '2022-05-13 11:40:58', 485, 5, 1, 1, 1),
(2867, 1, '2022-05-13 11:40:58', '2022-05-13 11:40:58', 540, 5, 1, 1, 1),
(2866, 1, '2022-05-13 11:40:58', '2022-05-13 11:40:58', 539, 5, 1, 1, 1),
(2865, 1, '2022-05-13 11:40:58', '2022-05-13 11:40:58', 538, 5, 1, 1, 1),
(2864, 1, '2022-05-13 11:40:58', '2022-05-13 11:40:58', 397, 5, 1, 1, 1),
(2863, 1, '2022-05-13 11:40:58', '2022-05-13 11:40:58', 396, 5, 1, 1, 1),
(2862, 1, '2022-05-13 11:40:58', '2022-05-13 11:40:58', 395, 5, 1, 1, 1),
(2861, 1, '2022-05-13 11:40:58', '2022-05-13 11:40:58', 394, 5, 1, 1, 1),
(2860, 1, '2022-05-13 11:40:58', '2022-05-13 11:40:58', 393, 5, 1, 1, 1),
(2859, 1, '2022-05-13 11:40:58', '2022-05-13 11:40:58', 392, 5, 1, 1, 1),
(2858, 1, '2022-05-13 11:40:58', '2022-05-13 11:40:58', 391, 5, 1, 1, 1),
(2857, 1, '2022-05-13 11:40:58', '2022-05-13 11:40:58', 390, 5, 1, 1, 1),
(2856, 1, '2022-05-13 11:40:58', '2022-05-13 11:40:58', 389, 5, 1, 1, 1),
(2855, 1, '2022-05-13 11:40:58', '2022-05-13 11:40:58', 388, 5, 1, 1, 1),
(2854, 1, '2022-05-13 11:40:58', '2022-05-13 11:40:58', 387, 5, 1, 1, 1),
(2853, 1, '2022-05-13 11:40:58', '2022-05-13 11:40:58', 386, 5, 1, 1, 1),
(2852, 1, '2022-05-13 11:40:58', '2022-05-13 11:40:58', 385, 5, 1, 1, 1),
(2851, 1, '2022-05-13 11:40:58', '2022-05-13 11:40:58', 384, 5, 1, 1, 1),
(2850, 1, '2022-05-13 11:40:58', '2022-05-13 11:40:58', 383, 5, 1, 1, 1),
(2849, 1, '2022-05-13 11:40:58', '2022-05-13 11:40:58', 382, 5, 1, 1, 1),
(2848, 1, '2022-05-13 11:40:58', '2022-05-13 11:40:58', 381, 5, 1, 1, 1),
(2847, 1, '2022-05-13 11:40:58', '2022-05-13 11:40:58', 380, 5, 1, 1, 1),
(2846, 1, '2022-05-13 11:40:58', '2022-05-13 11:40:58', 379, 5, 1, 1, 1),
(2845, 1, '2022-05-13 11:40:58', '2022-05-13 11:40:58', 378, 5, 1, 1, 1),
(2844, 1, '2022-05-13 11:40:58', '2022-05-13 11:40:58', 377, 5, 1, 1, 1),
(2843, 1, '2022-05-13 11:40:58', '2022-05-13 11:40:58', 376, 5, 1, 1, 1),
(2842, 1, '2022-05-13 11:40:58', '2022-05-13 11:40:58', 375, 5, 1, 1, 1),
(2841, 1, '2022-05-13 11:40:58', '2022-05-13 11:40:58', 374, 5, 1, 1, 1),
(2840, 1, '2022-05-13 11:40:58', '2022-05-13 11:40:58', 373, 5, 1, 1, 1),
(2839, 1, '2022-05-13 11:40:58', '2022-05-13 11:40:58', 372, 5, 1, 1, 1),
(2838, 1, '2022-05-13 11:40:58', '2022-05-13 11:40:58', 371, 5, 1, 1, 1),
(2837, 1, '2022-05-13 11:40:58', '2022-05-13 11:40:58', 370, 5, 1, 1, 1),
(2836, 1, '2022-05-13 11:40:58', '2022-05-13 11:40:58', 369, 5, 1, 1, 1),
(2835, 1, '2022-05-13 11:40:58', '2022-05-13 11:40:58', 368, 5, 1, 1, 1),
(2834, 1, '2022-05-13 11:40:58', '2022-05-13 11:40:58', 367, 5, 1, 1, 1),
(2833, 1, '2022-05-13 11:40:58', '2022-05-13 11:40:58', 366, 5, 1, 1, 1),
(2832, 1, '2022-05-13 11:40:58', '2022-05-13 11:40:58', 365, 5, 1, 1, 1),
(2831, 1, '2022-05-13 11:40:58', '2022-05-13 11:40:58', 364, 5, 1, 1, 1),
(2830, 1, '2022-05-13 11:40:58', '2022-05-13 11:40:58', 363, 5, 1, 1, 1),
(2829, 1, '2022-05-13 11:40:58', '2022-05-13 11:40:58', 362, 5, 1, 1, 1),
(2828, 1, '2022-05-13 11:40:58', '2022-05-13 11:40:58', 361, 5, 1, 1, 1),
(2827, 1, '2022-05-13 11:40:58', '2022-05-13 11:40:58', 360, 5, 1, 1, 1),
(2826, 1, '2022-05-13 11:40:58', '2022-05-13 11:40:58', 359, 5, 1, 1, 1),
(2825, 1, '2022-05-13 11:40:58', '2022-05-13 11:40:58', 358, 5, 1, 1, 1),
(2824, 1, '2022-05-13 11:40:58', '2022-05-13 11:40:58', 357, 5, 1, 1, 1),
(2823, 1, '2022-05-13 11:40:58', '2022-05-13 11:40:58', 356, 5, 1, 1, 1),
(2822, 1, '2022-05-13 11:40:58', '2022-05-13 11:40:58', 355, 5, 1, 1, 1),
(2821, 1, '2022-05-13 11:40:58', '2022-05-13 11:40:58', 354, 5, 1, 1, 1),
(2820, 1, '2022-05-13 11:40:58', '2022-05-13 11:40:58', 353, 5, 1, 1, 1),
(2819, 1, '2022-05-13 11:40:58', '2022-05-13 11:40:58', 352, 5, 1, 1, 1),
(2818, 1, '2022-05-13 11:40:58', '2022-05-13 11:40:58', 351, 5, 1, 1, 1),
(2817, 1, '2022-05-13 11:40:58', '2022-05-13 11:40:58', 350, 5, 1, 1, 1),
(2816, 1, '2022-05-13 11:40:58', '2022-05-13 11:40:58', 349, 5, 1, 1, 1),
(2815, 1, '2022-05-13 11:40:58', '2022-05-13 11:40:58', 348, 5, 1, 1, 1),
(2814, 1, '2022-05-13 11:40:58', '2022-05-13 11:40:58', 347, 5, 1, 1, 1),
(2813, 1, '2022-05-13 11:40:58', '2022-05-13 11:40:58', 346, 5, 1, 1, 1),
(2812, 1, '2022-05-13 11:40:58', '2022-05-13 11:40:58', 345, 5, 1, 1, 1),
(2811, 1, '2022-05-13 11:40:58', '2022-05-13 11:40:58', 344, 5, 1, 1, 1),
(2810, 1, '2022-05-13 11:40:58', '2022-05-13 11:40:58', 343, 5, 1, 1, 1),
(2809, 1, '2022-05-13 11:40:58', '2022-05-13 11:40:58', 342, 5, 1, 1, 1),
(2808, 1, '2022-05-13 11:40:58', '2022-05-13 11:40:58', 341, 5, 1, 1, 1),
(2807, 1, '2022-05-13 11:40:58', '2022-05-13 11:40:58', 340, 5, 1, 1, 1),
(2806, 1, '2022-05-13 11:40:58', '2022-05-13 11:40:58', 339, 5, 1, 1, 1),
(2805, 1, '2022-05-13 11:40:58', '2022-05-13 11:40:58', 338, 5, 1, 1, 1),
(2804, 1, '2022-05-13 11:40:58', '2022-05-13 11:40:58', 337, 5, 1, 1, 1),
(2803, 1, '2022-05-13 11:40:58', '2022-05-13 11:40:58', 336, 5, 1, 1, 1),
(2802, 1, '2022-05-13 11:40:58', '2022-05-13 11:40:58', 335, 5, 1, 1, 1),
(2801, 1, '2022-05-13 11:40:58', '2022-05-13 11:40:58', 334, 5, 1, 1, 1),
(2800, 1, '2022-05-13 11:40:58', '2022-05-13 11:40:58', 333, 5, 1, 1, 1),
(2799, 1, '2022-05-13 11:40:58', '2022-05-13 11:40:58', 332, 5, 1, 1, 1),
(2798, 1, '2022-05-13 11:40:58', '2022-05-13 11:40:58', 331, 5, 1, 1, 1),
(2797, 1, '2022-05-13 11:40:58', '2022-05-13 11:40:58', 330, 5, 1, 1, 1),
(2796, 1, '2022-05-13 11:40:58', '2022-05-13 11:40:58', 329, 5, 1, 1, 1),
(2795, 1, '2022-05-13 11:40:58', '2022-05-13 11:40:58', 328, 5, 1, 1, 1),
(2794, 1, '2022-05-13 11:40:58', '2022-05-13 11:40:58', 327, 5, 1, 1, 1),
(2793, 1, '2022-05-13 11:40:58', '2022-05-13 11:40:58', 326, 5, 1, 1, 1),
(2792, 1, '2022-05-13 11:40:58', '2022-05-13 11:40:58', 325, 5, 1, 1, 1),
(2791, 1, '2022-05-13 11:40:58', '2022-05-13 11:40:58', 324, 5, 1, 1, 1),
(2790, 1, '2022-05-13 11:40:58', '2022-05-13 11:40:58', 323, 5, 1, 1, 1),
(2789, 1, '2022-05-13 11:40:58', '2022-05-13 11:40:58', 322, 5, 1, 1, 1),
(2788, 1, '2022-05-13 11:40:58', '2022-05-13 11:40:58', 321, 5, 1, 1, 1),
(2787, 1, '2022-05-13 11:40:58', '2022-05-13 11:40:58', 320, 5, 1, 1, 1),
(2786, 1, '2022-05-13 11:40:58', '2022-05-13 11:40:58', 319, 5, 1, 1, 1),
(2785, 1, '2022-05-13 11:40:58', '2022-05-13 11:40:58', 318, 5, 1, 1, 1),
(2784, 1, '2022-05-13 11:40:58', '2022-05-13 11:40:58', 317, 5, 1, 1, 1),
(2783, 1, '2022-05-13 11:40:58', '2022-05-13 11:40:58', 316, 5, 1, 1, 1),
(2782, 1, '2022-05-13 11:40:58', '2022-05-13 11:40:58', 315, 5, 1, 1, 1),
(2781, 1, '2022-05-13 11:40:58', '2022-05-13 11:40:58', 314, 5, 1, 1, 1),
(2780, 1, '2022-05-13 11:40:58', '2022-05-13 11:40:58', 313, 5, 1, 1, 1),
(2779, 1, '2022-05-13 11:40:58', '2022-05-13 11:40:58', 312, 5, 1, 1, 1),
(2778, 1, '2022-05-13 11:40:58', '2022-05-13 11:40:58', 311, 5, 1, 1, 1),
(2777, 1, '2022-05-13 11:40:58', '2022-05-13 11:40:58', 310, 5, 1, 1, 1),
(2776, 1, '2022-05-13 11:40:58', '2022-05-13 11:40:58', 309, 5, 1, 1, 1),
(2775, 1, '2022-05-13 11:40:58', '2022-05-13 11:40:58', 308, 5, 1, 1, 1),
(2774, 1, '2022-05-13 11:40:58', '2022-05-13 11:40:58', 307, 5, 1, 1, 1),
(2773, 1, '2022-05-13 11:40:58', '2022-05-13 11:40:58', 306, 5, 1, 1, 1),
(2772, 1, '2022-05-13 11:40:58', '2022-05-13 11:40:58', 305, 5, 1, 1, 1),
(2771, 1, '2022-05-13 11:40:58', '2022-05-13 11:40:58', 304, 5, 1, 1, 1),
(2770, 1, '2022-05-13 11:40:58', '2022-05-13 11:40:58', 303, 5, 1, 1, 1),
(2769, 1, '2022-05-13 11:40:58', '2022-05-13 11:40:58', 302, 5, 1, 1, 1),
(2768, 1, '2022-05-13 11:40:58', '2022-05-13 11:40:58', 301, 5, 1, 1, 1),
(2767, 1, '2022-05-13 11:40:58', '2022-05-13 11:40:58', 300, 5, 1, 1, 1),
(2766, 1, '2022-05-13 11:40:58', '2022-05-13 11:40:58', 299, 5, 1, 1, 1),
(2765, 1, '2022-05-13 11:40:58', '2022-05-13 11:40:58', 298, 5, 1, 1, 1),
(2764, 1, '2022-05-13 11:40:58', '2022-05-13 11:40:58', 297, 5, 1, 1, 1),
(2763, 1, '2022-05-13 11:40:58', '2022-05-13 11:40:58', 296, 5, 1, 1, 1),
(2762, 1, '2022-05-13 11:40:58', '2022-05-13 11:40:58', 295, 5, 1, 1, 1),
(2761, 1, '2022-05-13 11:40:58', '2022-05-13 11:40:58', 294, 5, 1, 1, 1),
(2760, 1, '2022-05-13 11:40:58', '2022-05-13 11:40:58', 293, 5, 1, 1, 1),
(2759, 1, '2022-05-13 11:40:58', '2022-05-13 11:40:58', 292, 5, 1, 1, 1),
(2758, 1, '2022-05-13 11:40:58', '2022-05-13 11:40:58', 291, 5, 1, 1, 1),
(2757, 1, '2022-05-13 11:40:58', '2022-05-13 11:40:58', 290, 5, 1, 1, 1),
(2756, 1, '2022-05-13 11:40:58', '2022-05-13 11:40:58', 289, 5, 1, 1, 1),
(2755, 1, '2022-05-13 11:40:58', '2022-05-13 11:40:58', 288, 5, 1, 1, 1),
(2754, 1, '2022-05-13 11:40:58', '2022-05-13 11:40:58', 287, 5, 1, 1, 1),
(2753, 1, '2022-05-13 11:40:58', '2022-05-13 11:40:58', 286, 5, 1, 1, 1),
(2752, 1, '2022-05-13 11:40:58', '2022-05-13 11:40:58', 537, 5, 1, 1, 1),
(2751, 1, '2022-05-13 11:40:58', '2022-05-13 11:40:58', 276, 5, 1, 1, 1),
(2750, 1, '2022-05-13 11:40:58', '2022-05-13 11:40:58', 275, 5, 1, 1, 1),
(2749, 1, '2022-05-13 11:40:58', '2022-05-13 11:40:58', 274, 5, 1, 1, 1),
(2748, 1, '2022-05-13 11:40:58', '2022-05-13 11:40:58', 273, 5, 1, 1, 1),
(2747, 1, '2022-05-13 11:40:58', '2022-05-13 11:40:58', 272, 5, 1, 1, 1),
(2746, 1, '2022-05-13 11:40:58', '2022-05-13 11:40:58', 271, 5, 1, 1, 1),
(2745, 1, '2022-05-13 11:40:58', '2022-05-13 11:40:58', 270, 5, 1, 1, 1),
(2744, 1, '2022-05-13 11:40:58', '2022-05-13 11:40:58', 269, 5, 1, 1, 1),
(2743, 1, '2022-05-13 11:40:58', '2022-05-13 11:40:58', 268, 5, 1, 1, 1),
(2742, 1, '2022-05-13 11:40:58', '2022-05-13 11:40:58', 267, 5, 1, 1, 1),
(2741, 1, '2022-05-13 11:40:58', '2022-05-13 11:40:58', 266, 5, 1, 1, 1),
(2740, 1, '2022-05-13 11:40:58', '2022-05-13 11:40:58', 265, 5, 1, 1, 1),
(2739, 1, '2022-05-13 11:40:58', '2022-05-13 11:40:58', 264, 5, 1, 1, 1),
(2738, 1, '2022-05-13 11:40:58', '2022-05-13 11:40:58', 263, 5, 1, 1, 1),
(2737, 1, '2022-05-13 11:40:58', '2022-05-13 11:40:58', 262, 5, 1, 1, 1),
(2736, 1, '2022-05-13 11:40:58', '2022-05-13 11:40:58', 261, 5, 1, 1, 1),
(2735, 1, '2022-05-13 11:40:58', '2022-05-13 11:40:58', 260, 5, 1, 1, 1),
(2734, 1, '2022-05-13 11:40:58', '2022-05-13 11:40:58', 259, 5, 1, 1, 1),
(2733, 1, '2022-05-13 11:40:58', '2022-05-13 11:40:58', 258, 5, 1, 1, 1),
(2732, 1, '2022-05-13 11:40:58', '2022-05-13 11:40:58', 257, 5, 1, 1, 1),
(2731, 1, '2022-05-13 11:40:58', '2022-05-13 11:40:58', 256, 5, 1, 1, 1),
(2730, 1, '2022-05-13 11:40:58', '2022-05-13 11:40:58', 255, 5, 1, 1, 1),
(2729, 1, '2022-05-13 11:40:58', '2022-05-13 11:40:58', 254, 5, 1, 1, 1),
(2728, 1, '2022-05-13 11:40:57', '2022-05-13 11:40:57', 253, 5, 1, 1, 1),
(2727, 1, '2022-05-13 11:40:57', '2022-05-13 11:40:57', 252, 5, 1, 1, 1),
(2726, 1, '2022-05-13 11:40:57', '2022-05-13 11:40:57', 251, 5, 1, 1, 1),
(2725, 1, '2022-05-13 11:40:57', '2022-05-13 11:40:57', 250, 5, 1, 1, 1),
(2724, 1, '2022-05-13 11:40:57', '2022-05-13 11:40:57', 249, 5, 1, 1, 1),
(2723, 1, '2022-05-13 11:40:57', '2022-05-13 11:40:57', 248, 5, 1, 1, 1),
(2722, 1, '2022-05-13 11:40:57', '2022-05-13 11:40:57', 247, 5, 1, 1, 1),
(2721, 1, '2022-05-13 11:40:57', '2022-05-13 11:40:57', 246, 5, 1, 1, 1),
(2720, 1, '2022-05-13 11:40:57', '2022-05-13 11:40:57', 245, 5, 1, 1, 1),
(2719, 1, '2022-05-13 11:40:57', '2022-05-13 11:40:57', 244, 5, 1, 1, 1),
(2718, 1, '2022-05-13 11:40:57', '2022-05-13 11:40:57', 243, 5, 1, 1, 1),
(2717, 1, '2022-05-13 11:40:57', '2022-05-13 11:40:57', 242, 5, 1, 1, 1),
(2716, 1, '2022-05-13 11:40:57', '2022-05-13 11:40:57', 241, 5, 1, 1, 1),
(2715, 1, '2022-05-13 11:40:57', '2022-05-13 11:40:57', 240, 5, 1, 1, 1),
(2714, 1, '2022-05-13 11:40:57', '2022-05-13 11:40:57', 239, 5, 1, 1, 1),
(2713, 1, '2022-05-13 11:40:57', '2022-05-13 11:40:57', 238, 5, 1, 1, 1),
(2712, 1, '2022-05-13 11:40:57', '2022-05-13 11:40:57', 237, 5, 1, 1, 1),
(2711, 1, '2022-05-13 11:40:57', '2022-05-13 11:40:57', 236, 5, 1, 1, 1),
(2710, 1, '2022-05-13 11:40:57', '2022-05-13 11:40:57', 235, 5, 1, 1, 1),
(2709, 1, '2022-05-13 11:40:57', '2022-05-13 11:40:57', 234, 5, 1, 1, 1),
(2708, 1, '2022-05-13 11:40:57', '2022-05-13 11:40:57', 233, 5, 1, 1, 1),
(2707, 1, '2022-05-13 11:40:57', '2022-05-13 11:40:57', 232, 5, 1, 1, 1),
(2706, 1, '2022-05-13 11:40:57', '2022-05-13 11:40:57', 231, 5, 1, 1, 1),
(2705, 1, '2022-05-13 11:40:57', '2022-05-13 11:40:57', 230, 5, 1, 1, 1),
(2704, 1, '2022-05-13 11:40:57', '2022-05-13 11:40:57', 229, 5, 1, 1, 1),
(2703, 1, '2022-05-13 11:40:57', '2022-05-13 11:40:57', 228, 5, 1, 1, 1),
(2702, 1, '2022-05-13 11:40:57', '2022-05-13 11:40:57', 227, 5, 1, 1, 1),
(2701, 1, '2022-05-13 11:40:57', '2022-05-13 11:40:57', 226, 5, 1, 1, 1),
(2700, 1, '2022-05-13 11:40:57', '2022-05-13 11:40:57', 225, 5, 1, 1, 1),
(2699, 1, '2022-05-13 11:40:57', '2022-05-13 11:40:57', 219, 5, 1, 1, 1),
(2698, 1, '2022-05-13 11:40:57', '2022-05-13 11:40:57', 218, 5, 1, 1, 1),
(2697, 1, '2022-05-13 11:40:57', '2022-05-13 11:40:57', 217, 5, 1, 1, 1),
(2696, 1, '2022-05-13 11:40:57', '2022-05-13 11:40:57', 216, 5, 1, 1, 1),
(2695, 1, '2022-05-13 11:40:57', '2022-05-13 11:40:57', 215, 5, 1, 1, 1),
(2694, 1, '2022-05-13 11:40:57', '2022-05-13 11:40:57', 214, 5, 1, 1, 1),
(2693, 1, '2022-05-13 11:40:57', '2022-05-13 11:40:57', 211, 5, 1, 1, 1),
(2692, 1, '2022-05-13 11:40:57', '2022-05-13 11:40:57', 210, 5, 1, 1, 1),
(2691, 1, '2022-05-13 11:40:57', '2022-05-13 11:40:57', 209, 5, 1, 1, 1),
(2690, 1, '2022-05-13 11:40:57', '2022-05-13 11:40:57', 208, 5, 1, 1, 1),
(2689, 1, '2022-05-13 11:40:57', '2022-05-13 11:40:57', 207, 5, 1, 1, 1),
(2688, 1, '2022-05-13 11:40:57', '2022-05-13 11:40:57', 206, 5, 1, 1, 1),
(2687, 1, '2022-05-13 11:40:57', '2022-05-13 11:40:57', 205, 5, 1, 1, 1),
(2686, 1, '2022-05-13 11:40:57', '2022-05-13 11:40:57', 204, 5, 1, 1, 1),
(2685, 1, '2022-05-13 11:40:57', '2022-05-13 11:40:57', 203, 5, 1, 1, 1),
(2684, 1, '2022-05-13 11:40:57', '2022-05-13 11:40:57', 202, 5, 1, 1, 1),
(2683, 1, '2022-05-13 11:40:57', '2022-05-13 11:40:57', 201, 5, 1, 1, 1),
(2682, 1, '2022-05-13 11:40:57', '2022-05-13 11:40:57', 200, 5, 1, 1, 1),
(2681, 1, '2022-05-13 11:40:57', '2022-05-13 11:40:57', 199, 5, 1, 1, 1),
(2680, 1, '2022-05-13 11:40:57', '2022-05-13 11:40:57', 198, 5, 1, 1, 1),
(2679, 1, '2022-05-13 11:40:57', '2022-05-13 11:40:57', 197, 5, 1, 1, 1),
(2678, 1, '2022-05-13 11:40:57', '2022-05-13 11:40:57', 196, 5, 1, 1, 1),
(2677, 1, '2022-05-13 11:40:57', '2022-05-13 11:40:57', 553, 5, 1, 1, 1),
(2676, 1, '2022-05-13 11:40:57', '2022-05-13 11:40:57', 195, 5, 1, 1, 1),
(2675, 1, '2022-05-13 11:40:57', '2022-05-13 11:40:57', 194, 5, 1, 1, 1),
(2674, 1, '2022-05-13 11:40:57', '2022-05-13 11:40:57', 193, 5, 1, 1, 1),
(2673, 1, '2022-05-13 11:40:57', '2022-05-13 11:40:57', 192, 5, 1, 1, 1),
(2672, 1, '2022-05-13 11:40:57', '2022-05-13 11:40:57', 191, 5, 1, 1, 1),
(2671, 1, '2022-05-13 11:40:57', '2022-05-13 11:40:57', 190, 5, 1, 1, 1),
(2670, 1, '2022-05-13 11:40:57', '2022-05-13 11:40:57', 189, 5, 1, 1, 1),
(2669, 1, '2022-05-13 11:40:57', '2022-05-13 11:40:57', 188, 5, 1, 1, 1),
(2668, 1, '2022-05-13 11:40:57', '2022-05-13 11:40:57', 187, 5, 1, 1, 1),
(2667, 1, '2022-05-13 11:40:57', '2022-05-13 11:40:57', 186, 5, 1, 1, 1),
(2666, 1, '2022-05-13 11:40:57', '2022-05-13 11:40:57', 185, 5, 1, 1, 1),
(2665, 1, '2022-05-13 11:40:57', '2022-05-13 11:40:57', 184, 5, 1, 1, 1),
(2664, 1, '2022-05-13 11:40:57', '2022-05-13 11:40:57', 183, 5, 1, 1, 1),
(2663, 1, '2022-05-13 11:40:57', '2022-05-13 11:40:57', 182, 5, 1, 1, 1),
(2662, 1, '2022-05-13 11:40:57', '2022-05-13 11:40:57', 181, 5, 1, 1, 1),
(2661, 1, '2022-05-13 11:40:57', '2022-05-13 11:40:57', 180, 5, 1, 1, 1),
(2660, 1, '2022-05-13 11:40:57', '2022-05-13 11:40:57', 179, 5, 1, 1, 1),
(2659, 1, '2022-05-13 11:40:57', '2022-05-13 11:40:57', 178, 5, 1, 1, 1),
(2658, 1, '2022-05-13 11:40:57', '2022-05-13 11:40:57', 177, 5, 1, 1, 1),
(2657, 1, '2022-05-13 11:40:57', '2022-05-13 11:40:57', 176, 5, 1, 1, 1),
(2656, 1, '2022-05-13 11:40:57', '2022-05-13 11:40:57', 175, 5, 1, 1, 1),
(2655, 1, '2022-05-13 11:40:57', '2022-05-13 11:40:57', 174, 5, 1, 1, 1),
(2654, 1, '2022-05-13 11:40:57', '2022-05-13 11:40:57', 173, 5, 1, 1, 1),
(2653, 1, '2022-05-13 11:40:57', '2022-05-13 11:40:57', 172, 5, 1, 1, 1),
(2652, 1, '2022-05-13 11:40:57', '2022-05-13 11:40:57', 171, 5, 1, 1, 1),
(2651, 1, '2022-05-13 11:40:57', '2022-05-13 11:40:57', 170, 5, 1, 1, 1),
(2650, 1, '2022-05-13 11:40:57', '2022-05-13 11:40:57', 169, 5, 1, 1, 1),
(2649, 1, '2022-05-13 11:40:57', '2022-05-13 11:40:57', 168, 5, 1, 1, 1),
(2648, 1, '2022-05-13 11:40:57', '2022-05-13 11:40:57', 167, 5, 1, 1, 1),
(2647, 1, '2022-05-13 11:40:57', '2022-05-13 11:40:57', 166, 5, 1, 1, 1),
(2646, 1, '2022-05-13 11:40:57', '2022-05-13 11:40:57', 165, 5, 1, 1, 1),
(2645, 1, '2022-05-13 11:40:57', '2022-05-13 11:40:57', 164, 5, 1, 1, 1),
(2644, 1, '2022-05-13 11:40:57', '2022-05-13 11:40:57', 163, 5, 1, 1, 1),
(2643, 1, '2022-05-13 11:40:57', '2022-05-13 11:40:57', 162, 5, 1, 1, 1),
(2642, 1, '2022-05-13 11:40:57', '2022-05-13 11:40:57', 161, 5, 1, 1, 1),
(2641, 1, '2022-05-13 11:40:57', '2022-05-13 11:40:57', 160, 5, 1, 1, 1),
(2640, 1, '2022-05-13 11:40:57', '2022-05-13 11:40:57', 136, 5, 1, 1, 1),
(2639, 1, '2022-05-13 11:40:57', '2022-05-13 11:40:57', 135, 5, 1, 1, 1),
(2638, 1, '2022-05-13 11:40:57', '2022-05-13 11:40:57', 134, 5, 1, 1, 1),
(2637, 1, '2022-05-13 11:40:57', '2022-05-13 11:40:57', 133, 5, 1, 1, 1),
(2636, 1, '2022-05-13 11:40:57', '2022-05-13 11:40:57', 132, 5, 1, 1, 1),
(2635, 1, '2022-05-13 11:40:57', '2022-05-13 11:40:57', 131, 5, 1, 1, 1),
(2634, 1, '2022-05-13 11:40:57', '2022-05-13 11:40:57', 130, 5, 1, 1, 1),
(2633, 1, '2022-05-13 11:40:57', '2022-05-13 11:40:57', 129, 5, 1, 1, 1),
(2632, 1, '2022-05-13 11:40:57', '2022-05-13 11:40:57', 128, 5, 1, 1, 1),
(2631, 1, '2022-05-13 11:40:57', '2022-05-13 11:40:57', 127, 5, 1, 1, 1),
(2630, 1, '2022-05-13 11:40:57', '2022-05-13 11:40:57', 126, 5, 1, 1, 1),
(2629, 1, '2022-05-13 11:40:57', '2022-05-13 11:40:57', 125, 5, 1, 1, 1),
(2628, 1, '2022-05-13 11:40:57', '2022-05-13 11:40:57', 124, 5, 1, 1, 1),
(2627, 1, '2022-05-13 11:40:57', '2022-05-13 11:40:57', 123, 5, 1, 1, 1),
(2626, 1, '2022-05-13 11:40:57', '2022-05-13 11:40:57', 122, 5, 1, 1, 1),
(2625, 1, '2022-05-13 11:40:57', '2022-05-13 11:40:57', 121, 5, 1, 1, 1),
(2624, 1, '2022-05-13 11:40:57', '2022-05-13 11:40:57', 120, 5, 1, 1, 1),
(2623, 1, '2022-05-13 11:40:57', '2022-05-13 11:40:57', 119, 5, 1, 1, 1),
(2622, 1, '2022-05-13 11:40:57', '2022-05-13 11:40:57', 118, 5, 1, 1, 1),
(2621, 1, '2022-05-13 11:40:57', '2022-05-13 11:40:57', 117, 5, 1, 1, 1),
(2620, 1, '2022-05-13 11:40:57', '2022-05-13 11:40:57', 116, 5, 1, 1, 1),
(2619, 1, '2022-05-13 11:40:57', '2022-05-13 11:40:57', 115, 5, 1, 1, 1),
(2618, 1, '2022-05-13 11:40:57', '2022-05-13 11:40:57', 114, 5, 1, 1, 1),
(2617, 1, '2022-05-13 11:40:57', '2022-05-13 11:40:57', 113, 5, 1, 1, 1),
(2616, 1, '2022-05-13 11:40:57', '2022-05-13 11:40:57', 112, 5, 1, 1, 1),
(2615, 1, '2022-05-13 11:40:57', '2022-05-13 11:40:57', 111, 5, 1, 1, 1),
(2614, 1, '2022-05-13 11:40:57', '2022-05-13 11:40:57', 110, 5, 1, 1, 1),
(2613, 1, '2022-05-13 11:40:57', '2022-05-13 11:40:57', 109, 5, 1, 1, 1),
(2612, 1, '2022-05-13 11:40:57', '2022-05-13 11:40:57', 108, 5, 1, 1, 1),
(2611, 1, '2022-05-13 11:40:57', '2022-05-13 11:40:57', 107, 5, 1, 1, 1),
(2610, 1, '2022-05-13 11:40:57', '2022-05-13 11:40:57', 106, 5, 1, 1, 1),
(2609, 1, '2022-05-13 11:40:57', '2022-05-13 11:40:57', 105, 5, 1, 1, 1),
(2608, 1, '2022-05-13 11:40:57', '2022-05-13 11:40:57', 104, 5, 1, 1, 1),
(2607, 1, '2022-05-13 11:40:57', '2022-05-13 11:40:57', 103, 5, 1, 1, 1),
(2606, 1, '2022-05-13 11:40:57', '2022-05-13 11:40:57', 102, 5, 1, 1, 1),
(2605, 1, '2022-05-13 11:40:57', '2022-05-13 11:40:57', 101, 5, 1, 1, 1),
(2604, 1, '2022-05-13 11:40:57', '2022-05-13 11:40:57', 100, 5, 1, 1, 1),
(2603, 1, '2022-05-13 11:40:57', '2022-05-13 11:40:57', 99, 5, 1, 1, 1),
(2602, 1, '2022-05-13 11:40:57', '2022-05-13 11:40:57', 98, 5, 1, 1, 1),
(2601, 1, '2022-05-13 11:40:57', '2022-05-13 11:40:57', 97, 5, 1, 1, 1),
(2600, 1, '2022-05-13 11:40:57', '2022-05-13 11:40:57', 96, 5, 1, 1, 1),
(2599, 1, '2022-05-13 11:40:57', '2022-05-13 11:40:57', 95, 5, 1, 1, 1),
(2598, 1, '2022-05-13 11:40:57', '2022-05-13 11:40:57', 94, 5, 1, 1, 1),
(2597, 1, '2022-05-13 11:40:57', '2022-05-13 11:40:57', 93, 5, 1, 1, 1),
(2596, 1, '2022-05-13 11:40:57', '2022-05-13 11:40:57', 92, 5, 1, 1, 1),
(2595, 1, '2022-05-13 11:40:57', '2022-05-13 11:40:57', 91, 5, 1, 1, 1),
(2594, 1, '2022-05-13 11:40:57', '2022-05-13 11:40:57', 90, 5, 1, 1, 1),
(2593, 1, '2022-05-13 11:40:57', '2022-05-13 11:40:57', 89, 5, 1, 1, 1),
(2592, 1, '2022-05-13 11:40:57', '2022-05-13 11:40:57', 88, 5, 1, 1, 1),
(2591, 1, '2022-05-13 11:40:57', '2022-05-13 11:40:57', 87, 5, 1, 1, 1),
(2590, 1, '2022-05-13 11:40:57', '2022-05-13 11:40:57', 536, 5, 1, 1, 1),
(2589, 1, '2022-05-13 11:40:57', '2022-05-13 11:40:57', 535, 5, 1, 1, 1),
(2588, 1, '2022-05-13 11:40:57', '2022-05-13 11:40:57', 534, 5, 1, 1, 1),
(2587, 1, '2022-05-13 11:40:57', '2022-05-13 11:40:57', 533, 5, 1, 1, 1),
(2586, 1, '2022-05-13 11:40:57', '2022-05-13 11:40:57', 86, 5, 1, 1, 1),
(2585, 1, '2022-05-13 11:40:57', '2022-05-13 11:40:57', 85, 5, 1, 1, 1),
(2584, 1, '2022-05-13 11:40:57', '2022-05-13 11:40:57', 84, 5, 1, 1, 1),
(2583, 1, '2022-05-13 11:40:57', '2022-05-13 11:40:57', 83, 5, 1, 1, 1),
(2582, 1, '2022-05-13 11:40:57', '2022-05-13 11:40:57', 82, 5, 1, 1, 1),
(2581, 1, '2022-05-13 11:40:57', '2022-05-13 11:40:57', 81, 5, 1, 1, 1),
(2580, 1, '2022-05-13 11:40:57', '2022-05-13 11:40:57', 80, 5, 1, 1, 1),
(2579, 1, '2022-05-13 11:40:57', '2022-05-13 11:40:57', 79, 5, 1, 1, 1),
(2578, 1, '2022-05-13 11:40:57', '2022-05-13 11:40:57', 77, 5, 1, 1, 1),
(2577, 1, '2022-05-13 11:40:57', '2022-05-13 11:40:57', 76, 5, 1, 1, 1),
(2576, 1, '2022-05-13 11:40:57', '2022-05-13 11:40:57', 75, 5, 1, 1, 1),
(2575, 1, '2022-05-13 11:40:57', '2022-05-13 11:40:57', 74, 5, 1, 1, 1),
(2574, 1, '2022-05-13 11:40:57', '2022-05-13 11:40:57', 73, 5, 1, 1, 1),
(2573, 1, '2022-05-13 11:40:56', '2022-05-13 11:40:56', 72, 5, 1, 1, 1),
(2572, 1, '2022-05-13 11:40:56', '2022-05-13 11:40:56', 71, 5, 1, 1, 1),
(2571, 1, '2022-05-13 11:40:56', '2022-05-13 11:40:56', 70, 5, 1, 1, 1),
(2570, 1, '2022-05-13 11:40:56', '2022-05-13 11:40:56', 69, 5, 1, 1, 1),
(2569, 1, '2022-05-13 11:40:56', '2022-05-13 11:40:56', 68, 5, 1, 1, 1),
(2568, 1, '2022-05-13 11:40:56', '2022-05-13 11:40:56', 67, 5, 1, 1, 1),
(2567, 1, '2022-05-13 11:40:56', '2022-05-13 11:40:56', 66, 5, 1, 1, 1),
(2566, 1, '2022-05-13 11:40:56', '2022-05-13 11:40:56', 65, 5, 1, 1, 1),
(2565, 1, '2022-05-13 11:40:56', '2022-05-13 11:40:56', 64, 5, 1, 1, 1),
(2564, 1, '2022-05-13 11:40:56', '2022-05-13 11:40:56', 63, 5, 1, 1, 1),
(2563, 1, '2022-05-13 11:40:56', '2022-05-13 11:40:56', 62, 5, 1, 1, 1),
(2562, 1, '2022-05-13 11:40:56', '2022-05-13 11:40:56', 61, 5, 1, 1, 1),
(2561, 1, '2022-05-13 11:40:56', '2022-05-13 11:40:56', 60, 5, 1, 1, 1),
(2560, 1, '2022-05-13 11:40:56', '2022-05-13 11:40:56', 59, 5, 1, 1, 1),
(2559, 1, '2022-05-13 11:40:56', '2022-05-13 11:40:56', 58, 5, 1, 1, 1),
(2558, 1, '2022-05-13 11:40:56', '2022-05-13 11:40:56', 57, 5, 1, 1, 1),
(2557, 1, '2022-05-13 11:40:56', '2022-05-13 11:40:56', 56, 5, 1, 1, 1),
(2556, 1, '2022-05-13 11:40:56', '2022-05-13 11:40:56', 55, 5, 1, 1, 1),
(2555, 1, '2022-05-13 11:40:56', '2022-05-13 11:40:56', 54, 5, 1, 1, 1),
(2554, 1, '2022-05-13 11:40:56', '2022-05-13 11:40:56', 53, 5, 1, 1, 1),
(2553, 1, '2022-05-13 11:40:56', '2022-05-13 11:40:56', 52, 5, 1, 1, 1),
(2552, 1, '2022-05-13 11:40:56', '2022-05-13 11:40:56', 51, 5, 1, 1, 1),
(2551, 1, '2022-05-13 11:40:56', '2022-05-13 11:40:56', 50, 5, 1, 1, 1),
(2550, 1, '2022-05-13 11:40:56', '2022-05-13 11:40:56', 49, 5, 1, 1, 1),
(2549, 1, '2022-05-13 11:40:56', '2022-05-13 11:40:56', 48, 5, 1, 1, 1),
(2548, 1, '2022-05-13 11:40:56', '2022-05-13 11:40:56', 47, 5, 1, 1, 1),
(2547, 1, '2022-05-13 11:40:56', '2022-05-13 11:40:56', 46, 5, 1, 1, 1),
(2546, 1, '2022-05-13 11:40:56', '2022-05-13 11:40:56', 45, 5, 1, 1, 1),
(2545, 1, '2022-05-13 11:40:56', '2022-05-13 11:40:56', 44, 5, 1, 1, 1),
(2544, 1, '2022-05-13 11:40:56', '2022-05-13 11:40:56', 43, 5, 1, 1, 1),
(2543, 1, '2022-05-13 11:40:56', '2022-05-13 11:40:56', 42, 5, 1, 1, 1),
(2542, 1, '2022-05-13 11:40:56', '2022-05-13 11:40:56', 41, 5, 1, 1, 1),
(2541, 1, '2022-05-13 11:40:56', '2022-05-13 11:40:56', 40, 5, 1, 1, 1),
(2540, 1, '2022-05-13 11:40:56', '2022-05-13 11:40:56', 39, 5, 1, 1, 1),
(2539, 1, '2022-05-13 11:40:56', '2022-05-13 11:40:56', 38, 5, 1, 1, 1),
(2538, 1, '2022-05-13 11:40:56', '2022-05-13 11:40:56', 37, 5, 1, 1, 1),
(2537, 1, '2022-05-13 11:40:56', '2022-05-13 11:40:56', 36, 5, 1, 1, 1),
(2536, 1, '2022-05-13 11:40:56', '2022-05-13 11:40:56', 35, 5, 1, 1, 1),
(2535, 1, '2022-05-13 11:40:56', '2022-05-13 11:40:56', 34, 5, 1, 1, 1),
(2534, 1, '2022-05-13 11:40:56', '2022-05-13 11:40:56', 33, 5, 1, 1, 1),
(2533, 1, '2022-05-13 11:40:56', '2022-05-13 11:40:56', 32, 5, 1, 1, 1),
(2532, 1, '2022-05-13 11:40:56', '2022-05-13 11:40:56', 31, 5, 1, 1, 1),
(2531, 1, '2022-05-13 11:40:56', '2022-05-13 11:40:56', 30, 5, 1, 1, 1),
(2530, 1, '2022-05-13 11:40:56', '2022-05-13 11:40:56', 29, 5, 1, 1, 1),
(2529, 1, '2022-05-13 11:40:56', '2022-05-13 11:40:56', 28, 5, 1, 1, 1),
(2528, 1, '2022-05-13 11:40:56', '2022-05-13 11:40:56', 27, 5, 1, 1, 1),
(2527, 1, '2022-05-13 11:40:56', '2022-05-13 11:40:56', 26, 5, 1, 1, 1),
(2526, 1, '2022-05-13 11:40:56', '2022-05-13 11:40:56', 25, 5, 1, 1, 1),
(2525, 1, '2022-05-13 11:40:56', '2022-05-13 11:40:56', 24, 5, 1, 1, 1),
(2524, 1, '2022-05-13 11:40:56', '2022-05-13 11:40:56', 23, 5, 1, 1, 1),
(2523, 1, '2022-05-13 11:40:56', '2022-05-13 11:40:56', 22, 5, 1, 1, 1),
(2522, 1, '2022-05-13 11:40:56', '2022-05-13 11:40:56', 21, 5, 1, 1, 1),
(2521, 1, '2022-05-13 11:40:56', '2022-05-13 11:40:56', 20, 5, 1, 1, 1),
(2520, 1, '2022-05-13 11:40:56', '2022-05-13 11:40:56', 19, 5, 1, 1, 1),
(2519, 1, '2022-05-13 11:40:56', '2022-05-13 11:40:56', 18, 5, 1, 1, 1),
(2518, 1, '2022-05-13 11:40:56', '2022-05-13 11:40:56', 17, 5, 1, 1, 1),
(2517, 1, '2022-05-13 11:40:56', '2022-05-13 11:40:56', 16, 5, 1, 1, 1),
(2516, 1, '2022-05-13 11:40:56', '2022-05-13 11:40:56', 15, 5, 1, 1, 1),
(2515, 1, '2022-05-13 11:40:56', '2022-05-13 11:40:56', 14, 5, 1, 1, 1),
(2514, 1, '2022-05-13 11:40:56', '2022-05-13 11:40:56', 13, 5, 1, 1, 1),
(2513, 1, '2022-05-13 11:40:56', '2022-05-13 11:40:56', 12, 5, 1, 1, 1),
(2512, 1, '2022-05-13 11:40:56', '2022-05-13 11:40:56', 11, 5, 1, 1, 1),
(2511, 1, '2022-05-13 11:40:56', '2022-05-13 11:40:56', 10, 5, 1, 1, 1),
(2510, 1, '2022-05-13 11:40:56', '2022-05-13 11:40:56', 9, 5, 1, 1, 1),
(2509, 1, '2022-05-13 11:40:56', '2022-05-13 11:40:56', 8, 5, 1, 1, 1),
(2508, 1, '2022-05-13 11:40:56', '2022-05-13 11:40:56', 7, 5, 1, 1, 1),
(2507, 1, '2022-05-13 11:40:56', '2022-05-13 11:40:56', 6, 5, 1, 1, 1),
(2506, 1, '2022-05-13 11:40:56', '2022-05-13 11:40:56', 5, 5, 1, 1, 1),
(4775, 1, '2022-05-20 19:01:40', '2022-05-20 19:01:40', 385, 4, 1, 1, 1),
(4774, 1, '2022-05-20 19:01:40', '2022-05-20 19:01:40', 384, 4, 1, 1, 1),
(4773, 1, '2022-05-20 19:01:40', '2022-05-20 19:01:40', 378, 4, 1, 1, 1),
(4772, 1, '2022-05-20 19:01:40', '2022-05-20 19:01:40', 377, 4, 1, 1, 1),
(4771, 1, '2022-05-20 19:01:40', '2022-05-20 19:01:40', 376, 4, 1, 1, 1),
(4770, 1, '2022-05-20 19:01:40', '2022-05-20 19:01:40', 297, 4, 1, 1, 1),
(4769, 1, '2022-05-20 19:01:40', '2022-05-20 19:01:40', 296, 4, 1, 1, 1),
(4768, 1, '2022-05-20 19:01:40', '2022-05-20 19:01:40', 295, 4, 1, 1, 1),
(4767, 1, '2022-05-20 19:01:40', '2022-05-20 19:01:40', 294, 4, 1, 1, 1),
(4766, 1, '2022-05-20 19:01:40', '2022-05-20 19:01:40', 292, 4, 1, 1, 1),
(4765, 1, '2022-05-20 19:01:40', '2022-05-20 19:01:40', 291, 4, 1, 1, 1),
(4764, 1, '2022-05-20 19:01:40', '2022-05-20 19:01:40', 290, 4, 1, 1, 1),
(4763, 1, '2022-05-20 19:01:40', '2022-05-20 19:01:40', 289, 4, 1, 1, 1),
(4762, 1, '2022-05-20 19:01:40', '2022-05-20 19:01:40', 288, 4, 1, 1, 1),
(4761, 1, '2022-05-20 19:01:40', '2022-05-20 19:01:40', 287, 4, 1, 1, 1),
(4760, 1, '2022-05-20 19:01:40', '2022-05-20 19:01:40', 286, 4, 1, 1, 1),
(4759, 1, '2022-05-20 19:01:40', '2022-05-20 19:01:40', 285, 4, 1, 1, 1),
(4758, 1, '2022-05-20 19:01:40', '2022-05-20 19:01:40', 284, 4, 1, 1, 1),
(4757, 1, '2022-05-20 19:01:40', '2022-05-20 19:01:40', 283, 4, 1, 1, 1),
(4756, 1, '2022-05-20 19:01:40', '2022-05-20 19:01:40', 282, 4, 1, 1, 1),
(4755, 1, '2022-05-20 19:01:40', '2022-05-20 19:01:40', 281, 4, 1, 1, 1),
(4754, 1, '2022-05-20 19:01:40', '2022-05-20 19:01:40', 280, 4, 1, 1, 1),
(4753, 1, '2022-05-20 19:01:39', '2022-05-20 19:01:39', 279, 4, 1, 1, 1),
(4752, 1, '2022-05-20 19:01:39', '2022-05-20 19:01:39', 278, 4, 1, 1, 1),
(4751, 1, '2022-05-20 19:01:39', '2022-05-20 19:01:39', 277, 4, 1, 1, 1),
(4750, 1, '2022-05-20 19:01:39', '2022-05-20 19:01:39', 537, 4, 1, 1, 1),
(4749, 1, '2022-05-20 19:01:39', '2022-05-20 19:01:39', 272, 4, 1, 1, 1),
(4748, 1, '2022-05-20 19:01:39', '2022-05-20 19:01:39', 271, 4, 1, 1, 1),
(4747, 1, '2022-05-20 19:01:39', '2022-05-20 19:01:39', 270, 4, 1, 1, 1),
(4746, 1, '2022-05-20 19:01:39', '2022-05-20 19:01:39', 269, 4, 1, 1, 1),
(4745, 1, '2022-05-20 19:01:39', '2022-05-20 19:01:39', 263, 4, 1, 1, 1),
(4744, 1, '2022-05-20 19:01:39', '2022-05-20 19:01:39', 261, 4, 1, 1, 1),
(4743, 1, '2022-05-20 19:01:39', '2022-05-20 19:01:39', 260, 4, 1, 1, 1),
(4742, 1, '2022-05-20 19:01:39', '2022-05-20 19:01:39', 259, 4, 1, 1, 1),
(4741, 1, '2022-05-20 19:01:39', '2022-05-20 19:01:39', 258, 4, 1, 1, 1),
(4740, 1, '2022-05-20 19:01:39', '2022-05-20 19:01:39', 257, 4, 1, 1, 1),
(4739, 1, '2022-05-20 19:01:39', '2022-05-20 19:01:39', 249, 4, 1, 1, 1),
(4738, 1, '2022-05-20 19:01:39', '2022-05-20 19:01:39', 248, 4, 1, 1, 1),
(4737, 1, '2022-05-20 19:01:39', '2022-05-20 19:01:39', 247, 4, 1, 1, 1),
(4736, 1, '2022-05-20 19:01:39', '2022-05-20 19:01:39', 246, 4, 1, 1, 1),
(4735, 1, '2022-05-20 19:01:39', '2022-05-20 19:01:39', 245, 4, 1, 1, 1),
(4734, 1, '2022-05-20 19:01:39', '2022-05-20 19:01:39', 244, 4, 1, 1, 1),
(4733, 1, '2022-05-20 19:01:39', '2022-05-20 19:01:39', 243, 4, 1, 1, 1),
(4732, 1, '2022-05-20 19:01:39', '2022-05-20 19:01:39', 242, 4, 1, 1, 1),
(4731, 1, '2022-05-20 19:01:39', '2022-05-20 19:01:39', 241, 4, 1, 1, 1),
(4730, 1, '2022-05-20 19:01:39', '2022-05-20 19:01:39', 240, 4, 1, 1, 1),
(4729, 1, '2022-05-20 19:01:39', '2022-05-20 19:01:39', 239, 4, 1, 1, 1),
(4728, 1, '2022-05-20 19:01:39', '2022-05-20 19:01:39', 238, 4, 1, 1, 1),
(4727, 1, '2022-05-20 19:01:39', '2022-05-20 19:01:39', 237, 4, 1, 1, 1),
(4726, 1, '2022-05-20 19:01:39', '2022-05-20 19:01:39', 236, 4, 1, 1, 1),
(4725, 1, '2022-05-20 19:01:39', '2022-05-20 19:01:39', 235, 4, 1, 1, 1),
(4724, 1, '2022-05-20 19:01:39', '2022-05-20 19:01:39', 234, 4, 1, 1, 1),
(4723, 1, '2022-05-20 19:01:39', '2022-05-20 19:01:39', 233, 4, 1, 1, 1),
(4722, 1, '2022-05-20 19:01:39', '2022-05-20 19:01:39', 232, 4, 1, 1, 1),
(4721, 1, '2022-05-20 19:01:39', '2022-05-20 19:01:39', 231, 4, 1, 1, 1),
(4720, 1, '2022-05-20 19:01:39', '2022-05-20 19:01:39', 230, 4, 1, 1, 1),
(4719, 1, '2022-05-20 19:01:39', '2022-05-20 19:01:39', 229, 4, 1, 1, 1),
(4718, 1, '2022-05-20 19:01:39', '2022-05-20 19:01:39', 228, 4, 1, 1, 1),
(4717, 1, '2022-05-20 19:01:39', '2022-05-20 19:01:39', 227, 4, 1, 1, 1),
(4716, 1, '2022-05-20 19:01:39', '2022-05-20 19:01:39', 226, 4, 1, 1, 1),
(4715, 1, '2022-05-20 19:01:39', '2022-05-20 19:01:39', 225, 4, 1, 1, 1),
(4714, 1, '2022-05-20 19:01:39', '2022-05-20 19:01:39', 219, 4, 1, 1, 1),
(4713, 1, '2022-05-20 19:01:39', '2022-05-20 19:01:39', 218, 4, 1, 1, 1),
(4712, 1, '2022-05-20 19:01:39', '2022-05-20 19:01:39', 217, 4, 1, 1, 1),
(4711, 1, '2022-05-20 19:01:39', '2022-05-20 19:01:39', 216, 4, 1, 1, 1),
(4710, 1, '2022-05-20 19:01:39', '2022-05-20 19:01:39', 215, 4, 1, 1, 1),
(4709, 1, '2022-05-20 19:01:39', '2022-05-20 19:01:39', 214, 4, 1, 1, 1),
(4708, 1, '2022-05-20 19:01:39', '2022-05-20 19:01:39', 211, 4, 1, 1, 1),
(4707, 1, '2022-05-20 19:01:39', '2022-05-20 19:01:39', 210, 4, 1, 1, 1),
(4706, 1, '2022-05-20 19:01:39', '2022-05-20 19:01:39', 209, 4, 1, 1, 1),
(4705, 1, '2022-05-20 19:01:39', '2022-05-20 19:01:39', 208, 4, 1, 1, 1),
(4704, 1, '2022-05-20 19:01:39', '2022-05-20 19:01:39', 207, 4, 1, 1, 1),
(4703, 1, '2022-05-20 19:01:39', '2022-05-20 19:01:39', 206, 4, 1, 1, 1),
(4702, 1, '2022-05-20 19:01:39', '2022-05-20 19:01:39', 205, 4, 1, 1, 1),
(4701, 1, '2022-05-20 19:01:39', '2022-05-20 19:01:39', 204, 4, 1, 1, 1),
(4700, 1, '2022-05-20 19:01:39', '2022-05-20 19:01:39', 203, 4, 1, 1, 1),
(4699, 1, '2022-05-20 19:01:39', '2022-05-20 19:01:39', 202, 4, 1, 1, 1),
(4698, 1, '2022-05-20 19:01:39', '2022-05-20 19:01:39', 201, 4, 1, 1, 1),
(4697, 1, '2022-05-20 19:01:39', '2022-05-20 19:01:39', 200, 4, 1, 1, 1),
(4696, 1, '2022-05-20 19:01:39', '2022-05-20 19:01:39', 199, 4, 1, 1, 1),
(4695, 1, '2022-05-20 19:01:39', '2022-05-20 19:01:39', 198, 4, 1, 1, 1),
(4694, 1, '2022-05-20 19:01:39', '2022-05-20 19:01:39', 197, 4, 1, 1, 1),
(4693, 1, '2022-05-20 19:01:39', '2022-05-20 19:01:39', 196, 4, 1, 1, 1),
(4692, 1, '2022-05-20 19:01:39', '2022-05-20 19:01:39', 553, 4, 1, 1, 1),
(4691, 1, '2022-05-20 19:01:39', '2022-05-20 19:01:39', 195, 4, 1, 1, 1),
(4690, 1, '2022-05-20 19:01:39', '2022-05-20 19:01:39', 194, 4, 1, 1, 1),
(4689, 1, '2022-05-20 19:01:39', '2022-05-20 19:01:39', 193, 4, 1, 1, 1),
(4688, 1, '2022-05-20 19:01:39', '2022-05-20 19:01:39', 192, 4, 1, 1, 1),
(4687, 1, '2022-05-20 19:01:39', '2022-05-20 19:01:39', 191, 4, 1, 1, 1),
(4686, 1, '2022-05-20 19:01:39', '2022-05-20 19:01:39', 190, 4, 1, 1, 1),
(4685, 1, '2022-05-20 19:01:39', '2022-05-20 19:01:39', 189, 4, 1, 1, 1),
(4684, 1, '2022-05-20 19:01:39', '2022-05-20 19:01:39', 188, 4, 1, 1, 1),
(4683, 1, '2022-05-20 19:01:39', '2022-05-20 19:01:39', 147, 4, 1, 1, 1),
(4682, 1, '2022-05-20 19:01:39', '2022-05-20 19:01:39', 138, 4, 1, 1, 1),
(4681, 1, '2022-05-20 19:01:39', '2022-05-20 19:01:39', 107, 4, 1, 1, 1),
(4680, 1, '2022-05-20 19:01:39', '2022-05-20 19:01:39', 106, 4, 1, 1, 1),
(4679, 1, '2022-05-20 19:01:39', '2022-05-20 19:01:39', 105, 4, 1, 1, 1),
(4678, 1, '2022-05-20 19:01:39', '2022-05-20 19:01:39', 104, 4, 1, 1, 1),
(4677, 1, '2022-05-20 19:01:39', '2022-05-20 19:01:39', 103, 4, 1, 1, 1),
(4676, 1, '2022-05-20 19:01:39', '2022-05-20 19:01:39', 102, 4, 1, 1, 1),
(4675, 1, '2022-05-20 19:01:39', '2022-05-20 19:01:39', 101, 4, 1, 1, 1),
(4674, 1, '2022-05-20 19:01:39', '2022-05-20 19:01:39', 100, 4, 1, 1, 1),
(4673, 1, '2022-05-20 19:01:39', '2022-05-20 19:01:39', 99, 4, 1, 1, 1),
(4672, 1, '2022-05-20 19:01:39', '2022-05-20 19:01:39', 98, 4, 1, 1, 1),
(4671, 1, '2022-05-20 19:01:39', '2022-05-20 19:01:39', 97, 4, 1, 1, 1),
(4670, 1, '2022-05-20 19:01:39', '2022-05-20 19:01:39', 96, 4, 1, 1, 1),
(4669, 1, '2022-05-20 19:01:39', '2022-05-20 19:01:39', 95, 4, 1, 1, 1),
(4668, 1, '2022-05-20 19:01:39', '2022-05-20 19:01:39', 94, 4, 1, 1, 1),
(4667, 1, '2022-05-20 19:01:39', '2022-05-20 19:01:39', 93, 4, 1, 1, 1),
(4666, 1, '2022-05-20 19:01:39', '2022-05-20 19:01:39', 92, 4, 1, 1, 1),
(4665, 1, '2022-05-20 19:01:39', '2022-05-20 19:01:39', 91, 4, 1, 1, 1),
(4664, 1, '2022-05-20 19:01:39', '2022-05-20 19:01:39', 90, 4, 1, 1, 1),
(4663, 1, '2022-05-20 19:01:39', '2022-05-20 19:01:39', 89, 4, 1, 1, 1),
(4662, 1, '2022-05-20 19:01:39', '2022-05-20 19:01:39', 88, 4, 1, 1, 1),
(4661, 1, '2022-05-20 19:01:39', '2022-05-20 19:01:39', 87, 4, 1, 1, 1),
(4660, 1, '2022-05-20 19:01:39', '2022-05-20 19:01:39', 536, 4, 1, 1, 1),
(4659, 1, '2022-05-20 19:01:39', '2022-05-20 19:01:39', 535, 4, 1, 1, 1),
(4658, 1, '2022-05-20 19:01:39', '2022-05-20 19:01:39', 534, 4, 1, 1, 1),
(4657, 1, '2022-05-20 19:01:39', '2022-05-20 19:01:39', 533, 4, 1, 1, 1),
(4656, 1, '2022-05-20 19:01:39', '2022-05-20 19:01:39', 86, 4, 1, 1, 1),
(4655, 1, '2022-05-20 19:01:39', '2022-05-20 19:01:39', 85, 4, 1, 1, 1),
(4654, 1, '2022-05-20 19:01:39', '2022-05-20 19:01:39', 84, 4, 1, 1, 1),
(4653, 1, '2022-05-20 19:01:39', '2022-05-20 19:01:39', 83, 4, 1, 1, 1),
(4652, 1, '2022-05-20 19:01:39', '2022-05-20 19:01:39', 82, 4, 1, 1, 1),
(4651, 1, '2022-05-20 19:01:39', '2022-05-20 19:01:39', 81, 4, 1, 1, 1),
(4650, 1, '2022-05-20 19:01:39', '2022-05-20 19:01:39', 80, 4, 1, 1, 1),
(4649, 1, '2022-05-20 19:01:39', '2022-05-20 19:01:39', 79, 4, 1, 1, 1),
(4648, 1, '2022-05-20 19:01:39', '2022-05-20 19:01:39', 77, 4, 1, 1, 1),
(4647, 1, '2022-05-20 19:01:39', '2022-05-20 19:01:39', 76, 4, 1, 1, 1),
(4646, 1, '2022-05-20 19:01:39', '2022-05-20 19:01:39', 75, 4, 1, 1, 1),
(4645, 1, '2022-05-20 19:01:39', '2022-05-20 19:01:39', 74, 4, 1, 1, 1),
(4644, 1, '2022-05-20 19:01:39', '2022-05-20 19:01:39', 73, 4, 1, 1, 1),
(4643, 1, '2022-05-20 19:01:39', '2022-05-20 19:01:39', 72, 4, 1, 1, 1),
(4642, 1, '2022-05-20 19:01:39', '2022-05-20 19:01:39', 71, 4, 1, 1, 1),
(4641, 1, '2022-05-20 19:01:39', '2022-05-20 19:01:39', 70, 4, 1, 1, 1),
(4640, 1, '2022-05-20 19:01:39', '2022-05-20 19:01:39', 69, 4, 1, 1, 1),
(4639, 1, '2022-05-20 19:01:39', '2022-05-20 19:01:39', 68, 4, 1, 1, 1),
(4638, 1, '2022-05-20 19:01:39', '2022-05-20 19:01:39', 67, 4, 1, 1, 1),
(4637, 1, '2022-05-20 19:01:39', '2022-05-20 19:01:39', 66, 4, 1, 1, 1),
(4636, 1, '2022-05-20 19:01:39', '2022-05-20 19:01:39', 65, 4, 1, 1, 1),
(4635, 1, '2022-05-20 19:01:39', '2022-05-20 19:01:39', 64, 4, 1, 1, 1),
(4634, 1, '2022-05-20 19:01:39', '2022-05-20 19:01:39', 63, 4, 1, 1, 1),
(4633, 1, '2022-05-20 19:01:39', '2022-05-20 19:01:39', 62, 4, 1, 1, 1),
(4632, 1, '2022-05-20 19:01:39', '2022-05-20 19:01:39', 61, 4, 1, 1, 1),
(4631, 1, '2022-05-20 19:01:39', '2022-05-20 19:01:39', 10, 4, 1, 1, 1),
(4630, 1, '2022-05-20 19:01:39', '2022-05-20 19:01:39', 9, 4, 1, 1, 1),
(4629, 1, '2022-05-20 19:01:39', '2022-05-20 19:01:39', 8, 4, 1, 1, 1),
(4628, 1, '2022-05-20 19:01:39', '2022-05-20 19:01:39', 7, 4, 1, 1, 1),
(4627, 1, '2022-05-20 19:01:39', '2022-05-20 19:01:39', 6, 4, 1, 1, 1),
(4626, 1, '2022-05-20 19:01:39', '2022-05-20 19:01:39', 4, 4, 1, 1, 1),
(4625, 1, '2022-05-20 19:01:38', '2022-05-20 19:01:38', 2, 4, 1, 1, 1),
(4624, 1, '2022-05-20 19:01:38', '2022-05-20 19:01:38', 1, 4, 1, 1, 1),
(643, 1, '2022-05-02 18:31:33', '2022-05-02 18:31:33', 1, 7, 1, 1, 1),
(644, 1, '2022-05-02 18:31:33', '2022-05-02 18:31:33', 2, 7, 1, 1, 1),
(645, 1, '2022-05-02 18:31:33', '2022-05-02 18:31:33', 3, 7, 1, 1, 1),
(646, 1, '2022-05-02 18:31:33', '2022-05-02 18:31:33', 4, 7, 1, 1, 1),
(647, 1, '2022-05-02 18:31:33', '2022-05-02 18:31:33', 5, 7, 1, 1, 1),
(648, 1, '2022-05-02 18:31:33', '2022-05-02 18:31:33', 6, 7, 1, 1, 1),
(649, 1, '2022-05-02 18:31:33', '2022-05-02 18:31:33', 7, 7, 1, 1, 1),
(650, 1, '2022-05-02 18:31:33', '2022-05-02 18:31:33', 8, 7, 1, 1, 1),
(651, 1, '2022-05-02 18:31:33', '2022-05-02 18:31:33', 9, 7, 1, 1, 1),
(652, 1, '2022-05-02 18:31:33', '2022-05-02 18:31:33', 10, 7, 1, 1, 1),
(653, 1, '2022-05-02 18:31:33', '2022-05-02 18:31:33', 11, 7, 1, 1, 1),
(654, 1, '2022-05-02 18:31:33', '2022-05-02 18:31:33', 12, 7, 1, 1, 1),
(655, 1, '2022-05-02 18:31:33', '2022-05-02 18:31:33', 13, 7, 1, 1, 1),
(656, 1, '2022-05-02 18:31:33', '2022-05-02 18:31:33', 14, 7, 1, 1, 1),
(657, 1, '2022-05-02 18:31:33', '2022-05-02 18:31:33', 15, 7, 1, 1, 1),
(658, 1, '2022-05-02 18:31:33', '2022-05-02 18:31:33', 16, 7, 1, 1, 1),
(659, 1, '2022-05-02 18:31:33', '2022-05-02 18:31:33', 17, 7, 1, 1, 1),
(660, 1, '2022-05-02 18:31:33', '2022-05-02 18:31:33', 18, 7, 1, 1, 1),
(661, 1, '2022-05-02 18:31:33', '2022-05-02 18:31:33', 19, 7, 1, 1, 1),
(662, 1, '2022-05-02 18:31:33', '2022-05-02 18:31:33', 20, 7, 1, 1, 1),
(663, 1, '2022-05-02 18:31:33', '2022-05-02 18:31:33', 21, 7, 1, 1, 1),
(664, 1, '2022-05-02 18:31:33', '2022-05-02 18:31:33', 22, 7, 1, 1, 1),
(665, 1, '2022-05-02 18:31:33', '2022-05-02 18:31:33', 23, 7, 1, 1, 1),
(666, 1, '2022-05-02 18:31:33', '2022-05-02 18:31:33', 24, 7, 1, 1, 1),
(667, 1, '2022-05-02 18:31:33', '2022-05-02 18:31:33', 25, 7, 1, 1, 1),
(668, 1, '2022-05-02 18:31:33', '2022-05-02 18:31:33', 26, 7, 1, 1, 1),
(669, 1, '2022-05-02 18:31:33', '2022-05-02 18:31:33', 27, 7, 1, 1, 1),
(670, 1, '2022-05-02 18:31:33', '2022-05-02 18:31:33', 28, 7, 1, 1, 1),
(671, 1, '2022-05-02 18:31:33', '2022-05-02 18:31:33', 29, 7, 1, 1, 1),
(672, 1, '2022-05-02 18:31:33', '2022-05-02 18:31:33', 30, 7, 1, 1, 1),
(673, 1, '2022-05-02 18:31:33', '2022-05-02 18:31:33', 31, 7, 1, 1, 1),
(674, 1, '2022-05-02 18:31:33', '2022-05-02 18:31:33', 32, 7, 1, 1, 1),
(675, 1, '2022-05-02 18:31:33', '2022-05-02 18:31:33', 33, 7, 1, 1, 1),
(676, 1, '2022-05-02 18:31:33', '2022-05-02 18:31:33', 34, 7, 1, 1, 1),
(677, 1, '2022-05-02 18:31:33', '2022-05-02 18:31:33', 35, 7, 1, 1, 1),
(678, 1, '2022-05-02 18:31:33', '2022-05-02 18:31:33', 36, 7, 1, 1, 1),
(679, 1, '2022-05-02 18:31:33', '2022-05-02 18:31:33', 37, 7, 1, 1, 1),
(680, 1, '2022-05-02 18:31:33', '2022-05-02 18:31:33', 38, 7, 1, 1, 1),
(681, 1, '2022-05-02 18:31:33', '2022-05-02 18:31:33', 39, 7, 1, 1, 1),
(682, 1, '2022-05-02 18:31:33', '2022-05-02 18:31:33', 40, 7, 1, 1, 1),
(683, 1, '2022-05-02 18:31:33', '2022-05-02 18:31:33', 41, 7, 1, 1, 1),
(684, 1, '2022-05-02 18:31:33', '2022-05-02 18:31:33', 42, 7, 1, 1, 1),
(685, 1, '2022-05-02 18:31:33', '2022-05-02 18:31:33', 43, 7, 1, 1, 1),
(686, 1, '2022-05-02 18:31:33', '2022-05-02 18:31:33', 44, 7, 1, 1, 1),
(687, 1, '2022-05-02 18:31:33', '2022-05-02 18:31:33', 45, 7, 1, 1, 1),
(688, 1, '2022-05-02 18:31:33', '2022-05-02 18:31:33', 46, 7, 1, 1, 1),
(689, 1, '2022-05-02 18:31:33', '2022-05-02 18:31:33', 47, 7, 1, 1, 1),
(690, 1, '2022-05-02 18:31:33', '2022-05-02 18:31:33', 48, 7, 1, 1, 1),
(691, 1, '2022-05-02 18:31:33', '2022-05-02 18:31:33', 49, 7, 1, 1, 1),
(692, 1, '2022-05-02 18:31:33', '2022-05-02 18:31:33', 50, 7, 1, 1, 1),
(693, 1, '2022-05-02 18:31:33', '2022-05-02 18:31:33', 51, 7, 1, 1, 1),
(694, 1, '2022-05-02 18:31:33', '2022-05-02 18:31:33', 52, 7, 1, 1, 1),
(695, 1, '2022-05-02 18:31:33', '2022-05-02 18:31:33', 53, 7, 1, 1, 1),
(696, 1, '2022-05-02 18:31:33', '2022-05-02 18:31:33', 54, 7, 1, 1, 1),
(697, 1, '2022-05-02 18:31:33', '2022-05-02 18:31:33', 55, 7, 1, 1, 1),
(698, 1, '2022-05-02 18:31:33', '2022-05-02 18:31:33', 56, 7, 1, 1, 1),
(699, 1, '2022-05-02 18:31:33', '2022-05-02 18:31:33', 57, 7, 1, 1, 1),
(700, 1, '2022-05-02 18:31:33', '2022-05-02 18:31:33', 58, 7, 1, 1, 1),
(701, 1, '2022-05-02 18:31:33', '2022-05-02 18:31:33', 59, 7, 1, 1, 1),
(702, 1, '2022-05-02 18:31:33', '2022-05-02 18:31:33', 60, 7, 1, 1, 1),
(703, 1, '2022-05-02 18:31:33', '2022-05-02 18:31:33', 61, 7, 1, 1, 1),
(704, 1, '2022-05-02 18:31:33', '2022-05-02 18:31:33', 64, 7, 1, 1, 1),
(705, 1, '2022-05-02 18:31:33', '2022-05-02 18:31:33', 65, 7, 1, 1, 1),
(706, 1, '2022-05-02 18:31:33', '2022-05-02 18:31:33', 66, 7, 1, 1, 1),
(707, 1, '2022-05-02 18:31:33', '2022-05-02 18:31:33', 67, 7, 1, 1, 1),
(708, 1, '2022-05-02 18:31:33', '2022-05-02 18:31:33', 83, 7, 1, 1, 1),
(709, 1, '2022-05-02 18:31:33', '2022-05-02 18:31:33', 84, 7, 1, 1, 1),
(710, 1, '2022-05-02 18:31:33', '2022-05-02 18:31:33', 85, 7, 1, 1, 1),
(711, 1, '2022-05-02 18:31:33', '2022-05-02 18:31:33', 86, 7, 1, 1, 1),
(712, 1, '2022-05-02 18:31:33', '2022-05-02 18:31:33', 160, 7, 1, 1, 1),
(713, 1, '2022-05-02 18:31:33', '2022-05-02 18:31:33', 161, 7, 1, 1, 1),
(714, 1, '2022-05-02 18:31:33', '2022-05-02 18:31:33', 162, 7, 1, 1, 1),
(715, 1, '2022-05-02 18:31:33', '2022-05-02 18:31:33', 163, 7, 1, 1, 1),
(716, 1, '2022-05-02 18:31:33', '2022-05-02 18:31:33', 164, 7, 1, 1, 1),
(717, 1, '2022-05-02 18:31:33', '2022-05-02 18:31:33', 188, 7, 1, 1, 1),
(718, 1, '2022-05-02 18:31:33', '2022-05-02 18:31:33', 193, 7, 1, 1, 1),
(719, 1, '2022-05-02 18:31:33', '2022-05-02 18:31:33', 194, 7, 1, 1, 1),
(720, 1, '2022-05-02 18:31:33', '2022-05-02 18:31:33', 195, 7, 1, 1, 1),
(721, 1, '2022-05-02 18:31:33', '2022-05-02 18:31:33', 376, 7, 1, 1, 1),
(722, 1, '2022-05-02 18:31:33', '2022-05-02 18:31:33', 377, 7, 1, 1, 1),
(723, 1, '2022-05-02 18:31:33', '2022-05-02 18:31:33', 378, 7, 1, 1, 1),
(724, 1, '2022-05-02 18:31:33', '2022-05-02 18:31:33', 379, 7, 1, 1, 1),
(725, 1, '2022-05-02 18:31:33', '2022-05-02 18:31:33', 380, 7, 1, 1, 1),
(726, 1, '2022-05-02 18:31:33', '2022-05-02 18:31:33', 553, 7, 1, 1, 1),
(727, 1, '2022-05-02 18:31:33', '2022-05-02 18:31:33', 554, 7, 1, 1, 1),
(728, 1, '2022-05-02 18:31:33', '2022-05-02 18:31:33', 560, 7, 1, 1, 1),
(729, 1, '2022-05-02 18:31:33', '2022-05-02 18:31:33', 564, 7, 1, 1, 1),
(730, 1, '2022-05-02 18:31:33', '2022-05-02 18:31:33', 1, 8, 1, 1, 1),
(731, 1, '2022-05-02 18:31:33', '2022-05-02 18:31:33', 2, 8, 1, 1, 1),
(732, 1, '2022-05-02 18:31:33', '2022-05-02 18:31:33', 3, 8, 1, 1, 1),
(733, 1, '2022-05-02 18:31:33', '2022-05-02 18:31:33', 4, 8, 1, 1, 1),
(734, 1, '2022-05-02 18:31:33', '2022-05-02 18:31:33', 5, 8, 1, 1, 1),
(735, 1, '2022-05-02 18:31:33', '2022-05-02 18:31:33', 6, 8, 1, 1, 1),
(736, 1, '2022-05-02 18:31:33', '2022-05-02 18:31:33', 7, 8, 1, 1, 1),
(737, 1, '2022-05-02 18:31:33', '2022-05-02 18:31:33', 8, 8, 1, 1, 1),
(738, 1, '2022-05-02 18:31:33', '2022-05-02 18:31:33', 9, 8, 1, 1, 1),
(739, 1, '2022-05-02 18:31:33', '2022-05-02 18:31:33', 10, 8, 1, 1, 1),
(740, 1, '2022-05-02 18:31:33', '2022-05-02 18:31:33', 61, 8, 1, 1, 1),
(741, 1, '2022-05-02 18:31:33', '2022-05-02 18:31:33', 64, 8, 1, 1, 1),
(742, 1, '2022-05-02 18:31:33', '2022-05-02 18:31:33', 65, 8, 1, 1, 1),
(743, 1, '2022-05-02 18:31:33', '2022-05-02 18:31:33', 66, 8, 1, 1, 1),
(744, 1, '2022-05-02 18:31:33', '2022-05-02 18:31:33', 67, 8, 1, 1, 1),
(745, 1, '2022-05-02 18:31:33', '2022-05-02 18:31:33', 83, 8, 1, 1, 1),
(746, 1, '2022-05-02 18:31:33', '2022-05-02 18:31:33', 84, 8, 1, 1, 1),
(747, 1, '2022-05-02 18:31:33', '2022-05-02 18:31:33', 85, 8, 1, 1, 1),
(748, 1, '2022-05-02 18:31:33', '2022-05-02 18:31:33', 86, 8, 1, 1, 1),
(749, 1, '2022-05-02 18:31:33', '2022-05-02 18:31:33', 160, 8, 1, 1, 1),
(750, 1, '2022-05-02 18:31:33', '2022-05-02 18:31:33', 161, 8, 1, 1, 1),
(751, 1, '2022-05-02 18:31:33', '2022-05-02 18:31:33', 162, 8, 1, 1, 1),
(752, 1, '2022-05-02 18:31:33', '2022-05-02 18:31:33', 163, 8, 1, 1, 1),
(753, 1, '2022-05-02 18:31:33', '2022-05-02 18:31:33', 164, 8, 1, 1, 1),
(754, 1, '2022-05-02 18:31:33', '2022-05-02 18:31:33', 188, 8, 1, 1, 1),
(755, 1, '2022-05-02 18:31:33', '2022-05-02 18:31:33', 193, 8, 1, 1, 1),
(756, 1, '2022-05-02 18:31:33', '2022-05-02 18:31:33', 194, 8, 1, 1, 1),
(757, 1, '2022-05-02 18:31:33', '2022-05-02 18:31:33', 195, 8, 1, 1, 1),
(758, 1, '2022-05-02 18:31:33', '2022-05-02 18:31:33', 298, 8, 1, 1, 1);
INSERT INTO `infix_permission_assigns` (`id`, `active_status`, `created_at`, `updated_at`, `module_id`, `role_id`, `created_by`, `updated_by`, `school_id`) VALUES
(759, 1, '2022-05-02 18:31:33', '2022-05-02 18:31:33', 299, 8, 1, 1, 1),
(760, 1, '2022-05-02 18:31:33', '2022-05-02 18:31:33', 300, 8, 1, 1, 1),
(761, 1, '2022-05-02 18:31:33', '2022-05-02 18:31:33', 301, 8, 1, 1, 1),
(762, 1, '2022-05-02 18:31:33', '2022-05-02 18:31:33', 302, 8, 1, 1, 1),
(763, 1, '2022-05-02 18:31:33', '2022-05-02 18:31:33', 303, 8, 1, 1, 1),
(764, 1, '2022-05-02 18:31:33', '2022-05-02 18:31:33', 304, 8, 1, 1, 1),
(765, 1, '2022-05-02 18:31:33', '2022-05-02 18:31:33', 305, 8, 1, 1, 1),
(766, 1, '2022-05-02 18:31:33', '2022-05-02 18:31:33', 306, 8, 1, 1, 1),
(767, 1, '2022-05-02 18:31:33', '2022-05-02 18:31:33', 307, 8, 1, 1, 1),
(768, 1, '2022-05-02 18:31:33', '2022-05-02 18:31:33', 308, 8, 1, 1, 1),
(769, 1, '2022-05-02 18:31:33', '2022-05-02 18:31:33', 309, 8, 1, 1, 1),
(770, 1, '2022-05-02 18:31:33', '2022-05-02 18:31:33', 310, 8, 1, 1, 1),
(771, 1, '2022-05-02 18:31:33', '2022-05-02 18:31:33', 311, 8, 1, 1, 1),
(772, 1, '2022-05-02 18:31:33', '2022-05-02 18:31:33', 312, 8, 1, 1, 1),
(773, 1, '2022-05-02 18:31:33', '2022-05-02 18:31:33', 313, 8, 1, 1, 1),
(774, 1, '2022-05-02 18:31:33', '2022-05-02 18:31:33', 314, 8, 1, 1, 1),
(775, 1, '2022-05-02 18:31:33', '2022-05-02 18:31:33', 376, 8, 1, 1, 1),
(776, 1, '2022-05-02 18:31:33', '2022-05-02 18:31:33', 377, 8, 1, 1, 1),
(777, 1, '2022-05-02 18:31:33', '2022-05-02 18:31:33', 378, 8, 1, 1, 1),
(778, 1, '2022-05-02 18:31:33', '2022-05-02 18:31:33', 379, 8, 1, 1, 1),
(779, 1, '2022-05-02 18:31:33', '2022-05-02 18:31:33', 380, 8, 1, 1, 1),
(780, 1, '2022-05-02 18:31:33', '2022-05-02 18:31:33', 553, 8, 1, 1, 1),
(781, 1, '2022-05-02 18:31:33', '2022-05-02 18:31:33', 554, 8, 1, 1, 1),
(782, 1, '2022-05-02 18:31:33', '2022-05-02 18:31:33', 560, 8, 1, 1, 1),
(783, 1, '2022-05-02 18:31:33', '2022-05-02 18:31:33', 564, 8, 1, 1, 1),
(784, 1, '2022-05-02 18:31:33', '2022-05-02 18:31:33', 1, 9, 1, 1, 1),
(785, 1, '2022-05-02 18:31:33', '2022-05-02 18:31:33', 2, 9, 1, 1, 1),
(786, 1, '2022-05-02 18:31:33', '2022-05-02 18:31:33', 3, 9, 1, 1, 1),
(787, 1, '2022-05-02 18:31:33', '2022-05-02 18:31:33', 4, 9, 1, 1, 1),
(788, 1, '2022-05-02 18:31:33', '2022-05-02 18:31:33', 5, 9, 1, 1, 1),
(789, 1, '2022-05-02 18:31:33', '2022-05-02 18:31:33', 6, 9, 1, 1, 1),
(790, 1, '2022-05-02 18:31:33', '2022-05-02 18:31:33', 7, 9, 1, 1, 1),
(791, 1, '2022-05-02 18:31:33', '2022-05-02 18:31:33', 8, 9, 1, 1, 1),
(792, 1, '2022-05-02 18:31:33', '2022-05-02 18:31:33', 9, 9, 1, 1, 1),
(793, 1, '2022-05-02 18:31:33', '2022-05-02 18:31:33', 10, 9, 1, 1, 1),
(794, 1, '2022-05-02 18:31:33', '2022-05-02 18:31:33', 188, 9, 1, 1, 1),
(795, 1, '2022-05-02 18:31:33', '2022-05-02 18:31:33', 193, 9, 1, 1, 1),
(796, 1, '2022-05-02 18:31:33', '2022-05-02 18:31:33', 194, 9, 1, 1, 1),
(797, 1, '2022-05-02 18:31:33', '2022-05-02 18:31:33', 19, 9, 1, 1, 1),
(798, 1, '2022-05-02 18:31:33', '2022-05-02 18:31:33', 553, 9, 1, 1, 1),
(799, 1, '2022-05-02 18:31:33', '2022-05-02 18:31:33', 554, 9, 1, 1, 1),
(800, 1, '2022-05-02 18:31:33', '2022-05-02 18:31:33', 560, 9, 1, 1, 1),
(801, 1, '2022-05-02 18:31:33', '2022-05-02 18:31:33', 564, 9, 1, 1, 1),
(2505, 1, '2022-05-13 11:40:56', '2022-05-13 11:40:56', 4, 5, 1, 1, 1),
(2504, 1, '2022-05-13 11:40:56', '2022-05-13 11:40:56', 3, 5, 1, 1, 1),
(2503, 1, '2022-05-13 11:40:56', '2022-05-13 11:40:56', 2, 5, 1, 1, 1),
(2502, 1, '2022-05-13 11:40:56', '2022-05-13 11:40:56', 1, 5, 1, 1, 1),
(1615, 1, '2022-05-11 12:48:08', '2022-05-11 12:48:08', 564, 6, 1, 1, 1),
(1614, 1, '2022-05-11 12:48:08', '2022-05-11 12:48:08', 560, 6, 1, 1, 1),
(1613, 1, '2022-05-11 12:48:08', '2022-05-11 12:48:08', 554, 6, 1, 1, 1),
(1612, 1, '2022-05-11 12:48:08', '2022-05-11 12:48:08', 383, 6, 1, 1, 1),
(1611, 1, '2022-05-11 12:48:08', '2022-05-11 12:48:08', 382, 6, 1, 1, 1),
(1610, 1, '2022-05-11 12:48:08', '2022-05-11 12:48:08', 381, 6, 1, 1, 1),
(1609, 1, '2022-05-11 12:48:08', '2022-05-11 12:48:08', 380, 6, 1, 1, 1),
(1608, 1, '2022-05-11 12:48:08', '2022-05-11 12:48:08', 379, 6, 1, 1, 1),
(1607, 1, '2022-05-11 12:48:08', '2022-05-11 12:48:08', 378, 6, 1, 1, 1),
(1606, 1, '2022-05-11 12:48:08', '2022-05-11 12:48:08', 377, 6, 1, 1, 1),
(1605, 1, '2022-05-11 12:48:08', '2022-05-11 12:48:08', 376, 6, 1, 1, 1),
(1604, 1, '2022-05-11 12:48:08', '2022-05-11 12:48:08', 553, 6, 1, 1, 1),
(1603, 1, '2022-05-11 12:48:08', '2022-05-11 12:48:08', 195, 6, 1, 1, 1),
(1602, 1, '2022-05-11 12:48:08', '2022-05-11 12:48:08', 194, 6, 1, 1, 1),
(1601, 1, '2022-05-11 12:48:08', '2022-05-11 12:48:08', 193, 6, 1, 1, 1),
(1600, 1, '2022-05-11 12:48:08', '2022-05-11 12:48:08', 188, 6, 1, 1, 1),
(1599, 1, '2022-05-11 12:48:08', '2022-05-11 12:48:08', 179, 6, 1, 1, 1),
(1598, 1, '2022-05-11 12:48:08', '2022-05-11 12:48:08', 178, 6, 1, 1, 1),
(1597, 1, '2022-05-11 12:48:08', '2022-05-11 12:48:08', 177, 6, 1, 1, 1),
(1596, 1, '2022-05-11 12:48:08', '2022-05-11 12:48:08', 176, 6, 1, 1, 1),
(1595, 1, '2022-05-11 12:48:08', '2022-05-11 12:48:08', 175, 6, 1, 1, 1),
(1594, 1, '2022-05-11 12:48:08', '2022-05-11 12:48:08', 174, 6, 1, 1, 1),
(1593, 1, '2022-05-11 12:48:08', '2022-05-11 12:48:08', 173, 6, 1, 1, 1),
(1592, 1, '2022-05-11 12:48:08', '2022-05-11 12:48:08', 172, 6, 1, 1, 1),
(1591, 1, '2022-05-11 12:48:08', '2022-05-11 12:48:08', 171, 6, 1, 1, 1),
(1590, 1, '2022-05-11 12:48:08', '2022-05-11 12:48:08', 170, 6, 1, 1, 1),
(1589, 1, '2022-05-11 12:48:08', '2022-05-11 12:48:08', 169, 6, 1, 1, 1),
(1588, 1, '2022-05-11 12:48:08', '2022-05-11 12:48:08', 168, 6, 1, 1, 1),
(1587, 1, '2022-05-11 12:48:08', '2022-05-11 12:48:08', 167, 6, 1, 1, 1),
(1586, 1, '2022-05-11 12:48:08', '2022-05-11 12:48:08', 166, 6, 1, 1, 1),
(1585, 1, '2022-05-11 12:48:08', '2022-05-11 12:48:08', 165, 6, 1, 1, 1),
(1584, 1, '2022-05-11 12:48:08', '2022-05-11 12:48:08', 164, 6, 1, 1, 1),
(1583, 1, '2022-05-11 12:48:08', '2022-05-11 12:48:08', 163, 6, 1, 1, 1),
(1582, 1, '2022-05-11 12:48:08', '2022-05-11 12:48:08', 162, 6, 1, 1, 1),
(1581, 1, '2022-05-11 12:48:08', '2022-05-11 12:48:08', 161, 6, 1, 1, 1),
(1580, 1, '2022-05-11 12:48:08', '2022-05-11 12:48:08', 160, 6, 1, 1, 1),
(1579, 1, '2022-05-11 12:48:08', '2022-05-11 12:48:08', 136, 6, 1, 1, 1),
(1578, 1, '2022-05-11 12:48:08', '2022-05-11 12:48:08', 135, 6, 1, 1, 1),
(1577, 1, '2022-05-11 12:48:08', '2022-05-11 12:48:08', 134, 6, 1, 1, 1),
(1576, 1, '2022-05-11 12:48:08', '2022-05-11 12:48:08', 133, 6, 1, 1, 1),
(1575, 1, '2022-05-11 12:48:08', '2022-05-11 12:48:08', 132, 6, 1, 1, 1),
(1574, 1, '2022-05-11 12:48:08', '2022-05-11 12:48:08', 131, 6, 1, 1, 1),
(1573, 1, '2022-05-11 12:48:08', '2022-05-11 12:48:08', 130, 6, 1, 1, 1),
(1572, 1, '2022-05-11 12:48:08', '2022-05-11 12:48:08', 129, 6, 1, 1, 1),
(1571, 1, '2022-05-11 12:48:08', '2022-05-11 12:48:08', 128, 6, 1, 1, 1),
(1570, 1, '2022-05-11 12:48:08', '2022-05-11 12:48:08', 127, 6, 1, 1, 1),
(1569, 1, '2022-05-11 12:48:08', '2022-05-11 12:48:08', 126, 6, 1, 1, 1),
(1568, 1, '2022-05-11 12:48:08', '2022-05-11 12:48:08', 125, 6, 1, 1, 1),
(1567, 1, '2022-05-11 12:48:08', '2022-05-11 12:48:08', 124, 6, 1, 1, 1),
(1566, 1, '2022-05-11 12:48:08', '2022-05-11 12:48:08', 123, 6, 1, 1, 1),
(1565, 1, '2022-05-11 12:48:08', '2022-05-11 12:48:08', 122, 6, 1, 1, 1),
(1564, 1, '2022-05-11 12:48:08', '2022-05-11 12:48:08', 121, 6, 1, 1, 1),
(1563, 1, '2022-05-11 12:48:08', '2022-05-11 12:48:08', 120, 6, 1, 1, 1),
(1562, 1, '2022-05-11 12:48:08', '2022-05-11 12:48:08', 119, 6, 1, 1, 1),
(1561, 1, '2022-05-11 12:48:08', '2022-05-11 12:48:08', 118, 6, 1, 1, 1),
(1560, 1, '2022-05-11 12:48:08', '2022-05-11 12:48:08', 117, 6, 1, 1, 1),
(1559, 1, '2022-05-11 12:48:08', '2022-05-11 12:48:08', 116, 6, 1, 1, 1),
(1558, 1, '2022-05-11 12:48:08', '2022-05-11 12:48:08', 115, 6, 1, 1, 1),
(1557, 1, '2022-05-11 12:48:08', '2022-05-11 12:48:08', 114, 6, 1, 1, 1),
(1556, 1, '2022-05-11 12:48:08', '2022-05-11 12:48:08', 113, 6, 1, 1, 1),
(1555, 1, '2022-05-11 12:48:08', '2022-05-11 12:48:08', 112, 6, 1, 1, 1),
(1554, 1, '2022-05-11 12:48:08', '2022-05-11 12:48:08', 111, 6, 1, 1, 1),
(1553, 1, '2022-05-11 12:48:08', '2022-05-11 12:48:08', 110, 6, 1, 1, 1),
(1552, 1, '2022-05-11 12:48:08', '2022-05-11 12:48:08', 109, 6, 1, 1, 1),
(1551, 1, '2022-05-11 12:48:08', '2022-05-11 12:48:08', 108, 6, 1, 1, 1),
(1550, 1, '2022-05-11 12:48:08', '2022-05-11 12:48:08', 86, 6, 1, 1, 1),
(1549, 1, '2022-05-11 12:48:08', '2022-05-11 12:48:08', 85, 6, 1, 1, 1),
(1548, 1, '2022-05-11 12:48:08', '2022-05-11 12:48:08', 84, 6, 1, 1, 1),
(1547, 1, '2022-05-11 12:48:08', '2022-05-11 12:48:08', 83, 6, 1, 1, 1),
(1546, 1, '2022-05-11 12:48:08', '2022-05-11 12:48:08', 70, 6, 1, 1, 1),
(1545, 1, '2022-05-11 12:48:08', '2022-05-11 12:48:08', 69, 6, 1, 1, 1),
(1544, 1, '2022-05-11 12:48:08', '2022-05-11 12:48:08', 68, 6, 1, 1, 1),
(1543, 1, '2022-05-11 12:48:08', '2022-05-11 12:48:08', 67, 6, 1, 1, 1),
(1542, 1, '2022-05-11 12:48:08', '2022-05-11 12:48:08', 66, 6, 1, 1, 1),
(1541, 1, '2022-05-11 12:48:08', '2022-05-11 12:48:08', 65, 6, 1, 1, 1),
(1540, 1, '2022-05-11 12:48:08', '2022-05-11 12:48:08', 64, 6, 1, 1, 1),
(1539, 1, '2022-05-11 12:48:08', '2022-05-11 12:48:08', 61, 6, 1, 1, 1),
(1538, 1, '2022-05-11 12:48:08', '2022-05-11 12:48:08', 60, 6, 1, 1, 1),
(1537, 1, '2022-05-11 12:48:08', '2022-05-11 12:48:08', 59, 6, 1, 1, 1),
(1536, 1, '2022-05-11 12:48:08', '2022-05-11 12:48:08', 58, 6, 1, 1, 1),
(1535, 1, '2022-05-11 12:48:08', '2022-05-11 12:48:08', 57, 6, 1, 1, 1),
(1534, 1, '2022-05-11 12:48:08', '2022-05-11 12:48:08', 56, 6, 1, 1, 1),
(1533, 1, '2022-05-11 12:48:07', '2022-05-11 12:48:07', 55, 6, 1, 1, 1),
(1532, 1, '2022-05-11 12:48:07', '2022-05-11 12:48:07', 54, 6, 1, 1, 1),
(1531, 1, '2022-05-11 12:48:07', '2022-05-11 12:48:07', 53, 6, 1, 1, 1),
(1530, 1, '2022-05-11 12:48:07', '2022-05-11 12:48:07', 52, 6, 1, 1, 1),
(1529, 1, '2022-05-11 12:48:07', '2022-05-11 12:48:07', 51, 6, 1, 1, 1),
(1528, 1, '2022-05-11 12:48:07', '2022-05-11 12:48:07', 50, 6, 1, 1, 1),
(1527, 1, '2022-05-11 12:48:07', '2022-05-11 12:48:07', 49, 6, 1, 1, 1),
(1526, 1, '2022-05-11 12:48:07', '2022-05-11 12:48:07', 48, 6, 1, 1, 1),
(1525, 1, '2022-05-11 12:48:07', '2022-05-11 12:48:07', 47, 6, 1, 1, 1),
(1524, 1, '2022-05-11 12:48:07', '2022-05-11 12:48:07', 46, 6, 1, 1, 1),
(1523, 1, '2022-05-11 12:48:07', '2022-05-11 12:48:07', 45, 6, 1, 1, 1),
(1522, 1, '2022-05-11 12:48:07', '2022-05-11 12:48:07', 44, 6, 1, 1, 1),
(1521, 1, '2022-05-11 12:48:07', '2022-05-11 12:48:07', 43, 6, 1, 1, 1),
(1520, 1, '2022-05-11 12:48:07', '2022-05-11 12:48:07', 42, 6, 1, 1, 1),
(1519, 1, '2022-05-11 12:48:07', '2022-05-11 12:48:07', 41, 6, 1, 1, 1),
(1518, 1, '2022-05-11 12:48:07', '2022-05-11 12:48:07', 40, 6, 1, 1, 1),
(1517, 1, '2022-05-11 12:48:07', '2022-05-11 12:48:07', 39, 6, 1, 1, 1),
(1516, 1, '2022-05-11 12:48:07', '2022-05-11 12:48:07', 38, 6, 1, 1, 1),
(1515, 1, '2022-05-11 12:48:07', '2022-05-11 12:48:07', 37, 6, 1, 1, 1),
(1514, 1, '2022-05-11 12:48:07', '2022-05-11 12:48:07', 36, 6, 1, 1, 1),
(1513, 1, '2022-05-11 12:48:07', '2022-05-11 12:48:07', 35, 6, 1, 1, 1),
(1512, 1, '2022-05-11 12:48:07', '2022-05-11 12:48:07', 34, 6, 1, 1, 1),
(1511, 1, '2022-05-11 12:48:07', '2022-05-11 12:48:07', 33, 6, 1, 1, 1),
(1510, 1, '2022-05-11 12:48:07', '2022-05-11 12:48:07', 32, 6, 1, 1, 1),
(1509, 1, '2022-05-11 12:48:07', '2022-05-11 12:48:07', 31, 6, 1, 1, 1),
(1508, 1, '2022-05-11 12:48:07', '2022-05-11 12:48:07', 30, 6, 1, 1, 1),
(1507, 1, '2022-05-11 12:48:07', '2022-05-11 12:48:07', 29, 6, 1, 1, 1),
(1506, 1, '2022-05-11 12:48:07', '2022-05-11 12:48:07', 28, 6, 1, 1, 1),
(1505, 1, '2022-05-11 12:48:07', '2022-05-11 12:48:07', 27, 6, 1, 1, 1),
(1504, 1, '2022-05-11 12:48:07', '2022-05-11 12:48:07', 26, 6, 1, 1, 1),
(1503, 1, '2022-05-11 12:48:07', '2022-05-11 12:48:07', 25, 6, 1, 1, 1),
(1502, 1, '2022-05-11 12:48:07', '2022-05-11 12:48:07', 24, 6, 1, 1, 1),
(1501, 1, '2022-05-11 12:48:07', '2022-05-11 12:48:07', 23, 6, 1, 1, 1),
(1500, 1, '2022-05-11 12:48:07', '2022-05-11 12:48:07', 22, 6, 1, 1, 1),
(1499, 1, '2022-05-11 12:48:07', '2022-05-11 12:48:07', 21, 6, 1, 1, 1),
(1498, 1, '2022-05-11 12:48:07', '2022-05-11 12:48:07', 20, 6, 1, 1, 1),
(1497, 1, '2022-05-11 12:48:07', '2022-05-11 12:48:07', 19, 6, 1, 1, 1),
(1496, 1, '2022-05-11 12:48:07', '2022-05-11 12:48:07', 18, 6, 1, 1, 1),
(1495, 1, '2022-05-11 12:48:07', '2022-05-11 12:48:07', 17, 6, 1, 1, 1),
(1494, 1, '2022-05-11 12:48:07', '2022-05-11 12:48:07', 16, 6, 1, 1, 1),
(1493, 1, '2022-05-11 12:48:07', '2022-05-11 12:48:07', 15, 6, 1, 1, 1),
(1492, 1, '2022-05-11 12:48:07', '2022-05-11 12:48:07', 14, 6, 1, 1, 1),
(1491, 1, '2022-05-11 12:48:07', '2022-05-11 12:48:07', 13, 6, 1, 1, 1),
(1490, 1, '2022-05-11 12:48:07', '2022-05-11 12:48:07', 12, 6, 1, 1, 1),
(1489, 1, '2022-05-11 12:48:07', '2022-05-11 12:48:07', 11, 6, 1, 1, 1),
(1488, 1, '2022-05-11 12:48:07', '2022-05-11 12:48:07', 10, 6, 1, 1, 1),
(1487, 1, '2022-05-11 12:48:07', '2022-05-11 12:48:07', 9, 6, 1, 1, 1),
(1486, 1, '2022-05-11 12:48:07', '2022-05-11 12:48:07', 8, 6, 1, 1, 1),
(1485, 1, '2022-05-11 12:48:07', '2022-05-11 12:48:07', 7, 6, 1, 1, 1),
(1484, 1, '2022-05-11 12:48:07', '2022-05-11 12:48:07', 6, 6, 1, 1, 1),
(1483, 1, '2022-05-11 12:48:07', '2022-05-11 12:48:07', 1, 6, 1, 1, 1),
(939, 1, '2022-05-02 18:31:34', '2022-05-02 18:31:34', 1, 2, 1, 1, 1),
(940, 1, '2022-05-02 18:31:34', '2022-05-02 18:31:34', 2, 2, 1, 1, 1),
(941, 1, '2022-05-02 18:31:34', '2022-05-02 18:31:34', 3, 2, 1, 1, 1),
(942, 1, '2022-05-02 18:31:34', '2022-05-02 18:31:34', 4, 2, 1, 1, 1),
(943, 1, '2022-05-02 18:31:34', '2022-05-02 18:31:34', 5, 2, 1, 1, 1),
(944, 1, '2022-05-02 18:31:34', '2022-05-02 18:31:34', 6, 2, 1, 1, 1),
(945, 1, '2022-05-02 18:31:34', '2022-05-02 18:31:34', 7, 2, 1, 1, 1),
(946, 1, '2022-05-02 18:31:34', '2022-05-02 18:31:34', 8, 2, 1, 1, 1),
(947, 1, '2022-05-02 18:31:34', '2022-05-02 18:31:34', 9, 2, 1, 1, 1),
(948, 1, '2022-05-02 18:31:34', '2022-05-02 18:31:34', 10, 2, 1, 1, 1),
(949, 1, '2022-05-02 18:31:34', '2022-05-02 18:31:34', 11, 2, 1, 1, 1),
(950, 1, '2022-05-02 18:31:34', '2022-05-02 18:31:34', 12, 2, 1, 1, 1),
(951, 1, '2022-05-02 18:31:34', '2022-05-02 18:31:34', 13, 2, 1, 1, 1),
(952, 1, '2022-05-02 18:31:34', '2022-05-02 18:31:34', 14, 2, 1, 1, 1),
(953, 1, '2022-05-02 18:31:34', '2022-05-02 18:31:34', 15, 2, 1, 1, 1),
(954, 1, '2022-05-02 18:31:34', '2022-05-02 18:31:34', 16, 2, 1, 1, 1),
(955, 1, '2022-05-02 18:31:34', '2022-05-02 18:31:34', 17, 2, 1, 1, 1),
(956, 1, '2022-05-02 18:31:34', '2022-05-02 18:31:34', 18, 2, 1, 1, 1),
(957, 1, '2022-05-02 18:31:34', '2022-05-02 18:31:34', 19, 2, 1, 1, 1),
(958, 1, '2022-05-02 18:31:34', '2022-05-02 18:31:34', 20, 2, 1, 1, 1),
(959, 1, '2022-05-02 18:31:34', '2022-05-02 18:31:34', 21, 2, 1, 1, 1),
(960, 1, '2022-05-02 18:31:34', '2022-05-02 18:31:34', 22, 2, 1, 1, 1),
(961, 1, '2022-05-02 18:31:34', '2022-05-02 18:31:34', 23, 2, 1, 1, 1),
(962, 1, '2022-05-02 18:31:34', '2022-05-02 18:31:34', 24, 2, 1, 1, 1),
(963, 1, '2022-05-02 18:31:34', '2022-05-02 18:31:34', 25, 2, 1, 1, 1),
(964, 1, '2022-05-02 18:31:34', '2022-05-02 18:31:34', 26, 2, 1, 1, 1),
(965, 1, '2022-05-02 18:31:34', '2022-05-02 18:31:34', 27, 2, 1, 1, 1),
(966, 1, '2022-05-02 18:31:34', '2022-05-02 18:31:34', 28, 2, 1, 1, 1),
(967, 1, '2022-05-02 18:31:34', '2022-05-02 18:31:34', 29, 2, 1, 1, 1),
(968, 1, '2022-05-02 18:31:34', '2022-05-02 18:31:34', 30, 2, 1, 1, 1),
(969, 1, '2022-05-02 18:31:34', '2022-05-02 18:31:34', 31, 2, 1, 1, 1),
(970, 1, '2022-05-02 18:31:34', '2022-05-02 18:31:34', 32, 2, 1, 1, 1),
(971, 1, '2022-05-02 18:31:34', '2022-05-02 18:31:34', 33, 2, 1, 1, 1),
(972, 1, '2022-05-02 18:31:34', '2022-05-02 18:31:34', 34, 2, 1, 1, 1),
(973, 1, '2022-05-02 18:31:34', '2022-05-02 18:31:34', 35, 2, 1, 1, 1),
(974, 1, '2022-05-02 18:31:34', '2022-05-02 18:31:34', 36, 2, 1, 1, 1),
(975, 1, '2022-05-02 18:31:34', '2022-05-02 18:31:34', 37, 2, 1, 1, 1),
(976, 1, '2022-05-02 18:31:34', '2022-05-02 18:31:34', 38, 2, 1, 1, 1),
(977, 1, '2022-05-02 18:31:34', '2022-05-02 18:31:34', 39, 2, 1, 1, 1),
(978, 1, '2022-05-02 18:31:34', '2022-05-02 18:31:34', 40, 2, 1, 1, 1),
(979, 1, '2022-05-02 18:31:34', '2022-05-02 18:31:34', 41, 2, 1, 1, 1),
(980, 1, '2022-05-02 18:31:34', '2022-05-02 18:31:34', 42, 2, 1, 1, 1),
(981, 1, '2022-05-02 18:31:34', '2022-05-02 18:31:34', 43, 2, 1, 1, 1),
(982, 1, '2022-05-02 18:31:34', '2022-05-02 18:31:34', 44, 2, 1, 1, 1),
(983, 1, '2022-05-02 18:31:34', '2022-05-02 18:31:34', 45, 2, 1, 1, 1),
(984, 1, '2022-05-02 18:31:34', '2022-05-02 18:31:34', 46, 2, 1, 1, 1),
(985, 1, '2022-05-02 18:31:34', '2022-05-02 18:31:34', 47, 2, 1, 1, 1),
(986, 1, '2022-05-02 18:31:34', '2022-05-02 18:31:34', 48, 2, 1, 1, 1),
(987, 1, '2022-05-02 18:31:34', '2022-05-02 18:31:34', 49, 2, 1, 1, 1),
(988, 1, '2022-05-02 18:31:34', '2022-05-02 18:31:34', 50, 2, 1, 1, 1),
(989, 1, '2022-05-02 18:31:34', '2022-05-02 18:31:34', 51, 2, 1, 1, 1),
(990, 1, '2022-05-02 18:31:34', '2022-05-02 18:31:34', 52, 2, 1, 1, 1),
(991, 1, '2022-05-02 18:31:34', '2022-05-02 18:31:34', 53, 2, 1, 1, 1),
(992, 1, '2022-05-02 18:31:34', '2022-05-02 18:31:34', 54, 2, 1, 1, 1),
(993, 1, '2022-05-02 18:31:34', '2022-05-02 18:31:34', 55, 2, 1, 1, 1),
(994, 1, '2022-05-02 18:31:34', '2022-05-02 18:31:34', 554, 2, 1, 1, 1),
(995, 1, '2022-05-02 18:31:34', '2022-05-02 18:31:34', 555, 2, 1, 1, 1),
(996, 1, '2022-05-02 18:31:34', '2022-05-02 18:31:34', 559, 2, 1, 1, 1),
(997, 1, '2022-05-02 18:31:34', '2022-05-02 18:31:34', 564, 2, 1, 1, 1),
(998, 1, '2022-05-02 18:31:34', '2022-05-02 18:31:34', 56, 3, 1, 1, 1),
(999, 1, '2022-05-02 18:31:34', '2022-05-02 18:31:34', 57, 3, 1, 1, 1),
(1000, 1, '2022-05-02 18:31:34', '2022-05-02 18:31:34', 58, 3, 1, 1, 1),
(1001, 1, '2022-05-02 18:31:34', '2022-05-02 18:31:34', 59, 3, 1, 1, 1),
(1002, 1, '2022-05-02 18:31:34', '2022-05-02 18:31:34', 60, 3, 1, 1, 1),
(1003, 1, '2022-05-02 18:31:34', '2022-05-02 18:31:34', 61, 3, 1, 1, 1),
(1004, 1, '2022-05-02 18:31:34', '2022-05-02 18:31:34', 62, 3, 1, 1, 1),
(1005, 1, '2022-05-02 18:31:34', '2022-05-02 18:31:34', 63, 3, 1, 1, 1),
(1006, 1, '2022-05-02 18:31:34', '2022-05-02 18:31:34', 64, 3, 1, 1, 1),
(1007, 1, '2022-05-02 18:31:34', '2022-05-02 18:31:34', 65, 3, 1, 1, 1),
(1008, 1, '2022-05-02 18:31:34', '2022-05-02 18:31:34', 66, 3, 1, 1, 1),
(1009, 1, '2022-05-02 18:31:34', '2022-05-02 18:31:34', 67, 3, 1, 1, 1),
(1010, 1, '2022-05-02 18:31:34', '2022-05-02 18:31:34', 68, 3, 1, 1, 1),
(1011, 1, '2022-05-02 18:31:34', '2022-05-02 18:31:34', 69, 3, 1, 1, 1),
(1012, 1, '2022-05-02 18:31:34', '2022-05-02 18:31:34', 70, 3, 1, 1, 1),
(1013, 1, '2022-05-02 18:31:34', '2022-05-02 18:31:34', 71, 3, 1, 1, 1),
(1014, 1, '2022-05-02 18:31:34', '2022-05-02 18:31:34', 72, 3, 1, 1, 1),
(1015, 1, '2022-05-02 18:31:34', '2022-05-02 18:31:34', 73, 3, 1, 1, 1),
(1016, 1, '2022-05-02 18:31:34', '2022-05-02 18:31:34', 74, 3, 1, 1, 1),
(1017, 1, '2022-05-02 18:31:34', '2022-05-02 18:31:34', 75, 3, 1, 1, 1),
(1018, 1, '2022-05-02 18:31:34', '2022-05-02 18:31:34', 76, 3, 1, 1, 1),
(1019, 1, '2022-05-02 18:31:34', '2022-05-02 18:31:34', 77, 3, 1, 1, 1),
(1020, 1, '2022-05-02 18:31:34', '2022-05-02 18:31:34', 78, 3, 1, 1, 1),
(1021, 1, '2022-05-02 18:31:34', '2022-05-02 18:31:34', 79, 3, 1, 1, 1),
(1022, 1, '2022-05-02 18:31:34', '2022-05-02 18:31:34', 80, 3, 1, 1, 1),
(1023, 1, '2022-05-02 18:31:34', '2022-05-02 18:31:34', 81, 3, 1, 1, 1),
(1024, 1, '2022-05-02 18:31:34', '2022-05-02 18:31:34', 82, 3, 1, 1, 1),
(1025, 1, '2022-05-02 18:31:34', '2022-05-02 18:31:34', 83, 3, 1, 1, 1),
(1026, 1, '2022-05-02 18:31:34', '2022-05-02 18:31:34', 84, 3, 1, 1, 1),
(1027, 1, '2022-05-02 18:31:34', '2022-05-02 18:31:34', 85, 3, 1, 1, 1),
(1028, 1, '2022-05-02 18:31:34', '2022-05-02 18:31:34', 86, 3, 1, 1, 1),
(1029, 1, '2022-05-02 18:31:34', '2022-05-02 18:31:34', 87, 3, 1, 1, 1),
(1030, 1, '2022-05-02 18:31:34', '2022-05-02 18:31:34', 88, 3, 1, 1, 1),
(1031, 1, '2022-05-02 18:31:34', '2022-05-02 18:31:34', 89, 3, 1, 1, 1),
(1032, 1, '2022-05-02 18:31:34', '2022-05-02 18:31:34', 90, 3, 1, 1, 1),
(1033, 1, '2022-05-02 18:31:34', '2022-05-02 18:31:34', 91, 3, 1, 1, 1),
(1034, 1, '2022-05-02 18:31:34', '2022-05-02 18:31:34', 92, 3, 1, 1, 1),
(1035, 1, '2022-05-02 18:31:34', '2022-05-02 18:31:34', 93, 3, 1, 1, 1),
(1036, 1, '2022-05-02 18:31:34', '2022-05-02 18:31:34', 94, 3, 1, 1, 1),
(1037, 1, '2022-05-02 18:31:34', '2022-05-02 18:31:34', 95, 3, 1, 1, 1),
(1038, 1, '2022-05-02 18:31:34', '2022-05-02 18:31:34', 96, 3, 1, 1, 1),
(1039, 1, '2022-05-02 18:31:34', '2022-05-02 18:31:34', 554, 3, 1, 1, 1),
(1040, 1, '2022-05-02 18:31:34', '2022-05-02 18:31:34', 555, 3, 1, 1, 1),
(1041, 1, '2022-05-02 18:31:34', '2022-05-02 18:31:34', 560, 3, 1, 1, 1),
(1042, 1, '2022-05-02 18:31:34', '2022-05-02 18:31:34', 559, 3, 1, 1, 1),
(1043, 1, '2022-05-02 18:31:34', '2022-05-02 18:31:34', 564, 3, 1, 1, 1);

-- --------------------------------------------------------

--
-- Structure de la table `infix_roles`
--

DROP TABLE IF EXISTS `infix_roles`;
CREATE TABLE IF NOT EXISTS `infix_roles` (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'System',
  `active_status` tinyint NOT NULL DEFAULT '1',
  `created_by` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT '1',
  `updated_by` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `school_id` int UNSIGNED DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `infix_roles_school_id_foreign` (`school_id`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `infix_roles`
--

INSERT INTO `infix_roles` (`id`, `name`, `type`, `active_status`, `created_by`, `updated_by`, `created_at`, `updated_at`, `school_id`) VALUES
(1, 'Super admin', 'System', 1, '1', '1', '2022-05-02 06:25:57', NULL, 1),
(2, 'Etudiant ', 'System', 1, '1', '1', '2022-05-02 06:25:57', NULL, 1),
(3, 'Parents', 'System', 1, '1', '1', '2022-05-02 06:25:57', NULL, 1),
(4, 'Enseignant', 'System', 1, '1', '1', '2022-05-02 06:25:57', NULL, 1),
(5, 'Admin', 'System', 1, '1', '1', '2022-05-02 06:25:57', NULL, 1),
(6, 'Comptable', 'System', 1, '1', '1', '2022-05-02 06:25:57', NULL, 1),
(7, 'Receptioniste', 'System', 1, '1', '1', '2022-05-02 06:25:57', NULL, 1),
(8, 'Bibliothécaire', 'System', 1, '1', '1', '2022-05-02 06:25:57', NULL, 1),
(9, 'Chauffeur', 'System', 1, '1', '1', '2022-05-02 06:25:57', NULL, 1);

-- --------------------------------------------------------

--
-- Structure de la table `jobs`
--

DROP TABLE IF EXISTS `jobs`;
CREATE TABLE IF NOT EXISTS `jobs` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `queue` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `attempts` tinyint UNSIGNED NOT NULL,
  `reserved_at` int UNSIGNED DEFAULT NULL,
  `available_at` int UNSIGNED NOT NULL,
  `created_at` int UNSIGNED NOT NULL,
  PRIMARY KEY (`id`),
  KEY `jobs_queue_index` (`queue`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `languages`
--

DROP TABLE IF EXISTS `languages`;
CREATE TABLE IF NOT EXISTS `languages` (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `native` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rtl` tinyint NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `school_id` int UNSIGNED DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `languages_school_id_foreign` (`school_id`)
) ENGINE=MyISAM AUTO_INCREMENT=115 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `languages`
--

INSERT INTO `languages` (`id`, `code`, `name`, `native`, `rtl`, `created_at`, `updated_at`, `school_id`) VALUES
(1, 'af', 'Afrikaans', 'Afrikaans', 0, NULL, NULL, 1),
(2, 'am', 'Amharic', 'አማርኛ', 0, NULL, NULL, 1),
(3, 'ar', 'Arabic', 'العربية', 1, NULL, NULL, 1),
(4, 'ay', 'Aymara', 'Aymar', 0, NULL, NULL, 1),
(5, 'az', 'Azerbaijani', 'Azərbaycanca / آذربايجان', 0, NULL, NULL, 1),
(6, 'be', 'Belarusian', 'Беларуская', 0, NULL, NULL, 1),
(7, 'bg', 'Bulgarian', 'Български', 0, NULL, NULL, 1),
(8, 'bi', 'Bislama', 'Bislama', 0, NULL, NULL, 1),
(9, 'bn', 'Bengali', 'বাংলা', 0, NULL, NULL, 1),
(10, 'bs', 'Bosnian', 'Bosanski', 0, NULL, NULL, 1),
(11, 'ca', 'Catalan', 'Català', 0, NULL, NULL, 1),
(12, 'ch', 'Chamorro', 'Chamoru', 0, NULL, NULL, 1),
(13, 'cs', 'Czech', 'Česky', 0, NULL, NULL, 1),
(14, 'da', 'Danish', 'Dansk', 0, NULL, NULL, 1),
(15, 'de', 'German', 'Deutsch', 0, NULL, NULL, 1),
(16, 'dv', 'Divehi', 'ދިވެހިބަސް', 1, NULL, NULL, 1),
(17, 'dz', 'Dzongkha', 'ཇོང་ཁ', 0, NULL, NULL, 1),
(18, 'el', 'Greek', 'Ελληνικά', 0, NULL, NULL, 1),
(19, 'en', 'English', 'English', 0, NULL, NULL, 1),
(20, 'es', 'Spanish', 'Español', 0, NULL, NULL, 1),
(21, 'et', 'Estonian', 'Eesti', 0, NULL, NULL, 1),
(22, 'eu', 'Basque', 'Euskara', 0, NULL, NULL, 1),
(23, 'fa', 'Persian', 'فارسی', 1, NULL, NULL, 1),
(24, 'ff', 'Peul', 'Fulfulde', 0, NULL, NULL, 1),
(25, 'fi', 'Finnish', 'Suomi', 0, NULL, NULL, 1),
(26, 'fj', 'Fijian', 'Na Vosa Vakaviti', 0, NULL, NULL, 1),
(27, 'fo', 'Faroese', 'Føroyskt', 0, NULL, NULL, 1),
(28, 'fr', 'French', 'Français', 0, NULL, NULL, 1),
(29, 'ga', 'Irish', 'Gaeilge', 0, NULL, NULL, 1),
(30, 'gl', 'Galician', 'Galego', 0, NULL, NULL, 1),
(31, 'gn', 'Guarani', 'Avañe\'ẽ', 0, NULL, NULL, 1),
(32, 'gv', 'Manx', 'Gaelg', 0, NULL, NULL, 1),
(33, 'he', 'Hebrew', 'עברית', 1, NULL, NULL, 1),
(34, 'hi', 'Hindi', 'हिन्दी', 0, NULL, NULL, 1),
(35, 'hr', 'Croatian', 'Hrvatski', 0, NULL, NULL, 1),
(36, 'ht', 'Haitian', 'Krèyol ayisyen', 0, NULL, NULL, 1),
(37, 'hu', 'Hungarian', 'Magyar', 0, NULL, NULL, 1),
(38, 'hy', 'Armenian', 'Հայերեն', 0, NULL, NULL, 1),
(39, 'indo', 'Indonesian', 'Bahasa Indonesia', 0, NULL, NULL, 1),
(40, 'is', 'Icelandic', 'Íslenska', 0, NULL, NULL, 1),
(41, 'it', 'Italian', 'Italiano', 0, NULL, NULL, 1),
(42, 'ja', 'Japanese', '日本語', 0, NULL, NULL, 1),
(43, 'ka', 'Georgian', 'ქართული', 0, NULL, NULL, 1),
(44, 'kg', 'Kongo', 'KiKongo', 0, NULL, NULL, 1),
(45, 'kk', 'Kazakh', 'Қазақша', 0, NULL, NULL, 1),
(46, 'kl', 'Greenlandic', 'Kalaallisut', 0, NULL, NULL, 1),
(47, 'km', 'Cambodian', 'ភាសាខ្មែរ', 0, NULL, NULL, 1),
(48, 'ko', 'Korean', '한국어', 0, NULL, NULL, 1),
(49, 'ku', 'Kurdish', 'Kurdî / كوردی', 1, NULL, NULL, 1),
(50, 'ky', 'Kirghiz', 'Kırgızca / Кыргызча', 0, NULL, NULL, 1),
(51, 'la', 'Latin', 'Latina', 0, NULL, NULL, 1),
(52, 'lb', 'Luxembourgish', 'Lëtzebuergesch', 0, NULL, NULL, 1),
(53, 'ln', 'Lingala', 'Lingála', 0, NULL, NULL, 1),
(54, 'lo', 'Laotian', 'ລາວ / Pha xa lao', 0, NULL, NULL, 1),
(55, 'lt', 'Lithuanian', 'Lietuvių', 0, NULL, NULL, 1),
(56, 'lu', '', '', 0, NULL, NULL, 1),
(57, 'lv', 'Latvian', 'Latviešu', 0, NULL, NULL, 1),
(58, 'mg', 'Malagasy', 'Malagasy', 0, NULL, NULL, 1),
(59, 'mh', 'Marshallese', 'Kajin Majel / Ebon', 0, NULL, NULL, 1),
(60, 'mi', 'Maori', 'Māori', 0, NULL, NULL, 1),
(61, 'mk', 'Macedonian', 'Македонски', 0, NULL, NULL, 1),
(62, 'mn', 'Mongolian', 'Монгол', 0, NULL, NULL, 1),
(63, 'ms', 'Malay', 'Bahasa Melayu', 0, NULL, NULL, 1),
(64, 'mt', 'Maltese', 'bil-Malti', 0, NULL, NULL, 1),
(65, 'my', 'Burmese', 'မြန်မာစာ', 0, NULL, NULL, 1),
(66, 'na', 'Nauruan', 'Dorerin Naoero', 0, NULL, NULL, 1),
(67, 'nb', '', '', 0, NULL, NULL, 1),
(68, 'nd', 'North Ndebele', 'Sindebele', 0, NULL, NULL, 1),
(69, 'ne', 'Nepali', 'नेपाली', 0, NULL, NULL, 1),
(70, 'nl', 'Dutch', 'Nederlands', 0, NULL, NULL, 1),
(71, 'nn', 'Norwegian Nynorsk', 'Norsk (nynorsk)', 0, NULL, NULL, 1),
(72, 'no', 'Norwegian', 'Norsk (bokmål / riksmål)', 0, NULL, NULL, 1),
(73, 'nr', 'South Ndebele', 'isiNdebele', 0, NULL, NULL, 1),
(74, 'ny', 'Chichewa', 'Chi-Chewa', 0, NULL, NULL, 1),
(75, 'oc', 'Occitan', 'Occitan', 0, NULL, NULL, 1),
(76, 'pa', 'Panjabi / Punjabi', 'ਪੰਜਾਬੀ / पंजाबी / پنجابي', 0, NULL, NULL, 1),
(77, 'pl', 'Polish', 'Polski', 0, NULL, NULL, 1),
(78, 'ps', 'Pashto', 'پښتو', 1, NULL, NULL, 1),
(79, 'pt', 'Portuguese', 'Português', 0, NULL, NULL, 1),
(80, 'qu', 'Quechua', 'Runa Simi', 0, NULL, NULL, 1),
(81, 'rn', 'Kirundi', 'Kirundi', 0, NULL, NULL, 1),
(82, 'ro', 'Romanian', 'Română', 0, NULL, NULL, 1),
(83, 'ru', 'Russian', 'Русский', 0, NULL, NULL, 1),
(84, 'rw', 'Rwandi', 'Kinyarwandi', 0, NULL, NULL, 1),
(85, 'sg', 'Sango', 'Sängö', 0, NULL, NULL, 1),
(86, 'si', 'Sinhalese', 'සිංහල', 0, NULL, NULL, 1),
(87, 'sk', 'Slovak', 'Slovenčina', 0, NULL, NULL, 1),
(88, 'sl', 'Slovenian', 'Slovenščina', 0, NULL, NULL, 1),
(89, 'sm', 'Samoan', 'Gagana Samoa', 0, NULL, NULL, 1),
(90, 'sn', 'Shona', 'chiShona', 0, NULL, NULL, 1),
(91, 'so', 'Somalia', 'Soomaaliga', 0, NULL, NULL, 1),
(92, 'sq', 'Albanian', 'Shqip', 0, NULL, NULL, 1),
(93, 'sr', 'Serbian', 'Српски', 0, NULL, NULL, 1),
(94, 'ss', 'Swati', 'SiSwati', 0, NULL, NULL, 1),
(95, 'st', 'Southern Sotho', 'Sesotho', 0, NULL, NULL, 1),
(96, 'sv', 'Swedish', 'Svenska', 0, NULL, NULL, 1),
(97, 'sw', 'Swahili', 'Kiswahili', 0, NULL, NULL, 1),
(98, 'ta', 'Tamil', 'தமிழ்', 0, NULL, NULL, 1),
(99, 'tg', 'Tajik', 'Тоҷикӣ', 0, NULL, NULL, 1),
(100, 'th', 'Thai', 'ไทย / Phasa Thai', 0, NULL, NULL, 1),
(101, 'ti', 'Tigrinya', 'ትግርኛ', 0, NULL, NULL, 1),
(102, 'tk', 'Turkmen', 'Туркмен / تركمن', 0, NULL, NULL, 1),
(103, 'tn', 'Tswana', 'Setswana', 0, NULL, NULL, 1),
(104, 'to', 'Tonga', 'Lea Faka-Tonga', 0, NULL, NULL, 1),
(105, 'tr', 'Turkish', 'Türkçe', 0, NULL, NULL, 1),
(106, 'ts', 'Tsonga', 'Xitsonga', 0, NULL, NULL, 1),
(107, 'uk', 'Ukrainian', 'Українська', 0, NULL, NULL, 1),
(108, 'ur', 'Urdu', 'اردو', 1, NULL, NULL, 1),
(109, 'uz', 'Uzbek', 'Ўзбек', 0, NULL, NULL, 1),
(110, 've', 'Venda', 'Tshivenḓa', 0, NULL, NULL, 1),
(111, 'vi', 'Vietnamese', 'Tiếng Việt', 0, NULL, NULL, 1),
(112, 'xh', 'Xhosa', 'isiXhosa', 0, NULL, NULL, 1),
(113, 'zh', 'Chinese', '中文', 0, NULL, NULL, 1),
(114, 'zu', 'Zulu', 'isiZulu', 0, NULL, NULL, 1);

-- --------------------------------------------------------

--
-- Structure de la table `library_subjects`
--

DROP TABLE IF EXISTS `library_subjects`;
CREATE TABLE IF NOT EXISTS `library_subjects` (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `subject_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sb_category_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `subject_code` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `subject_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'T',
  `active_status` tinyint NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_by` int UNSIGNED DEFAULT '1',
  `updated_by` int UNSIGNED DEFAULT '1',
  `school_id` int UNSIGNED DEFAULT '1',
  `academic_id` int UNSIGNED DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `library_subjects_school_id_foreign` (`school_id`),
  KEY `library_subjects_academic_id_foreign` (`academic_id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `library_subjects`
--

INSERT INTO `library_subjects` (`id`, `subject_name`, `sb_category_id`, `subject_code`, `subject_type`, `active_status`, `created_at`, `updated_at`, `created_by`, `updated_by`, `school_id`, `academic_id`) VALUES
(1, 'Biologie', '1', 'EPD-0111', 'T', 1, '2022-05-27 21:19:53', '2022-05-27 21:19:53', 1, 1, 1, 3);

-- --------------------------------------------------------

--
-- Structure de la table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
CREATE TABLE IF NOT EXISTS `migrations` (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=193 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_11_01_000001_create_sm_schools_table', 1),
(2, '2014_11_01_000021_create_sm_academic_years_table', 1),
(3, '2014_11_12_100000_create_password_resets_table', 1),
(4, '2014_12_01_000001_create_infix_roles_table', 1),
(5, '2014_12_01_000002_create_roles_table', 1),
(6, '2014_12_01_000003_create_users_table', 1),
(7, '2014_12_01_000004_create_sm_base_groups_table', 1),
(8, '2014_12_01_000005_create_sm_base_setups_table', 1),
(9, '2014_12_01_000006_create_sm_classes_table', 1),
(10, '2014_12_01_000007_create_sm_sections_table', 1),
(11, '2014_12_01_000008_create_sm_class_sections_table', 1),
(12, '2014_12_01_000009_create_sm_subjects_table', 1),
(13, '2014_12_01_000010_create_sm_visitors_table', 1),
(14, '2014_12_01_000011_create_sm_fees_groups_table', 1),
(15, '2014_12_01_000012_create_sm_fees_types_table', 1),
(16, '2014_12_01_000013_create_sm_fees_discounts_table', 1),
(17, '2014_12_01_000014_create_sm_income_heads_table', 1),
(18, '2014_12_01_000015_create_sm_chart_of_accounts_table', 1),
(19, '2014_12_01_000016_create_sm_bank_accounts_table', 1),
(20, '2014_12_01_000017_create_sm_payment_gateway_settings_table', 1),
(21, '2014_12_01_000018_create_sm_payment_methhods_table', 1),
(22, '2014_12_01_000019_create_sm_add_incomes_table', 1),
(23, '2014_12_01_000020_create_sm_student_groups_table', 1),
(24, '2014_12_01_000022_create_sm_sessions_table', 1),
(25, '2014_12_01_000023_create_sm_dormitory_lists_table', 1),
(26, '2014_12_01_000024_create_sm_room_types_table', 1),
(27, '2014_12_01_000025_create_sm_room_lists_table', 1),
(28, '2014_12_01_000026_create_sm_designations_table', 1),
(29, '2014_12_01_000027_create_sm_human_departments_table', 1),
(30, '2014_12_01_000028_create_sm_staffs_table', 1),
(31, '2014_12_01_000029_create_sm_vehicles_table', 1),
(32, '2014_12_01_000030_create_sm_routes_table', 1),
(33, '2014_12_01_000031_create_sm_instructions_table', 1),
(34, '2014_12_01_000032_create_sm_question_levels_table', 1),
(35, '2014_12_01_000033_create_sm_question_groups_table', 1),
(36, '2014_12_01_000034_create_sm_question_banks_table', 1),
(37, '2014_12_01_000035_create_sm_online_exams_table', 1),
(38, '2014_12_01_000036_create_sm_exam_types_table', 1),
(39, '2014_12_01_000037_create_sm_marks_grades_table', 1),
(40, '2014_12_01_000038_create_sm_exams_table', 1),
(41, '2014_12_01_000039_create_sm_hourly_rates_table', 1),
(42, '2014_12_01_000040_create_sm_leave_types_table', 1),
(43, '2014_12_01_000041_create_sm_leave_defines_table', 1),
(44, '2014_12_01_000042_create_sm_leave_requests_table', 1),
(45, '2014_12_01_000043_create_sm_expense_heads_table', 1),
(46, '2014_12_01_000044_create_sm_add_expenses_table', 1),
(47, '2014_12_01_000045_create_sm_fees_masters_table', 1),
(48, '2014_12_01_000046_create_sm_setup_admins_table', 1),
(49, '2014_12_01_000047_create_sm_complaints_table', 1),
(50, '2014_12_01_000048_create_sm_postal_receives_table', 1),
(51, '2014_12_01_000049_create_sm_postal_dispatches_table', 1),
(52, '2014_12_01_000050_create_sm_phone_call_logs_table', 1),
(53, '2014_12_01_000051_create_sm_student_categories_table', 1),
(54, '2014_12_01_000052_create_sm_parents_table', 1),
(55, '2014_12_01_000054_create_sm_students_table', 1),
(56, '2014_12_01_000055_create_sm_student_attendances_table', 1),
(57, '2014_12_01_000056_create_sm_student_promotions_table', 1),
(58, '2014_12_01_000057_create_sm_staff_attendences_table', 1),
(59, '2014_12_01_000058_create_sm_student_homeworks_table', 1),
(60, '2014_12_01_000059_create_sm_teacher_upload_contents_table', 1),
(61, '2014_12_01_000060_create_sm_hr_salary_templates_table', 1),
(62, '2014_12_01_000061_create_sm_hr_payroll_generates_table', 1),
(63, '2014_12_01_000062_create_sm_exam_marks_registers_table', 1),
(64, '2014_12_01_000063_create_sm_marks_send_sms_table', 1),
(65, '2014_12_01_000064_create_sm_class_routines_table', 1),
(66, '2014_12_01_000064_create_sm_class_times_table', 1),
(67, '2014_12_01_000065_create_languages_table', 1),
(68, '2014_12_01_000065_create_sm_assign_subjects_table', 1),
(69, '2014_12_01_000066_create_sm_modules_table', 1),
(70, '2014_12_01_000067_create_sm_languages_table', 1),
(71, '2014_12_01_000068_create_sm_date_formats_table', 1),
(72, '2014_12_01_000069_create_sm_news_categories_table', 1),
(73, '2016_06_01_000001_create_oauth_auth_codes_table', 1),
(74, '2016_06_01_000002_create_oauth_access_tokens_table', 1),
(75, '2016_06_01_000003_create_oauth_refresh_tokens_table', 1),
(76, '2016_06_01_000004_create_oauth_clients_table', 1),
(77, '2016_06_01_000005_create_oauth_personal_access_clients_table', 1),
(78, '2018_12_04_050352_create_sm_notice_boards_table', 1),
(79, '2018_12_04_051648_create_sm_send_messages_table', 1),
(80, '2018_12_04_060828_create_sm_events_table', 1),
(81, '2018_12_04_062330_create_sm_holidays_table', 1),
(82, '2018_12_04_062714_create_sm_book_categories_table', 1),
(83, '2018_12_04_063012_create_sm_books_table', 1),
(84, '2018_12_04_075138_create_sm_library_members_table', 1),
(85, '2018_12_04_075911_create_sm_book_issues_table', 1),
(86, '2018_12_13_093741_create_sm_fees_carry_forwards_table', 1),
(87, '2018_12_17_104146_create_sm_fees_assigns_table', 1),
(88, '2018_12_17_111529_create_sm_hr_payroll_earn_deducs_table', 1),
(89, '2018_12_20_064256_create_sm_fees_assign_discounts_table', 1),
(90, '2018_12_20_090159_create_sm_fees_payments_table', 1),
(91, '2018_12_24_052328_create_sm_homeworks_table', 1),
(92, '2018_12_26_084518_create_sm_homework_students_table', 1),
(93, '2018_12_28_054159_create_sm_upload_contents_table', 1),
(94, '2018_12_28_075918_create_sm_content_types_table', 1),
(95, '2018_12_28_122146_create_sm_assign_class_teachers_table', 1),
(96, '2018_12_28_122205_create_sm_class_teachers_table', 1),
(97, '2018_12_31_112538_create_sm_exam_schedules_table', 1),
(98, '2018_12_31_112600_create_sm_exam_schedule_subjects_table', 1),
(99, '2019_01_02_061148_create_sm_marks_registers_table', 1),
(100, '2019_01_02_061238_create_sm_marks_register_children_table', 1),
(101, '2019_01_03_105718_create_sm_class_rooms_table', 1),
(102, '2019_01_06_060144_create_sm_seat_plans_table', 1),
(103, '2019_01_06_060213_create_sm_seat_plan_children_table', 1),
(104, '2019_01_07_132108_create_sm_exam_attendances_table', 1),
(105, '2019_01_07_132220_create_sm_exam_attendance_children_table', 1),
(106, '2019_01_09_101421_create_sm_online_exam_questions_table', 1),
(107, '2019_01_09_101533_create_sm_online_exam_question_mu_options_table', 1),
(108, '2019_01_10_050231_create_sm_item_categories_table', 1),
(109, '2019_01_10_050645_create_sm_items_table', 1),
(110, '2019_01_10_054622_create_sm_item_stores_table', 1),
(111, '2019_01_10_070859_create_sm_suppliers_table', 1),
(112, '2019_01_10_112518_create_sm_item_receives_table', 1),
(113, '2019_01_12_104449_create_sm_item_receive_children_table', 1),
(114, '2019_01_13_113100_create_sm_online_exam_marks_table', 1),
(115, '2019_01_14_061003_create_sm_assign_vehicles_table', 1),
(116, '2019_01_16_065238_create_sm_module_links_table', 1),
(117, '2019_01_19_094137_create_sm_inventory_payments_table', 1),
(118, '2019_01_21_063031_create_sm_student_excel_formats_table', 1),
(119, '2019_01_21_131008_create_sm_item_sells_table', 1),
(120, '2019_01_22_104243_create_sm_item_sell_children_table', 1),
(121, '2019_01_23_121931_create_sm_item_issues_table', 1),
(122, '2019_01_26_054046_create_sm_sms_gateways_table', 1),
(123, '2019_01_30_122524_create_sm_student_documents_table', 1),
(124, '2019_01_31_052142_create_sm_student_timelines_table', 1),
(125, '2019_01_31_101401_create_sm_question_bank_mu_options_table', 1),
(126, '2019_02_02_043028_create_sm_online_exam_question_assigns_table', 1),
(127, '2019_02_02_112647_create_sm_student_take_online_exams_table', 1),
(128, '2019_02_02_112719_create_sm_student_take_online_exam_questions_table', 1),
(129, '2019_02_02_115540_create_sm_student_take_onln_ex_ques_options_table', 1),
(130, '2019_02_09_050800_create_sm_email_sms_logs_table', 1),
(131, '2019_02_10_125119_create_sm_general_settings_table', 1),
(132, '2019_02_11_093834_create_sm_user_logs_table', 1),
(133, '2019_02_12_064024_create_sm_email_settings_table', 1),
(134, '2019_02_16_082050_create_sm_student_certificates_table', 1),
(135, '2019_02_17_124203_create_sm_student_id_cards_table', 1),
(136, '2019_02_24_124115_create_sm_to_dos_table', 1),
(137, '2019_03_13_075602_create_sm_admission_queries_table', 1),
(138, '2019_03_14_075324_create_sm_admission_query_followups_table', 1),
(139, '2019_04_04_124508_create_sm_backups_table', 1),
(140, '2019_04_10_054237_create_sm_temporary_meritlists', 1),
(141, '2019_04_13_062212_create_sm_exam_setups_table', 1),
(142, '2019_04_15_055616_create_sm_mark_stores_table', 1),
(143, '2019_04_17_101844_create_sm_result_stores_table', 1),
(144, '2019_04_21_071626_create_sm_class_routine_updates_table', 1),
(145, '2019_04_23_051315_create_sm_weekends_table', 1),
(146, '2019_04_25_164649_create_sm_countries_table', 1),
(147, '2019_04_27_121353_create_sm_language_phrases_table', 1),
(148, '2019_04_28_074534_create_sm_notifications_table', 1),
(149, '2019_04_30_181622_create_continents_table', 1),
(150, '2019_04_30_181730_create_countries_table', 1),
(151, '2019_05_07_103627_create_sm_currencies_table', 1),
(152, '2019_05_26_095459_create_sm_news_table', 1),
(153, '2019_05_27_103844_create_sm_testimonials_table', 1),
(154, '2019_06_01_113053_create_sm_contact_pages_table', 1),
(155, '2019_06_01_165107_create_sm_contact_messages_table', 1),
(156, '2019_06_10_155041_create_sm_product_purchases_table', 1),
(157, '2019_06_11_112109_create_sm_about_pages_table', 1),
(158, '2019_06_12_143430_create_sm_courses_table', 1),
(159, '2019_07_17_182142_create_sm_dashboard_settings_table', 1),
(160, '2019_07_18_141858_create_sm_background_settings_table', 1),
(161, '2019_07_20_151115_create_sm_custom_links_table', 1),
(162, '2019_07_20_183407_create_sm_frontend_persmissions_table', 1),
(163, '2019_07_21_110814_create_sm_home_page_settings_table', 1),
(164, '2019_09_01_171428_create_sm_system_versions_table', 1),
(165, '2019_09_06_113029_create_continets_table', 1),
(166, '2019_09_09_142112_create_sm_styles_table', 1),
(167, '2019_09_25_183656_create_sm_module_permissions_table', 1),
(168, '2019_09_26_115256_create_sm_module_permission_assigns_table', 1),
(169, '2019_10_16_160104_create_sm_time_zones_table', 1),
(170, '2019_11_27_120508_create_sm_student_attendance_imports_table', 1),
(171, '2019_11_27_181351_create_sm_staff_attendance_imports_table', 1),
(172, '2020_01_23_125935_create_sm_optional_subject_assigns_table', 1),
(173, '2020_01_26_112215_create_sm_class_optional_subject', 1),
(174, '2020_01_28_103859_create_sm_news_pages_table', 1),
(175, '2020_01_28_121210_create_sm_course_pages_table', 1),
(176, '2020_01_29_110503_create_sm_subject_attendances_table', 1),
(177, '2020_02_05_105739_create_custom_result_settings_table', 1),
(178, '2020_02_05_131307_create_sm_custom_temporary_results_table', 1),
(179, '2020_03_09_153421_create_sm_add_ons_table', 1),
(180, '2020_03_14_123955_create_sms_templates_table', 1),
(181, '2020_03_21_200226_create_sm_social_media_icons_table', 1),
(182, '2020_03_29_102518_create_sm_upload_homework_contents_table', 1),
(183, '2020_04_01_060324_create_jobs_table', 1),
(184, '2020_04_11_141636_create_infix_module_infos_table', 1),
(185, '2020_04_12_125728_create_infix_permission_assigns_table', 1),
(186, '2020_04_16_064434_create_infix_module_student_parent_infos_table', 1),
(187, '2020_06_10_193309_create_infix_module_managers_table', 1),
(188, '2020_06_17_091643_create_student_bulk_temporaries_table', 1),
(189, '2020_06_22_120034_create_student_attendance_bulks_table', 1),
(190, '2020_06_26_144311_create_library_subjects_table', 1),
(191, '2020_07_14_052504_create_sm_bank_payment_slips_table', 1),
(192, '2020_11_16_065239_create_sm_role_permissions_table', 1);

-- --------------------------------------------------------

--
-- Structure de la table `oauth_access_tokens`
--

DROP TABLE IF EXISTS `oauth_access_tokens`;
CREATE TABLE IF NOT EXISTS `oauth_access_tokens` (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `user_id` bigint DEFAULT NULL,
  `client_id` int UNSIGNED NOT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `scopes` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `revoked` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `expires_at` datetime DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `oauth_access_tokens_user_id_index` (`user_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `oauth_auth_codes`
--

DROP TABLE IF EXISTS `oauth_auth_codes`;
CREATE TABLE IF NOT EXISTS `oauth_auth_codes` (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `user_id` bigint NOT NULL,
  `client_id` int UNSIGNED NOT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `oauth_clients`
--

DROP TABLE IF EXISTS `oauth_clients`;
CREATE TABLE IF NOT EXISTS `oauth_clients` (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `access_token_id` bigint DEFAULT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `secret` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `redirect` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `personal_access_client` tinyint(1) NOT NULL,
  `password_client` tinyint(1) NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `oauth_clients_access_token_id_index` (`access_token_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `oauth_personal_access_clients`
--

DROP TABLE IF EXISTS `oauth_personal_access_clients`;
CREATE TABLE IF NOT EXISTS `oauth_personal_access_clients` (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `client_id` int UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `oauth_personal_access_clients_client_id_index` (`client_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `oauth_refresh_tokens`
--

DROP TABLE IF EXISTS `oauth_refresh_tokens`;
CREATE TABLE IF NOT EXISTS `oauth_refresh_tokens` (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `access_token_id` bigint DEFAULT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `oauth_refresh_tokens_access_token_id_index` (`access_token_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `password_resets`
--

DROP TABLE IF EXISTS `password_resets`;
CREATE TABLE IF NOT EXISTS `password_resets` (
  `email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `roles`
--

DROP TABLE IF EXISTS `roles`;
CREATE TABLE IF NOT EXISTS `roles` (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'System',
  `active_status` tinyint NOT NULL DEFAULT '1',
  `created_by` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT '1',
  `updated_by` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `school_id` int UNSIGNED DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `roles_school_id_foreign` (`school_id`)
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `roles`
--

INSERT INTO `roles` (`id`, `name`, `type`, `active_status`, `created_by`, `updated_by`, `created_at`, `updated_at`, `school_id`) VALUES
(1, 'Super admin', 'System', 1, '1', '1', '2022-05-02 06:25:57', NULL, 1),
(2, 'Student', 'System', 1, '1', '1', '2022-05-02 06:25:57', NULL, 1),
(3, 'Parents', 'System', 1, '1', '1', '2022-05-02 06:25:57', NULL, 1),
(4, 'Teacher', 'System', 1, '1', '1', '2022-05-02 06:25:57', NULL, 1),
(5, 'Admin', 'System', 1, '1', '1', '2022-05-02 06:25:57', NULL, 1),
(6, 'Accountant', 'System', 1, '1', '1', '2022-05-02 06:25:57', NULL, 1),
(7, 'Receptionist', 'System', 1, '1', '1', '2022-05-02 06:25:57', NULL, 1),
(8, 'Librarian', 'System', 1, '1', '1', '2022-05-02 06:25:57', NULL, 1),
(9, 'Driver', 'System', 1, '1', '1', '2022-05-02 06:25:57', NULL, 1);

-- --------------------------------------------------------

--
-- Structure de la table `sms_templates`
--

DROP TABLE IF EXISTS `sms_templates`;
CREATE TABLE IF NOT EXISTS `sms_templates` (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `admission_pro` longtext COLLATE utf8mb4_unicode_ci,
  `student_admit` longtext COLLATE utf8mb4_unicode_ci,
  `login_disable` longtext COLLATE utf8mb4_unicode_ci,
  `exam_schedule` longtext COLLATE utf8mb4_unicode_ci,
  `exam_publish` longtext COLLATE utf8mb4_unicode_ci,
  `due_fees` longtext COLLATE utf8mb4_unicode_ci,
  `collect_fees` longtext COLLATE utf8mb4_unicode_ci,
  `stu_promote` longtext COLLATE utf8mb4_unicode_ci,
  `attendance_sms` longtext COLLATE utf8mb4_unicode_ci,
  `absent` longtext COLLATE utf8mb4_unicode_ci,
  `late_sms` longtext COLLATE utf8mb4_unicode_ci,
  `er_checkout` longtext COLLATE utf8mb4_unicode_ci,
  `st_checkout` longtext COLLATE utf8mb4_unicode_ci,
  `st_credentials` longtext COLLATE utf8mb4_unicode_ci,
  `staff_credentials` longtext COLLATE utf8mb4_unicode_ci,
  `holiday` longtext COLLATE utf8mb4_unicode_ci,
  `leave_app` longtext COLLATE utf8mb4_unicode_ci,
  `approve_sms` longtext COLLATE utf8mb4_unicode_ci,
  `birth_st` longtext COLLATE utf8mb4_unicode_ci,
  `birth_staff` longtext COLLATE utf8mb4_unicode_ci,
  `cheque_bounce` longtext COLLATE utf8mb4_unicode_ci,
  `l_issue_b` longtext COLLATE utf8mb4_unicode_ci,
  `re_issue_book` longtext COLLATE utf8mb4_unicode_ci,
  `sms_text` longtext COLLATE utf8mb4_unicode_ci,
  `student_approve_message_sms` longtext COLLATE utf8mb4_unicode_ci,
  `student_approve_message_sms_status` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1' COMMENT '1 enable, 3 disable',
  `student_registration_message_sms` longtext COLLATE utf8mb4_unicode_ci,
  `student_registration_message_sms_status` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1' COMMENT '1 enable, 3 disable',
  `student_admission_message_sms` longtext COLLATE utf8mb4_unicode_ci,
  `student_admission_message_sms_status` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1' COMMENT '1 enable, 3 disable',
  `exam_schedule_message_sms` longtext COLLATE utf8mb4_unicode_ci,
  `exam_schedule_message_sms_status` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1' COMMENT '1 enable, 3 disable',
  `dues_fees_message_sms` longtext COLLATE utf8mb4_unicode_ci,
  `dues_fees_message_sms_status` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1' COMMENT '1 enable, 3 disable',
  `password_reset_message` longtext COLLATE utf8mb4_unicode_ci,
  `student_login_credential_message` longtext COLLATE utf8mb4_unicode_ci,
  `guardian_login_credential_message` longtext COLLATE utf8mb4_unicode_ci,
  `student_registration_message` longtext COLLATE utf8mb4_unicode_ci,
  `guardian_registration_message` longtext COLLATE utf8mb4_unicode_ci,
  `staff_login_credential_message` longtext COLLATE utf8mb4_unicode_ci,
  `send_email_message` longtext COLLATE utf8mb4_unicode_ci,
  `dues_payment_message` longtext COLLATE utf8mb4_unicode_ci,
  `email_footer_text` longtext COLLATE utf8mb4_unicode_ci,
  `active_status` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `sms_templates`
--

INSERT INTO `sms_templates` (`id`, `admission_pro`, `student_admit`, `login_disable`, `exam_schedule`, `exam_publish`, `due_fees`, `collect_fees`, `stu_promote`, `attendance_sms`, `absent`, `late_sms`, `er_checkout`, `st_checkout`, `st_credentials`, `staff_credentials`, `holiday`, `leave_app`, `approve_sms`, `birth_st`, `birth_staff`, `cheque_bounce`, `l_issue_b`, `re_issue_book`, `sms_text`, `student_approve_message_sms`, `student_approve_message_sms_status`, `student_registration_message_sms`, `student_registration_message_sms_status`, `student_admission_message_sms`, `student_admission_message_sms_status`, `exam_schedule_message_sms`, `exam_schedule_message_sms_status`, `dues_fees_message_sms`, `dues_fees_message_sms_status`, `password_reset_message`, `student_login_credential_message`, `guardian_login_credential_message`, `student_registration_message`, `guardian_registration_message`, `staff_login_credential_message`, `send_email_message`, `dues_payment_message`, `email_footer_text`, `active_status`, `created_at`, `updated_at`) VALUES
(1, 'Dear parent |ParentName|, your child |StudentName| admission is in process.', 'Dear parent |ParentName|, your child |StudentName| admission is completed You can login to your account using username:|Username| Password:|Password|', 'hello world', 'hello world', 'hello world', 'Fee Due Reminder for your child |StudentName|. \r\n                                Dear Parent |ParentName|, please find the below fee summary.\r\n                                Fee: Rs.|Fee|, Back dues \r\n                                Adjustment: Rs.|Adjustment|, \r\n                                Total: Rs.|Total|, \r\n                                Paid: Rs.|Paid|, \r\n                                Balance: Rs.|Balance|. \r\n                                Please ignore in case already paid.', 'Fee Due Reminder for your child |StudentName|. \r\n                                Dear Parent |ParentName|, please find the below fee summary.\r\n                                Fee: Rs.|Fee|, Back dues \r\n                                Adjustment: Rs.|Adjustment|, \r\n                                Total: Rs.|Total|, \r\n                                Paid: Rs.|Paid|, \r\n                                Balance: Rs.|Balance|. \r\n                                Please ignore in case already paid.', 'Hi [student_name] , Welcome to [school_name]. Congratulations ! You have promoted in the next class.', 'Dear Parent |ParentName|, your child |StudentName| came to the school at |time|', 'Dear parent |ParentName|, your child |StudentName| is absent to the school on |AttendanceDate|', 'Dear parent |ParentName|, your child |StudentName| is late to the school on |AttendanceDate|', 'Dear parent |ParentName|, your child |StudentName| is checkout  at |time| to the school on |AttendanceDate|', 'Dear Parent |ParentName|, your child |StudentName| left the school at |time|', 'Dear parent |ParentName|, your child |StudentName| login details: username:|Username| Password:|Password|', 'Dear staff |StaffName| your login details: username:|Username| Password:|Password|', 'This is to update you that |HolidayDate| is holiday due to |HolidayName|', 'Dear staff |StaffName|, Thank you for your leave application. Please wait for approval. Thanks ', 'Dear staff |StaffName|, Thank you for your leave application. Your leave approved. Thanks ', 'Dear parent |ParentName|, Warm wishes to your child  |StudentName| on behalf of his/her birthday', 'Dear staff |StaffName|, Warm wishes to your birthday. Happy Birthday. Thanks', 'Dear parent |ParentName|, the Cheque with no :|ChequeNo| for Rs.|FeePaid| received towards fee payment for your child :|StudentName| with receipt number:|ReceiptNo| has been Bounced', 'Dear parent |ParentName|, Library book  is issued to your child |StudentName| studying in class: |ClassName| , section: |SectionName| with roll no:|RollNo| On |IssueDate| .Please find the details , Book Title: |BookTitle|, Book No: |BookNo|, Due Date: |DueDate|', 'Dear parent |ParentName|, Library book  is returned by your child |StudentName| studying in class: |ClassName| , section: |SectionName| with roll no:|RollNo| On |ReturnDate| .Please find the details , Book Title: |BookTitle|, Book No: |BookNo|, Issue Date: |IssueDate|, Due Date: |DueDate|', 'hello world', 'Hi [student_name] , Welcome to [school_name]. Congratulations ! You have registered successfully. Please login using this username [username] and password [password]. Thanks.', '1', 'Hi [student_name] , Welcome to [school_name]. Congratulations ! You have registered successfully. Please login using this username [username] and password [password]. Thanks.', '1', 'Hi [student_name] , Welcome to [school_name]. Congratulations ! You have registered successfully. Please login using this username [username] and password [password]. Thanks.', '1', 'Hi [student_name] , Welcome to [school_name]. Congratulations ! You have registered successfully. Please login using this username [username] and password [password]. Thanks.', '1', 'Hi [student_name], You fees due amount [dues_amount] for [fees_name] on [date]. Thanks', '1', 'Hi [name], Tap the button below to reset your account password. If you didnt request a new password, you can safely delete this email.', 'Hi [student_name] , Welcome to [school_name]. Congratulations ! You have registered successfully. Please login using this username [username] and password [password]. Thanks.', 'Hi [father_name]  , Welcome to [school_name]. Congratulations ! You have registered successfully. Please login using this username [username] and password [password]. Thanks.', 'Hi [student_name] , Welcome to [school_name]. Congratulations ! You have registered successfully. Please login using this username [username] and password [password]. Thanks.', 'Hi [father_name]  , Welcome to [school_name]. Congratulations ! You have registered successfully. Please login using this username [username] and password [password]. Thanks.', 'Hi [father_name]  , Welcome to [school_name]. Congratulations ! You have registered successfully. Please login using this username [username] and password [password]. Thanks.', 'Hi [father_name]  , Welcome to [school_name]. Congratulations ! You have registered successfully. Please login using this username [username] and password [password]. Thanks.', 'Hi [student_name], You fees due amount [dues_amount] for [fees_name] on [date]. Thanks', 'Copyright © 2022 Ecole Nationale Supérieure Polytechnique de Douala. All rights reserved.', 1, NULL, '2022-05-10 12:19:56');

-- --------------------------------------------------------

--
-- Structure de la table `sm_about_pages`
--

DROP TABLE IF EXISTS `sm_about_pages`;
CREATE TABLE IF NOT EXISTS `sm_about_pages` (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `main_title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `main_description` text COLLATE utf8mb4_unicode_ci,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `main_image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `button_text` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `button_url` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `active_status` tinyint NOT NULL DEFAULT '1',
  `created_by` int UNSIGNED DEFAULT '1',
  `updated_by` int UNSIGNED DEFAULT '1',
  `school_id` int UNSIGNED DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `sm_about_pages_school_id_foreign` (`school_id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `sm_about_pages`
--

INSERT INTO `sm_about_pages` (`id`, `created_at`, `updated_at`, `title`, `description`, `main_title`, `main_description`, `image`, `main_image`, `button_text`, `button_url`, `active_status`, `created_by`, `updated_by`, `school_id`) VALUES
(1, NULL, NULL, 'About Infix', 'Lisus consequat sapien metus dis urna, facilisi. Nonummy rutrum eu lacinia platea a, ipsum parturient, orci tristique. Nisi diam natoque.', 'Under Graduate Education', 'INFIX has all in one place. You’ll find everything what you are looking into education management system software. We care! User will never bothered in our real eye catchy user friendly UI & UX  Interface design. You know! Smart Idea always comes to well planners. And Our INFIX is Smart for its Well Documentation. Explore in new support world! It’s now faster & quicker. You’ll find us on Support Ticket, Email, Skype, WhatsApp.', 'public/uploads/about_page/about.jpg', 'public/uploads/about_page/about-img.jpg', 'Learn More About Us', 'about', 1, 1, 1, 1);

-- --------------------------------------------------------

--
-- Structure de la table `sm_academic_years`
--

DROP TABLE IF EXISTS `sm_academic_years`;
CREATE TABLE IF NOT EXISTS `sm_academic_years` (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `year` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `starting_date` date NOT NULL,
  `ending_date` date NOT NULL,
  `active_status` tinyint NOT NULL DEFAULT '1',
  `created_at` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `updated_at` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_by` int UNSIGNED DEFAULT '1',
  `updated_by` int UNSIGNED DEFAULT '1',
  `school_id` int UNSIGNED DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `sm_academic_years_school_id_foreign` (`school_id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `sm_academic_years`
--

INSERT INTO `sm_academic_years` (`id`, `year`, `title`, `starting_date`, `ending_date`, `active_status`, `created_at`, `updated_at`, `created_by`, `updated_by`, `school_id`) VALUES
(1, '2022', 'Jan-Jun', '2022-01-01', '2022-06-30', 1, '2022-01-01 00:00:00', '2022-01-01 00:00:00', 1, 1, 1),
(2, '2022', 'Jul-Dec', '2022-07-01', '2022-12-31', 1, '2022-07-01 00:00:00', '2022-07-01 00:00:00', 1, 1, 1),
(3, '2022', 'Octobre -Juillet', '2022-09-02', '2023-07-14', 1, '2022-09-02 00:00:00', '2022-05-13 00:45:15', 1, 1, 1);

-- --------------------------------------------------------

--
-- Structure de la table `sm_add_expenses`
--

DROP TABLE IF EXISTS `sm_add_expenses`;
CREATE TABLE IF NOT EXISTS `sm_add_expenses` (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date` date DEFAULT NULL,
  `amount` double(10,2) DEFAULT NULL,
  `file` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `active_status` tinyint NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `expense_head_id` int UNSIGNED DEFAULT NULL,
  `account_id` int UNSIGNED DEFAULT NULL,
  `payment_method_id` int UNSIGNED DEFAULT NULL,
  `created_by` int UNSIGNED DEFAULT '1',
  `updated_by` int UNSIGNED DEFAULT '1',
  `school_id` int UNSIGNED DEFAULT '1',
  `academic_id` int UNSIGNED DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `sm_add_expenses_expense_head_id_foreign` (`expense_head_id`),
  KEY `sm_add_expenses_account_id_foreign` (`account_id`),
  KEY `sm_add_expenses_payment_method_id_foreign` (`payment_method_id`),
  KEY `sm_add_expenses_school_id_foreign` (`school_id`),
  KEY `sm_add_expenses_academic_id_foreign` (`academic_id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `sm_add_expenses`
--

INSERT INTO `sm_add_expenses` (`id`, `name`, `date`, `amount`, `file`, `description`, `active_status`, `created_at`, `updated_at`, `expense_head_id`, `account_id`, `payment_method_id`, `created_by`, `updated_by`, `school_id`, `academic_id`) VALUES
(1, 'Frais scolaire', '2022-06-02', 25000.00, '', '', 1, '2022-05-29 20:32:23', '2022-06-02 13:58:47', 1, 1, 3, 1, 1, 1, 3);

-- --------------------------------------------------------

--
-- Structure de la table `sm_add_incomes`
--

DROP TABLE IF EXISTS `sm_add_incomes`;
CREATE TABLE IF NOT EXISTS `sm_add_incomes` (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date` date DEFAULT NULL,
  `amount` double(10,2) DEFAULT NULL,
  `file` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `active_status` tinyint NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `income_head_id` int UNSIGNED DEFAULT NULL,
  `account_id` int UNSIGNED DEFAULT NULL,
  `payment_method_id` int UNSIGNED DEFAULT NULL,
  `created_by` int UNSIGNED DEFAULT '1',
  `updated_by` int UNSIGNED DEFAULT '1',
  `school_id` int UNSIGNED DEFAULT '1',
  `academic_id` int UNSIGNED DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `sm_add_incomes_income_head_id_foreign` (`income_head_id`),
  KEY `sm_add_incomes_account_id_foreign` (`account_id`),
  KEY `sm_add_incomes_payment_method_id_foreign` (`payment_method_id`),
  KEY `sm_add_incomes_school_id_foreign` (`school_id`),
  KEY `sm_add_incomes_academic_id_foreign` (`academic_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `sm_add_ons`
--

DROP TABLE IF EXISTS `sm_add_ons`;
CREATE TABLE IF NOT EXISTS `sm_add_ons` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `sm_admission_queries`
--

DROP TABLE IF EXISTS `sm_admission_queries`;
CREATE TABLE IF NOT EXISTS `sm_admission_queries` (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` text COLLATE utf8mb4_unicode_ci,
  `description` text COLLATE utf8mb4_unicode_ci,
  `date` date DEFAULT NULL,
  `follow_up_date` date DEFAULT NULL,
  `next_follow_up_date` date DEFAULT NULL,
  `assigned` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `reference` int DEFAULT NULL,
  `source` int DEFAULT NULL,
  `no_of_child` int DEFAULT NULL,
  `active_status` tinyint NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `class` int UNSIGNED DEFAULT NULL,
  `created_by` int UNSIGNED DEFAULT '1',
  `updated_by` int UNSIGNED DEFAULT '1',
  `school_id` int UNSIGNED DEFAULT '1',
  `academic_id` int UNSIGNED DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `sm_admission_queries_class_foreign` (`class`),
  KEY `sm_admission_queries_school_id_foreign` (`school_id`),
  KEY `sm_admission_queries_academic_id_foreign` (`academic_id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `sm_admission_queries`
--

INSERT INTO `sm_admission_queries` (`id`, `name`, `phone`, `email`, `address`, `description`, `date`, `follow_up_date`, `next_follow_up_date`, `assigned`, `reference`, `source`, `no_of_child`, `active_status`, `created_at`, `updated_at`, `class`, `created_by`, `updated_by`, `school_id`, `academic_id`) VALUES
(1, 'Echec', '655238709', 'adminpanel@gmail.com', 'Douala', '', '2022-05-15', '2022-05-24', '2022-04-25', 'm maka', 3, 2, 56, 1, '2022-05-15 20:56:09', '2022-05-15 20:58:07', 3, 1, 1, 1, 3);

-- --------------------------------------------------------

--
-- Structure de la table `sm_admission_query_followups`
--

DROP TABLE IF EXISTS `sm_admission_query_followups`;
CREATE TABLE IF NOT EXISTS `sm_admission_query_followups` (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `response` text COLLATE utf8mb4_unicode_ci,
  `note` text COLLATE utf8mb4_unicode_ci,
  `date` date DEFAULT NULL,
  `active_status` tinyint NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `admission_query_id` int UNSIGNED DEFAULT NULL,
  `created_by` int UNSIGNED DEFAULT '1',
  `updated_by` int UNSIGNED DEFAULT '1',
  `school_id` int UNSIGNED DEFAULT '1',
  `academic_id` int UNSIGNED DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `sm_admission_query_followups_admission_query_id_foreign` (`admission_query_id`),
  KEY `sm_admission_query_followups_school_id_foreign` (`school_id`),
  KEY `sm_admission_query_followups_academic_id_foreign` (`academic_id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `sm_admission_query_followups`
--

INSERT INTO `sm_admission_query_followups` (`id`, `response`, `note`, `date`, `active_status`, `created_at`, `updated_at`, `admission_query_id`, `created_by`, `updated_by`, `school_id`, `academic_id`) VALUES
(1, 'Aucune', 'Aucune', NULL, 1, '2022-05-15 20:58:07', '2022-05-15 20:58:07', 1, 1, 1, 1, 3);

-- --------------------------------------------------------

--
-- Structure de la table `sm_assign_class_teachers`
--

DROP TABLE IF EXISTS `sm_assign_class_teachers`;
CREATE TABLE IF NOT EXISTS `sm_assign_class_teachers` (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `active_status` tinyint NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `class_id` int UNSIGNED DEFAULT NULL,
  `section_id` int UNSIGNED DEFAULT NULL,
  `created_by` int UNSIGNED DEFAULT '1',
  `updated_by` int UNSIGNED DEFAULT '1',
  `school_id` int UNSIGNED DEFAULT '1',
  `academic_id` int UNSIGNED DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `sm_assign_class_teachers_class_id_foreign` (`class_id`),
  KEY `sm_assign_class_teachers_section_id_foreign` (`section_id`),
  KEY `sm_assign_class_teachers_school_id_foreign` (`school_id`),
  KEY `sm_assign_class_teachers_academic_id_foreign` (`academic_id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `sm_assign_class_teachers`
--

INSERT INTO `sm_assign_class_teachers` (`id`, `active_status`, `created_at`, `updated_at`, `class_id`, `section_id`, `created_by`, `updated_by`, `school_id`, `academic_id`) VALUES
(1, 1, '2022-05-13 13:16:01', '2022-05-13 13:16:01', 5, 5, 1, 1, 1, 3),
(2, 1, '2022-06-02 09:17:32', '2022-06-24 19:10:02', 3, 7, 1, 1, 1, 3),
(3, 1, '2022-06-24 19:08:02', '2022-06-24 19:08:02', 5, 10, 1, 1, 1, 3),
(4, 1, '2022-06-24 19:08:56', '2022-06-24 19:08:56', 3, 7, 1, 1, 1, 3);

-- --------------------------------------------------------

--
-- Structure de la table `sm_assign_subjects`
--

DROP TABLE IF EXISTS `sm_assign_subjects`;
CREATE TABLE IF NOT EXISTS `sm_assign_subjects` (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `active_status` tinyint NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `teacher_id` int UNSIGNED DEFAULT NULL,
  `class_id` int UNSIGNED DEFAULT NULL,
  `section_id` int UNSIGNED DEFAULT NULL,
  `subject_id` int UNSIGNED DEFAULT NULL,
  `created_by` int UNSIGNED DEFAULT '1',
  `updated_by` int UNSIGNED DEFAULT '1',
  `school_id` int UNSIGNED DEFAULT '1',
  `academic_id` int UNSIGNED DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `sm_assign_subjects_teacher_id_foreign` (`teacher_id`),
  KEY `sm_assign_subjects_class_id_foreign` (`class_id`),
  KEY `sm_assign_subjects_section_id_foreign` (`section_id`),
  KEY `sm_assign_subjects_subject_id_foreign` (`subject_id`),
  KEY `sm_assign_subjects_school_id_foreign` (`school_id`),
  KEY `sm_assign_subjects_academic_id_foreign` (`academic_id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `sm_assign_subjects`
--

INSERT INTO `sm_assign_subjects` (`id`, `active_status`, `created_at`, `updated_at`, `teacher_id`, `class_id`, `section_id`, `subject_id`, `created_by`, `updated_by`, `school_id`, `academic_id`) VALUES
(1, 1, '2022-05-13 01:18:38', '2022-05-13 13:18:38', 2, 5, 5, 1, 1, 1, 1, 3),
(4, 1, '2022-02-06 09:37:07', '2022-06-02 09:37:07', 2, 2, 3, 1, 1, 1, 1, 3);

-- --------------------------------------------------------

--
-- Structure de la table `sm_assign_vehicles`
--

DROP TABLE IF EXISTS `sm_assign_vehicles`;
CREATE TABLE IF NOT EXISTS `sm_assign_vehicles` (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `active_status` tinyint NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `vehicle_id` int UNSIGNED DEFAULT NULL,
  `route_id` int UNSIGNED DEFAULT NULL,
  `created_by` int UNSIGNED DEFAULT '1',
  `updated_by` int UNSIGNED DEFAULT '1',
  `school_id` int UNSIGNED DEFAULT '1',
  `academic_id` int UNSIGNED DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `sm_assign_vehicles_vehicle_id_foreign` (`vehicle_id`),
  KEY `sm_assign_vehicles_route_id_foreign` (`route_id`),
  KEY `sm_assign_vehicles_school_id_foreign` (`school_id`),
  KEY `sm_assign_vehicles_academic_id_foreign` (`academic_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `sm_background_settings`
--

DROP TABLE IF EXISTS `sm_background_settings`;
CREATE TABLE IF NOT EXISTS `sm_background_settings` (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `color` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_default` int NOT NULL DEFAULT '0',
  `school_id` int UNSIGNED DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `sm_background_settings_school_id_foreign` (`school_id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `sm_background_settings`
--

INSERT INTO `sm_background_settings` (`id`, `title`, `type`, `image`, `color`, `is_default`, `school_id`, `created_at`, `updated_at`) VALUES
(1, 'Dashboard Background', 'image', 'public/backEnd/img/body-bg.jpg', '', 1, 1, NULL, '2022-05-10 12:34:13'),
(2, 'Login Background', 'image', 'public/backEnd/img/login-bg.jpg', '', 0, 1, NULL, NULL),
(3, 'Dashboard Background', 'image', 'public/uploads/backgroundImage/dbd044e43dc8e301908d3213f058a061.JPG', NULL, 0, 1, '2022-05-10 12:28:57', '2022-05-10 12:34:13');

-- --------------------------------------------------------

--
-- Structure de la table `sm_backups`
--

DROP TABLE IF EXISTS `sm_backups`;
CREATE TABLE IF NOT EXISTS `sm_backups` (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `file_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `source_link` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `file_type` tinyint DEFAULT NULL COMMENT '0=Database, 1=File, 2=Image',
  `active_status` tinyint NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_by` int UNSIGNED DEFAULT '1',
  `updated_by` int UNSIGNED DEFAULT '1',
  `school_id` int UNSIGNED DEFAULT '1',
  `academic_id` int UNSIGNED DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `sm_backups_school_id_foreign` (`school_id`),
  KEY `sm_backups_academic_id_foreign` (`academic_id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `sm_backups`
--

INSERT INTO `sm_backups` (`id`, `file_name`, `source_link`, `file_type`, `active_status`, `created_at`, `updated_at`, `created_by`, `updated_by`, `school_id`, `academic_id`) VALUES
(1, 'Restore_07_06_2022_data.sql', 'public/databaseBackup/Restore_07_06_2022_data.sql', NULL, 1, '2022-06-07 09:33:40', '2022-06-07 09:33:40', 1, 1, 1, 1);

-- --------------------------------------------------------

--
-- Structure de la table `sm_bank_accounts`
--

DROP TABLE IF EXISTS `sm_bank_accounts`;
CREATE TABLE IF NOT EXISTS `sm_bank_accounts` (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `account_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `opening_balance` int DEFAULT NULL,
  `note` text COLLATE utf8mb4_unicode_ci,
  `active_status` tinyint NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_by` int UNSIGNED DEFAULT '1',
  `updated_by` int UNSIGNED DEFAULT '1',
  `school_id` int UNSIGNED DEFAULT '1',
  `academic_id` int UNSIGNED DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `sm_bank_accounts_school_id_foreign` (`school_id`),
  KEY `sm_bank_accounts_academic_id_foreign` (`academic_id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `sm_bank_accounts`
--

INSERT INTO `sm_bank_accounts` (`id`, `account_name`, `opening_balance`, `note`, `active_status`, `created_at`, `updated_at`, `created_by`, `updated_by`, `school_id`, `academic_id`) VALUES
(1, 'UBA', 20000, 'Aucune', 1, '2022-05-29 16:46:17', '2022-05-29 16:46:17', 1, 1, 1, 3);

-- --------------------------------------------------------

--
-- Structure de la table `sm_bank_payment_slips`
--

DROP TABLE IF EXISTS `sm_bank_payment_slips`;
CREATE TABLE IF NOT EXISTS `sm_bank_payment_slips` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `date` date NOT NULL,
  `amount` double(10,2) DEFAULT NULL,
  `slip` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `note` text COLLATE utf8mb4_unicode_ci,
  `approve_status` tinyint NOT NULL DEFAULT '0' COMMENT '0 pending, 1 approve',
  `payment_mode` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Bk= bank, Cq=Cheque',
  `fees_discount_id` int UNSIGNED DEFAULT NULL,
  `fees_type_id` int UNSIGNED DEFAULT NULL,
  `student_id` int UNSIGNED DEFAULT NULL,
  `created_by` int UNSIGNED DEFAULT '1',
  `updated_by` int UNSIGNED DEFAULT '1',
  `school_id` int UNSIGNED DEFAULT '1',
  `academic_id` int UNSIGNED DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `sm_bank_payment_slips_fees_discount_id_foreign` (`fees_discount_id`),
  KEY `sm_bank_payment_slips_fees_type_id_foreign` (`fees_type_id`),
  KEY `sm_bank_payment_slips_student_id_foreign` (`student_id`),
  KEY `sm_bank_payment_slips_school_id_foreign` (`school_id`),
  KEY `sm_bank_payment_slips_academic_id_foreign` (`academic_id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `sm_bank_payment_slips`
--

INSERT INTO `sm_bank_payment_slips` (`id`, `date`, `amount`, `slip`, `note`, `approve_status`, `payment_mode`, `fees_discount_id`, `fees_type_id`, `student_id`, `created_by`, `updated_by`, `school_id`, `academic_id`, `created_at`, `updated_at`) VALUES
(1, '2022-05-21', 21000.00, 'public/uploads/bankSlip/19a65edc5b805495197ae9dc811a0cd8.pdf', NULL, 1, 'bank', NULL, 1, 1, 1, 1, 1, 3, '2022-05-21 20:05:08', '2022-05-21 20:20:29'),
(2, '2022-05-21', 21000.00, 'public/uploads/bankSlip/32249a4fe4091302abfe70d49f86e5ce.pdf', NULL, 0, 'bank', NULL, 1, 2, 1, 1, 1, 3, '2022-05-21 20:57:01', '2022-05-21 20:57:01');

-- --------------------------------------------------------

--
-- Structure de la table `sm_base_groups`
--

DROP TABLE IF EXISTS `sm_base_groups`;
CREATE TABLE IF NOT EXISTS `sm_base_groups` (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `active_status` tinyint NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_by` int UNSIGNED DEFAULT '1',
  `updated_by` int UNSIGNED DEFAULT '1',
  `school_id` int UNSIGNED DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `sm_base_groups_school_id_foreign` (`school_id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `sm_base_groups`
--

INSERT INTO `sm_base_groups` (`id`, `name`, `active_status`, `created_at`, `updated_at`, `created_by`, `updated_by`, `school_id`) VALUES
(1, 'Gender', 1, '2022-05-02 06:25:59', NULL, 1, 1, 1),
(2, 'Religion', 1, '2022-05-02 06:25:59', NULL, 1, 1, 1),
(3, 'Blood Group', 1, '2022-05-02 06:25:59', NULL, 1, 1, 1);

-- --------------------------------------------------------

--
-- Structure de la table `sm_base_setups`
--

DROP TABLE IF EXISTS `sm_base_setups`;
CREATE TABLE IF NOT EXISTS `sm_base_setups` (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `base_setup_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `active_status` tinyint NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_by` int UNSIGNED DEFAULT '1',
  `updated_by` int UNSIGNED DEFAULT '1',
  `base_group_id` int UNSIGNED DEFAULT '1',
  `school_id` int UNSIGNED DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `sm_base_setups_base_group_id_foreign` (`base_group_id`),
  KEY `sm_base_setups_school_id_foreign` (`school_id`)
) ENGINE=MyISAM AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `sm_base_setups`
--

INSERT INTO `sm_base_setups` (`id`, `base_setup_name`, `active_status`, `created_at`, `updated_at`, `created_by`, `updated_by`, `base_group_id`, `school_id`) VALUES
(1, 'Masculin', 1, '2022-05-02 06:26:00', '2022-05-10 11:00:04', 1, 1, 1, 1),
(2, 'Féminin', 1, '2022-05-02 06:26:00', '2022-05-10 11:00:39', 1, 1, 1, 1),
(3, 'Others', 1, '2022-05-02 06:26:00', NULL, 1, 1, 1, 1),
(4, 'Islam', 1, '2022-05-02 06:26:00', NULL, 1, 1, 2, 1),
(5, 'Hindouisme', 1, '2022-05-02 06:26:00', '2022-05-10 11:03:10', 1, 1, 2, 1),
(6, 'Sikhism', 1, '2022-05-02 06:26:00', NULL, 1, 1, 2, 1),
(7, 'Buddhism', 1, '2022-05-02 06:26:00', NULL, 1, 1, 2, 1),
(8, 'Protestantisme', 1, '2022-05-02 06:26:00', '2022-05-10 11:03:45', 1, 1, 2, 1),
(9, 'A+', 1, '2022-05-02 06:26:00', NULL, 1, 1, 3, 1),
(10, 'O+', 1, '2022-05-02 06:26:00', NULL, 1, 1, 3, 1),
(11, 'B+', 1, '2022-05-02 06:26:00', NULL, 1, 1, 3, 1),
(12, 'AB+', 1, '2022-05-02 06:26:00', NULL, 1, 1, 3, 1),
(13, 'A-', 1, '2022-05-02 06:26:00', NULL, 1, 1, 3, 1),
(14, 'O-', 1, '2022-05-02 06:26:00', NULL, 1, 1, 3, 1),
(15, 'B-', 1, '2022-05-02 06:26:00', NULL, 1, 1, 3, 1),
(16, 'AB-', 1, '2022-05-02 06:26:00', NULL, 1, 1, 3, 1),
(17, 'Catholicisme', 1, '2022-05-10 11:01:59', '2022-05-10 11:01:59', 1, 1, 2, 1);

-- --------------------------------------------------------

--
-- Structure de la table `sm_books`
--

DROP TABLE IF EXISTS `sm_books`;
CREATE TABLE IF NOT EXISTS `sm_books` (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `book_title` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `book_number` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `isbn_no` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `publisher_name` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `author_name` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rack_number` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `quantity` int DEFAULT '0',
  `book_price` int DEFAULT NULL,
  `post_date` date DEFAULT NULL,
  `details` varchar(500) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `active_status` tinyint NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `subject_id` int UNSIGNED DEFAULT NULL,
  `book_category_id` int UNSIGNED DEFAULT NULL,
  `created_by` int UNSIGNED DEFAULT '1',
  `updated_by` int UNSIGNED DEFAULT '1',
  `school_id` int UNSIGNED DEFAULT '1',
  `academic_id` int UNSIGNED DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `sm_books_book_category_id_foreign` (`book_category_id`),
  KEY `sm_books_school_id_foreign` (`school_id`),
  KEY `sm_books_academic_id_foreign` (`academic_id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `sm_books`
--

INSERT INTO `sm_books` (`id`, `book_title`, `book_number`, `isbn_no`, `publisher_name`, `author_name`, `rack_number`, `quantity`, `book_price`, `post_date`, `details`, `active_status`, `created_at`, `updated_at`, `subject_id`, `book_category_id`, `created_by`, `updated_by`, `school_id`, `academic_id`) VALUES
(1, 'initiation à la bilogie', '1', '52', 'HACHETTE', 'MAHBOU', '54', 20, 2000, '2022-05-27', '', 1, '2022-05-27 21:21:47', '2022-05-27 21:21:47', 1, 1, 4, 1, 1, 3);

-- --------------------------------------------------------

--
-- Structure de la table `sm_book_categories`
--

DROP TABLE IF EXISTS `sm_book_categories`;
CREATE TABLE IF NOT EXISTS `sm_book_categories` (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `category_name` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `school_id` int UNSIGNED DEFAULT '1',
  `academic_id` int UNSIGNED DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `sm_book_categories_school_id_foreign` (`school_id`),
  KEY `sm_book_categories_academic_id_foreign` (`academic_id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `sm_book_categories`
--

INSERT INTO `sm_book_categories` (`id`, `category_name`, `created_at`, `updated_at`, `school_id`, `academic_id`) VALUES
(1, 'SVT', '2022-05-27 21:18:58', '2022-05-27 21:18:58', 1, 3);

-- --------------------------------------------------------

--
-- Structure de la table `sm_book_issues`
--

DROP TABLE IF EXISTS `sm_book_issues`;
CREATE TABLE IF NOT EXISTS `sm_book_issues` (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `quantity` int DEFAULT NULL,
  `given_date` date DEFAULT NULL,
  `due_date` date DEFAULT NULL,
  `issue_status` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `note` varchar(500) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `active_status` tinyint NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `book_id` int UNSIGNED DEFAULT NULL,
  `member_id` int UNSIGNED DEFAULT NULL,
  `created_by` int UNSIGNED DEFAULT '1',
  `updated_by` int UNSIGNED DEFAULT '1',
  `school_id` int UNSIGNED DEFAULT '1',
  `academic_id` int UNSIGNED DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `sm_book_issues_book_id_foreign` (`book_id`),
  KEY `sm_book_issues_member_id_foreign` (`member_id`),
  KEY `sm_book_issues_school_id_foreign` (`school_id`),
  KEY `sm_book_issues_academic_id_foreign` (`academic_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `sm_chart_of_accounts`
--

DROP TABLE IF EXISTS `sm_chart_of_accounts`;
CREATE TABLE IF NOT EXISTS `sm_chart_of_accounts` (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `head` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` varchar(1) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'E = expense, I = income',
  `active_status` int DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_by` int UNSIGNED DEFAULT '1',
  `updated_by` int UNSIGNED DEFAULT '1',
  `school_id` int UNSIGNED DEFAULT '1',
  `academic_id` int UNSIGNED DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `sm_chart_of_accounts_school_id_foreign` (`school_id`),
  KEY `sm_chart_of_accounts_academic_id_foreign` (`academic_id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `sm_chart_of_accounts`
--

INSERT INTO `sm_chart_of_accounts` (`id`, `head`, `type`, `active_status`, `created_at`, `updated_at`, `created_by`, `updated_by`, `school_id`, `academic_id`) VALUES
(1, 'tontine', 'E', 1, '2022-05-29 16:45:19', '2022-05-29 16:45:19', 1, 1, 1, 3);

-- --------------------------------------------------------

--
-- Structure de la table `sm_classes`
--

DROP TABLE IF EXISTS `sm_classes`;
CREATE TABLE IF NOT EXISTS `sm_classes` (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `class_name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `active_status` tinyint NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_by` int UNSIGNED DEFAULT '1',
  `updated_by` int UNSIGNED DEFAULT '1',
  `school_id` int UNSIGNED DEFAULT '1',
  `academic_id` int UNSIGNED DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `sm_classes_school_id_foreign` (`school_id`),
  KEY `sm_classes_academic_id_foreign` (`academic_id`)
) ENGINE=MyISAM AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `sm_classes`
--

INSERT INTO `sm_classes` (`id`, `class_name`, `active_status`, `created_at`, `updated_at`, `created_by`, `updated_by`, `school_id`, `academic_id`) VALUES
(1, '6ème', 1, '2022-05-13 08:55:00', '2022-06-14 11:08:11', 1, 1, 1, 3),
(2, '5ème', 1, '2022-05-13 08:55:53', '2022-06-14 11:08:57', 1, 1, 1, 3),
(3, '4ème', 1, '2022-05-13 08:59:03', '2022-06-14 11:10:10', 1, 1, 1, 3),
(4, '3ème', 1, '2022-05-13 09:02:07', '2022-06-14 11:11:02', 1, 1, 1, 3),
(5, '2nde', 1, '2022-05-13 09:08:19', '2022-06-14 11:12:11', 1, 1, 1, 3),
(6, 'Niveau 1', 1, '2022-06-01 23:00:00', '2022-06-01 23:00:00', 1, 1, 1, 4),
(7, 'Niveau 2', 1, '2022-06-01 23:00:00', '2022-06-01 23:00:00', 1, 1, 1, 4),
(8, 'Niveau 3', 1, '2022-06-01 23:00:00', '2022-06-01 23:00:00', 1, 1, 1, 4),
(9, 'Niveau 4', 1, '2022-06-01 23:00:00', '2022-06-01 23:00:00', 1, 1, 1, 4),
(10, 'Niveau 5', 1, '2022-06-01 23:00:00', '2022-06-01 23:00:00', 1, 1, 1, 4),
(11, '1ère', 1, '2022-06-14 11:13:18', '2022-06-14 11:13:18', 1, 1, 1, 3),
(12, 'Tle', 1, '2022-06-14 11:13:54', '2022-06-14 11:13:54', 1, 1, 1, 3);

-- --------------------------------------------------------

--
-- Structure de la table `sm_class_optional_subject`
--

DROP TABLE IF EXISTS `sm_class_optional_subject`;
CREATE TABLE IF NOT EXISTS `sm_class_optional_subject` (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `class_id` int NOT NULL,
  `gpa_above` double(8,2) NOT NULL,
  `created_by` int UNSIGNED DEFAULT '1',
  `updated_by` int UNSIGNED DEFAULT '1',
  `school_id` int UNSIGNED DEFAULT '1',
  `academic_id` int UNSIGNED DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `sm_class_optional_subject_school_id_foreign` (`school_id`),
  KEY `sm_class_optional_subject_academic_id_foreign` (`academic_id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `sm_class_optional_subject`
--

INSERT INTO `sm_class_optional_subject` (`id`, `class_id`, `gpa_above`, `created_by`, `updated_by`, `school_id`, `academic_id`, `created_at`, `updated_at`) VALUES
(1, 1, 2.00, 1, 1, 1, 3, '2022-05-19 21:21:05', '2022-05-19 21:21:05'),
(2, 2, 2.00, 1, 1, 1, 3, '2022-05-19 21:21:05', '2022-05-19 21:21:05');

-- --------------------------------------------------------

--
-- Structure de la table `sm_class_rooms`
--

DROP TABLE IF EXISTS `sm_class_rooms`;
CREATE TABLE IF NOT EXISTS `sm_class_rooms` (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `room_no` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `capacity` int DEFAULT NULL,
  `active_status` tinyint NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_by` int UNSIGNED DEFAULT '1',
  `updated_by` int UNSIGNED DEFAULT '1',
  `school_id` int UNSIGNED DEFAULT '1',
  `academic_id` int UNSIGNED DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `sm_class_rooms_school_id_foreign` (`school_id`),
  KEY `sm_class_rooms_academic_id_foreign` (`academic_id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `sm_class_rooms`
--

INSERT INTO `sm_class_rooms` (`id`, `room_no`, `capacity`, `active_status`, `created_at`, `updated_at`, `created_by`, `updated_by`, `school_id`, `academic_id`) VALUES
(1, 'AMPHI', 205, 1, '2022-05-10 14:16:21', '2022-05-10 14:16:21', 1, 1, 1, 3),
(2, '17BPS1', 60, 1, '2022-05-13 13:13:03', '2022-05-13 13:13:03', 1, 1, 1, 3),
(3, '21BPS2', 100, 1, '2022-05-13 13:14:51', '2022-05-13 13:14:51', 1, 1, 1, 3);

-- --------------------------------------------------------

--
-- Structure de la table `sm_class_routines`
--

DROP TABLE IF EXISTS `sm_class_routines`;
CREATE TABLE IF NOT EXISTS `sm_class_routines` (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `monday` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `monday_start_from` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `monday_end_to` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `monday_room_id` int UNSIGNED DEFAULT NULL,
  `tuesday` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tuesday_start_from` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tuesday_end_to` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tuesday_room_id` int UNSIGNED DEFAULT NULL,
  `wednesday` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `wednesday_start_from` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `wednesday_end_to` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `wednesday_room_id` int UNSIGNED DEFAULT NULL,
  `thursday` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `thursday_start_from` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `thursday_end_to` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `thursday_room_id` int UNSIGNED DEFAULT NULL,
  `friday` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `friday_start_from` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `friday_end_to` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `friday_room_id` int UNSIGNED DEFAULT NULL,
  `saturday` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `saturday_start_from` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `saturday_end_to` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `saturday_room_id` int UNSIGNED DEFAULT NULL,
  `sunday` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sunday_start_from` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sunday_end_to` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sunday_room_id` int UNSIGNED DEFAULT NULL,
  `active_status` tinyint NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `class_id` int UNSIGNED DEFAULT NULL,
  `section_id` int UNSIGNED DEFAULT NULL,
  `subject_id` int UNSIGNED DEFAULT NULL,
  `created_by` int UNSIGNED DEFAULT '1',
  `updated_by` int UNSIGNED DEFAULT '1',
  `school_id` int UNSIGNED DEFAULT '1',
  `academic_id` int UNSIGNED DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `sm_class_routines_class_id_foreign` (`class_id`),
  KEY `sm_class_routines_section_id_foreign` (`section_id`),
  KEY `sm_class_routines_subject_id_foreign` (`subject_id`),
  KEY `sm_class_routines_school_id_foreign` (`school_id`),
  KEY `sm_class_routines_academic_id_foreign` (`academic_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `sm_class_routine_updates`
--

DROP TABLE IF EXISTS `sm_class_routine_updates`;
CREATE TABLE IF NOT EXISTS `sm_class_routine_updates` (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `day` int DEFAULT NULL COMMENT '1=sat,2=sun,7=fri',
  `active_status` tinyint NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `room_id` int UNSIGNED DEFAULT NULL,
  `teacher_id` int UNSIGNED DEFAULT NULL,
  `class_period_id` int UNSIGNED DEFAULT NULL,
  `subject_id` int UNSIGNED DEFAULT NULL,
  `class_id` int UNSIGNED DEFAULT NULL,
  `section_id` int UNSIGNED DEFAULT NULL,
  `created_by` int UNSIGNED DEFAULT '1',
  `updated_by` int UNSIGNED DEFAULT '1',
  `school_id` int UNSIGNED DEFAULT '1',
  `academic_id` int UNSIGNED DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `sm_class_routine_updates_room_id_foreign` (`room_id`),
  KEY `sm_class_routine_updates_teacher_id_foreign` (`teacher_id`),
  KEY `sm_class_routine_updates_class_period_id_foreign` (`class_period_id`),
  KEY `sm_class_routine_updates_subject_id_foreign` (`subject_id`),
  KEY `sm_class_routine_updates_class_id_foreign` (`class_id`),
  KEY `sm_class_routine_updates_section_id_foreign` (`section_id`),
  KEY `sm_class_routine_updates_school_id_foreign` (`school_id`),
  KEY `sm_class_routine_updates_academic_id_foreign` (`academic_id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `sm_class_routine_updates`
--

INSERT INTO `sm_class_routine_updates` (`id`, `day`, `active_status`, `created_at`, `updated_at`, `room_id`, `teacher_id`, `class_period_id`, `subject_id`, `class_id`, `section_id`, `created_by`, `updated_by`, `school_id`, `academic_id`) VALUES
(1, 10, 1, '2022-05-13 13:45:42', '2022-05-13 13:45:42', 3, 2, 1, 1, 5, 5, 1, 1, 1, 3);

-- --------------------------------------------------------

--
-- Structure de la table `sm_class_sections`
--

DROP TABLE IF EXISTS `sm_class_sections`;
CREATE TABLE IF NOT EXISTS `sm_class_sections` (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `active_status` tinyint NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `class_id` int UNSIGNED DEFAULT NULL,
  `section_id` int UNSIGNED DEFAULT NULL,
  `school_id` int UNSIGNED DEFAULT '1',
  `academic_id` int UNSIGNED DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `sm_class_sections_class_id_foreign` (`class_id`),
  KEY `sm_class_sections_section_id_foreign` (`section_id`),
  KEY `sm_class_sections_school_id_foreign` (`school_id`),
  KEY `sm_class_sections_academic_id_foreign` (`academic_id`)
) ENGINE=MyISAM AUTO_INCREMENT=103 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `sm_class_sections`
--

INSERT INTO `sm_class_sections` (`id`, `active_status`, `created_at`, `updated_at`, `class_id`, `section_id`, `school_id`, `academic_id`) VALUES
(79, 1, '2022-06-14 11:08:11', '2022-06-14 11:08:11', 1, 4, 1, 3),
(82, 1, '2022-06-14 11:08:57', '2022-06-14 11:08:57', 2, 4, 1, 3),
(86, 1, '2022-06-14 11:10:11', '2022-06-14 11:10:11', 3, 7, 1, 3),
(102, 1, '2022-06-14 11:13:54', '2022-06-14 11:13:54', 12, 11, 1, 3),
(101, 1, '2022-06-14 11:13:54', '2022-06-14 11:13:54', 12, 10, 1, 3),
(100, 1, '2022-06-14 11:13:54', '2022-06-14 11:13:54', 12, 7, 1, 3),
(99, 1, '2022-06-14 11:13:54', '2022-06-14 11:13:54', 12, 6, 1, 3),
(98, 1, '2022-06-14 11:13:54', '2022-06-14 11:13:54', 12, 5, 1, 3),
(97, 1, '2022-06-14 11:13:18', '2022-06-14 11:13:18', 11, 11, 1, 3),
(88, 1, '2022-06-14 11:11:02', '2022-06-14 11:11:02', 4, 7, 1, 3),
(87, 1, '2022-06-14 11:11:02', '2022-06-14 11:11:02', 4, 6, 1, 3),
(85, 1, '2022-06-14 11:10:10', '2022-06-14 11:10:11', 3, 6, 1, 3),
(96, 1, '2022-06-14 11:13:18', '2022-06-14 11:13:18', 11, 10, 1, 3),
(95, 1, '2022-06-14 11:13:18', '2022-06-14 11:13:18', 11, 7, 1, 3),
(94, 1, '2022-06-14 11:13:18', '2022-06-14 11:13:18', 11, 6, 1, 3),
(93, 1, '2022-06-14 11:13:18', '2022-06-14 11:13:18', 11, 5, 1, 3),
(92, 1, '2022-06-14 11:12:11', '2022-06-14 11:12:11', 5, 10, 1, 3),
(91, 1, '2022-06-14 11:12:11', '2022-06-14 11:12:11', 5, 7, 1, 3),
(90, 1, '2022-06-14 11:12:11', '2022-06-14 11:12:11', 5, 6, 1, 3),
(89, 1, '2022-06-14 11:12:11', '2022-06-14 11:12:11', 5, 3, 1, 3),
(34, 1, '2022-06-01 23:00:00', '2022-06-02 13:15:05', 6, 13, 1, 4),
(35, 1, '2022-06-01 23:00:00', '2022-06-02 13:15:05', 6, 14, 1, 4),
(36, 1, '2022-06-01 23:00:00', '2022-06-02 13:15:05', 6, 15, 1, 4),
(37, 1, '2022-06-01 23:00:00', '2022-06-02 13:15:05', 6, 16, 1, 4),
(38, 1, '2022-06-01 23:00:00', '2022-06-02 13:15:05', 6, 17, 1, 4),
(39, 1, '2022-06-01 23:00:00', '2022-06-02 13:15:05', 6, 18, 1, 4),
(40, 1, '2022-06-01 23:00:00', '2022-06-02 13:15:05', 6, 19, 1, 4),
(41, 1, '2022-06-01 23:00:00', '2022-06-02 13:15:05', 6, 20, 1, 4),
(42, 1, '2022-06-01 23:00:00', '2022-06-02 13:15:05', 6, 21, 1, 4),
(43, 1, '2022-06-01 23:00:00', '2022-06-02 13:15:05', 7, 13, 1, 4),
(44, 1, '2022-06-01 23:00:00', '2022-06-02 13:15:05', 7, 14, 1, 4),
(45, 1, '2022-06-01 23:00:00', '2022-06-02 13:15:05', 7, 15, 1, 4),
(46, 1, '2022-06-01 23:00:00', '2022-06-02 13:15:05', 7, 16, 1, 4),
(47, 1, '2022-06-01 23:00:00', '2022-06-02 13:15:05', 7, 17, 1, 4),
(48, 1, '2022-06-01 23:00:00', '2022-06-02 13:15:05', 7, 18, 1, 4),
(49, 1, '2022-06-01 23:00:00', '2022-06-02 13:15:05', 7, 19, 1, 4),
(50, 1, '2022-06-01 23:00:00', '2022-06-02 13:15:05', 7, 20, 1, 4),
(51, 1, '2022-06-01 23:00:00', '2022-06-02 13:15:05', 7, 21, 1, 4),
(52, 1, '2022-06-01 23:00:00', '2022-06-02 13:15:05', 8, 13, 1, 4),
(53, 1, '2022-06-01 23:00:00', '2022-06-02 13:15:05', 8, 14, 1, 4),
(54, 1, '2022-06-01 23:00:00', '2022-06-02 13:15:05', 8, 15, 1, 4),
(55, 1, '2022-06-01 23:00:00', '2022-06-02 13:15:05', 8, 16, 1, 4),
(56, 1, '2022-06-01 23:00:00', '2022-06-02 13:15:05', 8, 17, 1, 4),
(57, 1, '2022-06-01 23:00:00', '2022-06-02 13:15:05', 8, 18, 1, 4),
(58, 1, '2022-06-01 23:00:00', '2022-06-02 13:15:05', 8, 19, 1, 4),
(59, 1, '2022-06-01 23:00:00', '2022-06-02 13:15:05', 8, 20, 1, 4),
(60, 1, '2022-06-01 23:00:00', '2022-06-02 13:15:05', 8, 21, 1, 4),
(61, 1, '2022-06-01 23:00:00', '2022-06-02 13:15:05', 9, 13, 1, 4),
(62, 1, '2022-06-01 23:00:00', '2022-06-02 13:15:05', 9, 14, 1, 4),
(63, 1, '2022-06-01 23:00:00', '2022-06-02 13:15:06', 9, 15, 1, 4),
(64, 1, '2022-06-01 23:00:00', '2022-06-02 13:15:06', 9, 16, 1, 4),
(65, 1, '2022-06-01 23:00:00', '2022-06-02 13:15:06', 9, 17, 1, 4),
(66, 1, '2022-06-01 23:00:00', '2022-06-02 13:15:06', 9, 18, 1, 4),
(67, 1, '2022-06-01 23:00:00', '2022-06-02 13:15:06', 9, 19, 1, 4),
(68, 1, '2022-06-01 23:00:00', '2022-06-02 13:15:06', 9, 20, 1, 4),
(69, 1, '2022-06-01 23:00:00', '2022-06-02 13:15:06', 9, 21, 1, 4),
(70, 1, '2022-06-01 23:00:00', '2022-06-02 13:15:06', 10, 13, 1, 4),
(71, 1, '2022-06-01 23:00:00', '2022-06-02 13:15:06', 10, 14, 1, 4),
(72, 1, '2022-06-01 23:00:00', '2022-06-02 13:15:06', 10, 15, 1, 4),
(73, 1, '2022-06-01 23:00:00', '2022-06-02 13:15:06', 10, 16, 1, 4),
(74, 1, '2022-06-01 23:00:00', '2022-06-02 13:15:06', 10, 17, 1, 4),
(75, 1, '2022-06-01 23:00:00', '2022-06-02 13:15:06', 10, 18, 1, 4),
(76, 1, '2022-06-01 23:00:00', '2022-06-02 13:15:06', 10, 19, 1, 4),
(77, 1, '2022-06-01 23:00:00', '2022-06-02 13:15:06', 10, 20, 1, 4),
(78, 1, '2022-06-01 23:00:00', '2022-06-02 13:15:06', 10, 21, 1, 4),
(80, 1, '2022-06-14 11:08:11', '2022-06-14 11:08:11', 1, 8, 1, 3),
(81, 1, '2022-06-14 11:08:11', '2022-06-14 11:08:11', 1, 9, 1, 3),
(83, 1, '2022-06-14 11:08:57', '2022-06-14 11:08:57', 2, 8, 1, 3),
(84, 1, '2022-06-14 11:08:57', '2022-06-14 11:08:57', 2, 9, 1, 3);

-- --------------------------------------------------------

--
-- Structure de la table `sm_class_teachers`
--

DROP TABLE IF EXISTS `sm_class_teachers`;
CREATE TABLE IF NOT EXISTS `sm_class_teachers` (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `active_status` tinyint NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `teacher_id` int UNSIGNED DEFAULT NULL,
  `assign_class_teacher_id` int UNSIGNED DEFAULT NULL,
  `created_by` int UNSIGNED DEFAULT '1',
  `updated_by` int UNSIGNED DEFAULT '1',
  `school_id` int UNSIGNED DEFAULT '1',
  `academic_id` int UNSIGNED DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `sm_class_teachers_teacher_id_foreign` (`teacher_id`),
  KEY `sm_class_teachers_assign_class_teacher_id_foreign` (`assign_class_teacher_id`),
  KEY `sm_class_teachers_school_id_foreign` (`school_id`),
  KEY `sm_class_teachers_academic_id_foreign` (`academic_id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `sm_class_teachers`
--

INSERT INTO `sm_class_teachers` (`id`, `active_status`, `created_at`, `updated_at`, `teacher_id`, `assign_class_teacher_id`, `created_by`, `updated_by`, `school_id`, `academic_id`) VALUES
(1, 1, '2022-05-13 13:16:01', '2022-05-13 13:16:01', 2, 1, 1, 1, 1, 3),
(5, 1, '2022-06-24 19:10:02', '2022-06-24 19:10:02', 2, 2, 1, 1, 1, 3),
(3, 1, '2022-06-24 19:08:02', '2022-06-24 19:08:02', 2, 3, 1, 1, 1, 3),
(4, 1, '2022-06-24 19:08:56', '2022-06-24 19:08:56', 12, 4, 1, 1, 1, 3);

-- --------------------------------------------------------

--
-- Structure de la table `sm_class_times`
--

DROP TABLE IF EXISTS `sm_class_times`;
CREATE TABLE IF NOT EXISTS `sm_class_times` (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `type` enum('exam','class') COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `period` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `start_time` time DEFAULT NULL,
  `end_time` time DEFAULT NULL,
  `is_break` tinyint DEFAULT NULL COMMENT '1 = tiffin time, 0 = class',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `school_id` int UNSIGNED DEFAULT '1',
  `academic_id` int UNSIGNED DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `sm_class_times_school_id_foreign` (`school_id`),
  KEY `sm_class_times_academic_id_foreign` (`academic_id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `sm_class_times`
--

INSERT INTO `sm_class_times` (`id`, `type`, `period`, `start_time`, `end_time`, `is_break`, `created_at`, `updated_at`, `school_id`, `academic_id`) VALUES
(1, 'class', '1er cours', '07:30:00', '11:45:00', NULL, '2022-05-13 13:40:47', '2022-05-13 13:55:11', 1, 3),
(2, 'exam', '1er cours', '08:30:00', '11:00:00', NULL, '2022-05-13 13:54:27', '2022-05-13 13:54:27', 1, 3);

-- --------------------------------------------------------

--
-- Structure de la table `sm_complaints`
--

DROP TABLE IF EXISTS `sm_complaints`;
CREATE TABLE IF NOT EXISTS `sm_complaints` (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `complaint_by` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `complaint_type` tinyint DEFAULT NULL,
  `complaint_source` tinyint DEFAULT NULL,
  `phone` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date` date DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `action_taken` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `assigned` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `file` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `active_status` tinyint NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_by` int UNSIGNED DEFAULT '1',
  `updated_by` int UNSIGNED DEFAULT '1',
  `school_id` int UNSIGNED DEFAULT '1',
  `academic_id` int UNSIGNED DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `sm_complaints_school_id_foreign` (`school_id`),
  KEY `sm_complaints_academic_id_foreign` (`academic_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `sm_contact_messages`
--

DROP TABLE IF EXISTS `sm_contact_messages`;
CREATE TABLE IF NOT EXISTS `sm_contact_messages` (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `subject` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `message` text COLLATE utf8mb4_unicode_ci,
  `view_status` tinyint NOT NULL DEFAULT '0',
  `reply_status` tinyint NOT NULL DEFAULT '0',
  `active_status` tinyint NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_by` int UNSIGNED DEFAULT '1',
  `updated_by` int UNSIGNED DEFAULT '1',
  `school_id` int UNSIGNED DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `sm_contact_messages_school_id_foreign` (`school_id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `sm_contact_messages`
--

INSERT INTO `sm_contact_messages` (`id`, `name`, `email`, `subject`, `message`, `view_status`, `reply_status`, `active_status`, `created_at`, `updated_at`, `created_by`, `updated_by`, `school_id`) VALUES
(1, 'Emmanuel Simo', 'astridgauthier3@gmail.com', 'visite', 'Besoin de la visite', 0, 0, 1, '2022-06-13 14:23:45', '2022-06-13 14:23:45', 1, 1, 1);

-- --------------------------------------------------------

--
-- Structure de la table `sm_contact_pages`
--

DROP TABLE IF EXISTS `sm_contact_pages`;
CREATE TABLE IF NOT EXISTS `sm_contact_pages` (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `button_text` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `button_url` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address_text` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone_text` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_text` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `latitude` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `longitude` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `google_map_address` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `active_status` tinyint NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_by` int UNSIGNED DEFAULT '1',
  `updated_by` int UNSIGNED DEFAULT '1',
  `school_id` int UNSIGNED DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `sm_contact_pages_school_id_foreign` (`school_id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `sm_contact_pages`
--

INSERT INTO `sm_contact_pages` (`id`, `title`, `description`, `image`, `button_text`, `button_url`, `address`, `address_text`, `phone`, `phone_text`, `email`, `email_text`, `latitude`, `longitude`, `google_map_address`, `active_status`, `created_at`, `updated_at`, `created_by`, `updated_by`, `school_id`) VALUES
(1, 'Contact Us', 'Have any questions? We’d love to hear from you! Here’s how to get in touch with us.', 'public/uploads/contactPage/contact.jpg', 'Learn More About Us', 'about', '56/8 Panthapath, Dhanmondi,Dhaka', 'Santa monica bullevard', '0184113625', 'Mon to Fri 9am to 6 pm', 'admin@infixedu.com', 'Send us your query anytime!', '23.707310', '90.415480', 'Panthapath, Dhaka', 1, NULL, NULL, 1, 1, NULL);

-- --------------------------------------------------------

--
-- Structure de la table `sm_content_types`
--

DROP TABLE IF EXISTS `sm_content_types`;
CREATE TABLE IF NOT EXISTS `sm_content_types` (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `type_name` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `active_status` tinyint NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_by` int UNSIGNED DEFAULT '1',
  `updated_by` int UNSIGNED DEFAULT '1',
  `school_id` int UNSIGNED DEFAULT '1',
  `academic_id` int UNSIGNED DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `sm_content_types_school_id_foreign` (`school_id`),
  KEY `sm_content_types_academic_id_foreign` (`academic_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `sm_countries`
--

DROP TABLE IF EXISTS `sm_countries`;
CREATE TABLE IF NOT EXISTS `sm_countries` (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `code` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `native` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `continent` varchar(255) DEFAULT NULL,
  `capital` varchar(255) DEFAULT NULL,
  `currency` varchar(255) DEFAULT NULL,
  `languages` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `school_id` int UNSIGNED DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `sm_countries_school_id_foreign` (`school_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Structure de la table `sm_courses`
--

DROP TABLE IF EXISTS `sm_courses`;
CREATE TABLE IF NOT EXISTS `sm_courses` (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `overview` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `outline` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `prerequisites` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `resources` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `stats` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `active_status` int NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `school_id` int UNSIGNED DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `sm_courses_school_id_foreign` (`school_id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `sm_courses`
--

INSERT INTO `sm_courses` (`id`, `title`, `image`, `overview`, `outline`, `prerequisites`, `resources`, `stats`, `active_status`, `created_at`, `updated_at`, `school_id`) VALUES
(2, 'Quis aspernatur ut quo nisi et.', 'public/uploads/course/academic3.jpg', 'Voluptas minima vero iusto. Repudiandae blanditiis recusandae aliquam repellat. Rem consequuntur dignissimos in a impedit. Et earum ipsa cum est cupiditate. Vel est in nulla. Incidunt molestiae perferendis molestiae repudiandae laboriosam placeat. Cumque veniam molestiae et suscipit corrupti beatae. Veritatis et aspernatur magnam. Ad alias et sit. Dolorum provident impedit optio architecto sit nemo consectetur enim. Ut voluptas quo libero earum sit. Iure debitis enim eius minima ut beatae dolorem. Et et et sed. Voluptates aperiam numquam enim assumenda dolores. Saepe ratione temporibus laboriosam labore excepturi quo occaecati. Quia et laudantium consequatur enim. Non at sint dignissimos. Ipsa fugit autem est enim atque. Earum quisquam odio eum dolores deleniti corporis et. Rerum et porro nihil id saepe dolor qui. Natus sapiente ipsum provident est voluptates sint quo soluta. Dolor est enim enim occaecati ipsum dolorum. Nihil fugit accusamus dolor officia. Delectus ad quae placeat id aut. Distinctio est unde id vitae odio cum dolorem. Mollitia repellendus sit aliquid fugit. Facere saepe ut magni sit rerum. Enim non suscipit aut aspernatur. Est quia rerum porro consequatur minima maxime. Autem quia sequi doloribus architecto. Optio similique soluta labore sit enim. Eum aut ducimus placeat soluta aspernatur ut dolore. Optio omnis hic sequi beatae. Fugiat at expedita numquam dolores ullam veniam quidem natus. Officia sed nobis facilis voluptates suscipit ipsum voluptates. Numquam eaque dignissimos consequatur praesentium voluptatem ea. Similique et voluptates ut at autem occaecati. Culpa laboriosam aperiam et quisquam minus iste. Omnis accusamus praesentium voluptas enim ipsa saepe et voluptate. Odit nihil rerum consequatur consequatur totam omnis. Quis quidem quos rem corrupti sequi est. Quam molestias mollitia dignissimos qui. Qui velit ut necessitatibus amet reiciendis qui cupiditate. Non omnis facere ab autem corrupti quo.', 'Qui eum illo ducimus et officiis. Ut deserunt reprehenderit et eum maiores vero sit vel. Expedita non quia sunt enim quia qui reprehenderit cum. Eius sit iusto hic soluta. Beatae magni amet eos vel iusto recusandae. Labore maxime voluptatem voluptatem. Deleniti quam quia nesciunt expedita ipsa. Et qui nesciunt quo exercitationem et. Eos reprehenderit neque recusandae. Soluta beatae libero voluptas et officia. Voluptatem sit eveniet facilis. Aperiam quos sunt ab ut architecto voluptas. Cum vitae veniam eaque ut magni ipsam. Accusantium quia numquam omnis ut omnis officiis nihil. Ipsa ut ut illum enim ipsam. Dolor molestiae occaecati fuga et minima et animi velit. Adipisci modi dolores autem corrupti consequatur dignissimos est. Sed distinctio qui tempore voluptas ut laboriosam quos vel. Molestiae quas est quidem. Sit itaque doloremque quisquam ut at laudantium cupiditate. Quis neque et autem velit rerum. Repellendus ut vel atque ut. Non cum libero nemo repellat. Repudiandae aspernatur fugit officia veritatis amet quae odit. Nisi veniam sunt iure tempore id ratione quam deserunt. Expedita amet odio sequi voluptatem ex quaerat. Commodi accusantium optio minima. Debitis tempore sunt voluptatem qui. Rerum ducimus et non perferendis fugit voluptatum. Ut unde rem asperiores nam. Necessitatibus perferendis suscipit aliquid quis quae. Consectetur quisquam doloribus alias est perferendis ut. Dolorum labore laboriosam rerum sint perferendis id et. Minima possimus non dolor minima. Facere eum et dolor consectetur. Officiis est iusto et. Voluptates quis ratione iusto aspernatur eum quia aut. Id perspiciatis quibusdam voluptatum a. Ratione itaque animi rerum. Nihil fugiat assumenda dolorem qui et ipsam. Consequatur deserunt excepturi consequatur sunt recusandae ea libero aliquid. Quidem in corrupti at exercitationem.', 'Facere doloribus labore molestiae aliquam aperiam velit ut sed. Minus autem optio repellendus corrupti adipisci est inventore. Earum repellat aut ut quia qui quia. Reiciendis et qui ullam aut ad expedita non autem. Consequatur alias et architecto. Et sed ut porro illum. Minima et maxime quos harum. Voluptates occaecati rerum et iste libero consequatur sunt. Dolor praesentium temporibus magni corrupti. Aut veritatis quaerat mollitia adipisci explicabo. Voluptas eos vel quae unde id eos. Possimus id omnis sit qui est. Molestias enim recusandae expedita iusto. Et optio aliquid ipsam ut accusamus. Earum ducimus porro totam saepe eos nihil perferendis vero. Voluptatem accusantium ullam nobis perferendis. Cupiditate dolorum perspiciatis recusandae aut eos est autem. Aut tenetur neque totam dolorem a natus consequatur. Quam dolores sed est perferendis similique cumque aut. Distinctio est est sed quisquam qui et repellendus. Eaque unde in alias sit sed facilis. Unde quia eligendi nisi. Id quibusdam magni provident eaque facere quas. Voluptates voluptatibus iusto at cupiditate aut. Hic vel perspiciatis quam. Natus nemo voluptate id rerum assumenda qui magnam quasi. Animi quas sunt libero aut sit nobis aut. Perspiciatis fuga esse facere. Numquam nisi laborum quis sed totam necessitatibus eos. Quibusdam tenetur nostrum saepe modi. Ullam deserunt est esse harum est magni velit. Esse sit sit quibusdam aut voluptas qui saepe. Libero fuga placeat veritatis id temporibus deserunt. Similique id saepe amet natus id. Consequatur iure aliquam est quos. Fugiat laborum explicabo saepe quasi omnis ea. Ut consectetur commodi quibusdam qui. Est praesentium quis vero quam illum deleniti facilis. Est harum quod esse. Molestiae porro culpa animi consequatur commodi vero non. Soluta vel distinctio molestiae laboriosam ex animi in recusandae. Molestias et similique dicta aut sunt delectus impedit. Necessitatibus facilis reprehenderit eum assumenda molestiae qui voluptas dicta.', 'Pariatur asperiores earum magni possimus dolores. Dicta omnis error blanditiis. Nesciunt et qui nihil quidem eos illum consequatur. Ducimus aut velit quidem laborum. Est in est architecto. Fuga molestias et beatae perferendis vero. Sint eum deleniti non distinctio. Molestiae qui sequi ea ex provident minima. Eos quasi quidem culpa eos eos omnis. Eveniet rerum dolorem soluta soluta et eos odio. Et incidunt tempora provident. Soluta optio debitis voluptatem qui quia minus. Culpa soluta officiis omnis et. Dolor sapiente voluptatum sed hic necessitatibus rem enim consequuntur. Voluptatibus vel dolor soluta eligendi. Nobis velit aliquid rem qui officiis sed architecto tempore. Id nihil voluptatem mollitia libero et aut. Sit vel corporis nemo rerum amet qui. Rem velit voluptas optio accusamus libero placeat. Ut ipsum quia rerum sit aliquid cumque magni. Recusandae ut voluptatum tempore. Corporis blanditiis nobis aspernatur sit et voluptatem sint. Qui molestiae ullam et tempora sed sint fugit. Sed necessitatibus dolores nam vero eum. Facilis ad culpa cumque odio porro iste. Soluta adipisci tempora tempora adipisci. Laboriosam sint et fugiat cupiditate ex quibusdam. Minus aspernatur provident praesentium voluptas fuga. Atque aut inventore quis occaecati aspernatur aspernatur et. Est soluta blanditiis sit rerum iusto eos suscipit deleniti. Enim aut alias consequatur ut non. Optio nam ducimus dolor voluptatem. Eaque quos sed ut enim. Quasi sed ipsum ab magnam velit. Odio ipsum maiores praesentium ab illo quas quibusdam iure. Voluptatum velit aspernatur est rem sunt totam qui perspiciatis. Eveniet non totam consequatur aperiam aut quia et. Accusamus deserunt omnis voluptatem quaerat sunt qui culpa. Nesciunt fugit sapiente et exercitationem. Numquam unde minima cumque voluptas nam et ad praesentium. Quisquam et minus pariatur excepturi est perferendis eligendi et. Omnis praesentium consectetur eligendi enim deserunt qui.', 'Doloribus nisi repellendus voluptate dignissimos aut. Expedita quaerat rem numquam enim eius deserunt recusandae. Nostrum omnis qui laboriosam laudantium qui expedita consequatur. Sunt magnam ad et vel laborum rerum. Placeat quia atque commodi voluptatem. Qui ea sapiente enim dolorem corrupti est. Sunt qui consequuntur veritatis nam. Adipisci omnis dignissimos aut et. Aut voluptatem consequatur aperiam tenetur a eum. Consequatur in doloribus distinctio ab ut corrupti fuga esse. Consequatur asperiores repudiandae omnis reiciendis repellendus. Et laborum id eius placeat commodi aut nemo. Atque explicabo maiores vero fugiat dicta. Aperiam et iusto necessitatibus voluptatem eligendi odio dolor. Iusto tempore eum expedita beatae. Eum consequatur eaque itaque exercitationem enim commodi asperiores. Nulla deserunt hic perferendis quis ut voluptates. Dolores est modi earum tempora veniam ipsa. Dolorem autem eum quaerat ipsa aut architecto. Odit voluptatum suscipit aut error eos inventore tenetur aliquam. Deserunt eos repellat expedita vitae minus. Itaque et est minima ex at iusto a. Impedit ullam omnis quaerat quia alias vitae quis. Voluptatem quaerat aut esse iure quaerat est blanditiis enim. Dolor placeat officiis enim et rem. Deleniti non nisi itaque modi nulla dolorem omnis quasi. Nisi et totam pariatur debitis incidunt porro exercitationem. Sit quasi delectus ipsam ratione sed sunt incidunt. Nihil cumque velit soluta. Temporibus non fuga beatae sed. Esse ratione sunt at adipisci sunt. Fuga dignissimos asperiores voluptatum rerum rerum. Est a exercitationem enim sint officiis et. Est facilis ab eos. Molestias qui perferendis natus perspiciatis tempora ut aut. Labore ea eveniet ratione quasi ratione. Eum id dignissimos libero illo. Ut itaque voluptatem sit ut. Cumque eos ea eveniet placeat cum. Alias ipsum eius alias amet. Quisquam non pariatur quos officiis autem. Et corporis saepe ratione omnis animi nesciunt. Libero quia occaecati dignissimos et.', 1, '2022-05-02 06:30:49', NULL, 1),
(3, 'Quaerat eos voluptates voluptatum quia.', 'public/uploads/course/academic5.jpg', 'Consectetur recusandae ipsa autem voluptate maiores saepe. Vitae dolorum voluptas rerum veniam repellat eaque voluptatem facere. Unde earum consequatur eum voluptatibus ut veritatis. Iste ullam fugit repudiandae qui. Numquam id et recusandae ab ipsam. Laborum nemo quod voluptas. Eligendi reprehenderit doloribus eveniet voluptates minus. Quas animi et fugiat aut veniam quae. Dolores temporibus totam nemo et. Quia veritatis illum magni. Autem dolores sapiente eos omnis est. Corporis et dolore dolor nobis et. Facilis aut est expedita consectetur commodi unde. Cum excepturi pariatur aut in. Sed est quia beatae dolor maiores sit omnis ut. Est voluptas et aut occaecati velit. Id ipsam tenetur inventore nihil iure qui quia. Sapiente voluptates est ut facilis eum sunt. Quod enim itaque reiciendis voluptatum. Impedit quia rerum consectetur ratione distinctio et magnam. Eum consequuntur beatae nihil eum non est ut. Et aut corporis tenetur similique aut ipsa. Cum amet laborum dolorem officiis aliquid. Ex non ut numquam sit rerum officia vel magnam. Rerum et dolorem sed sapiente et consequuntur velit. Sunt rerum laborum hic illo aut minima. Ut similique vel et cum. Ipsa voluptatem iusto ad eum porro. Voluptatem consequatur doloribus velit veritatis delectus similique. Eos numquam voluptates omnis ut corrupti fuga reiciendis. Veniam autem a reiciendis velit. Id provident aut magni voluptate quae aut quam molestiae. Quas nulla sunt omnis consequuntur et reprehenderit ut. Esse error reprehenderit harum pariatur deserunt tempora perspiciatis. Est dolorem aut earum qui. Eveniet odio et laborum numquam est temporibus iure. Velit fuga perferendis sint voluptas quaerat est quis. Accusamus pariatur expedita enim. Placeat at ipsum neque aut. Corporis molestiae perferendis in id tempora tempora non. Sit consequatur facere quia voluptatum culpa. Porro ut voluptatem iure qui. Repellendus modi illo deserunt dolores. Voluptate corporis at voluptas dicta vero qui est veniam.', 'Mollitia veritatis autem doloremque quis natus repellendus. Aspernatur accusantium hic enim placeat. Adipisci dignissimos omnis natus incidunt nihil non. Dolorum ut explicabo praesentium numquam vel. Voluptas nesciunt labore qui reprehenderit. Vero illum adipisci et maiores eius. Asperiores sit eum sequi expedita. Ea quam dolores deleniti necessitatibus animi. Et veritatis tempora qui assumenda. Enim nesciunt tempore cupiditate enim dignissimos sunt. Et sit harum dolor doloremque dignissimos. In molestiae vel voluptatem possimus veritatis quos quia voluptatum. Omnis veritatis nam nemo magnam assumenda quod. Quaerat quisquam et officia tempora et quidem ipsum quae. Temporibus et dolore ipsum enim consequatur qui non ipsa. Fuga qui laudantium earum occaecati reprehenderit amet est. Quod quo laborum enim laborum cumque dolores vero minus. Distinctio nulla at vel in. Minima non ipsam beatae maxime inventore velit natus. Qui ut magnam omnis quaerat. Sed nihil molestiae accusamus maiores nobis at minus. Culpa vero laborum sed sit error corrupti tenetur. Aut maxime voluptas esse repudiandae qui rerum. Eaque accusantium pariatur dignissimos. Voluptatem ut minima molestias eveniet iusto ut omnis repellat. Sint impedit quo blanditiis et. Quo ut ut consequatur laudantium eum cum. Qui atque eius aut. Omnis recusandae aut molestiae perferendis eum. Incidunt similique officiis et. Eius architecto similique perferendis veritatis cumque in quasi est. Aperiam doloribus hic est dolores earum repudiandae. Similique minima debitis reprehenderit at. Eum sed incidunt maxime. Eaque error consequatur ab excepturi. Nam accusamus quisquam et ab aperiam. Voluptatem eaque velit sequi est aliquam pariatur minus. Autem aspernatur officiis ducimus voluptatem necessitatibus tenetur et. Vel id qui voluptatem perspiciatis est quia. Velit in adipisci enim exercitationem nobis sequi ducimus. Alias expedita impedit sint illo. Assumenda temporibus qui odio consequatur distinctio.', 'Aliquid minima dolores esse nobis reprehenderit. Molestias accusamus aut ex optio quidem enim. Nisi nemo ut optio autem odio molestiae aliquid. Voluptas ut cum doloremque odit. Hic fugiat laudantium autem modi quas commodi et. Odit deserunt minima necessitatibus cum ut eum doloremque. Et tenetur temporibus voluptas. Provident sit autem sed dolores dignissimos consequatur. Repellat nam cum voluptatem exercitationem ut velit debitis. Ea alias quam et mollitia. Iste ab nihil odio. Et qui ea et consequatur. Quo voluptatem quaerat dolorem sed dolores aut mollitia. Facere accusantium a voluptas. Harum explicabo consequuntur ullam. Delectus dicta non neque recusandae ut placeat. Porro adipisci laboriosam optio sed. Odit nostrum architecto porro voluptates velit. Ratione quaerat et dolorum dolorem commodi nam dolorum enim. Nulla porro quidem eos totam et. Dicta consequatur voluptatem deserunt maiores sunt. Voluptatum adipisci unde dolor. Distinctio omnis error eum. Omnis sit enim illo delectus enim. Vitae ut beatae provident similique ea maxime rerum. Veniam autem eum aliquid cumque. Explicabo iusto necessitatibus consequatur debitis ut omnis ea. Dolore a officiis commodi inventore aut. Quisquam at fuga quod animi. Fuga quas possimus aut molestiae ipsam ut. Veritatis quo quia aut modi fugiat assumenda. Debitis sit et officia fugit ea. Nobis placeat autem consequuntur et consectetur in. Ea debitis reiciendis et ut reiciendis sed eaque. Est rerum et vel omnis dicta perspiciatis. Cum autem sed amet quidem dolores unde esse. Cumque nihil voluptatum iste id. Sint nemo exercitationem ut voluptatem sunt est aut. Numquam magnam voluptates sint et vel. Dignissimos aut non impedit ut eum. Aperiam est aperiam qui omnis consequatur. Consectetur sed quis veritatis fugit expedita cupiditate quia et. Quam neque qui quia aut est asperiores doloremque. Accusamus quod et eos vero illum officiis. Velit ut qui aut perspiciatis nisi. Enim eius dignissimos vitae quia sit iure.', 'Et quos officiis ex molestiae nulla dolorum et. Mollitia doloremque doloremque culpa est ducimus aut nemo. Reprehenderit placeat molestiae qui quia quia. Et modi qui fugit minus ducimus voluptas quam. Et nisi ab amet esse dolores. Dolores consequatur a qui autem mollitia. Veritatis numquam voluptas nulla est ipsam laborum sit. Et porro quaerat cumque dolores esse odio voluptatem. Cupiditate ea consectetur omnis fugit maiores ipsum animi. Tempora impedit molestiae et eius perferendis occaecati est praesentium. Neque praesentium dolores et voluptatem exercitationem quibusdam aut. Cum autem ipsam quae rerum nisi. Eius libero maxime facere ex. Adipisci consequatur reiciendis quae illo facere. Quia necessitatibus voluptatem commodi officia necessitatibus ut repellendus. Et quia accusamus nobis omnis. Inventore debitis omnis nihil necessitatibus sunt cum modi. Maxime est ut voluptatem occaecati occaecati a. Laborum consectetur praesentium quod ducimus at. Facere voluptatem sed exercitationem aspernatur. Velit aspernatur cupiditate sed ipsum. Veniam doloribus corrupti sapiente aspernatur recusandae. Perspiciatis nihil rerum voluptas. Eum voluptatem delectus cum iure et et enim. Quod eveniet magni doloremque aspernatur porro natus voluptatem cumque. In blanditiis maiores incidunt earum. Praesentium mollitia possimus repellat ducimus. Error commodi voluptas laborum. Eum beatae neque et id blanditiis. Sint beatae non voluptas ut. Occaecati eos consequatur vero assumenda suscipit similique soluta aut. Quia adipisci quisquam distinctio nihil placeat. Sint quisquam ipsa quia ut. Delectus vitae reiciendis modi sunt. Itaque explicabo perferendis est perspiciatis libero ratione. Repellat esse non ut nisi. Modi reprehenderit vitae ab consequuntur magni. Rem aut eum sed ut. Eligendi qui rerum unde facere. Ut pariatur voluptate eum distinctio illo consequatur ut quasi. Eius molestiae nulla non facilis tenetur nemo. Nihil sed non pariatur rerum dolores.', 'Deleniti vel et deserunt odit natus corporis. Necessitatibus qui est voluptatem rerum autem voluptate. Architecto beatae exercitationem commodi officiis. Molestiae est dolores ratione ut adipisci placeat. Ut corporis voluptatem repellendus amet. Possimus perspiciatis ab ut possimus et dolores. Eveniet veritatis assumenda ipsa unde cum qui maxime. Excepturi itaque assumenda ut assumenda esse nemo. Consequatur sapiente delectus dicta animi vero vero est. Tempora eum est rem velit nisi minus et. Aut vero quaerat tenetur autem autem veniam expedita. Aut cupiditate sapiente vel esse aut consequuntur. Id quaerat itaque adipisci. Occaecati autem corrupti eligendi. Molestiae quasi reprehenderit deleniti fugit. Mollitia rem accusamus cupiditate repellendus eum voluptates quam. Exercitationem natus architecto commodi quo vero. Dolorem aspernatur fugiat eligendi est eos dolores illum. Ipsa nihil suscipit culpa ut. In deserunt sint consequatur et et quisquam facilis odio. Magni id enim perspiciatis. Sed ea nam in perferendis iusto mollitia ducimus. Officia praesentium quae dolorem dolor adipisci harum. Similique sit et sunt id veritatis iusto. Fuga voluptatem modi non perferendis sit quia. Temporibus et odio distinctio adipisci. Possimus debitis accusantium et incidunt rerum omnis. Perspiciatis corporis libero velit excepturi ex omnis. Eos dolor nobis sed rerum non labore beatae. Molestiae rerum odit et dolores quia. Quam hic earum voluptatem. Eum odit impedit et vero. Et repellendus vel assumenda et unde. Autem distinctio et est blanditiis necessitatibus libero quasi. Dolores ut doloremque incidunt aut. Quia mollitia placeat ducimus omnis et in consequatur ex. Omnis reprehenderit delectus aperiam reiciendis consequuntur. Delectus neque voluptatibus excepturi laudantium nemo adipisci facere. Quia aliquam aut minima esse deleniti laboriosam asperiores. Magni incidunt aut consequatur deleniti doloremque. Nihil inventore voluptatem aut esse dolore eos at.', 1, '2022-05-02 06:30:49', NULL, 1);

-- --------------------------------------------------------

--
-- Structure de la table `sm_course_pages`
--

DROP TABLE IF EXISTS `sm_course_pages`;
CREATE TABLE IF NOT EXISTS `sm_course_pages` (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `main_title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `main_description` text COLLATE utf8mb4_unicode_ci,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `main_image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `button_text` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `button_url` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `active_status` tinyint NOT NULL DEFAULT '1',
  `created_by` int UNSIGNED DEFAULT '1',
  `updated_by` int UNSIGNED DEFAULT '1',
  `school_id` int UNSIGNED DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `sm_course_pages_school_id_foreign` (`school_id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `sm_course_pages`
--

INSERT INTO `sm_course_pages` (`id`, `created_at`, `updated_at`, `title`, `description`, `main_title`, `main_description`, `image`, `main_image`, `button_text`, `button_url`, `active_status`, `created_by`, `updated_by`, `school_id`) VALUES
(1, NULL, NULL, 'Course Infix', 'Lisus consequat sapien metus dis urna, facilisi. Nonummy rutrum eu lacinia platea a, ipsum parturient, orci tristique. Nisi diam natoque.', 'Under Graduate Education', 'INFIX has all in one place. You’ll find everything what you are looking into education management system software. We care! User will never bothered in our real eye catchy user friendly UI & UX  Interface design. You know! Smart Idea always comes to well planners. And Our INFIX is Smart for its Well Documentation. Explore in new support world! It’s now faster & quicker. You’ll find us on Support Ticket, Email, Skype, WhatsApp.', 'public/uploads/about_page/about.jpg', 'public/uploads/about_page/about-img.jpg', 'Learn More News ', 'news', 1, 1, 1, 1);

-- --------------------------------------------------------

--
-- Structure de la table `sm_currencies`
--

DROP TABLE IF EXISTS `sm_currencies`;
CREATE TABLE IF NOT EXISTS `sm_currencies` (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `code` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `symbol` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `school_id` int UNSIGNED DEFAULT '1',
  `academic_id` int UNSIGNED DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `sm_currencies_school_id_foreign` (`school_id`),
  KEY `sm_currencies_academic_id_foreign` (`academic_id`)
) ENGINE=MyISAM AUTO_INCREMENT=122 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `sm_currencies`
--

INSERT INTO `sm_currencies` (`id`, `name`, `code`, `symbol`, `created_at`, `updated_at`, `school_id`, `academic_id`) VALUES
(2, 'Dollars', 'USD', '$', '2022-05-02 18:30:42', '2022-05-02 18:30:42', 1, 1),
(6, 'Dollars', 'AUD', '$', '2022-05-02 18:30:42', '2022-05-02 18:30:42', 1, 1),
(7, 'New Manats', 'AZN', 'ман', '2022-05-02 18:30:42', '2022-05-02 18:30:42', 1, 1),
(8, 'Dollars', 'BSD', '$', '2022-05-02 18:30:42', '2022-05-02 18:30:42', 1, 1),
(9, 'Dollars', 'BBD', '$', '2022-05-02 18:30:42', '2022-05-02 18:30:42', 1, 1),
(11, 'Euro', 'EUR', '€', '2022-05-02 18:30:42', '2022-05-02 18:30:42', 1, 1),
(12, 'Dollars', 'BZD', 'BZ$', '2022-05-02 18:30:42', '2022-05-02 18:30:42', 1, 1),
(13, 'Dollars', 'BMD', '$', '2022-05-02 18:30:42', '2022-05-02 18:30:42', 1, 1),
(14, 'Bolivianos', 'BOB', '$b', '2022-05-02 18:30:42', '2022-05-02 18:30:42', 1, 1),
(15, 'Convertible Marka', 'BAM', 'KM', '2022-05-02 18:30:42', '2022-05-02 18:30:42', 1, 1),
(16, 'Pula', 'BWP', 'P', '2022-05-02 18:30:42', '2022-05-02 18:30:42', 1, 1),
(17, 'Leva', 'BGN', 'лв', '2022-05-02 18:30:42', '2022-05-02 18:30:42', 1, 1),
(18, 'Reais', 'BRL', 'R$', '2022-05-02 18:30:42', '2022-05-02 18:30:42', 1, 1),
(19, 'Pounds', 'GBP', '£', '2022-05-02 18:30:42', '2022-05-02 18:30:42', 1, 1),
(20, 'Dollars', 'BND', '$', '2022-05-02 18:30:42', '2022-05-02 18:30:42', 1, 1),
(21, 'Riels', 'KHR', '៛', '2022-05-02 18:30:42', '2022-05-02 18:30:42', 1, 1),
(22, 'Dollars', 'CAD', '$', '2022-05-02 18:30:42', '2022-05-02 18:30:42', 1, 1),
(23, 'Dollars', 'KYD', '$', '2022-05-02 18:30:42', '2022-05-02 18:30:42', 1, 1),
(24, 'Pesos', 'CLP', '$', '2022-05-02 18:30:42', '2022-05-02 18:30:42', 1, 1),
(25, 'Yuan Renminbi', 'CNY', '¥', '2022-05-02 18:30:42', '2022-05-02 18:30:42', 1, 1),
(26, 'Pesos', 'COP', '$', '2022-05-02 18:30:42', '2022-05-02 18:30:42', 1, 1),
(27, 'Colón', 'CRC', '₡', '2022-05-02 18:30:42', '2022-05-02 18:30:42', 1, 1),
(28, 'Kuna', 'HRK', 'kn', '2022-05-02 18:30:42', '2022-05-02 18:30:42', 1, 1),
(29, 'Pesos', 'CUP', '₱', '2022-05-02 18:30:42', '2022-05-02 18:30:42', 1, 1),
(31, 'Kroner', 'DKK', 'kr', '2022-05-02 18:30:42', '2022-05-02 18:30:42', 1, 1),
(32, 'Pesos', 'DOP ', 'RD$', '2022-05-02 18:30:42', '2022-05-02 18:30:42', 1, 1),
(33, 'Dollars', 'XCD', '$', '2022-05-02 18:30:42', '2022-05-02 18:30:42', 1, 1),
(34, 'Pounds', 'EGP', '£', '2022-05-02 18:30:42', '2022-05-02 18:30:42', 1, 1),
(35, 'Colones', 'SVC', '$', '2022-05-02 18:30:42', '2022-05-02 18:30:42', 1, 1),
(36, 'Pounds', 'FKP', '£', '2022-05-02 18:30:42', '2022-05-02 18:30:42', 1, 1),
(37, 'Dollars', 'FJD', '$', '2022-05-02 18:30:42', '2022-05-02 18:30:42', 1, 1),
(38, 'Cedis', 'GHC', '¢', '2022-05-02 18:30:42', '2022-05-02 18:30:42', 1, 1),
(39, 'Pounds', 'GIP', '£', '2022-05-02 18:30:42', '2022-05-02 18:30:42', 1, 1),
(40, 'Quetzales', 'GTQ', 'Q', '2022-05-02 18:30:42', '2022-05-02 18:30:42', 1, 1),
(41, 'Pounds', 'GGP', '£', '2022-05-02 18:30:42', '2022-05-02 18:30:42', 1, 1),
(42, 'Dollars', 'GYD', '$', '2022-05-02 18:30:42', '2022-05-02 18:30:42', 1, 1),
(43, 'Lempiras', 'HNL', 'L', '2022-05-02 18:30:42', '2022-05-02 18:30:42', 1, 1),
(44, 'Dollars', 'HKD', '$', '2022-05-02 18:30:42', '2022-05-02 18:30:42', 1, 1),
(45, 'Forint', 'HUF', 'Ft', '2022-05-02 18:30:42', '2022-05-02 18:30:42', 1, 1),
(46, 'Kronur', 'ISK', 'kr', '2022-05-02 18:30:42', '2022-05-02 18:30:42', 1, 1),
(47, 'Rupees', 'INR', '₹', '2022-05-02 18:30:42', '2022-05-02 18:30:42', 1, 1),
(48, 'Rupiahs', 'IDR', 'Rp', '2022-05-02 18:30:42', '2022-05-02 18:30:42', 1, 1),
(49, 'Rials', 'IRR', '﷼', '2022-05-02 18:30:42', '2022-05-02 18:30:42', 1, 1),
(50, 'Pounds', 'IMP', '£', '2022-05-02 18:30:42', '2022-05-02 18:30:42', 1, 1),
(51, 'New Shekels', 'ILS', '₪', '2022-05-02 18:30:42', '2022-05-02 18:30:42', 1, 1),
(52, 'Dollars', 'JMD', 'J$', '2022-05-02 18:30:42', '2022-05-02 18:30:42', 1, 1),
(54, 'Pounds', 'JEP', '£', '2022-05-02 18:30:42', '2022-05-02 18:30:42', 1, 1),
(55, 'Tenge', 'KZT', 'лв', '2022-05-02 18:30:42', '2022-05-02 18:30:42', 1, 1),
(56, 'Won', 'KPW', '₩', '2022-05-02 18:30:42', '2022-05-02 18:30:42', 1, 1),
(57, 'Won', 'KRW', '₩', '2022-05-02 18:30:42', '2022-05-02 18:30:42', 1, 1),
(58, 'Soms', 'KGS', 'лв', '2022-05-02 18:30:42', '2022-05-02 18:30:42', 1, 1),
(59, 'Kips', 'LAK', '₭', '2022-05-02 18:30:42', '2022-05-02 18:30:42', 1, 1),
(60, 'Lati', 'LVL', 'Ls', '2022-05-02 18:30:42', '2022-05-02 18:30:42', 1, 1),
(61, 'Pounds', 'LBP', '£', '2022-05-02 18:30:42', '2022-05-02 18:30:42', 1, 1),
(62, 'Dollars', 'LRD', '$', '2022-05-02 18:30:42', '2022-05-02 18:30:42', 1, 1),
(63, 'Switzerland Francs', 'CHF', 'CHF', '2022-05-02 18:30:42', '2022-05-02 18:30:42', 1, 1),
(65, 'Denars', 'MKD', 'ден', '2022-05-02 18:30:42', '2022-05-02 18:30:42', 1, 1),
(66, 'Ringgits', 'MYR', 'RM', '2022-05-02 18:30:42', '2022-05-02 18:30:42', 1, 1),
(67, 'Rupees', 'MUR', '₨', '2022-05-02 18:30:42', '2022-05-02 18:30:42', 1, 1),
(68, 'Pesos', 'MXN', '$', '2022-05-02 18:30:42', '2022-05-02 18:30:42', 1, 1),
(69, 'Tugriks', 'MNT', '₮', '2022-05-02 18:30:42', '2022-05-02 18:30:42', 1, 1),
(70, 'Meticais', 'MZN', 'MT', '2022-05-02 18:30:42', '2022-05-02 18:30:42', 1, 1),
(71, 'Dollars', 'NAD', '$', '2022-05-02 18:30:42', '2022-05-02 18:30:42', 1, 1),
(72, 'Rupees', 'NPR', '₨', '2022-05-02 18:30:42', '2022-05-02 18:30:42', 1, 1),
(73, 'Guilders', 'ANG', 'ƒ', '2022-05-02 18:30:42', '2022-05-02 18:30:42', 1, 1),
(74, 'Dollars', 'NZD', '$', '2022-05-02 18:30:42', '2022-05-02 18:30:42', 1, 1),
(75, 'Cordobas', 'NIO', 'C$', '2022-05-02 18:30:43', '2022-05-02 18:30:43', 1, 1),
(76, 'Nairas', 'NGN', '₦', '2022-05-02 18:30:43', '2022-05-02 18:30:43', 1, 1),
(77, 'Krone', 'NOK', 'kr', '2022-05-02 18:30:43', '2022-05-02 18:30:43', 1, 1),
(78, 'Rials', 'OMR', '﷼', '2022-05-02 18:30:43', '2022-05-02 18:30:43', 1, 1),
(79, 'Rupees', 'PKR', '₨', '2022-05-02 18:30:43', '2022-05-02 18:30:43', 1, 1),
(80, 'Balboa', 'PAB', 'B/.', '2022-05-02 18:30:43', '2022-05-02 18:30:43', 1, 1),
(81, 'Guarani', 'PYG', 'Gs', '2022-05-02 18:30:43', '2022-05-02 18:30:43', 1, 1),
(82, 'Nuevos Soles', 'PEN', 'S/.', '2022-05-02 18:30:43', '2022-05-02 18:30:43', 1, 1),
(83, 'Pesos', 'PHP', 'Php', '2022-05-02 18:30:43', '2022-05-02 18:30:43', 1, 1),
(84, 'Zlotych', 'PLN', 'zł', '2022-05-02 18:30:43', '2022-05-02 18:30:43', 1, 1),
(85, 'Rials', 'QAR', '﷼', '2022-05-02 18:30:43', '2022-05-02 18:30:43', 1, 1),
(86, 'New Lei', 'RON', 'lei', '2022-05-02 18:30:43', '2022-05-02 18:30:43', 1, 1),
(87, 'Rubles', 'RUB', 'руб', '2022-05-02 18:30:43', '2022-05-02 18:30:43', 1, 1),
(88, 'Pounds', 'SHP', '£', '2022-05-02 18:30:43', '2022-05-02 18:30:43', 1, 1),
(89, 'Riyals', 'SAR', '﷼', '2022-05-02 18:30:43', '2022-05-02 18:30:43', 1, 1),
(90, 'Dinars', 'RSD', 'Дин.', '2022-05-02 18:30:43', '2022-05-02 18:30:43', 1, 1),
(92, 'Dollars', 'SGD', '$', '2022-05-02 18:30:43', '2022-05-02 18:30:43', 1, 1),
(93, 'Dollars', 'SBD', '$', '2022-05-02 18:30:43', '2022-05-02 18:30:43', 1, 1),
(94, 'Shillings', 'SOS', 'S', '2022-05-02 18:30:43', '2022-05-02 18:30:43', 1, 1),
(95, 'Rand', 'ZAR', 'R', '2022-05-02 18:30:43', '2022-05-02 18:30:43', 1, 1),
(96, 'Rupees', 'LKR', '₨', '2022-05-02 18:30:43', '2022-05-02 18:30:43', 1, 1),
(97, 'Kronor', 'SEK', 'kr', '2022-05-02 18:30:43', '2022-05-02 18:30:43', 1, 1),
(98, 'Dollars', 'SRD', '$', '2022-05-02 18:30:43', '2022-05-02 18:30:43', 1, 1),
(99, 'Pounds', 'SYP', '£', '2022-05-02 18:30:43', '2022-05-02 18:30:43', 1, 1),
(100, 'New Dollars', 'TWD', 'NT$', '2022-05-02 18:30:43', '2022-05-02 18:30:43', 1, 1),
(101, 'Baht', 'THB', '฿', '2022-05-02 18:30:43', '2022-05-02 18:30:43', 1, 1),
(102, 'Dollars', 'TTD', 'TT$', '2022-05-02 18:30:43', '2022-05-02 18:30:43', 1, 1),
(103, 'Lira', 'TRY', 'TL', '2022-05-02 18:30:43', '2022-05-02 18:30:43', 1, 1),
(104, 'Liras', 'TRL', '£', '2022-05-02 18:30:43', '2022-05-02 18:30:43', 1, 1),
(105, 'Dollars', 'TVD', '$', '2022-05-02 18:30:43', '2022-05-02 18:30:43', 1, 1),
(106, 'Hryvnia', 'UAH', '₴', '2022-05-02 18:30:43', '2022-05-02 18:30:43', 1, 1),
(107, 'Pesos', 'UYU', '$U', '2022-05-02 18:30:43', '2022-05-02 18:30:43', 1, 1),
(108, 'Sums', 'UZS', 'лв', '2022-05-02 18:30:43', '2022-05-02 18:30:43', 1, 1),
(109, 'Bolivares Fuertes', 'VEF', 'Bs', '2022-05-02 18:30:43', '2022-05-02 18:30:43', 1, 1),
(110, 'Dong', 'VND', '₫', '2022-05-02 18:30:43', '2022-05-02 18:30:43', 1, 1),
(111, 'Rials', 'YER', '﷼', '2022-05-02 18:30:43', '2022-05-02 18:30:43', 1, 1),
(113, 'Zimbabwe Dollars', 'ZWD', 'Z$', '2022-05-02 18:30:43', '2022-05-02 18:30:43', 1, 1),
(115, 'Nigeria', 'naira', '₦', '2022-05-02 18:30:43', '2022-05-02 18:30:43', 1, 1),
(116, 'Ghana', 'GHS', 'GH₵', '2022-05-02 18:30:43', '2022-05-02 18:30:43', 1, 1),
(117, 'Ethiopian', 'ETB', 'Br', '2022-05-02 18:30:43', '2022-05-02 18:30:43', 1, 1),
(118, 'Tanzania', 'TZS', 'TSh', '2022-05-02 18:30:43', '2022-05-02 18:30:43', 1, 1),
(119, 'Uganda', 'UGX', 'USh', '2022-05-02 18:30:43', '2022-05-02 18:30:43', 1, 1),
(120, 'Rwandan', 'FRW', 'FRw', '2022-05-02 18:30:43', '2022-05-02 18:30:43', 1, 1),
(121, 'Franc CFA', 'XAF', 'FCFA', '2022-05-10 10:53:13', '2022-05-10 10:53:13', 1, 1);

-- --------------------------------------------------------

--
-- Structure de la table `sm_custom_links`
--

DROP TABLE IF EXISTS `sm_custom_links`;
CREATE TABLE IF NOT EXISTS `sm_custom_links` (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `title1` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title2` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title3` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title4` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `link_label1` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `link_href1` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `link_label2` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `link_href2` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `link_label3` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `link_href3` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `link_label4` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `link_href4` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `link_label5` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `link_href5` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `link_label6` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `link_href6` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `link_label7` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `link_href7` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `link_label8` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `link_href8` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `link_label9` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `link_href9` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `link_label10` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `link_href10` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `link_label11` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `link_href11` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `link_label12` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `link_href12` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `link_label13` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `link_href13` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `link_label14` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `link_href14` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `link_label15` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `link_href15` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `link_label16` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `link_href16` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `facebook_url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `twitter_url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `dribble_url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `linkedin_url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `behance_url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `sm_custom_links`
--

INSERT INTO `sm_custom_links` (`id`, `title1`, `title2`, `title3`, `title4`, `link_label1`, `link_href1`, `link_label2`, `link_href2`, `link_label3`, `link_href3`, `link_label4`, `link_href4`, `link_label5`, `link_href5`, `link_label6`, `link_href6`, `link_label7`, `link_href7`, `link_label8`, `link_href8`, `link_label9`, `link_href9`, `link_label10`, `link_href10`, `link_label11`, `link_href11`, `link_label12`, `link_href12`, `link_label13`, `link_href13`, `link_label14`, `link_href14`, `link_label15`, `link_href15`, `link_label16`, `link_href16`, `facebook_url`, `twitter_url`, `dribble_url`, `linkedin_url`, `behance_url`, `created_at`, `updated_at`) VALUES
(1, 'Departments', 'Health Care', 'About Our System', 'Resources', 'About Infix', 'http://infixedu.com', 'Infix Home', 'http://infixedu.com/home', 'Business', 'http://infixedu.com', 'link_label4', 'http://infixedu.com', 'link_label5', 'http://infixedu.com', 'link_label6', 'http://infixedu.com', 'link_label7', 'http://infixedu.com', 'link_label8', 'http://infixedu.com', 'Home', 'http://infixedu.com/home', 'About', 'http://infixedu.com/about', 'Contact', 'http://infixedu.com/contact', 'link_label12', 'http://infixedu.com', 'link_label13', 'http://infixedu.com', 'link_label14', 'http://infixedu.com', 'link_label15', 'http://infixedu.com', 'link_label16', 'http://infixedu.com', NULL, NULL, NULL, NULL, NULL, '2022-05-02 18:30:52', '2022-05-02 18:30:52');

-- --------------------------------------------------------

--
-- Structure de la table `sm_custom_temporary_results`
--

DROP TABLE IF EXISTS `sm_custom_temporary_results`;
CREATE TABLE IF NOT EXISTS `sm_custom_temporary_results` (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `student_id` int DEFAULT NULL,
  `admission_no` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `full_name` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `term1` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `gpa1` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `term2` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `gpa2` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `term3` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `gpa3` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `final_result` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `final_grade` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `school_id` int UNSIGNED DEFAULT '1',
  `academic_id` int UNSIGNED DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `sm_custom_temporary_results_school_id_foreign` (`school_id`),
  KEY `sm_custom_temporary_results_academic_id_foreign` (`academic_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `sm_dashboard_settings`
--

DROP TABLE IF EXISTS `sm_dashboard_settings`;
CREATE TABLE IF NOT EXISTS `sm_dashboard_settings` (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `dashboard_sec_id` int NOT NULL,
  `active_status` int NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `role_id` int UNSIGNED DEFAULT NULL,
  `created_by` int UNSIGNED DEFAULT '1',
  `updated_by` int UNSIGNED DEFAULT '1',
  `school_id` int UNSIGNED DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `sm_dashboard_settings_role_id_foreign` (`role_id`),
  KEY `sm_dashboard_settings_school_id_foreign` (`school_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `sm_date_formats`
--

DROP TABLE IF EXISTS `sm_date_formats`;
CREATE TABLE IF NOT EXISTS `sm_date_formats` (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `format` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `normal_view` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `active_status` tinyint NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_by` int UNSIGNED DEFAULT '1',
  `updated_by` int UNSIGNED DEFAULT '1',
  `school_id` int UNSIGNED DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `sm_date_formats_school_id_foreign` (`school_id`)
) ENGINE=MyISAM AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `sm_date_formats`
--

INSERT INTO `sm_date_formats` (`id`, `format`, `normal_view`, `active_status`, `created_at`, `updated_at`, `created_by`, `updated_by`, `school_id`) VALUES
(1, 'jS M, Y', '17th May, 2019', 1, '2022-05-02 06:27:51', '2022-05-02 18:27:51', 1, 1, 1),
(2, 'Y-m-d', '2019-05-17', 1, '2022-05-02 06:27:51', '2022-05-02 18:27:51', 1, 1, 1),
(3, 'Y-d-m', '2019-17-05', 1, '2022-05-02 06:27:51', '2022-05-02 18:27:51', 1, 1, 1),
(4, 'd-m-Y', '17-05-2019', 1, '2022-05-02 06:27:51', '2022-05-02 18:27:51', 1, 1, 1),
(5, 'm-d-Y', '05-17-2019', 1, '2022-05-02 06:27:51', '2022-05-02 18:27:51', 1, 1, 1),
(6, 'Y/m/d', '2019/05/17', 1, '2022-05-02 06:27:51', '2022-05-02 18:27:51', 1, 1, 1),
(7, 'Y/d/m', '2019/17/05', 1, '2022-05-02 06:27:51', '2022-05-02 18:27:51', 1, 1, 1),
(8, 'd/m/Y', '17/05/2019', 1, '2022-05-02 06:27:51', '2022-05-02 18:27:51', 1, 1, 1),
(9, 'm/d/Y', '05/17/2019', 1, '2022-05-02 06:27:51', '2022-05-02 18:27:51', 1, 1, 1),
(10, 'l jS \\of F Y', 'Monday 17th of May 2019', 1, '2022-05-02 06:27:51', '2022-05-02 18:27:51', 1, 1, 1),
(11, 'jS \\of F Y', '17th of May 2019', 1, '2022-05-02 06:27:51', '2022-05-02 18:27:51', 1, 1, 1),
(12, 'g:ia \\o\\n l jS F Y', '12:00am on Monday 17th May 2019', 1, '2022-05-02 06:27:51', '2022-05-02 18:27:51', 1, 1, 1),
(13, 'F j, Y, g:i a', 'May 7, 2019, 6:20 pm', 1, '2022-05-02 06:27:51', '2022-05-02 18:27:51', 1, 1, 1),
(14, 'F j, Y', 'May 17, 2019', 1, '2022-05-02 06:27:51', '2022-05-02 18:27:51', 1, 1, 1),
(15, '\\i\\t \\i\\s \\t\\h\\e jS \\d\\a\\y', 'it is the 17th day', 1, '2022-05-02 06:27:51', '2022-05-02 18:27:51', 1, 1, 1);

-- --------------------------------------------------------

--
-- Structure de la table `sm_designations`
--

DROP TABLE IF EXISTS `sm_designations`;
CREATE TABLE IF NOT EXISTS `sm_designations` (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `active_status` tinyint NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_by` int UNSIGNED DEFAULT '1',
  `updated_by` int UNSIGNED DEFAULT '1',
  `school_id` int UNSIGNED DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `sm_designations_school_id_foreign` (`school_id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `sm_designations`
--

INSERT INTO `sm_designations` (`id`, `title`, `active_status`, `created_at`, `updated_at`, `created_by`, `updated_by`, `school_id`) VALUES
(1, 'Principal', 1, '2022-05-02 06:26:19', NULL, 1, 1, 1),
(2, 'vice doyen', 1, '2022-05-15 22:33:49', '2022-05-15 22:33:49', 1, 1, 1);

-- --------------------------------------------------------

--
-- Structure de la table `sm_dormitory_lists`
--

DROP TABLE IF EXISTS `sm_dormitory_lists`;
CREATE TABLE IF NOT EXISTS `sm_dormitory_lists` (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `dormitory_name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'B=Boys, G=Girls',
  `address` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `intake` int DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `active_status` tinyint NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_by` int UNSIGNED DEFAULT '1',
  `updated_by` int UNSIGNED DEFAULT '1',
  `school_id` int UNSIGNED DEFAULT '1',
  `academic_id` int UNSIGNED DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `sm_dormitory_lists_school_id_foreign` (`school_id`),
  KEY `sm_dormitory_lists_academic_id_foreign` (`academic_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `sm_email_settings`
--

DROP TABLE IF EXISTS `sm_email_settings`;
CREATE TABLE IF NOT EXISTS `sm_email_settings` (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `email_engine_type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `from_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `from_email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mail_driver` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mail_host` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mail_port` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mail_username` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mail_password` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mail_encryption` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `school_id` int UNSIGNED DEFAULT '1',
  `academic_id` int UNSIGNED DEFAULT '1',
  `active_status` tinyint NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `sm_email_settings_school_id_foreign` (`school_id`),
  KEY `sm_email_settings_academic_id_foreign` (`academic_id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `sm_email_settings`
--

INSERT INTO `sm_email_settings` (`id`, `email_engine_type`, `from_name`, `from_email`, `mail_driver`, `mail_host`, `mail_port`, `mail_username`, `mail_password`, `mail_encryption`, `school_id`, `academic_id`, `active_status`, `created_at`, `updated_at`) VALUES
(1, 'smtp', 'System Admin', 'admin@infixedu.com', 'smtp', 'smtp.gmail.com', '587', 'spn5@spondonit.com', '123456', 'tls', 1, 1, 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Structure de la table `sm_email_sms_logs`
--

DROP TABLE IF EXISTS `sm_email_sms_logs`;
CREATE TABLE IF NOT EXISTS `sm_email_sms_logs` (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `send_date` date DEFAULT NULL,
  `send_through` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `send_to` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `active_status` tinyint NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_by` int UNSIGNED DEFAULT '1',
  `updated_by` int UNSIGNED DEFAULT '1',
  `school_id` int UNSIGNED DEFAULT '1',
  `academic_id` int UNSIGNED DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `sm_email_sms_logs_school_id_foreign` (`school_id`),
  KEY `sm_email_sms_logs_academic_id_foreign` (`academic_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `sm_events`
--

DROP TABLE IF EXISTS `sm_events`;
CREATE TABLE IF NOT EXISTS `sm_events` (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `event_title` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `for_whom` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'teacher, student, parents, all',
  `event_location` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `event_des` varchar(500) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `from_date` date DEFAULT NULL,
  `to_date` date DEFAULT NULL,
  `uplad_image_file` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `active_status` tinyint NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_by` int UNSIGNED DEFAULT '1',
  `updated_by` int UNSIGNED DEFAULT '1',
  `school_id` int UNSIGNED DEFAULT '1',
  `academic_id` int UNSIGNED DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `sm_events_school_id_foreign` (`school_id`),
  KEY `sm_events_academic_id_foreign` (`academic_id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `sm_events`
--

INSERT INTO `sm_events` (`id`, `event_title`, `for_whom`, `event_location`, `event_des`, `from_date`, `to_date`, `uplad_image_file`, `active_status`, `created_at`, `updated_at`, `created_by`, `updated_by`, `school_id`, `academic_id`) VALUES
(1, 'Biggest Robotics Competition in Campus', NULL, 'Main Campus', 'Amet enim curabitur urna. Faucibus tincidunt pellentesque varius blandit fermentum tristique vulputate sodales tempus est hendrerit est tincidunt ligula lorem tellus eu malesuada tortor, lacinia posuere. Conubia Egestas sed senectus.', '2019-06-12', '2019-06-21', 'public/uploads/events/event1.jpg', 1, NULL, NULL, 1, 1, 1, 1),
(2, 'Great Science Fair in main campus', NULL, 'Main Campus', 'Magna odio in. Facilisi arcu nec augue lacus augue maecenas hendrerit euismod cras vulputate dignissim pellentesque sociis est. Ut congue Leo dignissim. Fermentum curabitur pede bibendum aptent, quam, ultrices Nam convallis sed condimentum. Adipiscing mollis lorem integer eget neque, vel.', '2019-06-12', '2019-06-21', 'public/uploads/events/event2.jpg', 1, NULL, NULL, 1, 1, 1, 1),
(3, 'Seminar on Internet of Thing in Campus', NULL, 'Main Campus', 'Libero erat porta ridiculus semper mi eleifend. Nisl nulla. Tempus, rhoncus per. Varius. Pharetra nisi potenti ut ultrices sociosqu adipiscing at. Suscipit vulputate senectus. Nostra. Aliquam fringilla eleifend accumsan dui.', '2019-06-12', '2019-06-21', 'public/uploads/events/event3.jpg', 1, NULL, NULL, 1, 1, 1, 1);

-- --------------------------------------------------------

--
-- Structure de la table `sm_exams`
--

DROP TABLE IF EXISTS `sm_exams`;
CREATE TABLE IF NOT EXISTS `sm_exams` (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `exam_mark` double(8,2) DEFAULT NULL,
  `active_status` tinyint NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `exam_type_id` int UNSIGNED DEFAULT NULL,
  `class_id` int UNSIGNED DEFAULT NULL,
  `section_id` int UNSIGNED DEFAULT NULL,
  `subject_id` int UNSIGNED DEFAULT NULL,
  `created_by` int UNSIGNED DEFAULT '1',
  `updated_by` int UNSIGNED DEFAULT '1',
  `school_id` int UNSIGNED DEFAULT '1',
  `academic_id` int UNSIGNED DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `sm_exams_exam_type_id_foreign` (`exam_type_id`),
  KEY `sm_exams_class_id_foreign` (`class_id`),
  KEY `sm_exams_section_id_foreign` (`section_id`),
  KEY `sm_exams_subject_id_foreign` (`subject_id`),
  KEY `sm_exams_school_id_foreign` (`school_id`),
  KEY `sm_exams_academic_id_foreign` (`academic_id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `sm_exams`
--

INSERT INTO `sm_exams` (`id`, `exam_mark`, `active_status`, `created_at`, `updated_at`, `exam_type_id`, `class_id`, `section_id`, `subject_id`, `created_by`, `updated_by`, `school_id`, `academic_id`) VALUES
(1, 100.00, 1, '2022-05-21 06:03:27', '2022-05-21 18:03:27', 2, 5, 5, 1, 1, 1, 1, 3);

-- --------------------------------------------------------

--
-- Structure de la table `sm_exam_attendances`
--

DROP TABLE IF EXISTS `sm_exam_attendances`;
CREATE TABLE IF NOT EXISTS `sm_exam_attendances` (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `active_status` tinyint NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `subject_id` int UNSIGNED DEFAULT NULL,
  `exam_id` int UNSIGNED DEFAULT NULL,
  `class_id` int UNSIGNED DEFAULT NULL,
  `section_id` int UNSIGNED DEFAULT NULL,
  `created_by` int UNSIGNED DEFAULT '1',
  `updated_by` int UNSIGNED DEFAULT '1',
  `school_id` int UNSIGNED DEFAULT '1',
  `academic_id` int UNSIGNED DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `sm_exam_attendances_subject_id_foreign` (`subject_id`),
  KEY `sm_exam_attendances_exam_id_foreign` (`exam_id`),
  KEY `sm_exam_attendances_class_id_foreign` (`class_id`),
  KEY `sm_exam_attendances_section_id_foreign` (`section_id`),
  KEY `sm_exam_attendances_school_id_foreign` (`school_id`),
  KEY `sm_exam_attendances_academic_id_foreign` (`academic_id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `sm_exam_attendances`
--

INSERT INTO `sm_exam_attendances` (`id`, `active_status`, `created_at`, `updated_at`, `subject_id`, `exam_id`, `class_id`, `section_id`, `created_by`, `updated_by`, `school_id`, `academic_id`) VALUES
(1, 1, '2022-05-20 07:40:16', '2022-05-20 19:40:16', 1, 2, 5, 5, 1, 1, 1, 3);

-- --------------------------------------------------------

--
-- Structure de la table `sm_exam_attendance_children`
--

DROP TABLE IF EXISTS `sm_exam_attendance_children`;
CREATE TABLE IF NOT EXISTS `sm_exam_attendance_children` (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `attendance_type` varchar(2) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'P = present A = Absent',
  `active_status` tinyint NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `exam_attendance_id` int UNSIGNED DEFAULT NULL,
  `student_id` int UNSIGNED DEFAULT NULL,
  `created_by` int UNSIGNED DEFAULT '1',
  `updated_by` int UNSIGNED DEFAULT '1',
  `school_id` int UNSIGNED DEFAULT '1',
  `academic_id` int UNSIGNED DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `sm_exam_attendance_children_exam_attendance_id_foreign` (`exam_attendance_id`),
  KEY `sm_exam_attendance_children_student_id_foreign` (`student_id`),
  KEY `sm_exam_attendance_children_school_id_foreign` (`school_id`),
  KEY `sm_exam_attendance_children_academic_id_foreign` (`academic_id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `sm_exam_attendance_children`
--

INSERT INTO `sm_exam_attendance_children` (`id`, `attendance_type`, `active_status`, `created_at`, `updated_at`, `exam_attendance_id`, `student_id`, `created_by`, `updated_by`, `school_id`, `academic_id`) VALUES
(1, 'P', 1, '2022-05-20 07:40:16', '2022-05-20 19:40:16', 1, 1, 1, 1, 1, 3),
(2, 'A', 1, '2022-05-20 07:40:16', '2022-05-20 19:40:16', 1, 2, 1, 1, 1, 3);

-- --------------------------------------------------------

--
-- Structure de la table `sm_exam_marks_registers`
--

DROP TABLE IF EXISTS `sm_exam_marks_registers`;
CREATE TABLE IF NOT EXISTS `sm_exam_marks_registers` (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `obtained_marks` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `exam_date` date DEFAULT NULL,
  `comments` varchar(500) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `active_status` tinyint NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `exam_id` int UNSIGNED NOT NULL,
  `student_id` int UNSIGNED DEFAULT NULL,
  `subject_id` int UNSIGNED DEFAULT NULL,
  `created_by` int UNSIGNED DEFAULT '1',
  `updated_by` int UNSIGNED DEFAULT '1',
  `school_id` int UNSIGNED DEFAULT '1',
  `academic_id` int UNSIGNED DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `sm_exam_marks_registers_exam_id_foreign` (`exam_id`),
  KEY `sm_exam_marks_registers_student_id_foreign` (`student_id`),
  KEY `sm_exam_marks_registers_subject_id_foreign` (`subject_id`),
  KEY `sm_exam_marks_registers_school_id_foreign` (`school_id`),
  KEY `sm_exam_marks_registers_academic_id_foreign` (`academic_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `sm_exam_schedules`
--

DROP TABLE IF EXISTS `sm_exam_schedules`;
CREATE TABLE IF NOT EXISTS `sm_exam_schedules` (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `date` date DEFAULT NULL,
  `active_status` tinyint NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `exam_period_id` int UNSIGNED DEFAULT NULL,
  `room_id` int UNSIGNED DEFAULT NULL,
  `subject_id` int UNSIGNED DEFAULT NULL,
  `exam_term_id` int UNSIGNED DEFAULT NULL,
  `exam_id` int UNSIGNED DEFAULT NULL,
  `class_id` int UNSIGNED DEFAULT NULL,
  `section_id` int UNSIGNED DEFAULT NULL,
  `created_by` int UNSIGNED DEFAULT '1',
  `updated_by` int UNSIGNED DEFAULT '1',
  `school_id` int UNSIGNED DEFAULT '1',
  `academic_id` int UNSIGNED DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `sm_exam_schedules_exam_period_id_foreign` (`exam_period_id`),
  KEY `sm_exam_schedules_room_id_foreign` (`room_id`),
  KEY `sm_exam_schedules_subject_id_foreign` (`subject_id`),
  KEY `sm_exam_schedules_exam_term_id_foreign` (`exam_term_id`),
  KEY `sm_exam_schedules_exam_id_foreign` (`exam_id`),
  KEY `sm_exam_schedules_class_id_foreign` (`class_id`),
  KEY `sm_exam_schedules_section_id_foreign` (`section_id`),
  KEY `sm_exam_schedules_school_id_foreign` (`school_id`),
  KEY `sm_exam_schedules_academic_id_foreign` (`academic_id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `sm_exam_schedules`
--

INSERT INTO `sm_exam_schedules` (`id`, `date`, `active_status`, `created_at`, `updated_at`, `exam_period_id`, `room_id`, `subject_id`, `exam_term_id`, `exam_id`, `class_id`, `section_id`, `created_by`, `updated_by`, `school_id`, `academic_id`) VALUES
(1, '2022-05-20', 1, '2022-05-20 19:32:20', '2022-05-20 19:32:20', 2, 2, 1, 2, NULL, 5, 5, 1, 1, 1, 3);

-- --------------------------------------------------------

--
-- Structure de la table `sm_exam_schedule_subjects`
--

DROP TABLE IF EXISTS `sm_exam_schedule_subjects`;
CREATE TABLE IF NOT EXISTS `sm_exam_schedule_subjects` (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `date` date DEFAULT NULL,
  `start_time` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `end_time` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `room` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `full_mark` int DEFAULT NULL,
  `pass_mark` int DEFAULT NULL,
  `active_status` tinyint NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `exam_schedule_id` int UNSIGNED DEFAULT NULL,
  `subject_id` int UNSIGNED DEFAULT NULL,
  `created_by` int UNSIGNED DEFAULT '1',
  `updated_by` int UNSIGNED DEFAULT '1',
  `school_id` int UNSIGNED DEFAULT '1',
  `academic_id` int UNSIGNED DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `sm_exam_schedule_subjects_exam_schedule_id_foreign` (`exam_schedule_id`),
  KEY `sm_exam_schedule_subjects_subject_id_foreign` (`subject_id`),
  KEY `sm_exam_schedule_subjects_school_id_foreign` (`school_id`),
  KEY `sm_exam_schedule_subjects_academic_id_foreign` (`academic_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `sm_exam_setups`
--

DROP TABLE IF EXISTS `sm_exam_setups`;
CREATE TABLE IF NOT EXISTS `sm_exam_setups` (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `exam_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `exam_mark` double(8,2) DEFAULT NULL,
  `active_status` tinyint NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `exam_id` int UNSIGNED DEFAULT NULL,
  `class_id` int UNSIGNED DEFAULT NULL,
  `subject_id` int UNSIGNED DEFAULT NULL,
  `section_id` int UNSIGNED DEFAULT NULL,
  `exam_term_id` int UNSIGNED DEFAULT NULL,
  `created_by` int UNSIGNED DEFAULT '1',
  `updated_by` int UNSIGNED DEFAULT '1',
  `school_id` int UNSIGNED DEFAULT '1',
  `academic_id` int UNSIGNED DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `sm_exam_setups_exam_id_foreign` (`exam_id`),
  KEY `sm_exam_setups_class_id_foreign` (`class_id`),
  KEY `sm_exam_setups_subject_id_foreign` (`subject_id`),
  KEY `sm_exam_setups_section_id_foreign` (`section_id`),
  KEY `sm_exam_setups_exam_term_id_foreign` (`exam_term_id`),
  KEY `sm_exam_setups_school_id_foreign` (`school_id`),
  KEY `sm_exam_setups_academic_id_foreign` (`academic_id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `sm_exam_setups`
--

INSERT INTO `sm_exam_setups` (`id`, `exam_title`, `exam_mark`, `active_status`, `created_at`, `updated_at`, `exam_id`, `class_id`, `subject_id`, `section_id`, `exam_term_id`, `created_by`, `updated_by`, `school_id`, `academic_id`) VALUES
(4, 'CC', 30.00, 1, '2022-05-21 06:03:27', '2022-05-21 18:03:27', 1, NULL, NULL, NULL, NULL, 1, 1, 1, 3),
(5, 'Exam', 70.00, 1, '2022-05-21 06:03:27', '2022-05-21 18:03:27', 1, NULL, NULL, NULL, NULL, 1, 1, 1, 3);

-- --------------------------------------------------------

--
-- Structure de la table `sm_exam_types`
--

DROP TABLE IF EXISTS `sm_exam_types`;
CREATE TABLE IF NOT EXISTS `sm_exam_types` (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `active_status` int NOT NULL DEFAULT '1',
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_by` int UNSIGNED DEFAULT '1',
  `updated_by` int UNSIGNED DEFAULT '1',
  `school_id` int UNSIGNED DEFAULT '1',
  `academic_id` int UNSIGNED DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `sm_exam_types_school_id_foreign` (`school_id`),
  KEY `sm_exam_types_academic_id_foreign` (`academic_id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `sm_exam_types`
--

INSERT INTO `sm_exam_types` (`id`, `active_status`, `title`, `created_at`, `updated_at`, `created_by`, `updated_by`, `school_id`, `academic_id`) VALUES
(1, 1, '1er SEMESTRE', '2022-05-05 01:29:46', '2022-05-05 13:29:46', 1, 1, 1, 1),
(2, 1, '1er SEMESTRE', '2022-10-02 23:00:00', '2022-10-02 23:00:00', 1, 1, 1, 3),
(3, 1, '1er SEMESTRE', '2022-06-01 23:00:00', '2022-06-01 23:00:00', 1, 1, 1, 4);

-- --------------------------------------------------------

--
-- Structure de la table `sm_expense_heads`
--

DROP TABLE IF EXISTS `sm_expense_heads`;
CREATE TABLE IF NOT EXISTS `sm_expense_heads` (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `active_status` tinyint NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_by` int UNSIGNED DEFAULT '1',
  `updated_by` int UNSIGNED DEFAULT '1',
  `school_id` int UNSIGNED DEFAULT '1',
  `academic_id` int UNSIGNED DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `sm_expense_heads_school_id_foreign` (`school_id`),
  KEY `sm_expense_heads_academic_id_foreign` (`academic_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `sm_fees_assigns`
--

DROP TABLE IF EXISTS `sm_fees_assigns`;
CREATE TABLE IF NOT EXISTS `sm_fees_assigns` (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `active_status` tinyint NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `fees_amount` double(10,2) DEFAULT NULL,
  `applied_discount` double(10,2) DEFAULT NULL,
  `fees_master_id` int UNSIGNED DEFAULT NULL,
  `student_id` int UNSIGNED DEFAULT NULL,
  `created_by` int UNSIGNED DEFAULT '1',
  `updated_by` int UNSIGNED DEFAULT '1',
  `school_id` int UNSIGNED DEFAULT '1',
  `academic_id` int UNSIGNED DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `sm_fees_assigns_fees_master_id_foreign` (`fees_master_id`),
  KEY `sm_fees_assigns_student_id_foreign` (`student_id`),
  KEY `sm_fees_assigns_school_id_foreign` (`school_id`),
  KEY `sm_fees_assigns_academic_id_foreign` (`academic_id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `sm_fees_assigns`
--

INSERT INTO `sm_fees_assigns` (`id`, `active_status`, `created_at`, `updated_at`, `fees_amount`, `applied_discount`, `fees_master_id`, `student_id`, `created_by`, `updated_by`, `school_id`, `academic_id`) VALUES
(1, 1, '2022-05-21 19:36:18', '2022-05-21 20:53:50', -42000.00, 5000.00, 1, 1, 1, 1, 1, 3),
(2, 1, '2022-05-21 19:36:18', '2022-05-21 19:45:11', 21000.00, 5000.00, 1, 2, 1, 1, 1, 3);

-- --------------------------------------------------------

--
-- Structure de la table `sm_fees_assign_discounts`
--

DROP TABLE IF EXISTS `sm_fees_assign_discounts`;
CREATE TABLE IF NOT EXISTS `sm_fees_assign_discounts` (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `active_status` tinyint NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `student_id` int UNSIGNED DEFAULT NULL,
  `fees_discount_id` int UNSIGNED DEFAULT NULL,
  `fees_group_id` int DEFAULT NULL,
  `applied_amount` double DEFAULT '0',
  `unapplied_amount` double DEFAULT NULL,
  `created_by` int UNSIGNED DEFAULT '1',
  `updated_by` int UNSIGNED DEFAULT '1',
  `school_id` int UNSIGNED DEFAULT '1',
  `academic_id` int UNSIGNED DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `sm_fees_assign_discounts_student_id_foreign` (`student_id`),
  KEY `sm_fees_assign_discounts_fees_discount_id_foreign` (`fees_discount_id`),
  KEY `sm_fees_assign_discounts_school_id_foreign` (`school_id`),
  KEY `sm_fees_assign_discounts_academic_id_foreign` (`academic_id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `sm_fees_assign_discounts`
--

INSERT INTO `sm_fees_assign_discounts` (`id`, `active_status`, `created_at`, `updated_at`, `student_id`, `fees_discount_id`, `fees_group_id`, `applied_amount`, `unapplied_amount`, `created_by`, `updated_by`, `school_id`, `academic_id`) VALUES
(4, 1, '2022-05-21 19:52:05', '2022-05-21 19:52:05', 2, 1, 1, 0, 5000, 1, 1, 1, 3),
(3, 1, '2022-05-21 19:52:05', '2022-05-21 19:52:05', 1, 1, 1, 0, 5000, 1, 1, 1, 3);

-- --------------------------------------------------------

--
-- Structure de la table `sm_fees_carry_forwards`
--

DROP TABLE IF EXISTS `sm_fees_carry_forwards`;
CREATE TABLE IF NOT EXISTS `sm_fees_carry_forwards` (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `balance` double(16,2) NOT NULL,
  `active_status` tinyint NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `student_id` int UNSIGNED DEFAULT NULL,
  `created_by` int UNSIGNED DEFAULT '1',
  `updated_by` int UNSIGNED DEFAULT '1',
  `school_id` int UNSIGNED DEFAULT '1',
  `academic_id` int UNSIGNED DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `sm_fees_carry_forwards_student_id_foreign` (`student_id`),
  KEY `sm_fees_carry_forwards_school_id_foreign` (`school_id`),
  KEY `sm_fees_carry_forwards_academic_id_foreign` (`academic_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `sm_fees_discounts`
--

DROP TABLE IF EXISTS `sm_fees_discounts`;
CREATE TABLE IF NOT EXISTS `sm_fees_discounts` (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `code` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` enum('once','year') COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'once for one time, year for all months',
  `amount` double(10,2) DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `active_status` tinyint NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_by` int UNSIGNED DEFAULT '1',
  `updated_by` int UNSIGNED DEFAULT '1',
  `school_id` int UNSIGNED DEFAULT '1',
  `academic_id` int UNSIGNED DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `sm_fees_discounts_school_id_foreign` (`school_id`),
  KEY `sm_fees_discounts_academic_id_foreign` (`academic_id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `sm_fees_discounts`
--

INSERT INTO `sm_fees_discounts` (`id`, `name`, `code`, `type`, `amount`, `description`, `active_status`, `created_at`, `updated_at`, `created_by`, `updated_by`, `school_id`, `academic_id`) VALUES
(1, 'Scolarité', 'EPD-SCHOLAR', 'once', 5000.00, '', 1, '2022-05-21 19:43:41', '2022-05-21 19:43:41', 1, 1, 1, 3);

-- --------------------------------------------------------

--
-- Structure de la table `sm_fees_groups`
--

DROP TABLE IF EXISTS `sm_fees_groups`;
CREATE TABLE IF NOT EXISTS `sm_fees_groups` (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `start_date` date DEFAULT NULL,
  `end_date` date DEFAULT NULL,
  `due_date` date DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `active_status` tinyint NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_by` int UNSIGNED DEFAULT '1',
  `updated_by` int UNSIGNED DEFAULT '1',
  `school_id` int UNSIGNED DEFAULT '1',
  `academic_id` int UNSIGNED DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `sm_fees_groups_school_id_foreign` (`school_id`),
  KEY `sm_fees_groups_academic_id_foreign` (`academic_id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `sm_fees_groups`
--

INSERT INTO `sm_fees_groups` (`id`, `name`, `type`, `start_date`, `end_date`, `due_date`, `description`, `active_status`, `created_at`, `updated_at`, `created_by`, `updated_by`, `school_id`, `academic_id`) VALUES
(1, 'Dortoire', NULL, NULL, NULL, NULL, '', 1, '2022-05-06 08:46:22', '2022-05-06 08:46:22', 1, 1, 1, 1),
(2, 'Frais d\'examen', NULL, NULL, NULL, NULL, '', 1, '2022-05-21 19:31:19', '2022-05-21 19:31:19', 1, 1, 1, 3),
(3, 'Frais de dortoir', NULL, NULL, NULL, NULL, '', 1, '2022-05-21 19:31:40', '2022-05-21 19:31:40', 1, 1, 1, 3);

-- --------------------------------------------------------

--
-- Structure de la table `sm_fees_masters`
--

DROP TABLE IF EXISTS `sm_fees_masters`;
CREATE TABLE IF NOT EXISTS `sm_fees_masters` (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `date` date DEFAULT NULL,
  `amount` double(10,2) DEFAULT NULL,
  `active_status` tinyint NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `fees_group_id` int UNSIGNED DEFAULT NULL,
  `fees_type_id` int UNSIGNED DEFAULT NULL,
  `created_by` int UNSIGNED DEFAULT '1',
  `updated_by` int UNSIGNED DEFAULT '1',
  `school_id` int UNSIGNED DEFAULT '1',
  `academic_id` int UNSIGNED DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `sm_fees_masters_fees_group_id_foreign` (`fees_group_id`),
  KEY `sm_fees_masters_fees_type_id_foreign` (`fees_type_id`),
  KEY `sm_fees_masters_school_id_foreign` (`school_id`),
  KEY `sm_fees_masters_academic_id_foreign` (`academic_id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `sm_fees_masters`
--

INSERT INTO `sm_fees_masters` (`id`, `date`, `amount`, `active_status`, `created_at`, `updated_at`, `fees_group_id`, `fees_type_id`, `created_by`, `updated_by`, `school_id`, `academic_id`) VALUES
(1, '2022-05-21', 26000.00, 1, '2022-05-21 19:34:14', '2022-05-21 19:34:14', 2, 1, 1, 1, 1, 3);

-- --------------------------------------------------------

--
-- Structure de la table `sm_fees_payments`
--

DROP TABLE IF EXISTS `sm_fees_payments`;
CREATE TABLE IF NOT EXISTS `sm_fees_payments` (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `discount_month` tinyint DEFAULT NULL,
  `discount_amount` double(8,2) DEFAULT NULL,
  `fine` double(8,2) DEFAULT NULL,
  `amount` double(10,2) DEFAULT NULL,
  `payment_date` date DEFAULT NULL,
  `payment_mode` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `note` text COLLATE utf8mb4_unicode_ci,
  `slip` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fine_title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `active_status` tinyint NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `fees_discount_id` int UNSIGNED DEFAULT NULL,
  `fees_type_id` int UNSIGNED DEFAULT NULL,
  `student_id` int UNSIGNED DEFAULT NULL,
  `created_by` int UNSIGNED DEFAULT '1',
  `updated_by` int UNSIGNED DEFAULT '1',
  `school_id` int UNSIGNED DEFAULT '1',
  `academic_id` int UNSIGNED DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `sm_fees_payments_fees_discount_id_foreign` (`fees_discount_id`),
  KEY `sm_fees_payments_fees_type_id_foreign` (`fees_type_id`),
  KEY `sm_fees_payments_student_id_foreign` (`student_id`),
  KEY `sm_fees_payments_school_id_foreign` (`school_id`),
  KEY `sm_fees_payments_academic_id_foreign` (`academic_id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `sm_fees_payments`
--

INSERT INTO `sm_fees_payments` (`id`, `discount_month`, `discount_amount`, `fine`, `amount`, `payment_date`, `payment_mode`, `note`, `slip`, `fine_title`, `active_status`, `created_at`, `updated_at`, `fees_discount_id`, `fees_type_id`, `student_id`, `created_by`, `updated_by`, `school_id`, `academic_id`) VALUES
(2, NULL, 0.00, 0.00, 21000.00, '2022-05-21', 'bank', NULL, NULL, NULL, 1, '2022-05-21 20:20:29', '2022-05-21 20:20:29', NULL, 1, 1, 1, 1, 1, 3);

-- --------------------------------------------------------

--
-- Structure de la table `sm_fees_types`
--

DROP TABLE IF EXISTS `sm_fees_types`;
CREATE TABLE IF NOT EXISTS `sm_fees_types` (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(230) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `active_status` tinyint NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `fees_group_id` int UNSIGNED DEFAULT '1',
  `created_by` int UNSIGNED DEFAULT '1',
  `updated_by` int UNSIGNED DEFAULT '1',
  `school_id` int UNSIGNED DEFAULT '1',
  `academic_id` int UNSIGNED DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `sm_fees_types_fees_group_id_foreign` (`fees_group_id`),
  KEY `sm_fees_types_school_id_foreign` (`school_id`),
  KEY `sm_fees_types_academic_id_foreign` (`academic_id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `sm_fees_types`
--

INSERT INTO `sm_fees_types` (`id`, `name`, `description`, `active_status`, `created_at`, `updated_at`, `fees_group_id`, `created_by`, `updated_by`, `school_id`, `academic_id`) VALUES
(1, '1er semestre', '', 1, '2022-05-21 19:32:59', '2022-05-21 19:32:59', 2, 1, 1, 1, 3);

-- --------------------------------------------------------

--
-- Structure de la table `sm_frontend_persmissions`
--

DROP TABLE IF EXISTS `sm_frontend_persmissions`;
CREATE TABLE IF NOT EXISTS `sm_frontend_persmissions` (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parent_id` int NOT NULL DEFAULT '0',
  `is_published` int NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `sm_frontend_persmissions`
--

INSERT INTO `sm_frontend_persmissions` (`id`, `name`, `parent_id`, `is_published`, `created_at`, `updated_at`) VALUES
(1, 'Home Page', 0, 1, '2022-05-02 18:30:52', '2022-05-02 18:30:52'),
(2, 'About Page', 1, 1, '2022-05-02 18:30:52', '2022-05-04 11:11:27'),
(3, 'Image Banner', 1, 1, '2022-05-02 18:30:52', '2022-05-04 11:11:27'),
(4, 'Latest News', 1, 1, '2022-05-02 18:30:52', '2022-05-04 11:11:27'),
(5, 'Notice Board', 1, 1, '2022-05-02 18:30:52', '2022-05-04 11:11:27'),
(6, 'Event List', 1, 1, '2022-05-02 18:30:52', '2022-05-04 11:11:27'),
(7, 'Academics', 1, 1, '2022-05-02 18:30:52', '2022-05-04 11:11:27'),
(8, 'Testimonial', 1, 1, '2022-05-02 18:30:52', '2022-05-04 11:11:27'),
(9, 'Custom Links', 1, 1, '2022-05-02 18:30:52', '2022-05-04 11:11:27'),
(10, 'Social Icons', 1, 1, '2022-05-02 18:30:52', '2022-05-04 11:11:27'),
(11, 'About Image', 2, 1, '2022-05-02 18:30:52', '2022-05-02 18:30:52'),
(12, 'Statistic Number Section', 2, 1, '2022-05-02 18:30:53', '2022-05-02 18:30:53'),
(13, 'Our History', 2, 1, '2022-05-02 18:30:53', '2022-05-02 18:30:53'),
(14, 'Our Mission and Vision', 2, 1, '2022-05-02 18:30:53', '2022-05-02 18:30:53'),
(15, 'Testimonial', 2, 1, '2022-05-02 18:30:53', '2022-05-02 18:30:53');

-- --------------------------------------------------------

--
-- Structure de la table `sm_general_settings`
--

DROP TABLE IF EXISTS `sm_general_settings`;
CREATE TABLE IF NOT EXISTS `sm_general_settings` (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `school_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `site_title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `school_code` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `currency` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT 'USD',
  `currency_symbol` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT '$',
  `promotionSetting` int DEFAULT '0',
  `logo` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `favicon` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `system_version` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT '4.4',
  `active_status` int DEFAULT '1',
  `currency_code` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT 'USD',
  `language_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT 'en',
  `session_year` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT '2019',
  `system_purchase_code` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `system_activated_date` date DEFAULT NULL,
  `envato_user` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `envato_item_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `system_domain` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `copyright_text` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `api_url` int NOT NULL DEFAULT '1',
  `website_btn` int NOT NULL DEFAULT '1',
  `dashboard_btn` int NOT NULL DEFAULT '1',
  `report_btn` int NOT NULL DEFAULT '1',
  `style_btn` int NOT NULL DEFAULT '1',
  `ltl_rtl_btn` int NOT NULL DEFAULT '1',
  `lang_btn` int NOT NULL DEFAULT '1',
  `website_url` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ttl_rtl` int NOT NULL DEFAULT '2',
  `phone_number_privacy` int NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `time_zone_id` int DEFAULT NULL,
  `session_id` int UNSIGNED DEFAULT NULL,
  `language_id` int UNSIGNED DEFAULT '1',
  `date_format_id` int UNSIGNED DEFAULT '1',
  `school_id` int UNSIGNED DEFAULT '1',
  `software_version` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `FeesCollection` int DEFAULT '0',
  `InfixBiometrics` int DEFAULT '0',
  `ResultReports` int DEFAULT '0',
  `TemplateSettings` int DEFAULT '1',
  `RolePermission` int DEFAULT '1',
  `RazorPay` int DEFAULT '0',
  `Saas` int DEFAULT '0',
  `ParentRegistration` int DEFAULT '0',
  `Zoom` int DEFAULT '0',
  `SaasSubscription` int DEFAULT '0',
  `academic_id` int UNSIGNED DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `sm_general_settings_session_id_foreign` (`session_id`),
  KEY `sm_general_settings_language_id_foreign` (`language_id`),
  KEY `sm_general_settings_date_format_id_foreign` (`date_format_id`),
  KEY `sm_general_settings_school_id_foreign` (`school_id`),
  KEY `sm_general_settings_academic_id_foreign` (`academic_id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `sm_general_settings`
--

INSERT INTO `sm_general_settings` (`id`, `school_name`, `site_title`, `school_code`, `address`, `phone`, `email`, `currency`, `currency_symbol`, `promotionSetting`, `logo`, `favicon`, `system_version`, `active_status`, `currency_code`, `language_name`, `session_year`, `system_purchase_code`, `system_activated_date`, `envato_user`, `envato_item_id`, `system_domain`, `copyright_text`, `api_url`, `website_btn`, `dashboard_btn`, `report_btn`, `style_btn`, `ltl_rtl_btn`, `lang_btn`, `website_url`, `ttl_rtl`, `phone_number_privacy`, `created_at`, `updated_at`, `time_zone_id`, `session_id`, `language_id`, `date_format_id`, `school_id`, `software_version`, `FeesCollection`, `InfixBiometrics`, `ResultReports`, `TemplateSettings`, `RolePermission`, `RazorPay`, `Saas`, `ParentRegistration`, `Zoom`, `SaasSubscription`, `academic_id`) VALUES
(1, 'ENSPD', 'Ecole Nationale Supérieure Polytechnique de Douala', '01005000002', 'Campus Pk 17 Logbessou-Douala', '+237697542240', 'contact@enspd-udo.cm', 'XAF', 'FCFA', 1, 'public/uploads/settings/4520587472df15bbd9e885392bb81124.jpg', 'public/uploads/settings/3fd7d4f26791d9d66d99385078550e3a.PNG', '4.4', 1, 'USD', 'en', '2022', NULL, '2022-05-02', NULL, NULL, 'http://localhost/Schoolmanag', 'Copyright © 2022 Ecole Nationale Supérieure Polytechnique de Douala. All rights reserved.', 1, 1, 0, 0, 0, 0, 1, NULL, 2, 1, NULL, '2022-06-08 12:53:00', 123, 3, 4, 8, 1, '5', 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 1);

-- --------------------------------------------------------

--
-- Structure de la table `sm_holidays`
--

DROP TABLE IF EXISTS `sm_holidays`;
CREATE TABLE IF NOT EXISTS `sm_holidays` (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `holiday_title` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `details` varchar(500) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `from_date` date DEFAULT NULL,
  `to_date` date DEFAULT NULL,
  `upload_image_file` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `active_status` tinyint NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_by` int UNSIGNED DEFAULT '1',
  `updated_by` int UNSIGNED DEFAULT '1',
  `school_id` int UNSIGNED DEFAULT '1',
  `academic_id` int UNSIGNED DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `sm_holidays_school_id_foreign` (`school_id`),
  KEY `sm_holidays_academic_id_foreign` (`academic_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `sm_homeworks`
--

DROP TABLE IF EXISTS `sm_homeworks`;
CREATE TABLE IF NOT EXISTS `sm_homeworks` (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `homework_date` date DEFAULT NULL,
  `submission_date` date DEFAULT NULL,
  `evaluation_date` date DEFAULT NULL,
  `file` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `marks` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(500) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `active_status` tinyint NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `evaluated_by` int UNSIGNED DEFAULT NULL,
  `class_id` int UNSIGNED DEFAULT NULL,
  `section_id` int UNSIGNED DEFAULT NULL,
  `subject_id` int UNSIGNED DEFAULT NULL,
  `created_by` int UNSIGNED DEFAULT '1',
  `updated_by` int UNSIGNED DEFAULT '1',
  `school_id` int UNSIGNED DEFAULT '1',
  `academic_id` int UNSIGNED DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `sm_homeworks_evaluated_by_foreign` (`evaluated_by`),
  KEY `sm_homeworks_class_id_foreign` (`class_id`),
  KEY `sm_homeworks_section_id_foreign` (`section_id`),
  KEY `sm_homeworks_subject_id_foreign` (`subject_id`),
  KEY `sm_homeworks_school_id_foreign` (`school_id`),
  KEY `sm_homeworks_academic_id_foreign` (`academic_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `sm_homework_students`
--

DROP TABLE IF EXISTS `sm_homework_students`;
CREATE TABLE IF NOT EXISTS `sm_homework_students` (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `marks` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `teacher_comments` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `complete_status` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `active_status` tinyint NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `student_id` int UNSIGNED DEFAULT NULL,
  `homework_id` int UNSIGNED DEFAULT NULL,
  `created_by` int UNSIGNED DEFAULT '1',
  `updated_by` int UNSIGNED DEFAULT '1',
  `school_id` int UNSIGNED DEFAULT '1',
  `academic_id` int UNSIGNED DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `sm_homework_students_student_id_foreign` (`student_id`),
  KEY `sm_homework_students_homework_id_foreign` (`homework_id`),
  KEY `sm_homework_students_school_id_foreign` (`school_id`),
  KEY `sm_homework_students_academic_id_foreign` (`academic_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `sm_home_page_settings`
--

DROP TABLE IF EXISTS `sm_home_page_settings`;
CREATE TABLE IF NOT EXISTS `sm_home_page_settings` (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `long_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `short_description` text COLLATE utf8mb4_unicode_ci,
  `link_label` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `link_url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `sm_home_page_settings`
--

INSERT INTO `sm_home_page_settings` (`id`, `title`, `long_title`, `short_description`, `link_label`, `link_url`, `image`, `created_at`, `updated_at`) VALUES
(1, 'L\'UNIVERSITE DE DOUALA', 'ENSPD', 'Managing various administrative tasks in one place is now quite easy and time savior with this INFIX and Give your valued time to your institute that will increase next generation productivity for our society.', NULL, NULL, 'public/backEnd/img/client/home-banner1.jpg', '2022-05-02 18:30:53', '2022-05-04 11:11:27');

-- --------------------------------------------------------

--
-- Structure de la table `sm_hourly_rates`
--

DROP TABLE IF EXISTS `sm_hourly_rates`;
CREATE TABLE IF NOT EXISTS `sm_hourly_rates` (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `grade` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rate` int DEFAULT NULL,
  `active_status` tinyint NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_by` int UNSIGNED DEFAULT '1',
  `updated_by` int UNSIGNED DEFAULT '1',
  `school_id` int UNSIGNED DEFAULT '1',
  `academic_id` int UNSIGNED DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `sm_hourly_rates_school_id_foreign` (`school_id`),
  KEY `sm_hourly_rates_academic_id_foreign` (`academic_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `sm_hr_payroll_earn_deducs`
--

DROP TABLE IF EXISTS `sm_hr_payroll_earn_deducs`;
CREATE TABLE IF NOT EXISTS `sm_hr_payroll_earn_deducs` (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `type_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `amount` double(10,2) DEFAULT NULL,
  `earn_dedc_type` varchar(5) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'e for earnings and d for deductions',
  `active_status` tinyint NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `payroll_generate_id` int UNSIGNED DEFAULT NULL,
  `created_by` int UNSIGNED DEFAULT '1',
  `updated_by` int UNSIGNED DEFAULT '1',
  `school_id` int UNSIGNED DEFAULT '1',
  `academic_id` int UNSIGNED DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `sm_hr_payroll_earn_deducs_payroll_generate_id_foreign` (`payroll_generate_id`),
  KEY `sm_hr_payroll_earn_deducs_school_id_foreign` (`school_id`),
  KEY `sm_hr_payroll_earn_deducs_academic_id_foreign` (`academic_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `sm_hr_payroll_generates`
--

DROP TABLE IF EXISTS `sm_hr_payroll_generates`;
CREATE TABLE IF NOT EXISTS `sm_hr_payroll_generates` (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `basic_salary` double DEFAULT NULL,
  `total_earning` double DEFAULT NULL,
  `total_deduction` double DEFAULT NULL,
  `gross_salary` double DEFAULT NULL,
  `tax` double DEFAULT NULL,
  `net_salary` double DEFAULT NULL,
  `payroll_month` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payroll_year` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payroll_status` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'NG for not generated, G for generated, P for paid',
  `payment_mode` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payment_date` date DEFAULT NULL,
  `note` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `active_status` tinyint NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `staff_id` int UNSIGNED DEFAULT NULL,
  `created_by` int UNSIGNED DEFAULT '1',
  `updated_by` int UNSIGNED DEFAULT '1',
  `school_id` int UNSIGNED DEFAULT '1',
  `academic_id` int UNSIGNED DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `sm_hr_payroll_generates_staff_id_foreign` (`staff_id`),
  KEY `sm_hr_payroll_generates_school_id_foreign` (`school_id`),
  KEY `sm_hr_payroll_generates_academic_id_foreign` (`academic_id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `sm_hr_payroll_generates`
--

INSERT INTO `sm_hr_payroll_generates` (`id`, `basic_salary`, `total_earning`, `total_deduction`, `gross_salary`, `tax`, `net_salary`, `payroll_month`, `payroll_year`, `payroll_status`, `payment_mode`, `payment_date`, `note`, `active_status`, `created_at`, `updated_at`, `staff_id`, `created_by`, `updated_by`, `school_id`, `academic_id`) VALUES
(1, 50000, 0, 0, 50000, 0, 50000, 'February', '2022', 'P', '3', '2022-05-16', 'Veuillez payer avant la fin du mois', 1, '2022-05-16 08:54:20', '2022-05-16 09:01:58', 3, 1, 1, 1, 3);

-- --------------------------------------------------------

--
-- Structure de la table `sm_hr_salary_templates`
--

DROP TABLE IF EXISTS `sm_hr_salary_templates`;
CREATE TABLE IF NOT EXISTS `sm_hr_salary_templates` (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `salary_grades` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `salary_basic` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `overtime_rate` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `house_rent` int DEFAULT NULL,
  `provident_fund` int DEFAULT NULL,
  `gross_salary` int DEFAULT NULL,
  `total_deduction` int DEFAULT NULL,
  `net_salary` int DEFAULT NULL,
  `active_status` tinyint NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_by` int UNSIGNED DEFAULT '1',
  `updated_by` int UNSIGNED DEFAULT '1',
  `school_id` int UNSIGNED DEFAULT '1',
  `academic_id` int UNSIGNED DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `sm_hr_salary_templates_school_id_foreign` (`school_id`),
  KEY `sm_hr_salary_templates_academic_id_foreign` (`academic_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `sm_human_departments`
--

DROP TABLE IF EXISTS `sm_human_departments`;
CREATE TABLE IF NOT EXISTS `sm_human_departments` (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `active_status` tinyint NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_by` int UNSIGNED DEFAULT '1',
  `updated_by` int UNSIGNED DEFAULT '1',
  `school_id` int UNSIGNED DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `sm_human_departments_created_by_foreign` (`created_by`),
  KEY `sm_human_departments_updated_by_foreign` (`updated_by`),
  KEY `sm_human_departments_school_id_foreign` (`school_id`)
) ENGINE=MyISAM AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `sm_human_departments`
--

INSERT INTO `sm_human_departments` (`id`, `name`, `active_status`, `created_at`, `updated_at`, `created_by`, `updated_by`, `school_id`) VALUES
(1, 'Admin', 1, '2022-05-02 06:26:20', NULL, 1, 1, 1),
(2, 'TTIC', 1, '2022-05-10 13:57:21', '2022-05-10 13:57:21', 1, 1, 1),
(3, 'GCI', 1, '2022-05-10 13:57:39', '2022-05-10 13:57:39', 1, 1, 1),
(4, 'TAU', 1, '2022-05-10 13:57:57', '2022-05-10 13:57:57', 1, 1, 1),
(5, 'PEI', 1, '2022-05-10 13:58:14', '2022-05-10 13:58:14', 1, 1, 1),
(6, 'HSSI', 1, '2022-05-10 13:58:33', '2022-05-10 13:58:33', 1, 1, 1),
(7, 'GPC', 1, '2022-05-10 14:02:10', '2022-05-10 14:02:10', 1, 1, 1),
(8, 'ROI', 1, '2022-05-10 14:02:29', '2022-05-10 14:02:29', 1, 1, 1),
(9, 'TCI', 1, '2022-05-10 14:03:03', '2022-05-10 14:03:03', 1, 1, 1),
(10, ',jjbhh', 1, '2022-06-02 08:13:08', '2022-06-02 08:13:08', 1, 1, 1);

-- --------------------------------------------------------

--
-- Structure de la table `sm_income_heads`
--

DROP TABLE IF EXISTS `sm_income_heads`;
CREATE TABLE IF NOT EXISTS `sm_income_heads` (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `active_status` tinyint NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_by` int UNSIGNED DEFAULT '1',
  `updated_by` int UNSIGNED DEFAULT '1',
  `school_id` int UNSIGNED DEFAULT '1',
  `academic_id` int UNSIGNED DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `sm_income_heads_school_id_foreign` (`school_id`),
  KEY `sm_income_heads_academic_id_foreign` (`academic_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `sm_instructions`
--

DROP TABLE IF EXISTS `sm_instructions`;
CREATE TABLE IF NOT EXISTS `sm_instructions` (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `title` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `active_status` tinyint NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_by` int UNSIGNED DEFAULT '1',
  `updated_by` int UNSIGNED DEFAULT '1',
  `school_id` int UNSIGNED DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `sm_instructions_school_id_foreign` (`school_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `sm_inventory_payments`
--

DROP TABLE IF EXISTS `sm_inventory_payments`;
CREATE TABLE IF NOT EXISTS `sm_inventory_payments` (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `item_receive_sell_id` int UNSIGNED DEFAULT NULL,
  `payment_date` date DEFAULT NULL,
  `amount` double(10,2) DEFAULT NULL,
  `reference_no` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payment_type` varchar(11) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'R for receive S for sell',
  `payment_method` int UNSIGNED DEFAULT NULL,
  `notes` varchar(500) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `active_status` tinyint NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_by` int UNSIGNED DEFAULT '1',
  `updated_by` int UNSIGNED DEFAULT '1',
  `school_id` int UNSIGNED DEFAULT '1',
  `academic_id` int UNSIGNED DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `sm_inventory_payments_school_id_foreign` (`school_id`),
  KEY `sm_inventory_payments_academic_id_foreign` (`academic_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `sm_items`
--

DROP TABLE IF EXISTS `sm_items`;
CREATE TABLE IF NOT EXISTS `sm_items` (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `item_name` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `total_in_stock` double(8,2) DEFAULT NULL,
  `description` varchar(500) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `item_category_id` int UNSIGNED DEFAULT NULL,
  `school_id` int UNSIGNED DEFAULT '1',
  `academic_id` int UNSIGNED DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `sm_items_item_category_id_foreign` (`item_category_id`),
  KEY `sm_items_school_id_foreign` (`school_id`),
  KEY `sm_items_academic_id_foreign` (`academic_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `sm_item_categories`
--

DROP TABLE IF EXISTS `sm_item_categories`;
CREATE TABLE IF NOT EXISTS `sm_item_categories` (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `category_name` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `school_id` int UNSIGNED DEFAULT '1',
  `academic_id` int UNSIGNED DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `sm_item_categories_school_id_foreign` (`school_id`),
  KEY `sm_item_categories_academic_id_foreign` (`academic_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `sm_item_issues`
--

DROP TABLE IF EXISTS `sm_item_issues`;
CREATE TABLE IF NOT EXISTS `sm_item_issues` (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `issue_to` int UNSIGNED DEFAULT NULL,
  `issue_by` int UNSIGNED DEFAULT NULL,
  `issue_date` date DEFAULT NULL,
  `due_date` date DEFAULT NULL,
  `quantity` int UNSIGNED DEFAULT NULL,
  `issue_status` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `note` varchar(500) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `active_status` tinyint NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `role_id` int UNSIGNED DEFAULT NULL,
  `item_category_id` int UNSIGNED DEFAULT NULL,
  `item_id` int UNSIGNED DEFAULT NULL,
  `created_by` int UNSIGNED DEFAULT '1',
  `updated_by` int UNSIGNED DEFAULT '1',
  `school_id` int UNSIGNED DEFAULT '1',
  `academic_id` int UNSIGNED DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `sm_item_issues_role_id_foreign` (`role_id`),
  KEY `sm_item_issues_item_category_id_foreign` (`item_category_id`),
  KEY `sm_item_issues_item_id_foreign` (`item_id`),
  KEY `sm_item_issues_school_id_foreign` (`school_id`),
  KEY `sm_item_issues_academic_id_foreign` (`academic_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `sm_item_receives`
--

DROP TABLE IF EXISTS `sm_item_receives`;
CREATE TABLE IF NOT EXISTS `sm_item_receives` (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `receive_date` date DEFAULT NULL,
  `reference_no` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `grand_total` int DEFAULT NULL,
  `total_quantity` int DEFAULT NULL,
  `total_paid` int DEFAULT NULL,
  `total_due` int DEFAULT NULL,
  `payment_method` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `paid_status` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `active_status` tinyint NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `supplier_id` int UNSIGNED DEFAULT NULL,
  `store_id` int UNSIGNED DEFAULT NULL,
  `created_by` int UNSIGNED DEFAULT '1',
  `updated_by` int UNSIGNED DEFAULT '1',
  `school_id` int UNSIGNED DEFAULT '1',
  `academic_id` int UNSIGNED DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `sm_item_receives_supplier_id_foreign` (`supplier_id`),
  KEY `sm_item_receives_store_id_foreign` (`store_id`),
  KEY `sm_item_receives_school_id_foreign` (`school_id`),
  KEY `sm_item_receives_academic_id_foreign` (`academic_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `sm_item_receive_children`
--

DROP TABLE IF EXISTS `sm_item_receive_children`;
CREATE TABLE IF NOT EXISTS `sm_item_receive_children` (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `unit_price` int DEFAULT NULL,
  `quantity` int DEFAULT NULL,
  `sub_total` int DEFAULT NULL,
  `description` varchar(500) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `active_status` tinyint NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `item_id` int UNSIGNED DEFAULT NULL,
  `item_receive_id` int UNSIGNED DEFAULT NULL,
  `created_by` int UNSIGNED DEFAULT '1',
  `updated_by` int UNSIGNED DEFAULT '1',
  `school_id` int UNSIGNED DEFAULT '1',
  `academic_id` int UNSIGNED DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `sm_item_receive_children_item_id_foreign` (`item_id`),
  KEY `sm_item_receive_children_item_receive_id_foreign` (`item_receive_id`),
  KEY `sm_item_receive_children_school_id_foreign` (`school_id`),
  KEY `sm_item_receive_children_academic_id_foreign` (`academic_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `sm_item_sells`
--

DROP TABLE IF EXISTS `sm_item_sells`;
CREATE TABLE IF NOT EXISTS `sm_item_sells` (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `student_staff_id` int DEFAULT NULL,
  `sell_date` date DEFAULT NULL,
  `reference_no` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `grand_total` int DEFAULT NULL,
  `total_quantity` int DEFAULT NULL,
  `total_paid` int DEFAULT NULL,
  `total_due` int DEFAULT NULL,
  `payment_method` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `paid_status` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(500) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `active_status` tinyint NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `role_id` int UNSIGNED DEFAULT NULL,
  `created_by` int UNSIGNED DEFAULT '1',
  `updated_by` int UNSIGNED DEFAULT '1',
  `school_id` int UNSIGNED DEFAULT '1',
  `academic_id` int UNSIGNED DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `sm_item_sells_role_id_foreign` (`role_id`),
  KEY `sm_item_sells_school_id_foreign` (`school_id`),
  KEY `sm_item_sells_academic_id_foreign` (`academic_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `sm_item_sell_children`
--

DROP TABLE IF EXISTS `sm_item_sell_children`;
CREATE TABLE IF NOT EXISTS `sm_item_sell_children` (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `sell_price` int DEFAULT NULL,
  `quantity` int DEFAULT NULL,
  `sub_total` int DEFAULT NULL,
  `description` varchar(500) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `active_status` tinyint NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `item_sell_id` int UNSIGNED DEFAULT NULL,
  `item_id` int UNSIGNED DEFAULT NULL,
  `created_by` int UNSIGNED DEFAULT '1',
  `updated_by` int UNSIGNED DEFAULT '1',
  `school_id` int UNSIGNED DEFAULT '1',
  `academic_id` int UNSIGNED DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `sm_item_sell_children_item_sell_id_foreign` (`item_sell_id`),
  KEY `sm_item_sell_children_item_id_foreign` (`item_id`),
  KEY `sm_item_sell_children_school_id_foreign` (`school_id`),
  KEY `sm_item_sell_children_academic_id_foreign` (`academic_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `sm_item_stores`
--

DROP TABLE IF EXISTS `sm_item_stores`;
CREATE TABLE IF NOT EXISTS `sm_item_stores` (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `store_name` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `store_no` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(500) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `school_id` int UNSIGNED DEFAULT '1',
  `academic_id` int UNSIGNED DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `sm_item_stores_school_id_foreign` (`school_id`),
  KEY `sm_item_stores_academic_id_foreign` (`academic_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `sm_languages`
--

DROP TABLE IF EXISTS `sm_languages`;
CREATE TABLE IF NOT EXISTS `sm_languages` (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `language_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `native` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `language_universal` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `active_status` tinyint NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `lang_id` int UNSIGNED DEFAULT '1',
  `created_by` int UNSIGNED DEFAULT '1',
  `updated_by` int UNSIGNED DEFAULT '1',
  `school_id` int UNSIGNED DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `sm_languages_lang_id_foreign` (`lang_id`),
  KEY `sm_languages_school_id_foreign` (`school_id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `sm_languages`
--

INSERT INTO `sm_languages` (`id`, `language_name`, `native`, `language_universal`, `active_status`, `created_at`, `updated_at`, `lang_id`, `created_by`, `updated_by`, `school_id`) VALUES
(1, 'English', 'English', 'en', 0, '2022-05-02 06:27:50', '2022-06-06 12:55:37', 19, 1, 1, 1),
(4, 'French', 'Français', 'fr', 1, '2022-05-02 06:27:50', '2022-06-06 12:55:37', 28, 1, 1, 1);

-- --------------------------------------------------------

--
-- Structure de la table `sm_language_phrases`
--

DROP TABLE IF EXISTS `sm_language_phrases`;
CREATE TABLE IF NOT EXISTS `sm_language_phrases` (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `modules` text,
  `default_phrases` text,
  `en` text,
  `fr` text,
  `active_status` tinyint NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=1398 DEFAULT CHARSET=utf8mb3;

--
-- Déchargement des données de la table `sm_language_phrases`
--

INSERT INTO `sm_language_phrases` (`id`, `modules`, `default_phrases`, `en`, `fr`, `active_status`, `created_at`, `updated_at`) VALUES
(1, '0', 'dashboard', 'Dashboard', 'Tableau de bord', 1, '2022-05-02 18:30:29', '2022-05-02 18:30:29'),
(2, '0', 'welcome', 'Welcome', 'Bienvenue', 1, '2022-05-02 18:30:29', '2022-05-02 18:30:29'),
(3, '0', 'student', 'Student', 'Élèves', 1, '2022-05-02 18:30:29', '2022-06-03 09:34:38'),
(4, '0', 'total', 'Total', 'Total', 1, '2022-05-02 18:30:29', '2022-05-02 18:30:29'),
(5, '0', 'template', 'Template', 'Modèle', 1, '2022-05-02 18:30:29', '2022-05-17 10:44:28'),
(6, '0', 'early', 'Early', 'Tot', 1, '2022-05-02 18:30:29', '2022-05-17 10:44:28'),
(7, '0', 'cheque_bounce', 'Cheque Bounce', 'Rebond des chèques', 1, '2022-05-02 18:30:29', '2022-05-17 10:44:28'),
(8, '0', 'checkout', 'Checkout', 'Caisse', 1, '2022-05-02 18:30:29', '2022-05-17 10:44:28'),
(9, '0', 'check', 'Check', 'Vérifier', 1, '2022-05-02 18:30:29', '2022-05-17 10:44:28'),
(10, '0', 'credentials', 'Credentials', 'identifiants', 1, '2022-05-02 18:30:29', '2022-05-31 15:12:04'),
(11, '0', 'birthday', 'Birthday', 'Anniversaire', 1, '2022-05-02 18:30:29', '2022-05-17 10:44:28'),
(12, '0', 'application', 'Application', 'Application', 1, '2022-05-02 18:30:29', '2022-05-02 18:30:29'),
(13, '0', 'student_admitted_message', 'Student Admitted Message', 'Message de l’étudiant admis', 1, '2022-05-02 18:30:29', '2022-05-17 10:44:28'),
(14, '0', 'student_admission_progress', 'Student Admission In Progress', 'Admission des étudiants en cours', 1, '2022-05-02 18:30:29', '2022-05-17 10:44:28'),
(15, '0', 'teachers', 'Teachers', 'Enseignants', 1, '2022-05-02 18:30:29', '2022-05-02 18:30:29'),
(16, '0', 'parents', 'Parents', 'Parents', 1, '2022-05-02 18:30:29', '2022-05-02 18:30:29'),
(17, '0', 'staffs', 'Staffs', 'Le personnel', 1, '2022-05-02 18:30:29', '2022-05-02 18:30:29'),
(18, '0', 'income_and_expenses_for', 'Income and Expenses for', 'Revenus et dépenses pour', 1, '2022-05-02 18:30:29', '2022-05-02 18:30:29'),
(19, '0', 'total_income', 'Total Income', 'Revenu total', 1, '2022-05-02 18:30:29', '2022-05-02 18:30:29'),
(20, '0', 'total_expenses', 'Total Expenses', 'Dépenses totales', 1, '2022-05-02 18:30:29', '2022-05-02 18:30:29'),
(21, '0', 'total_profit', 'Total Profit', 'Bénéfice total', 1, '2022-05-02 18:30:29', '2022-05-02 18:30:29'),
(22, '0', 'total_revenue', 'Total Revenue', 'Revenu total', 1, '2022-05-02 18:30:29', '2022-05-02 18:30:29'),
(23, '0', 'title', 'Title', 'Titre', 1, '2022-05-02 18:30:29', '2022-05-02 18:30:29'),
(24, '0', 'message', 'Message', 'Message', 1, '2022-05-02 18:30:29', '2022-05-02 18:30:29'),
(25, '0', 'actions', 'Actions', 'actes', 1, '2022-05-02 18:30:29', '2022-05-02 18:30:29'),
(26, '0', 'calendar', 'Calendar', 'Calendrier', 1, '2022-05-02 18:30:29', '2022-05-02 18:30:29'),
(27, '0', 'view', 'View', 'Vue', 1, '2022-05-02 18:30:29', '2022-05-02 18:30:29'),
(28, '0', 'to_do_list', 'To Do List', 'Liste de choses à faire', 1, '2022-05-02 18:30:29', '2022-05-02 18:30:29'),
(29, '0', 'add', 'Add', 'Ajouter', 1, '2022-05-02 18:30:29', '2022-05-02 18:30:29'),
(30, '0', 'edit', 'Edit', 'modifier', 1, '2022-05-02 18:30:29', '2022-05-02 18:30:29'),
(31, '0', 'no_do_lists_assigned_yet', 'No Do Lists Assigned Yet', 'Aucune liste assignée pour l', 1, '2022-05-02 18:30:29', '2022-06-03 09:34:38'),
(32, '0', 'theme', 'Theme', 'Thème', 1, '2022-05-02 18:30:29', '2022-05-31 15:12:04'),
(33, '0', 'time_zone', 'Time Zone', 'Fuseau horaire', 1, '2022-05-02 18:30:29', '2022-05-31 15:12:04'),
(34, '0', 'mail', 'Mail', 'Mail', 1, '2022-05-02 18:30:29', '2022-05-02 18:30:29'),
(35, '0', 'host', 'Host', 'Hote', 1, '2022-05-02 18:30:29', '2022-05-19 21:57:41'),
(36, '0', 'encryption', 'Encryption', 'Chiffrement', 1, '2022-05-02 18:30:29', '2022-05-31 15:12:04'),
(37, '0', 'login', 'Login', 'Connexion', 1, '2022-05-02 18:30:29', '2022-05-17 10:44:28'),
(38, '0', 'enter', 'Enter', 'Entrer', 1, '2022-05-02 18:30:29', '2022-05-17 10:44:28'),
(39, '0', 'remember_me', 'Remember Me', 'Se souvenir de moi', 1, '2022-05-02 18:30:29', '2022-05-17 10:44:28'),
(40, '0', 'forget', 'Forget', 'Oublié', 1, '2022-05-02 18:30:29', '2022-05-17 10:44:28'),
(41, '0', 'current_month', 'Current Month', 'Mois actuel', 1, '2022-05-02 18:30:29', '2022-05-17 10:44:28'),
(42, '0', 'keyword', 'Keyword', 'Motsclés', 1, '2022-05-02 18:30:29', '2022-05-19 21:57:41'),
(43, '0', 'manage', 'Manage', 'Gestion', 1, '2022-05-02 18:30:29', '2022-05-17 10:44:28'),
(44, '0', 'manager', 'Manager', 'Gestionnaire', 1, '2022-05-02 18:30:29', '2022-06-14 12:05:10'),
(45, '0', 'child', 'Child', 'Enfant', 1, '2022-05-02 18:30:29', '2022-05-31 15:12:04'),
(46, '0', 'running', 'Running', 'En cours', 1, '2022-05-02 18:30:29', '2022-05-17 10:44:27'),
(47, '0', 'select_academic_year', 'Select Academic Year', 'Selectionner Année académique', 1, '2022-05-02 18:30:29', '2022-05-31 15:12:04'),
(48, '0', 'PDF', 'PDF', 'PDF', 1, '2022-05-02 18:30:29', '2022-05-02 18:30:29'),
(49, '0', 'biometrics', 'Biometrics', 'Biometriques', 1, '2022-05-02 18:30:29', '2022-05-31 15:12:04'),
(50, '1', 'admin_section', 'Admin Section', 'Section Admin', 1, '2022-05-02 18:30:29', '2022-05-02 18:30:29'),
(51, '1', 'admission_query', 'Admission Query', 'Requête dadmission', 1, '2022-05-02 18:30:29', '2022-05-02 18:30:29'),
(52, '1', 'select_criteria', 'Select Criteria', 'Sélectionner des critères', 1, '2022-05-02 18:30:29', '2022-05-02 18:30:29'),
(53, '1', 'date_from', 'Date From', 'Dater de', 1, '2022-05-02 18:30:29', '2022-05-02 18:30:29'),
(54, '1', 'date_to', 'Date To', 'Date à', 1, '2022-05-02 18:30:29', '2022-05-02 18:30:29'),
(55, '1', 'select_source', 'Select Source', 'Sélectionnez la source', 1, '2022-05-02 18:30:29', '2022-05-02 18:30:29'),
(56, '1', 'select_status', 'Select status', 'Sélectionnez le statut', 1, '2022-05-02 18:30:29', '2022-05-02 18:30:29'),
(57, '1', 'Status', 'Status', 'Statut', 1, '2022-05-02 18:30:29', '2022-05-02 18:30:29'),
(58, '1', 'active', 'Active', 'actif', 1, '2022-05-02 18:30:29', '2022-05-02 18:30:29'),
(59, '1', 'inactive', 'Inactive', 'Inactif', 1, '2022-05-02 18:30:29', '2022-05-02 18:30:29'),
(60, '1', 'search', 'Search', 'Chercher', 1, '2022-05-02 18:30:29', '2022-05-02 18:30:29'),
(61, '1', 'query_list', 'Query List', 'Liste de requêtes', 1, '2022-05-02 18:30:29', '2022-05-02 18:30:29'),
(62, '1', 'name', 'Name', 'prénom', 1, '2022-05-02 18:30:29', '2022-05-02 18:30:29'),
(63, '1', 'phone', 'Phone', 'Téléphone', 1, '2022-05-02 18:30:29', '2022-05-02 18:30:29'),
(64, '1', 'source', 'Source', 'La source', 1, '2022-05-02 18:30:29', '2022-05-02 18:30:29'),
(65, '1', 'email', 'Email', 'Email', 1, '2022-05-02 18:30:29', '2022-05-02 18:30:29'),
(66, '1', 'query_date', 'Query Date', 'Date de la requête', 1, '2022-05-02 18:30:29', '2022-05-02 18:30:29'),
(67, '1', 'last_follow_up_date', 'last follow up date', 'dernière date de suivi', 1, '2022-05-02 18:30:29', '2022-05-02 18:30:29'),
(68, '1', 'next_follow_up_date', 'next follow up date', 'prochaine date de suivi', 1, '2022-05-02 18:30:29', '2022-05-02 18:30:29'),
(69, '1', 'select', 'Select', 'Sélectionner', 1, '2022-05-02 18:30:29', '2022-05-02 18:30:29'),
(70, '1', 'add_query', 'Add Query', 'Ajouter une requête', 1, '2022-05-02 18:30:29', '2022-05-02 18:30:29'),
(71, '1', 'delete', 'Delete', 'Effacer', 1, '2022-05-02 18:30:29', '2022-05-02 18:30:29'),
(72, '1', 'delete_admission_query', 'Delete Admission Query', 'Supprimer la requête dadmission', 1, '2022-05-02 18:30:29', '2022-05-02 18:30:29'),
(73, '1', 'are_you_sure_to_delete', 'Are you sure to delete this item?', 'Êtes-vous sûr de vouloir supprimer cette donnéz?', 1, '2022-05-02 18:30:29', '2022-05-31 15:28:28'),
(74, '1', 'are_you_sure_to_disable', 'Are you sure to disable this item?', 'Êtes-vous sûr de vouloir supprimer cette donnée?', 1, '2022-05-02 18:30:29', '2022-05-31 15:28:28'),
(75, '1', 'are_you_sure_to_enable', 'Are you sure to enable this item?', 'Êtes-vous sûr de vouloir supprimer cette donnée??', 1, '2022-05-02 18:30:29', '2022-05-31 15:28:28'),
(76, '1', 'cancel', 'Cancel', 'Annuler', 1, '2022-05-02 18:30:29', '2022-05-02 18:30:29'),
(77, '1', 'admission_enquiry', 'Admission Enquiry', 'Enquête dadmission', 1, '2022-05-02 18:30:29', '2022-05-02 18:30:29'),
(78, '1', 'address', 'Address', 'Adresse', 1, '2022-05-02 18:30:29', '2022-05-02 18:30:29'),
(79, '1', 'description', 'Description', 'La description', 1, '2022-05-02 18:30:29', '2022-05-02 18:30:29'),
(80, '1', 'date', 'Date', 'Date', 1, '2022-05-02 18:30:29', '2022-05-11 08:27:35'),
(81, '1', 'assigned', 'Assigned', 'Attribué', 1, '2022-05-02 18:30:29', '2022-05-02 18:30:29'),
(82, '1', 'reference', 'Reference', 'Référence', 1, '2022-05-02 18:30:29', '2022-05-02 18:30:29'),
(83, '1', 'number_of_child', 'Number of child', 'Nombre denfant', 1, '2022-05-02 18:30:29', '2022-05-02 18:30:29'),
(84, '1', 'save', 'Save', 'sauvegarder', 1, '2022-05-02 18:30:29', '2022-05-02 18:30:29'),
(85, '1', 'visitor_book', 'Visitor Book', 'Livre de visites', 1, '2022-05-02 18:30:29', '2022-05-02 18:30:29'),
(86, '1', 'visitor', 'Visitor', 'Visiteur', 1, '2022-05-02 18:30:29', '2022-05-02 18:30:29'),
(87, '1', 'purpose', 'Purpose', 'Objectif', 1, '2022-05-02 18:30:29', '2022-05-02 18:30:29'),
(88, '1', 'id', 'Id', 'Id', 1, '2022-05-02 18:30:29', '2022-05-02 18:30:29'),
(89, '1', 'no_of_person', 'No. of Person', 'No. de personne', 1, '2022-05-02 18:30:29', '2022-05-02 18:30:29'),
(90, '1', 'in_time', 'In Time', 'À lheure', 1, '2022-05-02 18:30:29', '2022-05-02 18:30:29'),
(91, '1', 'out_time', 'Out time', 'Temps de sortie', 1, '2022-05-02 18:30:29', '2022-05-02 18:30:29'),
(92, '1', 'browse', 'browse', 'Feuilleter', 1, '2022-05-02 18:30:29', '2022-05-02 18:30:29'),
(93, '1', 'update', 'Update', 'Mettre à jour', 1, '2022-05-02 18:30:30', '2022-05-02 18:30:30'),
(94, '1', 'visitor_list', 'Visitor List', 'Liste de visiteurs', 1, '2022-05-02 18:30:30', '2022-05-02 18:30:30'),
(95, '1', 'download', 'Download', 'Télécharger', 1, '2022-05-02 18:30:30', '2022-05-02 18:30:30'),
(96, '1', 'complaint', 'Complaint', 'Plainte', 1, '2022-05-02 18:30:30', '2022-05-02 18:30:30'),
(97, '1', 'by', 'By', 'Par', 1, '2022-05-02 18:30:30', '2022-05-02 18:30:30'),
(98, '1', 'type', 'Type', 'Type', 1, '2022-05-02 18:30:30', '2022-05-02 18:30:30'),
(99, '1', 'taken', 'Taken', 'Pris', 1, '2022-05-02 18:30:30', '2022-05-02 18:30:30'),
(100, '1', 'list', 'List', 'liste', 1, '2022-05-02 18:30:30', '2022-05-02 18:30:30'),
(101, '1', 'postal_receive', 'Postal Receive', 'Réception postale', 1, '2022-05-02 18:30:30', '2022-05-02 18:30:30'),
(102, '1', 'from_title', 'From Title', 'De titre', 1, '2022-05-02 18:30:30', '2022-05-02 18:30:30'),
(103, '1', 'no', 'No', 'Non', 1, '2022-05-02 18:30:30', '2022-05-02 18:30:30'),
(104, '1', 'note', 'Note', 'Remarque', 1, '2022-05-02 18:30:30', '2022-05-02 18:30:30'),
(105, '1', 'to_title', 'To Title', 'Au titre', 1, '2022-05-02 18:30:30', '2022-05-02 18:30:30'),
(106, '1', 'postal_dispatch', 'Postal Dispatch', 'Envoi postal', 1, '2022-05-02 18:30:30', '2022-05-02 18:30:30'),
(107, '1', 'phone_call_log', 'Phone Call Log', 'Journal des appels téléphoniques', 1, '2022-05-02 18:30:30', '2022-05-02 18:30:30'),
(108, '1', 'phone_call', 'Phone Call', 'Appel téléphonique', 1, '2022-05-02 18:30:30', '2022-05-02 18:30:30'),
(109, '1', 'follow_up_date', 'Follow Up Date', 'Date de suivi', 1, '2022-05-02 18:30:30', '2022-05-02 18:30:30'),
(110, '1', 'call_duration', 'Call Duration', 'Durée dappel', 1, '2022-05-02 18:30:30', '2022-05-02 18:30:30'),
(111, '1', 'incoming', 'Incoming', 'Entrant', 1, '2022-05-02 18:30:30', '2022-05-02 18:30:30'),
(112, '1', 'outgoing', 'Outgoing', 'Sortant', 1, '2022-05-02 18:30:30', '2022-05-02 18:30:30'),
(113, '1', 'call', 'Call', 'Appel', 1, '2022-05-02 18:30:30', '2022-05-02 18:30:30'),
(114, '1', 'admin_setup', 'Admin Setup', 'Configuration de ladministrateur', 1, '2022-05-02 18:30:30', '2022-05-02 18:30:30'),
(115, '1', 'student_certificate', 'Student Certificate', 'Certificat d', 1, '2022-05-02 18:30:30', '2022-06-14 12:33:53'),
(116, '1', 'certificate', 'Certificate', 'Certificat', 1, '2022-05-02 18:30:30', '2022-05-02 18:30:30'),
(117, '1', 'header_left_text', 'Header left text', 'Texte de l', 1, '2022-05-02 18:30:30', '2022-06-14 12:33:53'),
(118, '1', 'body', 'Body', 'Corps', 1, '2022-05-02 18:30:30', '2022-05-02 18:30:30'),
(119, '1', 'footer_left_text', 'Footer left text', 'Texte de pied de page gauche', 1, '2022-05-02 18:30:30', '2022-05-31 15:28:28'),
(120, '1', 'footer_center_text', 'Footer Center text', 'Texte de pied de page central', 1, '2022-05-02 18:30:30', '2022-05-31 15:28:28'),
(121, '1', 'footer_right_text', 'Footer Right text', 'Texte de pied de page droit', 1, '2022-05-02 18:30:30', '2022-05-31 15:28:28'),
(122, '1', 'student_photo', 'Student Photo', 'Photo élève', 1, '2022-05-02 18:30:30', '2022-06-03 09:47:21'),
(123, '1', 'yes', 'Yes', 'Oui', 1, '2022-05-02 18:30:30', '2022-05-02 18:30:30'),
(124, '1', 'none', 'No', 'Non', 1, '2022-05-02 18:30:30', '2022-05-02 18:30:30'),
(125, '1', 'background_image', 'Background Image', 'Image de fond', 1, '2022-05-02 18:30:30', '2022-05-02 18:30:30'),
(126, '1', 'generate_certificate', 'Generate Certificate', 'Générer un certificat', 1, '2022-05-02 18:30:30', '2022-05-02 18:30:30'),
(127, '1', 'select_section', 'Select section', 'Sélectionnez une série', 1, '2022-05-02 18:30:30', '2022-06-03 09:47:21'),
(128, '1', 'generate', 'Generate', 'produire', 1, '2022-05-02 18:30:30', '2022-05-02 18:30:30'),
(129, '1', 'admission', 'Admission', 'Admission', 1, '2022-05-02 18:30:30', '2022-05-02 18:30:30'),
(130, '1', 'class_Sec', 'Class (Sec.)', 'Classe (Série.)', 1, '2022-05-02 18:30:30', '2022-06-03 09:47:21'),
(131, '1', 'father', 'Father', 'Père', 1, '2022-05-02 18:30:30', '2022-05-02 18:30:30'),
(132, '1', 'date_of_birth', 'Date Of Birth', 'Date de naissance', 1, '2022-05-02 18:30:30', '2022-05-02 18:30:30'),
(133, '1', 'gender', 'Gender', 'Le sexe', 1, '2022-05-02 18:30:30', '2022-05-02 18:30:30'),
(134, '1', 'mobile', 'Mobile', 'Mobile', 1, '2022-05-02 18:30:30', '2022-05-02 18:30:30'),
(135, '1', 'student_id_card', 'Student ID Card', 'Carde didentité d', 1, '2022-05-02 18:30:30', '2022-06-14 12:33:53'),
(136, '1', 'id_card_title', 'ID Card Title', 'Titre de la carte didentité', 1, '2022-05-02 18:30:30', '2022-05-02 18:30:30'),
(137, '1', 'number', 'Number', 'Nombre', 1, '2022-05-02 18:30:30', '2022-05-02 18:30:30'),
(138, '1', 'mother', 'Mother', 'Mère', 1, '2022-05-02 18:30:30', '2022-05-02 18:30:30'),
(139, '1', 'blood_group', 'Blood Group', 'Groupe sanguin', 1, '2022-05-02 18:30:30', '2022-05-02 18:30:30'),
(140, '1', 'id_card', 'ID Card', 'Carte didentité', 1, '2022-05-02 18:30:30', '2022-05-02 18:30:30'),
(141, '1', 'generate_id_card', 'Generate ID Card', 'Générer une carte didentité', 1, '2022-05-02 18:30:30', '2022-05-02 18:30:30'),
(142, '1', 'all', 'All', 'Tout', 1, '2022-05-02 18:30:30', '2022-05-02 18:30:30'),
(143, '1', 'relation_with_guardian', 'Relation with Guardian', 'Relation avec le tuteur', 1, '2022-05-02 18:30:30', '2022-05-31 15:28:27'),
(144, '1', 'admin', 'Admin', 'Admin', 1, '2022-05-02 18:30:30', '2022-05-02 18:30:30'),
(145, '1', 'follow_up', 'Follow up', 'Suivre', 1, '2022-05-02 18:30:30', '2022-05-02 18:30:30'),
(146, '1', 'follow_up_admission_query', 'Follow Up Admission Query', 'Suivi de la demande d', 1, '2022-05-02 18:30:30', '2022-06-03 09:47:20'),
(147, '1', 'response', 'Response', 'Réponse', 1, '2022-05-02 18:30:30', '2022-05-02 18:30:30'),
(148, '1', 'follow_up_list', 'Follow Up List', 'Liste de suivi', 1, '2022-05-02 18:30:30', '2022-05-02 18:30:30'),
(149, '1', 'query_by', 'Query By', 'Requête par', 1, '2022-05-02 18:30:30', '2022-05-02 18:30:30'),
(150, '1', 'delete_follow_up_query', 'Delete Follow up query', 'Supprimer la requête de suivi', 1, '2022-05-02 18:30:30', '2022-05-02 18:30:30'),
(151, '1', 'certificate_body_len', 'Max Character lenght 500', 'Longueur maximum 500 caractères', 1, '2022-05-02 18:30:30', '2022-05-02 18:30:30'),
(152, '1', 'class_section', 'Class (Sec.)', 'Classe (Série.)', 1, '2022-05-02 18:30:30', '2022-06-03 09:47:20'),
(153, '1', 'are_you_sure_to_remove', 'Are you sure to remove this item?', 'Êtes-vous sûr de vouloir supprimer cette donnée?', 1, '2022-05-02 18:30:30', '2022-05-31 15:28:27'),
(154, '1', 'admission_no', 'Admission No', 'No Admission', 1, '2022-05-02 18:30:30', '2022-05-31 15:28:27'),
(155, '1', 'no', 'No', 'No', 1, '2022-05-02 18:30:30', '2022-05-02 18:30:30'),
(156, '1', 'fill_marks', 'Fill Marks', 'Marques de remplissage', 1, '2022-05-02 18:30:30', '2022-05-31 15:28:27'),
(157, '1', 'main', 'Main', 'Principale', 1, '2022-05-02 18:30:30', '2022-05-31 15:28:27'),
(158, '1', 'duration', 'Duration', 'Durée', 1, '2022-05-02 18:30:30', '2022-05-31 15:28:27'),
(159, '1', 'approve', 'Approve', 'Approuver', 1, '2022-05-02 18:30:30', '2022-05-31 15:28:27'),
(160, '1', 'user_name', 'User Name', 'Nom d', 1, '2022-05-02 18:30:30', '2022-06-14 12:33:53'),
(161, '1', 'rate', 'Rate', 'Taux', 1, '2022-05-02 18:30:30', '2022-05-31 15:28:27'),
(162, '1', 'hourly_rate', 'Hourly Rate', 'taux horaire', 1, '2022-05-02 18:30:30', '2022-05-31 15:28:27'),
(163, '1', 'add_new_staff', 'Add New Staff', 'Ajouter nouveau personnel', 1, '2022-05-02 18:30:30', '2022-05-19 22:17:20'),
(164, '1', 'first_name', 'First Name', 'Prénom', 1, '2022-05-02 18:30:30', '2022-05-31 15:28:27'),
(165, '1', 'last_name', 'Last Name', 'Nom', 1, '2022-05-02 18:30:30', '2022-05-31 15:28:27'),
(166, '1', 'married', 'Married', 'marié(e)', 1, '2022-05-02 18:30:30', '2022-05-31 15:28:27'),
(167, '1', 'unmarried', 'Unmarried', 'Célibataire', 1, '2022-05-02 18:30:30', '2022-05-31 15:28:27'),
(168, '1', 'marital_status', 'Marital Status', 'status matrimonial', 1, '2022-05-02 18:30:30', '2022-05-31 15:28:27'),
(169, '1', 'driving_license', 'Driving License', 'permis de conduire', 1, '2022-05-02 18:30:30', '2022-05-31 15:28:27'),
(170, '1', 'contract', 'Contract', 'Contrat', 1, '2022-05-02 18:30:30', '2022-05-31 15:28:27'),
(171, '1', 'crop', 'Crop', 'Recadrer', 1, '2022-05-02 18:30:30', '2022-05-31 15:28:27'),
(172, '1', 'crop_image_and_upload', 'Crop Image And Upload', 'Recadrer l’image et télécharger', 1, '2022-05-02 18:30:30', '2022-05-31 15:28:27'),
(173, '1', 'staff_ID', 'Staff ID', 'Id personnel', 1, '2022-05-02 18:30:30', '2022-05-19 22:17:20'),
(174, '1', 'for_the_period_of', 'for the period of', 'Pour la période allant de', 1, '2022-05-02 18:30:30', '2022-05-19 22:17:20'),
(175, '1', 'evaluated_by', 'Evaluated By', 'Evaluée par', 1, '2022-05-02 18:30:30', '2022-05-19 22:17:20'),
(176, '1', 'summary', 'Summary', 'résumé', 1, '2022-05-02 18:30:30', '2022-05-31 15:28:27'),
(177, '1', 'good', 'Good', 'Bon', 1, '2022-05-02 18:30:30', '2022-05-31 15:28:27'),
(178, '1', 'not', 'Not', 'Not', 1, '2022-05-02 18:30:30', '2022-05-02 18:30:30'),
(179, '1', 'comments', 'Comments', 'Commentaires', 1, '2022-05-02 18:30:30', '2022-05-31 15:28:27'),
(180, '1', 'roll_number', 'Roll Number', 'Numéro Roll', 1, '2022-05-02 18:30:30', '2022-05-31 15:28:27'),
(181, '1', 'cash', 'Cash', 'Cash', 1, '2022-05-02 18:30:30', '2022-05-02 18:30:30'),
(182, '1', 'cheque', 'Cheque', 'Cheque', 1, '2022-05-02 18:30:30', '2022-05-02 18:30:30'),
(183, '1', 'dd', 'DD', 'DD', 1, '2022-05-02 18:30:30', '2022-05-02 18:30:30'),
(184, '1', 'please_give_the_all_information_properly', 'Please Give the All Information Properly. We can not Save any of Your Data. Your Safety is our First Priority', 'S’il vous plaît donner toutes les informations correctement. Nous ne pouvons enregistrer aucune de vos données. Votre sécurité est notre première priorité', 1, '2022-05-02 18:30:30', '2022-05-31 15:28:27'),
(185, '1', 'expiration', 'Expiration', 'Expiration', 1, '2022-05-02 18:30:30', '2022-05-02 18:30:30'),
(186, '1', 'cvc', 'CVC', 'CVC', 1, '2022-05-02 18:30:30', '2022-05-02 18:30:30'),
(187, '1', 'card_number', 'Card Number', 'Numero de carte', 1, '2022-05-02 18:30:30', '2022-05-31 15:28:27'),
(188, '1', 'name_on_card', 'Name on Card', 'Nom sur la  Carte', 1, '2022-05-02 18:30:30', '2022-05-19 22:17:19'),
(189, '1', 'vai_card', 'vai Card', 'vai Card', 1, '2022-05-02 18:30:30', '2022-05-02 18:30:30'),
(190, '1', 'pay_with', 'Pay with', 'Payer avec', 1, '2022-05-02 18:30:30', '2022-05-19 22:17:19'),
(191, '1', 'pay', 'Pay', 'Payer', 1, '2022-05-02 18:30:30', '2022-05-19 22:17:19'),
(192, '1', 'cvc', 'cvc', 'cvc', 1, '2022-05-02 18:30:30', '2022-05-02 18:30:30'),
(193, '1', 'fees', 'Fees', 'Frais', 1, '2022-05-02 18:30:30', '2022-05-19 22:17:19'),
(194, '1', 'all_fees', 'All Fees', 'Tous les frais', 1, '2022-05-02 18:30:30', '2022-05-19 22:17:19'),
(195, '1', 'online', 'Online', 'En ligne', 1, '2022-05-02 18:30:30', '2022-05-19 22:17:19'),
(196, '1', 'assign_exam_room', 'Assign Exam Room', 'Assigner la salle d', 1, '2022-05-02 18:30:30', '2022-06-14 12:33:53'),
(197, '1', 'level', 'Level', 'Niveau', 1, '2022-05-02 18:30:30', '2022-05-19 22:17:19'),
(198, '1', 'question_level', 'Question Level', 'Niveau de question', 1, '2022-05-02 18:30:30', '2022-05-31 15:28:27'),
(199, '1', 'update_online_exam_question', 'Update Online Exam Question', 'Mettre en ligne les questions d', 1, '2022-05-02 18:30:30', '2022-05-31 15:28:27'),
(200, '1', 'number_options', 'Number Options', 'Nombre d', 1, '2022-05-02 18:30:30', '2022-06-14 12:33:53'),
(201, '1', 'currect_answer', 'Currect Answer', 'réponse actuelle', 1, '2022-05-02 18:30:30', '2022-05-19 22:17:19'),
(202, '1', 'currect', 'Currect', 'Actuel', 1, '2022-05-02 18:30:30', '2022-05-19 22:17:19'),
(203, '1', 'exam_has_to_be_submitted_within', 'Exam Has To Be Submitted Within', 'L', 1, '2022-05-02 18:30:30', '2022-06-14 12:33:53'),
(204, '1', 'is_present', 'Is Present', 'Est présent', 1, '2022-05-02 18:30:30', '2022-05-19 22:17:19'),
(205, '1', 'roll_no', 'Roll No', 'Roll No', 1, '2022-05-02 18:30:30', '2022-05-02 18:30:30'),
(206, '1', 'button_url', 'Button Url', 'Bouton Url', 1, '2022-05-02 18:30:30', '2022-05-19 22:17:19'),
(207, '1', 'button_text', 'Button Text', 'Bouton Texte', 1, '2022-05-02 18:30:30', '2022-05-19 22:17:19'),
(208, '1', 'course', 'Course', 'Cours', 1, '2022-05-02 18:30:30', '2022-05-31 15:28:27'),
(209, '1', 'update_course_heading_section', 'Update Course Heading Section', 'Mettre à jour la section d’en-tête de coursn', 1, '2022-05-02 18:30:30', '2022-05-31 15:28:27'),
(210, '1', 'stats', 'Stats', 'Statistiques', 1, '2022-05-02 18:30:30', '2022-05-10 11:11:32'),
(211, '1', 'resources', 'Resources', 'Ressources', 1, '2022-05-02 18:30:30', '2022-05-10 11:11:32'),
(212, '1', 'prerequisites', 'Prerequisites', 'Préréquis', 1, '2022-05-02 18:30:30', '2022-05-10 11:11:32'),
(213, '1', 'outline', 'Outline', 'Contour', 1, '2022-05-02 18:30:30', '2022-05-31 15:28:27'),
(214, '1', 'overview', 'Overview', 'Apercu', 1, '2022-05-02 18:30:30', '2022-05-10 11:11:32'),
(215, '1', 'export_to_csv', 'Export to CSV', 'Export en CSV', 1, '2022-05-02 18:30:30', '2022-05-10 11:11:32'),
(216, '1', 'export_to_excel', 'Export to Excel', 'Exporter  en Excel', 1, '2022-05-02 18:30:30', '2022-05-10 11:11:32'),
(217, '1', 'export_to_pdf', 'Export to PDF', 'Exporter en PDF', 1, '2022-05-02 18:30:30', '2022-05-10 11:11:32'),
(218, '1', 'copy_table', 'Copy Table', 'Copier table', 1, '2022-05-02 18:30:30', '2022-05-10 11:11:32'),
(219, '1', 'visibility', 'Visibility', 'visibilité', 1, '2022-05-02 18:30:30', '2022-05-10 11:11:32'),
(220, '1', 'column_view', 'Column View', 'Vue colonne', 1, '2022-05-02 18:30:30', '2022-05-19 22:17:19'),
(221, '1', 'student_name', 'Student Name', 'Nom de l\'élève', 1, '2022-05-02 18:30:30', '2022-06-03 09:47:20'),
(222, '1', 'is_published_web_site', 'Is Published Web Site', 'est un site web publié', 1, '2022-05-02 18:30:30', '2022-05-19 22:17:19'),
(223, '10', 'home_work', 'HomeWork', 'Devoirs', 1, '2022-05-02 18:30:30', '2022-05-02 18:30:30'),
(224, '10', 'add_homework', 'Add Homework', 'Ajouter des devoirs', 1, '2022-05-02 18:30:30', '2022-05-02 18:30:30'),
(225, '10', 'homework_list', 'Homework List', 'Liste de devoirs', 1, '2022-05-02 18:30:30', '2022-05-02 18:30:30'),
(226, '10', 'evaluation_report', 'Homework Evaluation Report', 'Rapport dévaluation des devoirs', 1, '2022-05-02 18:30:30', '2022-05-02 18:30:30'),
(227, '10', 'submission', 'Submission', 'Soumission', 1, '2022-05-02 18:30:30', '2022-05-02 18:30:30'),
(228, '10', 'attach_file', 'Attach File', 'Pièce jointe', 1, '2022-05-02 18:30:30', '2022-05-02 18:30:30'),
(229, '10', 'evaluation', 'Evaluation', 'Évaluation', 1, '2022-05-02 18:30:30', '2022-05-02 18:30:30'),
(230, '10', 'created_by', 'Created By', 'Créé par', 1, '2022-05-02 18:30:30', '2022-05-02 18:30:30'),
(231, '10', 'complete', 'Complete', 'Achevée', 1, '2022-05-02 18:30:30', '2022-05-02 18:30:30'),
(232, '10', 'incomplete', 'Incomplete', 'Incomplet', 1, '2022-05-02 18:30:30', '2022-05-02 18:30:30'),
(233, '11', 'notice_board', 'Notice Board', 'Tableau daffichage', 1, '2022-05-02 18:30:30', '2022-05-02 18:30:30'),
(234, '11', 'for_whom', 'For Whom', 'De qui', 1, '2022-05-02 18:30:30', '2022-06-01 07:45:25'),
(235, '11', 'send_message', 'Send Message', 'Envoyer le message', 1, '2022-05-02 18:30:30', '2022-05-02 18:30:30'),
(236, '11', 'send_email', 'Send Email / Sms', 'Envoyer un email / sms', 1, '2022-05-02 18:30:30', '2022-05-02 18:30:30'),
(237, '11', 'email_sms_log', 'Email / Sms Log', 'Journal Email / Sms', 1, '2022-05-02 18:30:30', '2022-05-02 18:30:30'),
(238, '11', 'event', 'Event', 'un événement', 1, '2022-05-02 18:30:30', '2022-05-02 18:30:30'),
(239, '11', 'notices', 'Notices', 'Les avis', 1, '2022-05-02 18:30:30', '2022-05-02 18:30:30'),
(240, '11', 'notice', 'Notice', 'Remarque', 1, '2022-05-02 18:30:30', '2022-06-01 07:45:25'),
(241, '11', 'publish', 'Publish', 'Publier', 1, '2022-05-02 18:30:30', '2022-05-02 18:30:30'),
(242, '11', 'add_notice', 'Add Notice', 'Ajouter un avis', 1, '2022-05-02 18:30:30', '2022-05-02 18:30:30'),
(243, '11', 'add_a_notice', 'Add a Notice', 'Ajouter un avis', 1, '2022-05-02 18:30:30', '2022-05-02 18:30:30'),
(244, '11', 'publish_on', 'Publish On', 'Publier sur', 1, '2022-05-02 18:30:30', '2022-05-02 18:30:30'),
(245, '11', 'Send_Email_Sms', 'Send Email', 'Envoyer un email', 1, '2022-05-02 18:30:30', '2022-05-02 18:30:30'),
(246, '11', 'sms', 'SMS', 'SMS', 1, '2022-05-02 18:30:30', '2022-05-02 18:30:30'),
(247, '11', 'individual', 'Individual', 'Individuel', 1, '2022-05-02 18:30:30', '2022-05-02 18:30:30'),
(248, '11', 'select_all', 'Select All', 'Tout sélectionner', 1, '2022-05-02 18:30:30', '2022-05-02 18:30:30'),
(249, '11', 'For_Sending_Email', 'For Sending Email / Sms, It may take some seconds. So please take patience.', 'Pour l\'envoi d\'emails / sms, cela peut prendre quelques secondes. Alors sil vous plaît prenez patience.', 1, '2022-05-02 18:30:30', '2022-06-14 12:20:09'),
(250, '11', 'send', 'Send', 'Envoyer', 1, '2022-05-02 18:30:30', '2022-05-02 18:30:30'),
(251, '11', 'start_date', 'Start Date', 'Date de début', 1, '2022-05-02 18:30:30', '2022-05-02 18:30:30'),
(252, '11', 'to_date', 'To Date', 'À ce jour', 1, '2022-05-02 18:30:30', '2022-05-02 18:30:30'),
(253, '11', 'from_date', 'from Date', 'partir de la date', 1, '2022-05-02 18:30:30', '2022-05-02 18:30:30'),
(254, '11', 'details', 'Details', 'Détails', 1, '2022-05-02 18:30:30', '2022-05-02 18:30:30'),
(255, '11', 'notice_date', 'Notice Date', 'Date davis', 1, '2022-05-02 18:30:30', '2022-05-02 18:30:30'),
(256, '11', 'update_content', 'Update content', 'Mettre à jour le contenu', 1, '2022-05-02 18:30:30', '2022-05-02 18:30:30'),
(257, '11', 'communicate', 'Communicate', 'Communiquer', 1, '2022-05-02 18:30:30', '2022-05-02 18:30:30'),
(258, '12', 'library', 'Library', 'Bibliothèque', 1, '2022-05-02 18:30:30', '2022-05-02 18:30:30'),
(259, '12', 'add_book', 'Add Book', 'Ajouter un livre', 1, '2022-05-02 18:30:30', '2022-05-02 18:30:30'),
(260, '12', 'book_list', 'Book List', 'Liste de livres', 1, '2022-05-02 18:30:30', '2022-05-02 18:30:30'),
(261, '12', 'book_category', 'Book Categories', 'Catégories de livre', 1, '2022-05-02 18:30:30', '2022-05-02 18:30:30'),
(262, '12', 'library_member', 'Add Member', 'Ajouter un membre', 1, '2022-05-02 18:30:30', '2022-05-02 18:30:30'),
(263, '12', 'member_list', 'Issue/Return Book', 'Livre démission / retour', 1, '2022-05-02 18:30:30', '2022-05-02 18:30:30'),
(264, '12', 'all_issued_book', 'All Issued Book', 'Tous les livres publiés', 1, '2022-05-02 18:30:30', '2022-05-02 18:30:30'),
(265, '12', 'edit_book', 'Edit Book', 'Editer le livre', 1, '2022-05-02 18:30:30', '2022-05-02 18:30:30'),
(266, '12', 'book', 'Book', 'Livre', 1, '2022-05-02 18:30:30', '2022-05-02 18:30:30'),
(267, '12', 'book_title', 'Book Title', 'Titre du livre', 1, '2022-05-02 18:30:30', '2022-06-01 07:46:20'),
(268, '12', 'select_book_category', 'Select Book Category', 'Sélectionnez une catégorie de livre', 1, '2022-05-02 18:30:30', '2022-05-02 18:30:30'),
(269, '12', 'isbn', 'ISBN', 'ISBN', 1, '2022-05-02 18:30:30', '2022-05-02 18:30:30'),
(270, '12', 'publisher', 'Publisher', 'Éditeur', 1, '2022-05-02 18:30:30', '2022-05-02 18:30:30'),
(271, '12', 'author_name', 'Author Name', 'Nom de lauteur', 1, '2022-05-02 18:30:30', '2022-05-02 18:30:30'),
(272, '12', 'rack', 'Rack', 'Grille', 1, '2022-05-02 18:30:30', '2022-05-02 18:30:30'),
(273, '12', 'quantity', 'Quantity', 'Quantité', 1, '2022-05-02 18:30:30', '2022-05-02 18:30:30'),
(274, '12', 'book_price', 'Book Price', 'Prix ​​du livre', 1, '2022-05-02 18:30:30', '2022-05-02 18:30:30'),
(275, '12', 'price', 'Price', 'Prix', 1, '2022-05-02 18:30:30', '2022-05-02 18:30:30'),
(276, '12', 'category_name', 'Category Name', 'Nom de catégorie', 1, '2022-05-02 18:30:30', '2022-05-02 18:30:30'),
(277, '12', 'add_member', 'Add Member', 'Ajouter un membre', 1, '2022-05-02 18:30:30', '2022-05-02 18:30:30'),
(278, '12', 'member', 'Member', 'Membre', 1, '2022-05-02 18:30:31', '2022-05-02 18:30:31'),
(279, '12', 'member_type', 'Member Type', 'Type de membre', 1, '2022-05-02 18:30:31', '2022-05-02 18:30:31'),
(280, '12', 'select_student', 'Select Student', 'Sélectionnez étudiant', 1, '2022-05-02 18:30:31', '2022-05-02 18:30:31'),
(281, '12', 'issue_books', 'Issue Books', 'Livres de questions', 1, '2022-05-02 18:30:31', '2022-05-02 18:30:31'),
(282, '12', 'full_name', 'Full Name', 'Nom complet', 1, '2022-05-02 18:30:31', '2022-05-02 18:30:31'),
(283, '12', 'issue_return_Book', 'Issue / Return Book', 'Livre démission / retour', 1, '2022-05-02 18:30:31', '2022-05-02 18:30:31'),
(284, '12', 'issued_Book_List', 'Issued Book List', 'Liste des livres publiés', 1, '2022-05-02 18:30:31', '2022-05-02 18:30:31'),
(285, '12', 'select_Book_Name', 'Select Book Name', 'Sélectionnez le nom du livre', 1, '2022-05-02 18:30:31', '2022-05-02 18:30:31'),
(286, '12', 'search_By_Book_ID', 'Search By Book ID', 'Rechercher par numéro de livre', 1, '2022-05-02 18:30:31', '2022-05-02 18:30:31'),
(287, '12', 'author', 'Author', 'Auteur', 1, '2022-05-02 18:30:31', '2022-05-02 18:30:31'),
(288, '12', 'library_book_issue', 'Library Book Issue', 'Problème de livre de bibliothèque', 1, '2022-05-02 18:30:31', '2022-05-02 18:30:31'),
(289, '12', 'staff_name', 'Staff Name', 'Nom du personnel', 1, '2022-05-02 18:30:31', '2022-05-02 18:30:31'),
(290, '12', 'select_book', 'Select Book', 'Sélectionnez un livre', 1, '2022-05-02 18:30:31', '2022-05-02 18:30:31'),
(291, '12', 'issue_book', 'Issue Book', 'Numéro de livre', 1, '2022-05-02 18:30:31', '2022-05-02 18:30:31'),
(292, '12', 'issued_book', 'Issued Book', 'Livre publié', 1, '2022-05-02 18:30:31', '2022-05-02 18:30:31'),
(293, '12', 'book_number', 'Book Number', 'Numéro du livre', 1, '2022-05-02 18:30:31', '2022-05-02 18:30:31'),
(294, '12', 'status', 'Status', 'Statut', 1, '2022-05-02 18:30:31', '2022-05-02 18:30:31'),
(295, '12', 'issue_date', 'Issue Date', 'Date démission', 1, '2022-05-02 18:30:31', '2022-05-02 18:30:31'),
(296, '12', 'return_this_book', 'Are you sure to Return This Book ?', 'Êtes-vous sûr de retourner ce livre?', 1, '2022-05-02 18:30:31', '2022-05-02 18:30:31'),
(297, '12', 'return_date', 'Return Date', 'Date de retour', 1, '2022-05-02 18:30:31', '2022-05-02 18:30:31'),
(298, '13', 'inventory', 'Inventory', 'Inventaire', 1, '2022-05-02 18:30:31', '2022-05-02 18:30:31'),
(299, '13', 'item_category', 'Item Category', 'Catégorie darticle', 1, '2022-05-02 18:30:31', '2022-05-02 18:30:31'),
(300, '13', 'item_list', 'Item List', 'Liste des articles', 1, '2022-05-02 18:30:31', '2022-05-02 18:30:31'),
(301, '13', 'item_store', 'Item Store', 'Magasin darticles', 1, '2022-05-02 18:30:31', '2022-05-02 18:30:31'),
(302, '13', 'supplier', 'Supplier', 'Fournisseur', 1, '2022-05-02 18:30:31', '2022-05-02 18:30:31'),
(303, '13', 'item_receive', 'Item Receive', 'Reception d\'article', 1, '2022-05-02 18:30:31', '2022-06-01 07:52:58'),
(304, '13', 'item_receive_list', 'Item Receive List', 'Liste de réception d\'article', 1, '2022-05-02 18:30:31', '2022-06-01 07:52:58'),
(305, '13', 'item_sell', 'Item Sell', 'Article Vendre', 1, '2022-05-02 18:30:31', '2022-05-02 18:30:31'),
(306, '13', 'item_issue', 'Item Issue', 'Question darticle', 1, '2022-05-02 18:30:31', '2022-05-02 18:30:31'),
(307, '13', 'select_item_category', 'Select Item Category', 'Sélectionner une catégorie darticle', 1, '2022-05-02 18:30:31', '2022-05-02 18:30:31'),
(308, '13', 'selected', 'Selected', 'Choisi', 1, '2022-05-02 18:30:31', '2022-05-02 18:30:31'),
(309, '13', 'total_in_stock', 'Total in Stock', 'Total en stock', 1, '2022-05-02 18:30:31', '2022-05-02 18:30:31'),
(310, '13', 'store_name', 'Store Name', 'Nom du magasin', 1, '2022-05-02 18:30:31', '2022-05-02 18:30:31'),
(311, '13', 'store_number', 'Store Number', 'Numéro de magasin', 1, '2022-05-02 18:30:31', '2022-05-02 18:30:31'),
(312, '13', 'company', 'Company', 'Entreprise', 1, '2022-05-02 18:30:31', '2022-05-02 18:30:31'),
(313, '13', 'contact_person_name', 'Contact Person Name', 'nom du contact d\'une personne', 1, '2022-05-02 18:30:31', '2022-06-01 07:52:58'),
(314, '13', 'contact_person', 'Contact Person', 'Contact', 1, '2022-05-02 18:30:31', '2022-05-02 18:30:31'),
(315, '13', 'receive_details', 'Receive Details', 'Recevoir les détails', 1, '2022-05-02 18:30:31', '2022-05-02 18:30:31'),
(316, '13', 'select_supplier', 'Select Supplier', 'Sélectionner un fournisseur', 1, '2022-05-02 18:30:31', '2022-05-02 18:30:31'),
(317, '13', 'receive_date', 'Receive Date', 'date de réception', 1, '2022-05-02 18:30:31', '2022-05-02 18:30:31'),
(318, '13', 'product_name', 'Product Name', 'Nom du produit', 1, '2022-05-02 18:30:31', '2022-05-02 18:30:31'),
(319, '13', 'unit_price', 'Unit Price', 'Prix ​​unitaire', 1, '2022-05-02 18:30:31', '2022-05-02 18:30:31'),
(320, '13', 'sub_total', 'Sub Total', 'Total partiel', 1, '2022-05-02 18:30:31', '2022-05-02 18:30:31'),
(321, '13', 'full_paid', 'Full Paid', 'Entièrement payé', 1, '2022-05-02 18:30:31', '2022-06-01 07:52:58'),
(322, '13', 'total_paid', 'Total Paid', 'paiement  total', 1, '2022-05-02 18:30:31', '2022-06-01 07:52:58'),
(323, '13', 'total_due', 'Total Due', 'Total dû', 1, '2022-05-02 18:30:31', '2022-05-02 18:30:31'),
(324, '13', 'receive', 'Receive', 'Recevoir', 1, '2022-05-02 18:30:31', '2022-05-02 18:30:31'),
(325, '13', 'new', 'New', 'Nouveau', 1, '2022-05-02 18:30:31', '2022-05-02 18:30:31'),
(326, '13', 'total_quantity', 'Total Quantity', 'Quantité totale', 1, '2022-05-02 18:30:31', '2022-05-02 18:30:31'),
(327, '13', 'partial_paid', 'Partial Paid', 'Partiellement payé', 1, '2022-05-02 18:30:31', '2022-05-02 18:30:31'),
(328, '13', 'unpaid', 'Unpaid', 'Non payé', 1, '2022-05-02 18:30:31', '2022-05-02 18:30:31'),
(329, '13', 'refund', 'Refund', 'Rembourser', 1, '2022-05-02 18:30:31', '2022-05-02 18:30:31'),
(330, '13', 'buyer', 'Buyer', 'Acheteur', 1, '2022-05-02 18:30:31', '2022-05-02 18:30:31'),
(331, '13', 'issue_item', 'Issue Item', 'Point démission', 1, '2022-05-02 18:30:31', '2022-05-02 18:30:31'),
(332, '13', 'issue_a_item', 'Issue a Item', 'Émettre un article', 1, '2022-05-02 18:30:31', '2022-05-02 18:30:31'),
(333, '13', 'user_type', 'User Type', 'Type dutilisateur', 1, '2022-05-02 18:30:31', '2022-05-02 18:30:31'),
(334, '13', 'select_student_for_issue', 'Select Student For Issue', 'Sélectionner un élève pour lédition', 1, '2022-05-02 18:30:31', '2022-05-02 18:30:31'),
(335, '13', 'issue_to', 'Issue To', 'Issue to', 1, '2022-05-02 18:30:31', '2022-05-02 18:30:31'),
(336, '13', 'issued_item_list', 'Issued Item List', 'Liste darticles publiés', 1, '2022-05-02 18:30:31', '2022-05-02 18:30:31'),
(337, '13', 'issued', 'Issued', 'Publié', 1, '2022-05-02 18:30:31', '2022-05-02 18:30:31'),
(338, '13', 'returned', 'Returned', 'Revenui', 1, '2022-05-02 18:30:31', '2022-06-01 07:52:58'),
(339, '13', 'cancel_the_record', 'You are about to cancel the record. This cannot be undone. are you sure?', 'Vous êtes sur le point d\'annuler l\'enregistrement. Ça ne peut pas être annulé. êtes-vous sûr?', 1, '2022-05-02 18:30:31', '2022-06-01 07:52:58'),
(340, '13', 'return', 'Return', 'Revenir', 1, '2022-05-02 18:30:31', '2022-05-02 18:30:31'),
(341, '13', 'purchase_details', 'Purchase Details', 'Les détails dachat', 1, '2022-05-02 18:30:31', '2022-05-02 18:30:31'),
(342, '14', 'transport', 'Transport', 'Transport', 1, '2022-05-02 18:30:31', '2022-05-02 18:30:31'),
(343, '14', 'routes', 'Routes', 'Itinéraires', 1, '2022-05-02 18:30:31', '2022-05-02 18:30:31'),
(344, '14', 'vehicle', 'Vehicle', 'Véhicule', 1, '2022-05-02 18:30:31', '2022-05-02 18:30:31'),
(345, '14', 'assign_vehicle', 'Assign Vehicle', 'Assigner un véhicule', 1, '2022-05-02 18:30:31', '2022-05-02 18:30:31'),
(346, '14', 'student_transport_report', 'Student Transport Report', 'Rapport de transport élève', 1, '2022-05-02 18:30:31', '2022-05-02 18:30:31'),
(347, '14', 'transport_route', 'Transport Route', 'Itinéraire de  transport', 1, '2022-05-02 18:30:31', '2022-06-01 07:54:37'),
(348, '14', 'route', 'Route', 'Route', 1, '2022-05-02 18:30:31', '2022-05-02 18:30:31'),
(349, '14', 'route_title', 'Route Title', 'Titre de la route', 1, '2022-05-02 18:30:31', '2022-05-02 18:30:31'),
(350, '14', 'fare', 'Fare', 'Tarif', 1, '2022-05-02 18:30:31', '2022-05-02 18:30:31'),
(351, '14', 'model', 'Model', 'Modèle', 1, '2022-05-02 18:30:31', '2022-05-02 18:30:31'),
(352, '14', 'year_made', 'Year Made', 'Année de fabrication', 1, '2022-05-02 18:30:31', '2022-05-02 18:30:31'),
(353, '14', 'select_driver', 'Select Driver', 'Sélectionnez le pilote', 1, '2022-05-02 18:30:31', '2022-05-02 18:30:31'),
(354, '14', 'license', 'License', 'Licence', 1, '2022-05-02 18:30:31', '2022-05-02 18:30:31'),
(355, '14', 'select_route', 'Select Route', 'Sélectionnez un itinéraire', 1, '2022-05-02 18:30:31', '2022-05-02 18:30:31'),
(356, '14', 'select_vehicle', 'Select Vehicle', 'Choisir un véhicule', 1, '2022-05-02 18:30:31', '2022-05-02 18:30:31'),
(357, '14', 'father_phone', 'Fathers Phone', 'Téléphone du père', 1, '2022-05-02 18:30:31', '2022-05-02 18:30:31'),
(358, '14', 'mother_name', 'Mothers Name', 'Le nom de la mère', 1, '2022-05-02 18:30:31', '2022-05-02 18:30:31'),
(359, '14', 'mother_phone', 'Mothers Phone', 'Téléphone de la mère', 1, '2022-05-02 18:30:31', '2022-05-02 18:30:31'),
(360, '15', 'dormitory', 'Dormitory', 'Dortoir', 1, '2022-05-02 18:30:31', '2022-05-02 18:30:31'),
(361, '15', 'dormitory_rooms', 'Dormitory Rooms', 'Dortoirs', 1, '2022-05-02 18:30:31', '2022-05-02 18:30:31'),
(362, '15', 'room_type', 'Room Type', 'Type de chambre', 1, '2022-05-02 18:30:31', '2022-05-02 18:30:31'),
(363, '15', 'student_dormitory_report', 'Student Dormitory Report', 'Rapport du dortoir des étudiants', 1, '2022-05-02 18:30:31', '2022-05-02 18:30:31'),
(364, '15', 'number_of_bed', 'Number Of Bed', 'Nombre de lit', 1, '2022-05-02 18:30:31', '2022-05-02 18:30:31'),
(365, '15', 'cost_per_bed', 'Cost Per Bed', 'Coût par lit', 1, '2022-05-02 18:30:31', '2022-05-02 18:30:31'),
(366, '15', 'no_of_bed', 'NO. OF BEd', 'NON. DE LIT', 1, '2022-05-02 18:30:31', '2022-05-02 18:30:31'),
(367, '15', 'dormitory_list', 'Dormitory List', 'Liste des dortoirs', 1, '2022-05-02 18:30:31', '2022-05-02 18:30:31'),
(368, '15', 'boys', 'Boys', 'Garçons', 1, '2022-05-02 18:30:31', '2022-05-02 18:30:31'),
(369, '15', 'girls', 'Girls', 'Filles', 1, '2022-05-02 18:30:31', '2022-05-02 18:30:31'),
(370, '15', 'intake', 'Intake', 'Admission', 1, '2022-05-02 18:30:31', '2022-05-02 18:30:31'),
(371, '15', 'select_dormitory', 'Select Dormitory', 'Sélectionnez un dortoir', 1, '2022-05-02 18:30:31', '2022-05-02 18:30:31'),
(372, '15', 'guardian_phone', 'Guardians Phone', 'Téléphone du tuteur', 1, '2022-05-02 18:30:31', '2022-06-01 07:56:22'),
(373, '16', 'reports', 'Reports', 'Rapports', 1, '2022-05-02 18:30:31', '2022-05-02 18:30:31'),
(374, '16', 'student_report', 'Student Report', 'Rapport délèves', 1, '2022-05-02 18:30:31', '2022-06-14 12:14:50'),
(375, '16', 'guardian_report', 'Guardian Reports', 'Rapports de tuteurs', 1, '2022-05-02 18:30:31', '2022-06-01 08:05:11'),
(376, '16', 'student_history', 'Student History', 'Histoire des élèves', 1, '2022-05-02 18:30:31', '2022-06-14 12:14:50'),
(377, '16', 'student_login_report', 'Student Login Report', 'Rapport de connexion délève', 1, '2022-05-02 18:30:31', '2022-06-14 12:14:50'),
(378, '16', 'fees_statement', 'Fees Statement', 'Relevé des frais', 1, '2022-05-02 18:30:31', '2022-05-02 18:30:31'),
(379, '16', 'balance_fees_report', 'Balance Fees Report', 'Bilan des frais', 1, '2022-05-02 18:30:31', '2022-05-02 18:30:31'),
(380, '16', 'transaction_report', 'Transaction Report', 'Rapport de transaction', 1, '2022-05-02 18:30:31', '2022-05-02 18:30:31'),
(381, '16', 'class_report', 'Class Report', 'Rapport de classe', 1, '2022-05-02 18:30:31', '2022-05-02 18:30:31'),
(382, '16', 'merit_list_report', 'Merit List Report', 'Rapport de liste de mérite', 1, '2022-05-02 18:30:31', '2022-05-02 18:30:31'),
(383, '16', 'online_exam_report', 'Online Exam Report', 'Rapport d\'examen en ligne', 1, '2022-05-02 18:30:31', '2022-06-14 12:14:50'),
(384, '16', 'mark_sheet_report', 'Mark Sheet Report', 'Rapport de feuille de marque', 1, '2022-05-02 18:30:31', '2022-05-02 18:30:31'),
(385, '16', 'tabulation_sheet_report', 'Tabulation Sheet Report', 'Rapport de tabulation', 1, '2022-05-02 18:30:31', '2022-05-02 18:30:31'),
(386, '16', 'student_fine_report', 'Student Fine Report', 'Rapport de l\'élève bien', 1, '2022-05-02 18:30:31', '2022-06-14 12:30:09'),
(387, '16', 'user_log', 'User Log', 'Journal de lutilisateur', 1, '2022-05-02 18:30:31', '2022-05-02 18:30:31'),
(388, '16', 'exam_routine', 'Exam Routine', 'Routine dexamen', 1, '2022-05-02 18:30:31', '2022-05-02 18:30:31'),
(389, '16', 'select_type', 'Select Type', 'Sélectionner le genre', 1, '2022-05-02 18:30:31', '2022-05-02 18:30:31'),
(390, '16', 'select_gender', 'Select Gender', 'Sélectionnez le sexe', 1, '2022-05-02 18:30:31', '2022-05-02 18:30:31'),
(391, '16', 'nid', 'NID', 'NID', 1, '2022-05-02 18:30:31', '2022-05-02 18:30:31'),
(392, '16', 'Birth_Certificate_Number', 'Birth Certificate Number', 'Numéro Acte de Naissance', 1, '2022-05-02 18:30:31', '2022-05-02 18:30:31'),
(393, '16', 'select_admission_year', 'Select admission Year', 'Sélectionnez l', 1, '2022-05-02 18:30:31', '2022-06-01 08:05:10'),
(394, '16', 'start_end', 'Start-End', 'Début Fin', 1, '2022-05-02 18:30:31', '2022-05-02 18:30:31'),
(395, '16', 'student_login_info', 'Student Login Info', 'Informations des élèves des étudiants', 1, '2022-05-02 18:30:31', '2022-05-02 18:30:31'),
(396, '16', 'login_info_report', 'Login Info Report', 'Rapport d', 1, '2022-05-02 18:30:31', '2022-06-14 12:14:49'),
(397, '16', 'username', 'Username', 'Nom dutilisateur', 1, '2022-05-02 18:30:31', '2022-05-02 18:30:31'),
(398, '16', 'password', 'Password', 'Mot de passe', 1, '2022-05-02 18:30:31', '2022-05-02 18:30:31'),
(399, '16', 'parent', 'Parent', 'Parent', 1, '2022-05-02 18:30:31', '2022-05-02 18:30:31'),
(400, '16', 'reset', 'Reset', 'Réinitialiser', 1, '2022-05-02 18:30:31', '2022-05-02 18:30:31'),
(401, '16', 'due_date', 'Due Date', 'Date déchéance', 1, '2022-05-02 18:30:31', '2022-05-02 18:30:31'),
(402, '16', 'partial', 'Partial', 'Partiel', 1, '2022-05-02 18:30:31', '2022-05-02 18:30:31'),
(403, '16', 'discount_of', 'Discount of', 'Remise de', 1, '2022-05-02 18:30:31', '2022-05-02 18:30:31'),
(404, '16', 'fees_report', 'Fees Report', 'Rapport de frais', 1, '2022-05-02 18:30:31', '2022-05-02 18:30:31'),
(405, '16', 'paid_fees', 'Paid Fees', 'Frais payés', 1, '2022-05-02 18:30:31', '2022-05-02 18:30:31'),
(406, '16', 'fees_collection_details', 'Fees Collection Details', 'Frais Collection Détails', 1, '2022-05-02 18:30:31', '2022-05-02 18:30:31'),
(407, '16', 'number_of_student', 'Number Of Student', 'Nombre d\'élèves', 1, '2022-05-02 18:30:31', '2022-06-14 12:30:08'),
(408, '16', 'total_subjects_assigned', 'Total Subjects assigned', 'Nombre total de matières assignés', 1, '2022-05-02 18:30:31', '2022-06-14 12:30:08'),
(409, '16', 'collection', 'Collection', 'Collection', 1, '2022-05-02 18:30:31', '2022-05-02 18:30:31'),
(410, '16', 'due', 'Due', 'Dû', 1, '2022-05-02 18:30:31', '2022-05-02 18:30:31'),
(411, '16', 'fees_details', 'Fees Details', 'Détails des frais', 1, '2022-05-02 18:30:31', '2022-05-02 18:30:31'),
(412, '16', 'class_routine_report', 'Class Routine Report', 'Rapport de routine de classe', 1, '2022-05-02 18:30:31', '2022-05-02 18:30:31'),
(413, '16', 'report', 'Report', 'rapport', 1, '2022-05-02 18:30:31', '2022-05-02 18:30:31'),
(414, '16', 'teacher_class_routine_report', 'Teacher Class Routine Report', 'Rapport de routine de la classe pour enseignant', 1, '2022-05-02 18:30:31', '2022-06-01 08:04:05'),
(415, '16', 'select_teacher', 'Select Teacher', 'Sélectionnez un enseignant', 1, '2022-05-02 18:30:31', '2022-05-02 18:30:31'),
(416, '16', 'school_management_system', 'School Management System', 'Système de gestion scolaire', 1, '2022-05-02 18:30:31', '2022-05-02 18:30:31'),
(417, '16', 'united_states_of_america', 'House 25, Road 27, Block B, 54th Floor, USA', 'USA', 1, '2022-05-02 18:30:31', '2022-05-02 18:30:31'),
(418, '16', 'order_of_merit_list', 'Order of merit list', 'Ordre de mérite', 1, '2022-05-02 18:30:31', '2022-05-02 18:30:31'),
(419, '16', 'position', 'Position', 'Position', 1, '2022-05-02 18:30:31', '2022-05-02 18:30:31'),
(420, '16', 'average', 'Average', 'Moyenne', 1, '2022-05-02 18:30:31', '2022-05-02 18:30:31'),
(421, '16', 'obtained_marks', 'Obtained Marks', 'Note obtenues', 1, '2022-05-02 18:30:31', '2022-06-01 08:04:05'),
(422, '16', 'top_obtained_mark', 'Top Obtained Mark', 'Meilleure note obtenue', 1, '2022-05-02 18:30:31', '2022-06-01 08:04:05'),
(423, '16', 'student_terminal_report', 'Student Terminal Report', 'Rapport de fin détude', 1, '2022-05-02 18:30:31', '2022-05-02 18:30:31'),
(424, '16', 'progress_card_report', 'Progress card report', 'Rapport de carte de progression', 1, '2022-05-02 18:30:31', '2022-05-02 18:30:31'),
(425, '16', 'position_in_class', 'Position in Class', 'Position en classe', 1, '2022-05-02 18:30:31', '2022-05-02 18:30:31'),
(426, '16', 'class_test', 'Class Test', 'Test de classe', 1, '2022-05-02 18:30:31', '2022-05-02 18:30:31'),
(427, '16', 'remarks', 'Remarks', 'Remarques', 1, '2022-05-02 18:30:31', '2022-05-02 18:30:31'),
(428, '16', 'user', 'User', 'Utilisateur', 1, '2022-05-02 18:30:31', '2022-05-02 18:30:31'),
(429, '16', 'ip', 'IP', 'IP', 1, '2022-05-02 18:30:31', '2022-05-02 18:30:31'),
(430, '16', 'login_time', 'Login Time', 'Heure de connexion', 1, '2022-05-02 18:30:31', '2022-05-02 18:30:31'),
(431, '16', 'user_agent', 'User Agent', 'Agent utilisateur', 1, '2022-05-02 18:30:31', '2022-05-02 18:30:31'),
(432, '17', 'authentication', 'Authentication', 'Authentification', 1, '2022-05-02 18:30:31', '2022-05-02 18:30:31'),
(433, '17', 'token', 'Token', 'Jeton', 1, '2022-05-02 18:30:31', '2022-05-02 18:30:31'),
(434, '17', 'registered_phone_number', 'Registered Phone Number', 'Numéro de téléphone enregistré', 1, '2022-05-02 18:30:31', '2022-05-02 18:30:31'),
(435, '17', 'authentication_key_SId', 'Authentication Key SId', 'Clé dauthentification SId', 1, '2022-05-02 18:30:31', '2022-05-02 18:30:31'),
(436, '17', 'sender', 'Sender', 'Expéditeur', 1, '2022-05-02 18:30:31', '2022-05-02 18:30:31'),
(437, '17', 'country_code', 'Country Code', 'Code postal', 1, '2022-05-02 18:30:31', '2022-05-02 18:30:31'),
(438, '17', 'select_serial', 'Select serial', 'Sélectionnez série', 1, '2022-05-02 18:30:31', '2022-05-02 18:30:31'),
(439, '17', 'day_list', 'Day list', 'Liste de jour', 1, '2022-05-02 18:30:31', '2022-05-02 18:30:31'),
(440, '17', 'serial', 'Serial', 'En série', 1, '2022-05-02 18:30:31', '2022-05-02 18:30:31'),
(441, '17', 'upload_from_local_directory', 'Upload From Local Directory', 'Télécharger depuis le répertoire local', 1, '2022-05-02 18:30:31', '2022-05-02 18:30:31'),
(442, '17', 'file', 'File', 'Fichier', 1, '2022-05-02 18:30:31', '2022-05-02 18:30:31'),
(443, '17', 'cron_secret_key', 'Cron Secret Key', 'Cron Secret Key', 1, '2022-05-02 18:30:31', '2022-05-02 18:30:31'),
(444, '17', 'generate_key', 'Generate key', 'Générer une clé', 1, '2022-05-02 18:30:31', '2022-05-02 18:30:31'),
(445, '17', 'database_backup_list', 'Database Backup List', 'Liste de sauvegarde de la base de données', 1, '2022-05-02 18:30:31', '2022-05-02 18:30:31'),
(446, '17', 'backup', 'Backup', 'Sauvegarde', 1, '2022-05-02 18:30:31', '2022-05-02 18:30:31'),
(447, '17', 'created_date_time', 'Created Date Time', 'Date de création heure', 1, '2022-05-02 18:30:31', '2022-05-02 18:30:31'),
(448, '17', 'backup_files', 'Backup Files', 'Fichiers de sauvegarde', 1, '2022-05-02 18:30:31', '2022-05-02 18:30:31'),
(449, '17', 'weekend', 'Weekend', 'Weekend', 1, '2022-05-02 18:30:31', '2022-05-02 18:30:31'),
(450, '17', 'restore', 'Restore', 'Restaurer', 1, '2022-05-02 18:30:31', '2022-05-02 18:30:31'),
(451, '17', 'default', 'Default', 'Défaut', 1, '2022-05-02 18:30:31', '2022-05-02 18:30:31'),
(452, '17', 'module', 'Module', 'Module', 1, '2022-05-02 18:30:31', '2022-05-02 18:30:31'),
(453, '17', 'module_link', 'Module Link', 'Lien de modules', 1, '2022-05-02 18:30:31', '2022-06-01 08:25:05'),
(454, '17', 'permission', 'Permission', 'Autorisation', 1, '2022-05-02 18:30:31', '2022-05-02 18:30:31'),
(455, '17', 'site_title', 'Site Title', 'Titre du site', 1, '2022-05-02 18:30:31', '2022-05-02 18:30:31'),
(456, '17', 'select_session', 'Select Academic Year', 'Sélectionnez une année académique', 1, '2022-05-02 18:30:31', '2022-06-01 08:25:05'),
(457, '17', 'select_date_format', 'Select Date Format', 'Sélectionnez le format de date', 1, '2022-05-02 18:30:31', '2022-05-02 18:30:31'),
(458, '17', 'select_currency', 'Select Currency', 'Sélectionnez la devise', 1, '2022-05-02 18:30:31', '2022-05-02 18:30:31');
INSERT INTO `sm_language_phrases` (`id`, `modules`, `default_phrases`, `en`, `fr`, `active_status`, `created_at`, `updated_at`) VALUES
(459, '17', 'currency_symbol', 'Currency Symbol', 'Symbole de la monnaie', 1, '2022-05-02 18:30:31', '2022-05-02 18:30:31'),
(460, '17', 'school_address', 'School Address', 'Adresse de l\'établissement', 1, '2022-05-02 18:30:31', '2022-06-01 08:25:05'),
(461, '17', 'update_language', 'Update Language', 'Mise à jour de la langue', 1, '2022-05-02 18:30:31', '2022-05-02 18:30:31'),
(462, '17', 'language_setup', 'Language Setup', 'Configuration de la langue', 1, '2022-05-02 18:30:31', '2022-05-02 18:30:31'),
(463, '17', 'starting', 'Starting', 'Départ', 1, '2022-05-02 18:30:31', '2022-06-01 08:25:05'),
(464, '17', 'term', 'Term', 'trimestre', 1, '2022-05-02 18:30:31', '2022-06-01 08:25:05'),
(465, '17', 'optional_subject', 'Optional Subject', 'Sujets facultatifs', 1, '2022-05-02 18:30:32', '2022-06-01 08:25:05'),
(466, '17', 'manage_currency', 'Manage Currency', 'gérer la devise', 1, '2022-05-02 18:30:32', '2022-06-01 08:25:05'),
(467, '17', 'send_through', 'Send Through', 'Envoyé par', 1, '2022-05-02 18:30:32', '2022-06-01 08:25:05'),
(468, '17', 'custom_progress_card_report', 'Custom Progress Card Report', 'Rapport de carte de progression personnalisé', 1, '2022-05-02 18:30:32', '2022-06-01 08:25:05'),
(469, '17', 'due_amount', 'Due Amount', 'Montant du', 1, '2022-05-02 18:30:32', '2022-06-01 08:25:05'),
(470, '17', 'paid_amount', 'Paid Amount', 'Montant payé', 1, '2022-05-02 18:30:32', '2022-06-01 08:25:05'),
(471, '17', 'expaire_date', 'Expaire Date', 'Date d\'expiration', 1, '2022-05-02 18:30:32', '2022-06-01 08:25:05'),
(472, '17', 'purchase_date', 'Purchase Date', 'Date d\'achat', 1, '2022-05-02 18:30:32', '2022-06-01 08:25:05'),
(473, '17', 'package', 'Package', 'Package', 1, '2022-05-02 18:30:32', '2022-05-02 18:30:32'),
(474, '17', 'sl', 'SL', 'SL', 1, '2022-05-02 18:30:32', '2022-05-02 18:30:32'),
(475, '17', 'purchase_list', 'Purchase List', 'Liste d\'achat', 1, '2022-05-02 18:30:32', '2022-06-01 08:25:05'),
(476, '17', 'infix_clasified', 'Infix Clasified', 'Infix Clasified', 1, '2022-05-02 18:30:32', '2022-05-02 18:30:32'),
(477, '17', 'infix_edu', 'Infix Edu', 'ENSPD', 1, '2022-05-02 18:30:32', '2022-06-01 08:25:05'),
(478, '17', 'select_package', 'Select Package', 'Selectionner  Package', 1, '2022-05-02 18:30:32', '2022-06-01 08:25:04'),
(479, '17', 'thanks', 'Thanks', 'Merci', 1, '2022-05-02 18:30:32', '2022-06-01 08:25:04'),
(480, '17', 'team', 'Team', 'Equipe', 1, '2022-05-02 18:30:32', '2022-06-01 08:25:04'),
(481, '17', 'select', 'Select', 'Selectionner', 1, '2022-05-02 18:30:32', '2022-06-01 08:25:04'),
(482, '17', 'mark', 'Mark', 'note', 1, '2022-05-02 18:30:32', '2022-06-01 08:25:04'),
(483, '17', 'fees_groups_details', 'Fees groups Details', 'Détails de groupe de frais', 1, '2022-05-02 18:30:32', '2022-06-01 08:25:04'),
(484, '17', 'staff', 'Staff', 'Personnel', 1, '2022-05-02 18:30:32', '2022-06-01 08:25:04'),
(485, '17', 'manage-currency', 'Manage Currency', 'Gestion des devises', 1, '2022-05-02 18:30:32', '2022-06-01 08:25:04'),
(486, '17', 'wise', 'Wise', 'Wise', 1, '2022-05-02 18:30:32', '2022-05-02 18:30:32'),
(487, '17', 'system_settings', 'System Settings', 'Les paramètres du système', 1, '2022-05-02 18:30:32', '2022-05-02 18:30:32'),
(488, '17', 'general_settings', 'General Settings', 'réglages généraux', 1, '2022-05-02 18:30:32', '2022-05-02 18:30:32'),
(489, '17', 'email_settings', 'Email Settings', 'Paramètres de messagerie', 1, '2022-05-02 18:30:32', '2022-05-02 18:30:32'),
(490, '17', 'payment_method_settings', 'Payment Method Settings', 'Méthode de paiement', 1, '2022-05-02 18:30:32', '2022-05-02 18:30:32'),
(491, '17', 'role', 'Role', 'Rôle', 1, '2022-05-02 18:30:32', '2022-05-02 18:30:32'),
(492, '17', 'base_group', 'Base Group', 'Groupe de base', 1, '2022-05-02 18:30:32', '2022-05-02 18:30:32'),
(493, '17', 'base_setup', 'Base Setup', 'Configuration de base', 1, '2022-05-02 18:30:32', '2022-05-02 18:30:32'),
(494, '17', 'academic_year', 'Academic Year', 'Année académique', 1, '2022-05-02 18:30:32', '2022-05-02 18:30:32'),
(495, '17', 'session', 'Academic Year', 'Année académique', 1, '2022-05-02 18:30:32', '2022-06-01 08:25:04'),
(496, '17', 'holiday', 'Holiday', 'Vacances', 1, '2022-05-02 18:30:32', '2022-05-02 18:30:32'),
(497, '17', 'sms_settings', 'Sms Settings', 'Paramètres Sms', 1, '2022-05-02 18:30:32', '2022-05-02 18:30:32'),
(498, '17', 'language_settings', 'Language Settings', 'Paramètres de langue', 1, '2022-05-02 18:30:32', '2022-05-02 18:30:32'),
(499, '17', 'backup_settings', 'Backup', 'Sauvegarde', 1, '2022-05-02 18:30:32', '2022-05-02 18:30:32'),
(500, '17', 'select_language', 'Select Language', 'Choisir la langue', 1, '2022-05-02 18:30:32', '2022-05-02 18:30:32'),
(501, '17', 'native', 'Native', 'Originaire de', 1, '2022-05-02 18:30:32', '2022-05-02 18:30:32'),
(502, '17', 'universal', 'Universal', 'Universel', 1, '2022-05-02 18:30:32', '2022-05-02 18:30:32'),
(503, '17', 'make_default', 'Make Default', 'Faire défaut', 1, '2022-05-02 18:30:32', '2022-05-02 18:30:32'),
(504, '17', 'setup', 'Setup', 'Installer', 1, '2022-05-02 18:30:32', '2022-05-02 18:30:32'),
(505, '17', 'change_logo', 'Change Logo', 'Changer le logo', 1, '2022-05-02 18:30:32', '2022-05-02 18:30:32'),
(506, '17', 'change_fav', 'Change Favicon', 'Changer de favicon', 1, '2022-05-02 18:30:32', '2022-05-02 18:30:32'),
(507, '17', 'upload', 'Upload', 'Télécharger', 1, '2022-05-02 18:30:32', '2022-05-02 18:30:32'),
(508, '17', 'school_name', 'School Name', 'Nom de l\'établissement', 1, '2022-05-02 18:30:32', '2022-06-01 08:25:04'),
(509, '17', 'school_code', 'School Code', 'Code détablissement', 1, '2022-05-02 18:30:32', '2022-05-02 18:30:32'),
(510, '17', 'language', 'Language', 'La langue', 1, '2022-05-02 18:30:32', '2022-05-02 18:30:32'),
(511, '17', 'date_format', 'Date Format', 'Format de date', 1, '2022-05-02 18:30:32', '2022-05-02 18:30:32'),
(512, '17', 'currency', 'Currency', 'Devise', 1, '2022-05-02 18:30:32', '2022-05-02 18:30:32'),
(513, '17', 'symbol', 'Symbol', 'symbole', 1, '2022-05-02 18:30:32', '2022-05-02 18:30:32'),
(514, '17', 'sand', 'Sand', 'Le sable', 1, '2022-05-02 18:30:32', '2022-05-02 18:30:32'),
(515, '17', 'smtp', 'SMTP', 'SMTP', 1, '2022-05-02 18:30:32', '2022-05-02 18:30:32'),
(516, '17', 'from_name', 'From Name', 'De nom', 1, '2022-05-02 18:30:32', '2022-05-02 18:30:32'),
(517, '17', 'from_email', 'From Email', 'De lemail', 1, '2022-05-02 18:30:32', '2022-05-02 18:30:32'),
(518, '17', 'server', 'Server', 'Serveur', 1, '2022-05-02 18:30:32', '2022-05-02 18:30:32'),
(519, '17', 'port', 'Port', 'Port', 1, '2022-05-02 18:30:32', '2022-05-02 18:30:32'),
(520, '17', 'security', 'Security', 'Sécurité', 1, '2022-05-02 18:30:32', '2022-05-02 18:30:32'),
(521, '17', 'select_a_payment_gateway', 'Select a Payment Gateway', 'Sélectionnez une passerelle de paiement', 1, '2022-05-02 18:30:32', '2022-05-02 18:30:32'),
(522, '17', 'checked', 'Checked', 'Vérifié', 1, '2022-05-02 18:30:32', '2022-05-02 18:30:32'),
(523, '17', 'paypal', 'Paypal', 'Pay Pal', 1, '2022-05-02 18:30:32', '2022-05-02 18:30:32'),
(524, '17', 'stripe', 'Stripe', 'Bande', 1, '2022-05-02 18:30:32', '2022-05-02 18:30:32'),
(525, '17', 'payUMoney', 'PayUMoney', 'PayUMoney', 1, '2022-05-02 18:30:32', '2022-05-02 18:30:32'),
(526, '17', 'signature', 'Signature', 'Signature', 1, '2022-05-02 18:30:32', '2022-05-02 18:30:32'),
(527, '17', 'client_id', 'Client ID', 'identité du client', 1, '2022-05-02 18:30:32', '2022-05-02 18:30:32'),
(528, '17', 'secret_id', 'Secret ID', 'ID secret', 1, '2022-05-02 18:30:32', '2022-05-02 18:30:32'),
(529, '17', 'stripe_api_secret_key', 'Stripe API Secret Key', 'Clé secrète de lAPI de bande', 1, '2022-05-02 18:30:32', '2022-05-02 18:30:32'),
(530, '17', 'stripe_publisher_key', 'Stripe Publishable Key', 'Raie Clé Publiable', 1, '2022-05-02 18:30:32', '2022-05-02 18:30:32'),
(531, '17', 'pay_u_money_key', 'PayU Money Key', 'Clé PayU Money', 1, '2022-05-02 18:30:32', '2022-05-02 18:30:32'),
(532, '17', 'pay_u_money_salt', 'PayU Money Salt', 'PayU Money Salt', 1, '2022-05-02 18:30:32', '2022-05-02 18:30:32'),
(533, '17', 'role_permission', 'Role Permission', 'Permission de rôle', 1, '2022-05-02 18:30:32', '2022-05-02 18:30:32'),
(534, '17', 'assign_permission', 'Assign Permission', 'Attribuer une autorisation', 1, '2022-05-02 18:30:32', '2022-05-02 18:30:32'),
(535, '17', 'label', 'Label', 'Étiquette', 1, '2022-05-02 18:30:32', '2022-05-02 18:30:32'),
(536, '17', 'base', 'Base', 'Base', 1, '2022-05-02 18:30:32', '2022-05-02 18:30:32'),
(537, '17', 'year_title', 'Year Title', 'Titre de lannée', 1, '2022-05-02 18:30:32', '2022-05-02 18:30:32'),
(538, '17', 'starting_date', 'Starting Date', 'Date de début', 1, '2022-05-02 18:30:32', '2022-05-02 18:30:32'),
(539, '17', 'ending_date', 'Ending Date', 'Fin', 1, '2022-05-02 18:30:32', '2022-05-02 18:30:32'),
(540, '17', 'select_a_SMS_service', 'Select a SMS Service', 'Sélectionnez un service SMS', 1, '2022-05-02 18:30:32', '2022-05-02 18:30:32'),
(541, '17', 'clickatell', 'Clickatell', 'Clickatell', 1, '2022-05-02 18:30:32', '2022-05-02 18:30:32'),
(542, '17', 'settings', 'Settings', 'Réglages', 1, '2022-05-02 18:30:32', '2022-05-02 18:30:32'),
(543, '17', 'twilio', 'Twilio', 'Twilio', 1, '2022-05-02 18:30:32', '2022-05-02 18:30:32'),
(544, '17', 'api', 'API', 'API', 1, '2022-05-02 18:30:32', '2022-05-02 18:30:32'),
(545, '17', 'sid', 'SID', 'SID', 1, '2022-05-02 18:30:32', '2022-05-02 18:30:32'),
(546, '18', 'front_end_settings', 'Front End Settings', 'Paramètres frontaux', 1, '2022-05-02 18:30:32', '2022-05-02 18:30:32'),
(547, '18', 'add_news', 'Add News', 'Ajouter des nouvelles', 1, '2022-05-02 18:30:32', '2022-05-02 18:30:32'),
(548, '18', 'news', 'News', 'Nouvelles', 1, '2022-05-02 18:30:32', '2022-05-02 18:30:32'),
(549, '18', 'news_list', 'News List', 'Liste de nouvelles', 1, '2022-05-02 18:30:32', '2022-05-02 18:30:32'),
(550, '18', 'image', 'Image', 'Image', 1, '2022-05-02 18:30:32', '2022-05-02 18:30:32'),
(551, '18', 'publication_date', 'Publication Date', 'Date de publication', 1, '2022-05-02 18:30:32', '2022-05-02 18:30:32'),
(552, '18', 'add_testimonial', 'Add Testimonial', 'Ajouter un témoignage', 1, '2022-05-02 18:30:32', '2022-05-02 18:30:32'),
(553, '18', 'testimonial', 'Testimonial', 'Témoignage', 1, '2022-05-02 18:30:32', '2022-05-02 18:30:32'),
(554, '18', 'institution_name', 'Institution Name', 'nom de linstitution', 1, '2022-05-02 18:30:32', '2022-05-02 18:30:32'),
(555, '18', 'location', 'Location', 'Emplacement', 1, '2022-05-02 18:30:32', '2022-05-02 18:30:32'),
(556, '18', 'front_settings', 'Front Settings', 'Paramètres avant', 1, '2022-05-02 18:30:32', '2022-05-02 18:30:32'),
(557, '19', 'my_profile', 'My Profile', 'Mon profil', 1, '2022-05-02 18:30:32', '2022-05-02 18:30:32'),
(558, '19', 'fees', 'Fees', 'Honoraires', 1, '2022-05-02 18:30:32', '2022-05-02 18:30:32'),
(559, '19', 'pay_fees', 'Pay Fees', 'Payer les frais', 1, '2022-05-02 18:30:32', '2022-05-02 18:30:32'),
(560, '19', 'download_center', 'Download Center', 'centre de téléchargement', 1, '2022-05-02 18:30:32', '2022-05-02 18:30:32'),
(561, '19', 'student_study_material', 'Study Materials', 'Matériel détudes', 1, '2022-05-02 18:30:32', '2022-05-02 18:30:32'),
(562, '19', 'examinations', 'Examinations', 'Examens', 1, '2022-05-02 18:30:32', '2022-05-02 18:30:32'),
(563, '19', 'result', 'result', 'résultat', 1, '2022-05-02 18:30:32', '2022-05-02 18:30:32'),
(564, '19', 'active_exams', 'Active Exams', 'Examens actifs', 1, '2022-05-02 18:30:32', '2022-05-02 18:30:32'),
(565, '19', 'book_issue', 'Book issued', 'Livre publié', 1, '2022-05-02 18:30:32', '2022-05-02 18:30:32'),
(566, '19', 'my_children', 'My Children', 'Mes enfants', 1, '2022-05-02 18:30:32', '2022-05-02 18:30:32'),
(567, '19', 'exam_result', 'Exam Result', 'Résultat déxamen', 1, '2022-05-02 18:30:32', '2022-05-02 18:30:32'),
(568, '19', 'teacher_list', 'Teacher list', 'Liste des enseignants', 1, '2022-05-02 18:30:32', '2022-05-02 18:30:32'),
(569, '19', 'inserted_message', 'Operation Successfully', 'Inséré avec succès', 1, '2022-05-02 18:30:32', '2022-05-02 18:30:32'),
(570, '19', 'updated_message', 'Updated Successfully', 'Mis à jour avec succés', 1, '2022-05-02 18:30:32', '2022-05-02 18:30:32'),
(571, '19', 'deleted_message', 'Deleted Successfully', 'Supprimé avec succès', 1, '2022-05-02 18:30:32', '2022-05-02 18:30:32'),
(572, '19', 'inactive_message', 'Inactivated Successfully', 'Inactivé avec succès', 1, '2022-05-02 18:30:32', '2022-05-02 18:30:32'),
(573, '19', 'active_message', 'Activated Successfully', 'Activé avec succès', 1, '2022-05-02 18:30:32', '2022-05-02 18:30:32'),
(574, '19', 'backup_message', 'Backup Successfully', 'Sauvegarde réussie', 1, '2022-05-02 18:30:32', '2022-05-02 18:30:32'),
(575, '19', 'restore_message', 'Restore Successfully', 'Restaurer avec succès', 1, '2022-05-02 18:30:32', '2022-05-02 18:30:32'),
(576, '19', 'not_found_message', 'Ops! Data not Found', 'Ops! Données non trouvées', 1, '2022-05-02 18:30:32', '2022-05-02 18:30:32'),
(577, '19', 'error_message', 'Ops! Something went wrong, please try again', 'Ops! Une erreur sest produite. Veuillez réessayer', 1, '2022-05-02 18:30:32', '2022-05-02 18:30:32'),
(578, '19', 'front_cms', 'Front cms', 'Cms avant', 1, '2022-05-02 18:30:32', '2022-05-02 18:30:32'),
(579, '19', 'update_system', 'Update System', 'Système de mise à jour', 1, '2022-05-02 18:30:32', '2022-05-02 18:30:32'),
(580, '19', 'System_Status', 'System Status', 'État du système', 1, '2022-05-02 18:30:32', '2022-05-02 18:30:32'),
(581, '19', 'Upgrade', 'Upgrade', 'Améliorer', 1, '2022-05-02 18:30:32', '2022-05-02 18:30:32'),
(582, '19', 'Version', 'Version', 'Version', 1, '2022-05-02 18:30:32', '2022-05-02 18:30:32'),
(583, '19', 'Existing', 'Existing', 'Existant', 1, '2022-05-02 18:30:32', '2022-05-02 18:30:32'),
(584, '19', 'Available', 'Available', 'Disponible', 1, '2022-05-02 18:30:32', '2022-05-02 18:30:32'),
(585, '19', 'Alert', 'Alert', 'Alerte', 1, '2022-05-02 18:30:32', '2022-05-02 18:30:32'),
(586, '19', 'New_Features', 'New Features', 'Nouvelles fonctionnalités', 1, '2022-05-02 18:30:32', '2022-05-02 18:30:32'),
(587, '19', 'copyright_text', 'Copyright Text', 'Texte de copyright', 1, '2022-05-02 18:30:32', '2022-05-02 18:30:32'),
(588, '2', 'grade_point', 'Grade Point', 'point de note', 1, '2022-05-02 18:30:32', '2022-05-31 22:23:48'),
(589, '2', 'without_additional', 'Without Additional', 'sans suppléments', 1, '2022-05-02 18:30:32', '2022-05-31 22:23:48'),
(590, '2', 'additional_subject', 'Additional Subject', 'Sujets supplémentaires', 1, '2022-05-02 18:30:32', '2022-05-31 22:23:48'),
(591, '2', 'gpa_above', 'GPA above', 'GPA above', 1, '2022-05-02 18:30:32', '2022-05-02 18:30:32'),
(592, '2', 'date_of_publication_of_result', 'Date of Publication of Result', 'Date de publication des résultats', 1, '2022-05-02 18:30:32', '2022-05-19 23:07:56'),
(593, '2', 'exam_controller', 'Exam Controller', 'Controleur d', 1, '2022-05-02 18:30:32', '2022-06-03 09:32:43'),
(594, '2', 'class_report_for_class', 'Class Report for class', 'Rapport de classe par classe', 1, '2022-05-02 18:30:32', '2022-05-31 22:23:48'),
(595, '2', 'history', 'History', 'Historique', 1, '2022-05-02 18:30:32', '2022-05-19 23:07:56'),
(596, '2', 'change_password', 'Change Password', 'Changer mot de passse', 1, '2022-05-02 18:30:32', '2022-05-19 23:07:56'),
(597, '2', 'course_heading', 'Course Heading', 'Titre des cours', 1, '2022-05-02 18:30:32', '2022-05-31 22:23:48'),
(598, '2', 'news_heading', 'News Heading', 'Titre des nouvelles', 1, '2022-05-02 18:30:32', '2022-05-31 22:23:48'),
(599, '2', 'subject_attendance_report', 'Subject Attendance Report', 'Rapport de présence par sujet', 1, '2022-05-02 18:30:32', '2022-05-19 23:07:56'),
(600, '2', 'ltl', 'LTL', 'LTL', 1, '2022-05-02 18:30:32', '2022-05-02 18:30:32'),
(601, '2', 'rtl', 'RTL', 'RTL', 1, '2022-05-02 18:30:32', '2022-05-02 18:30:32'),
(602, '2', 'alignment', 'Alignment', 'Alignmeent', 1, '2022-05-02 18:30:32', '2022-05-31 22:23:48'),
(603, '2', 'invoice', 'Invoice', 'Facture d', 1, '2022-05-02 18:30:32', '2022-06-03 09:32:43'),
(604, '2', 'new_client_information', 'New Client Information', 'Nouvelles informations clients', 1, '2022-05-02 18:30:32', '2022-05-31 22:23:48'),
(605, '2', 'made', 'Made', 'fait', 1, '2022-05-02 18:30:32', '2022-05-31 22:23:48'),
(606, '2', 'exam', 'Exam', 'Examen', 1, '2022-05-02 18:30:32', '2022-05-19 23:07:56'),
(607, '2', 'phone_number', 'Phone Number', 'Numéro de téléphone', 1, '2022-05-02 18:30:32', '2022-05-19 23:07:56'),
(608, '2', 'transport_and_dormitory_details', 'Transport and Dormitory Details', 'Détails du transport et dortoir', 1, '2022-05-02 18:30:32', '2022-05-19 23:07:56'),
(609, '2', 'driver_phone_number', 'Driver Phone Number', 'Numero télephone chauffeur', 1, '2022-05-02 18:30:32', '2022-05-19 23:07:56'),
(610, '2', 'national_identification_number', 'National Identification Number', 'Numéro d', 1, '2022-05-02 18:30:32', '2022-06-03 09:32:43'),
(611, '2', 'local_identification_number', 'Local Identification Number', 'Numéro d', 1, '2022-05-02 18:30:32', '2022-06-03 09:32:42'),
(612, '2', 'UBC56987', 'UBC56987', 'UBC56987', 1, '2022-05-02 18:30:32', '2022-05-02 18:30:32'),
(613, '2', 'incompleted', 'Incompleted', 'Incomplet', 1, '2022-05-02 18:30:32', '2022-05-19 23:07:56'),
(614, '2', 'room_name', 'Room Name', 'Nom de la salle', 1, '2022-05-02 18:30:32', '2022-05-31 22:23:48'),
(615, '2', 'class_period', 'Class Period', 'Période de classe', 1, '2022-05-02 18:30:32', '2022-05-31 22:23:48'),
(616, '2', 'paystack', 'Paystack', 'Paystack', 1, '2022-05-02 18:30:32', '2022-05-02 18:30:32'),
(617, '2', 'update_news_heading_section', 'Update News Heading Section', 'Mettre à jour la rubrique des actualités', 1, '2022-05-02 18:30:32', '2022-05-31 22:23:48'),
(618, '2', 'membership', 'Membership', 'Adhésion', 1, '2022-05-02 18:30:32', '2022-05-31 22:23:48'),
(619, '2', 'purchase_receipt', 'Purchase Receipt', 'Recu', 1, '2022-05-02 18:30:32', '2022-05-31 22:23:48'),
(620, '2', 'bill_to', 'Bill To', 'Facturer', 1, '2022-05-02 18:30:32', '2022-05-31 22:23:48'),
(621, '2', 'sell_receipt', 'Sell Receipt', 'Recu de vente', 1, '2022-05-02 18:30:32', '2022-05-31 22:23:48'),
(622, '2', 'sale_to', 'Sale To', 'Vente à', 1, '2022-05-02 18:30:32', '2022-05-31 22:23:48'),
(623, '2', 'sell_date', 'Sell Date', 'Date de vente', 1, '2022-05-02 18:30:32', '2022-05-31 22:23:48'),
(624, '2', 'item_sale', 'Item Sale', 'Vente d', 1, '2022-05-02 18:30:32', '2022-06-03 09:32:42'),
(625, '2', 'sell_price', 'Sell Price', 'Prix de vente', 1, '2022-05-02 18:30:32', '2022-05-31 22:23:48'),
(626, '2', 'contarct_type', 'Contarct Type', 'Type contrat', 1, '2022-05-02 18:30:32', '2022-05-31 22:23:48'),
(627, '2', 'work_experience', 'Work Experience', 'Expérience professionnelle', 1, '2022-05-02 18:30:32', '2022-05-31 22:23:48'),
(628, '2', 'mode_of_payment', 'Mode of Payment', 'Mode de paiement', 1, '2022-05-02 18:30:32', '2022-05-19 23:07:56'),
(629, '2', 'no_payroll_data', 'No Payroll Data', 'No donnée de paie', 1, '2022-05-02 18:30:32', '2022-05-31 22:23:48'),
(630, '2', 'not_leaves_data', 'Not Leaves Data', 'Not Leaves Data', 1, '2022-05-02 18:30:32', '2022-05-02 18:30:32'),
(631, '2', 'joining_letter', 'Joining Letter', 'Joindre la lettre', 1, '2022-05-02 18:30:32', '2022-05-19 23:07:56'),
(632, '2', 'student_information', 'Student Info', 'Info élèves', 1, '2022-05-02 18:30:32', '2022-06-03 09:32:42'),
(633, '2', 'student_admission', 'Student Admission', 'Admission des élèves', 1, '2022-05-02 18:30:32', '2022-06-03 09:32:42'),
(634, '2', 'student_import', 'Student Import', 'Importer élève', 1, '2022-05-02 18:30:32', '2022-06-06 10:40:44'),
(635, '2', 'import', 'Import', 'Importation', 1, '2022-05-02 18:30:32', '2022-05-02 18:30:32'),
(636, '2', 'personal', 'Personal', 'Personnel', 1, '2022-05-02 18:30:32', '2022-05-02 18:30:32'),
(637, '2', 'info', 'Info', 'Info', 1, '2022-05-02 18:30:32', '2022-05-02 18:30:32'),
(638, '2', 'roll', 'Roll', 'Rouleau', 1, '2022-05-02 18:30:32', '2022-05-02 18:30:32'),
(639, '2', 'first', 'First', 'Premier', 1, '2022-05-02 18:30:32', '2022-05-02 18:30:32'),
(640, '2', 'last', 'Last', 'Dernier', 1, '2022-05-02 18:30:32', '2022-05-02 18:30:32'),
(641, '2', 'religion', 'Religion', 'Religion', 1, '2022-05-02 18:30:32', '2022-05-02 18:30:32'),
(642, '2', 'caste', 'Caste', 'Caste', 1, '2022-05-02 18:30:32', '2022-05-02 18:30:32'),
(643, '2', 'category', 'Category', 'Catégorie', 1, '2022-05-02 18:30:32', '2022-05-02 18:30:32'),
(644, '2', 'height', 'Height', 'la taille', 1, '2022-05-02 18:30:32', '2022-05-02 18:30:32'),
(645, '2', 'Weight', 'Weight', 'Poids', 1, '2022-05-02 18:30:32', '2022-05-02 18:30:32'),
(646, '2', 'sibling', 'Sibling', 'Enfant de mêmes parents', 1, '2022-05-02 18:30:32', '2022-05-02 18:30:32'),
(647, '2', 'information', 'Information', 'Information', 1, '2022-05-02 18:30:32', '2022-05-02 18:30:32'),
(648, '2', 'guardian', 'Guardian', 'tuteur', 1, '2022-05-02 18:30:32', '2022-05-31 22:23:48'),
(649, '2', '&', '&', 'Et', 1, '2022-05-02 18:30:33', '2022-05-02 18:30:33'),
(650, '2', 'occupation', 'Occupation', 'Occupation', 1, '2022-05-02 18:30:33', '2022-05-02 18:30:33'),
(651, '2', 'photo', 'Photo', 'Photo', 1, '2022-05-02 18:30:33', '2022-05-02 18:30:33'),
(652, '2', 'Other', 'Others', 'Autres', 1, '2022-05-02 18:30:33', '2022-05-02 18:30:33'),
(653, '2', 'relation_with_guardian', 'Relation with Guardian', 'Relation avec le tuteur', 1, '2022-05-02 18:30:33', '2022-05-31 22:23:48'),
(654, '2', 'current', 'Current', 'Actuel', 1, '2022-05-02 18:30:33', '2022-05-02 18:30:33'),
(655, '2', 'permanent', 'Permanent', 'Permanent', 1, '2022-05-02 18:30:33', '2022-05-02 18:30:33'),
(656, '2', 'route_list', 'Route List', 'Liste des itinéraires', 1, '2022-05-02 18:30:33', '2022-05-02 18:30:33'),
(657, '2', 'driver', 'Driver', 'Chauffeur', 1, '2022-05-02 18:30:33', '2022-05-02 18:30:33'),
(658, '2', 'room', 'Room', 'Pièce', 1, '2022-05-02 18:30:33', '2022-05-02 18:30:33'),
(659, '2', 'national_iD_number', 'National ID Number', 'numéro national didentité', 1, '2022-05-02 18:30:33', '2022-05-02 18:30:33'),
(660, '2', 'local_Id_Number', 'Local Id Number', 'Numéro didentification local', 1, '2022-05-02 18:30:33', '2022-05-02 18:30:33'),
(661, '2', 'bank', 'Bank', 'Banque', 1, '2022-05-02 18:30:33', '2022-05-02 18:30:33'),
(662, '2', 'previous_school_details', 'Previous School Details', 'Détails de lécole précédente', 1, '2022-05-02 18:30:33', '2022-05-02 18:30:33'),
(663, '2', 'additional_notes', 'Additional Notes', 'Notes complémentaires', 1, '2022-05-02 18:30:33', '2022-05-02 18:30:33'),
(664, '2', 'parents_and_guardian_info', 'PARENTS & GUARDIAN INFO', 'INFO PARENTS ET TUTEURS', 1, '2022-05-02 18:30:33', '2022-06-03 09:32:42'),
(665, '2', 'transport_and_dormitory_info', 'Transport & Dormitory Info', 'Informations sur le transport et le dortoir', 1, '2022-05-02 18:30:33', '2022-05-02 18:30:33'),
(666, '2', 'document_info', 'Document Info', 'Informations sur le document', 1, '2022-05-02 18:30:33', '2022-05-02 18:30:33'),
(667, '2', 'document_01_title', 'Document 01 Title', 'Document 01 Titre', 1, '2022-05-02 18:30:33', '2022-05-02 18:30:33'),
(668, '2', 'document_02_title', 'Document 02 Title', 'Document 02 Titre', 1, '2022-05-02 18:30:33', '2022-05-02 18:30:33'),
(669, '2', 'document_03_title', 'Document 03 Title', 'Document 03 Titre', 1, '2022-05-02 18:30:33', '2022-05-02 18:30:33'),
(670, '2', 'document_04_title', 'Document 04 Title', 'Document 04 Titre', 1, '2022-05-02 18:30:33', '2022-05-02 18:30:33'),
(671, '2', 'student_details', 'Student Details', 'Détails de l', 1, '2022-05-02 18:30:33', '2022-06-06 10:40:44'),
(672, '2', 'search_by_name', 'Search By Name', 'Rechercher par nom', 1, '2022-05-02 18:30:33', '2022-05-02 18:30:33'),
(673, '2', 'search_by_roll_no', 'Search By Roll No', 'Recherche par roulement no', 1, '2022-05-02 18:30:33', '2022-05-02 18:30:33'),
(674, '2', 'father_name', 'Fathers Name', 'Le nom du père', 1, '2022-05-02 18:30:33', '2022-05-02 18:30:33'),
(675, '2', 'student_promote', 'Student Promote', 'Élève promouvoir', 1, '2022-05-02 18:30:33', '2022-06-03 09:32:42'),
(676, '2', 'select_current_session', 'Select Current Academic Year', 'Sélectionner année académique', 1, '2022-05-02 18:30:33', '2022-05-31 22:23:47'),
(677, '2', 'select_current_class', 'Select current Class', 'Sélectionnez la classe actuelle', 1, '2022-05-02 18:30:33', '2022-05-02 18:30:33'),
(678, '2', 'select_current_section', 'Select Current section', 'Sélectionnez la section actuelle', 1, '2022-05-02 18:30:33', '2022-05-02 18:30:33'),
(679, '2', 'promote_student_in_next_session', 'Promote Student In Next Academic Year', 'Promouvoir l', 1, '2022-05-02 18:30:33', '2022-06-06 10:40:44'),
(680, '2', 'view_academic_performance', 'View Academic Performance', 'Voir la performance académique', 1, '2022-05-02 18:30:33', '2022-05-02 18:30:33'),
(681, '2', 'pass', 'Pass', 'Réussite', 1, '2022-05-02 18:30:33', '2022-05-31 22:23:47'),
(682, '2', 'fail', 'Fail', 'Échec', 1, '2022-05-02 18:30:33', '2022-05-31 22:23:47'),
(683, '2', 'select_promote_session', 'Select Promote Academic Year', 'Sélectionnez la session de promotion', 1, '2022-05-02 18:30:33', '2022-05-02 18:30:33'),
(684, '2', 'select_promote_class', 'Select Promote Class', 'Sélectionnez Promouvoir la classe', 1, '2022-05-02 18:30:33', '2022-05-02 18:30:33'),
(685, '2', 'the_session_is_required', 'The session is required', 'La session est obligatoire', 1, '2022-05-02 18:30:33', '2022-05-02 18:30:33'),
(686, '2', 'the_class_is_required', 'The class is required', 'Le cours est obligatoire', 1, '2022-05-02 18:30:33', '2022-05-02 18:30:33'),
(687, '2', 'the_section_is_required', 'The section is required', 'La section est obligatoire', 1, '2022-05-02 18:30:33', '2022-05-02 18:30:33'),
(688, '2', 'select_promote_section', 'Select Promote Section', 'Sélectionnez la section de promotion', 1, '2022-05-02 18:30:33', '2022-05-02 18:30:33'),
(689, '2', 'promote', 'Promote', 'Promouvoir', 1, '2022-05-02 18:30:33', '2022-05-02 18:30:33'),
(690, '2', 'student_attendance', 'Student Attendance', 'Assiduité des élèves', 1, '2022-05-02 18:30:33', '2022-06-06 10:40:44'),
(691, '2', 'select_class', 'Select Class', 'Sélectionnez une classe', 1, '2022-05-02 18:30:33', '2022-05-02 18:30:33'),
(692, '2', 'attendance', 'Attendance', 'Présence', 1, '2022-05-02 18:30:33', '2022-05-02 18:30:33'),
(693, '2', 'attendance_already_submitted_as_holiday', 'Attendance Already Submitted As Holiday. You Can Edit Record', 'Présence déjà soumise à titre de vacances. Vous pouvez modifier lenregistrement', 1, '2022-05-02 18:30:33', '2022-05-02 18:30:33'),
(694, '2', 'attendance_already_submitted', 'Attendance Already Submitted You Can Edit Record', 'Présence déjà soumise Vous pouvez modifier la fiche', 1, '2022-05-02 18:30:33', '2022-05-02 18:30:33'),
(695, '2', 'mark_holiday', 'Mark Holiday', 'Marqué comme congé', 1, '2022-05-02 18:30:33', '2022-05-19 23:07:56'),
(696, '2', 'present', 'Present', 'Présent', 1, '2022-05-02 18:30:33', '2022-05-02 18:30:33'),
(697, '2', 'late', 'Late', 'En retard', 1, '2022-05-02 18:30:33', '2022-05-02 18:30:33'),
(698, '2', 'absent', 'Absent', 'Absent', 1, '2022-05-02 18:30:33', '2022-05-02 18:30:33'),
(699, '2', 'half_day', 'Half Day', 'Demi-journée', 1, '2022-05-02 18:30:33', '2022-05-02 18:30:33'),
(700, '2', 'add_note_here', 'Add Note Here', 'Ajouter une note ici', 1, '2022-05-02 18:30:33', '2022-05-02 18:30:33'),
(701, '2', 'error', 'Error', 'Erreur', 1, '2022-05-02 18:30:33', '2022-05-02 18:30:33'),
(702, '2', 'student_attendance_report', 'Student Attendance Report', 'Rapport de présence des élèves', 1, '2022-05-02 18:30:33', '2022-06-03 09:32:42'),
(703, '2', 'january', 'January', 'janvier', 1, '2022-05-02 18:30:33', '2022-05-02 18:30:33'),
(704, '2', 'february', 'February', 'février', 1, '2022-05-02 18:30:33', '2022-05-02 18:30:33'),
(705, '2', 'march', 'March', 'Mars', 1, '2022-05-02 18:30:33', '2022-05-02 18:30:33'),
(706, '2', 'april', 'April', 'avril', 1, '2022-05-02 18:30:33', '2022-05-02 18:30:33'),
(707, '2', 'may', 'May', 'Mai', 1, '2022-05-02 18:30:33', '2022-05-19 23:07:56'),
(708, '2', 'june', 'June', 'juin', 1, '2022-05-02 18:30:33', '2022-05-02 18:30:33'),
(709, '2', 'july', 'July', 'juillet', 1, '2022-05-02 18:30:33', '2022-05-02 18:30:33'),
(710, '2', 'august', 'August', 'août', 1, '2022-05-02 18:30:33', '2022-05-02 18:30:33'),
(711, '2', 'september', 'September', 'septembre', 1, '2022-05-02 18:30:33', '2022-05-02 18:30:33'),
(712, '2', 'october', 'October', 'octobre', 1, '2022-05-02 18:30:33', '2022-05-02 18:30:33'),
(713, '2', 'november', 'November', 'novembre', 1, '2022-05-02 18:30:33', '2022-05-02 18:30:33'),
(714, '2', 'december', 'December', 'décembre', 1, '2022-05-02 18:30:33', '2022-05-02 18:30:33'),
(715, '2', 'select_month', 'Select Month', 'Sélectionnez un mois', 1, '2022-05-02 18:30:33', '2022-05-02 18:30:33'),
(716, '2', 'select_year', 'Select Year', 'Sélectionnez lannée', 1, '2022-05-02 18:30:33', '2022-05-02 18:30:33'),
(717, '2', 'student_category', 'Student Category', 'Catégorie d', 1, '2022-05-02 18:30:33', '2022-06-06 10:40:44'),
(718, '2', 'student_category_list', 'Student Category List', 'Liste des catégories d', 1, '2022-05-02 18:30:33', '2022-06-06 10:40:44'),
(719, '2', 'student_group', 'Student Group', 'Groupe d', 1, '2022-05-02 18:30:33', '2022-06-06 10:40:44'),
(720, '2', 'group', 'Group', 'Groupe', 1, '2022-05-02 18:30:33', '2022-05-02 18:30:33'),
(721, '2', 'disabled_student', 'Disabled Students', 'Elèves handicapés', 1, '2022-05-02 18:30:33', '2022-06-03 09:32:42'),
(722, '2', 'student_list', 'Student List', 'Liste des élèves', 1, '2022-05-02 18:30:33', '2022-06-06 10:40:44'),
(723, '2', 'birth_certificate', 'Birth Certificate', 'Certificat de naissance', 1, '2022-05-02 18:30:33', '2022-05-02 18:30:33'),
(724, '2', 'student_edit', 'Student Edit', 'Élève modifier', 1, '2022-05-02 18:30:33', '2022-06-03 09:32:42'),
(725, '2', 'in', 'In', 'Dans', 1, '2022-05-02 18:30:33', '2022-05-02 18:30:33'),
(726, '2', 'kg', 'KG', 'KG', 1, '2022-05-02 18:30:33', '2022-05-02 18:30:33'),
(727, '2', 'add_parent', 'Add Parent', 'Ajouter un parent', 1, '2022-05-02 18:30:33', '2022-05-02 18:30:33'),
(728, '2', 'update_information', 'Update information', 'Mettre à jour les informations', 1, '2022-05-02 18:30:33', '2022-05-02 18:30:33'),
(729, '2', 'siblings', 'Siblings', 'Frères et sœurs', 1, '2022-05-02 18:30:33', '2022-05-02 18:30:33'),
(730, '2', 'guardian_name', 'Guardians Name', 'Nom du tuteur', 1, '2022-05-02 18:30:33', '2022-05-31 22:23:47'),
(731, '2', 'guardian_email', 'Guardians Email', 'Email du tuteur', 1, '2022-05-02 18:30:33', '2022-05-31 22:23:47'),
(732, '2', 'guardian_phone', 'Guardians Phone', 'Téléphone du tuteur', 1, '2022-05-02 18:30:33', '2022-05-31 22:23:47'),
(733, '2', 'guardian_occupation', 'Guardian Occupation', 'Profession de tuteur', 1, '2022-05-02 18:30:33', '2022-05-31 22:23:47'),
(734, '2', 'guardian_address', 'Guardian Address', 'Adresse du tuteur', 1, '2022-05-02 18:30:33', '2022-05-31 22:23:47'),
(735, '2', 'student_address_info', 'Student Address Info', 'Adresse de l', 1, '2022-05-02 18:30:33', '2022-06-06 10:40:44'),
(736, '2', 'current_address', 'Current Address', 'Adresse actuelle', 1, '2022-05-02 18:30:33', '2022-05-02 18:30:33'),
(737, '2', 'permanent_address', 'Permanent Address', 'Adresse permanente', 1, '2022-05-02 18:30:33', '2022-05-02 18:30:33'),
(738, '2', 'vehicle_number', 'Vehicle Number', 'Numéro de véhicule', 1, '2022-05-02 18:30:33', '2022-05-02 18:30:33'),
(739, '2', 'driver_name', 'Driver Name', 'Nom du conducteur', 1, '2022-05-02 18:30:33', '2022-05-02 18:30:33'),
(740, '2', 'bank_name', 'Bank Name', 'Nom de banque', 1, '2022-05-02 18:30:33', '2022-05-02 18:30:33'),
(741, '2', 'update_student', 'update student', 'mise à jour de l', 1, '2022-05-02 18:30:33', '2022-06-06 10:40:44'),
(742, '2', 'remove', 'Remove', 'Retirer', 1, '2022-05-02 18:30:33', '2022-05-02 18:30:33'),
(743, '2', 'are_you', 'Are you sure to remove siblings?', 'Êtes-vous sûr de vouloir supprimer vos frères et soeurs?', 1, '2022-05-02 18:30:33', '2022-05-02 18:30:33'),
(744, '2', 'download_sample_file', 'Download Sample File', 'Télécharger un exemple de fichier', 1, '2022-05-02 18:30:33', '2022-05-02 18:30:33'),
(745, '2', 'other_documents', 'Other Documents', 'Autres Documents', 1, '2022-05-02 18:30:33', '2022-05-31 22:23:47'),
(746, '2', 'documents', 'Documents', 'Documents', 1, '2022-05-02 18:30:33', '2022-05-02 18:30:33'),
(747, '2', 'resume', 'Resume', 'Resume', 1, '2022-05-02 18:30:33', '2022-05-02 18:30:33'),
(748, '2', 'summery', 'Summery', 'Résumé', 1, '2022-05-02 18:30:33', '2022-05-31 22:23:47'),
(749, '2', 'academic_records', 'Academic Records', 'Records Academiques', 1, '2022-05-02 18:30:33', '2022-05-31 22:23:47'),
(750, '2', 'chairman_of_the_examination_board', 'Chairman of the Examination Board', 'Président du jury des examens', 1, '2022-05-02 18:30:33', '2022-05-31 22:23:47'),
(751, '2', 'head_of_students_affairs', 'Head of Students Affairs', 'Responsables des affaires  étudiantes', 1, '2022-05-02 18:30:33', '2022-05-31 22:23:47'),
(752, '2', 'merit', 'Merit', 'Mérite', 1, '2022-05-02 18:30:33', '2022-05-31 22:23:47'),
(753, '2', 'merit_list', 'Merit List', 'Liste de mérite', 1, '2022-05-02 18:30:33', '2022-05-31 22:23:47'),
(754, '2', 'academic', 'Academic', 'Académique', 1, '2022-05-02 18:30:33', '2022-05-31 22:23:47'),
(755, '2', 'staring', 'Staring', 'Début', 1, '2022-05-02 18:30:33', '2022-05-31 22:23:47'),
(756, '2', 'ending', 'Ending', 'fin', 1, '2022-05-02 18:30:33', '2022-05-31 22:23:47'),
(757, '2', 'evalution', 'Evalution', 'Evalutaion', 1, '2022-05-02 18:30:33', '2022-05-31 22:23:47'),
(758, '2', 'marks_sheet_of', 'Marks Sheet of', 'Feuilles de notes de', 1, '2022-05-02 18:30:33', '2022-05-31 22:23:47'),
(759, '2', 'highest_marks', 'Highest Marks', 'Meilleures notes', 1, '2022-05-02 18:30:33', '2022-05-31 22:23:47'),
(760, '2', 'letter_grade', 'Letter Grade', 'Classement par lettre', 1, '2022-05-02 18:30:33', '2022-05-31 22:23:46'),
(761, '20', 'point1', 'Your CSV data should be in the format download file. The first line of your CSV file should be the column headers as in the table example. Also make sure that your file is UTF-8 to avoid unnecessary encoding problems.', 'Vos données CSV doivent être dans le fichier de téléchargement au format. La première ligne de votre fichier CSV doit correspondre aux en-têtes de colonne, comme dans lexemple de tableau. Assurez-vous également que votre fichier est au format UTF-8 afin déviter des problèmes de codage inutiles.', 1, '2022-05-02 18:30:33', '2022-05-02 18:30:33'),
(762, '20', 'point2', 'If the column you are trying to import is date make sure that is formatted in format Y-m-d (2018-06-06).', 'Si la colonne que vous tentez dimporter est datée, assurez-vous quelle est formatée au format Y-m-d (2018-06-06).', 1, '2022-05-02 18:30:33', '2022-05-02 18:30:33'),
(763, '20', 'point3', 'Duplicate \"Roll Number\" (unique in section) rows will not be imported. Roll No used or not you can get from student report page search on class & section', 'Les lignes en double \"Numéro de rouleau\" (uniques dans la section) ne seront pas importées. Pas de recherche doccasion ou non, vous pouvez obtenir une recherche de page de rapport d’étudiant dans la classe et la section', 1, '2022-05-02 18:30:33', '2022-05-02 18:30:33'),
(764, '20', 'point4', 'Duplicate \"Guardian email & Guardian Phone\" rows will not be imported. Guardian email & Guardian Phone used or not you can get from student report page search on class & section', 'Les lignes dupliquées \"Email et téléphone Guardian\" ne seront pas importées. Guardian email & Guardian Phone utilisé ou non, vous pouvez obtenir une recherche dans la page de rapport de létudiant sur la classe et la section', 1, '2022-05-02 18:30:33', '2022-05-02 18:30:33'),
(765, '20', 'point5', 'For student Session use Id', 'Pour les étudiants \"Session\", utilisez lidentifiant', 1, '2022-05-02 18:30:33', '2022-05-02 18:30:33'),
(766, '20', 'point6', 'For student \"Gender\" use ID', 'Pour létudiant \"Sexe\", utilisez lidentifiant', 1, '2022-05-02 18:30:33', '2022-05-02 18:30:33'),
(767, '20', 'point7', 'For student \"Blood Group\" use Id', 'Pour les étudiants Groupe sanguin, utilisez lId', 1, '2022-05-02 18:30:33', '2022-05-02 18:30:33'),
(768, '20', 'point8', 'For student \"Religion\" use ID', 'Pour les étudiants Religion, utilisez votre identifiant', 1, '2022-05-02 18:30:33', '2022-05-02 18:30:33'),
(769, '20', 'point9', 'For student \"Guardian Relation\" use capital O for Other, F for Father M for Mother.', 'Pour les étudiants \"Relation Gardien\", utilisez la majuscule O pour Autre, F pour Père M pour Mère.', 1, '2022-05-02 18:30:33', '2022-05-02 18:30:33'),
(770, '20', 'save_bulk_students', 'save bulk students', 'sauver des étudiants en vrac', 1, '2022-05-02 18:30:33', '2022-05-02 18:30:33'),
(771, '20', 'bank_account_number', 'Bank Account Number', 'Numéro de compte bancaire', 1, '2022-05-02 18:30:33', '2022-05-02 18:30:33'),
(772, '20', 'IFSC_Code', 'IFSC Code', 'Code IFSC', 1, '2022-05-02 18:30:33', '2022-05-02 18:30:33'),
(773, '20', 'payment_id', 'Payment Id', 'ID de paiement', 1, '2022-05-02 18:30:33', '2022-05-02 18:30:33'),
(774, '20', 'passing_marks', 'Passing Marks', 'Marques de passage', 1, '2022-05-02 18:30:33', '2022-05-02 18:30:33'),
(775, '20', 'website', 'Website', 'Site Internet', 1, '2022-05-02 18:30:33', '2022-05-02 18:30:33'),
(776, '20', 'you_have', 'You have', 'Tu as', 1, '2022-05-02 18:30:33', '2022-05-02 18:30:33'),
(777, '20', 'new', 'new', 'Nouveau', 1, '2022-05-02 18:30:33', '2022-05-02 18:30:33'),
(778, '20', 'notification', 'notification', 'notification', 1, '2022-05-02 18:30:33', '2022-05-02 18:30:33'),
(779, '20', 'mark_all_as_read', 'Mark All As Read', 'Tout marquer comme lu', 1, '2022-05-02 18:30:33', '2022-05-02 18:30:33'),
(780, '20', 'view_profile', 'view profile', 'Voir le profil', 1, '2022-05-02 18:30:33', '2022-05-02 18:30:33'),
(781, '20', 'completed', 'Completed', 'Terminé', 1, '2022-05-02 18:30:33', '2022-05-02 18:30:33'),
(782, '20', 'to_do_title', 'To Do Title', 'Titre à faire', 1, '2022-05-02 18:30:33', '2022-05-02 18:30:33'),
(783, '20', 'Designation_of_Signature_person', 'Designation of Signature person', 'Désignation de la personne signataire', 1, '2022-05-02 18:30:33', '2022-05-02 18:30:33'),
(784, '20', 'student_wise', 'Student Wise', 'Étudiant sage', 1, '2022-05-02 18:30:33', '2022-05-02 18:30:33'),
(785, '20', 'print', 'Print', 'impression', 1, '2022-05-02 18:30:33', '2022-05-02 18:30:33'),
(786, '20', 'discount_of', 'Discount of', 'Remise de', 1, '2022-05-02 18:30:33', '2022-05-02 18:30:33'),
(787, '20', 'applied', 'Applied', 'Appliqué', 1, '2022-05-02 18:30:33', '2022-05-02 18:30:33'),
(788, '20', 'fees_assign', 'Fees Assign', 'Affectation des frais', 1, '2022-05-02 18:30:33', '2022-05-02 18:30:33'),
(789, '20', 'invoice_print', 'Invoice print', 'Invoice print', 1, '2022-05-02 18:30:33', '2022-05-02 18:30:33'),
(790, '20', 'background', 'Background', 'Background', 1, '2022-05-02 18:30:33', '2022-05-02 18:30:33'),
(791, '20', 'style', 'Style', 'Style', 1, '2022-05-02 18:30:33', '2022-05-02 18:30:33'),
(792, '20', 'color', 'Color', 'Color', 1, '2022-05-02 18:30:33', '2022-05-02 18:30:33'),
(793, '20', 'select_position', 'Select Position', 'Select Position', 1, '2022-05-02 18:30:33', '2022-05-02 18:30:33'),
(794, '20', 'background_settings', 'Background Settings', 'Background Settings', 1, '2022-05-02 18:30:33', '2022-05-02 18:30:33'),
(795, '20', 'background_type', 'Background Type', 'Background Type', 1, '2022-05-02 18:30:33', '2022-05-02 18:30:33'),
(796, '20', 'course_list', 'Course List', 'Course List', 1, '2022-05-02 18:30:33', '2022-05-02 18:30:33'),
(797, '20', 'about_us', 'About Us', 'About Us', 1, '2022-05-02 18:30:33', '2022-05-02 18:30:33'),
(798, '20', 'custom_links', 'Custom Links', 'Custom Links', 1, '2022-05-02 18:30:33', '2022-05-02 18:30:33'),
(799, '20', 'operation_success_message', 'Operation Successful', 'Operation Successful', 1, '2022-05-02 18:30:33', '2022-05-02 18:30:33'),
(800, '20', 'home_page', 'Home Page', 'Home Page', 1, '2022-05-02 18:30:33', '2022-05-02 18:30:33'),
(801, '20', 'payment_id', 'Payment ID', 'Payment ID', 1, '2022-05-02 18:30:33', '2022-05-02 18:30:33'),
(802, '20', 'payment_ID', 'Payment ID', 'Payment ID', 1, '2022-05-02 18:30:33', '2022-05-02 18:30:33'),
(803, '20', 'contact', 'Contact', 'Contact', 1, '2022-05-02 18:30:33', '2022-05-02 18:30:33'),
(804, '20', 'page', 'Page', 'Page', 1, '2022-05-02 18:30:33', '2022-05-02 18:30:33'),
(805, '20', 'SampleDataEmpty', 'Sample Data', 'Sample Data', 1, '2022-05-02 18:30:33', '2022-05-02 18:30:33'),
(806, '20', 'authentication_key_SID', 'Authentication KEY SID', 'Authentication KEY SID', 1, '2022-05-02 18:30:33', '2022-05-02 18:30:33'),
(807, '20', 'validation_data', 'Data Validation', 'Data Validation', 1, '2022-05-02 18:30:33', '2022-05-02 18:30:33'),
(808, '20', 'login_permission', 'Login Permission', 'Login Permission', 1, '2022-05-02 18:30:33', '2022-05-02 18:30:33'),
(809, '20', 'profile', 'Profile', 'Profile', 1, '2022-05-02 18:30:33', '2022-05-02 18:30:33'),
(810, '20', 'primary_color', 'Primary Color', 'Primary Color', 1, '2022-05-02 18:30:33', '2022-05-02 18:30:33'),
(811, '20', 'primary_color2', 'Primary Color 2', 'Primary Color 2', 1, '2022-05-02 18:30:33', '2022-05-02 18:30:33'),
(812, '20', 'primary_color3', 'Primary Color 3', 'Primary Color 3', 1, '2022-05-02 18:30:33', '2022-05-02 18:30:33'),
(813, '20', 'title_color', 'Title Color', 'Title Color', 1, '2022-05-02 18:30:33', '2022-05-02 18:30:33'),
(814, '20', 'text_color', 'Text Color', 'Text Color', 1, '2022-05-02 18:30:33', '2022-05-02 18:30:33'),
(815, '20', 'sidebar_bg', 'Sidebar', 'Sidebar', 1, '2022-05-02 18:30:33', '2022-05-02 18:30:33'),
(816, '3', 'change', 'Change', 'Change', 1, '2022-05-02 18:30:33', '2022-05-02 18:30:33'),
(817, '3', 'confirm', 'Confirm', 'Confirmer', 1, '2022-05-02 18:30:33', '2022-05-31 22:57:46'),
(818, '3', 'restore_message', 'All sample data will restore in your database. Your existing data will be damage, so please take backup before restore.', 'Toutes les données seront restaurées dans votre base de données.Tes données existantes  seront endommagées,Alors veuiilez les sauvegarder avant de restaurer', 1, '2022-05-02 18:30:33', '2022-05-31 22:57:46'),
(819, '3', 'sample', 'Sample', 'Sample', 1, '2022-05-02 18:30:33', '2022-05-02 18:30:33'),
(820, '3', 'data', 'Data', 'Daonnées', 1, '2022-05-02 18:30:33', '2022-05-31 22:57:46'),
(821, '3', 'empty', 'Empty', 'Vide', 1, '2022-05-02 18:30:33', '2022-05-31 22:57:46'),
(822, '3', 'database', 'Database', 'Base de données', 1, '2022-05-02 18:30:33', '2022-05-31 22:57:46'),
(823, '3', 'table', 'Table', 'Table', 1, '2022-05-02 18:30:33', '2022-05-02 18:30:33'),
(824, '3', 'key', 'KEY', 'KEY', 1, '2022-05-02 18:30:33', '2022-05-02 18:30:33'),
(825, '3', 'msg91', 'MSG91', 'MSG91', 1, '2022-05-02 18:30:34', '2022-05-02 18:30:34'),
(826, '3', 'system', 'System', 'Système', 1, '2022-05-02 18:30:34', '2022-05-31 22:57:46'),
(827, '3', 'home', 'Home', 'Home', 1, '2022-05-02 18:30:34', '2022-05-02 18:30:34'),
(828, '3', 'front', 'Front', 'Front', 1, '2022-05-02 18:30:34', '2022-05-02 18:30:34'),
(829, '3', 'heading', 'Heading', 'titre', 1, '2022-05-02 18:30:34', '2022-05-31 22:57:46'),
(830, '3', 'short', 'Short', 'Short', 1, '2022-05-02 18:30:34', '2022-05-02 18:30:34'),
(831, '3', 'set_permission_in', 'Set permission in', 'Définir permission à', 1, '2022-05-02 18:30:34', '2022-05-31 22:57:46'),
(832, '3', 'home', 'HOME', 'HOME', 1, '2022-05-02 18:30:34', '2022-05-02 18:30:34'),
(833, '3', 'custom', 'Custom', 'Client', 1, '2022-05-02 18:30:34', '2022-05-31 22:57:46'),
(834, '3', 'links', 'Links', 'Liens', 1, '2022-05-02 18:30:34', '2022-05-31 22:57:46'),
(835, '3', 'link', 'Link', 'Lien', 1, '2022-05-02 18:30:34', '2022-05-31 22:57:46'),
(836, '3', 'url', 'URL', 'URL', 1, '2022-05-02 18:30:34', '2022-05-02 18:30:34'),
(837, '3', 'facebook', 'Facebook', 'Facebook', 1, '2022-05-02 18:30:34', '2022-05-02 18:30:34'),
(838, '3', 'behance', 'Behance', 'Behance', 1, '2022-05-02 18:30:34', '2022-05-02 18:30:34'),
(839, '3', 'dribbble', 'Dribbble', 'Dribbble', 1, '2022-05-02 18:30:34', '2022-05-02 18:30:34'),
(840, '3', 'twitter', 'Twitter', 'Twitter', 1, '2022-05-02 18:30:34', '2022-05-02 18:30:34'),
(841, '3', 'activated', 'Activated', 'Activé', 1, '2022-05-02 18:30:34', '2022-05-31 22:57:45'),
(842, '3', 'make', 'Make', 'Faire', 1, '2022-05-02 18:30:34', '2022-05-31 22:57:45'),
(843, '3', 'disable', 'Disable', 'désactiver', 1, '2022-05-02 18:30:34', '2022-05-31 22:57:45'),
(844, '3', 'admin_staff', 'Admin/Staff', 'Admin/Personnel', 1, '2022-05-02 18:30:34', '2022-05-31 22:57:45'),
(845, '3', 'access', 'Access', 'Accéder', 1, '2022-05-02 18:30:34', '2022-05-31 22:57:45'),
(846, '3', 'enable', 'Enable', 'Activer', 1, '2022-05-02 18:30:34', '2022-05-31 22:57:45'),
(847, '3', 'criteria', 'Criteria', 'Critère', 1, '2022-05-02 18:30:34', '2022-05-31 22:57:45'),
(848, '3', 'office', 'Office', 'Office', 1, '2022-05-02 18:30:34', '2022-05-02 18:30:34'),
(849, '3', 'site', 'Site', 'Site', 1, '2022-05-02 18:30:34', '2022-05-02 18:30:34'),
(850, '3', 'google', 'Google', 'Google', 1, '2022-05-02 18:30:34', '2022-05-02 18:30:34'),
(851, '3', 'ads', 'Ads', 'publicités', 1, '2022-05-02 18:30:34', '2022-05-31 22:57:45'),
(852, '3', 'campaign', 'Campaign', 'Campagne', 1, '2022-05-02 18:30:34', '2022-05-31 22:57:45'),
(853, '3', 'advertisement', 'Advertisement', 'Annonce', 1, '2022-05-02 18:30:34', '2022-05-31 22:57:45'),
(854, '3', 'passive', 'Passive', 'Passive', 1, '2022-05-02 18:30:34', '2022-05-02 18:30:34'),
(855, '3', 'dead', 'Dead', 'Mort', 1, '2022-05-02 18:30:34', '2022-05-31 22:57:45'),
(856, '3', 'won', 'Won', 'Gain', 1, '2022-05-02 18:30:34', '2022-05-31 22:57:45'),
(857, '3', 'lost', 'Lost', 'Perte', 1, '2022-05-02 18:30:34', '2022-05-31 22:57:45'),
(858, '3', 'name', 'Name', 'Nom', 1, '2022-05-02 18:30:34', '2022-05-31 22:57:45'),
(859, '3', 'salmon', 'Salmon', 'Salmon', 1, '2022-05-02 18:30:34', '2022-05-02 18:30:34'),
(860, '3', 'shashimi', 'Shashimi', 'Shashimi', 1, '2022-05-02 18:30:34', '2022-05-02 18:30:34'),
(861, '3', 'shashimi', 'Shashimi', 'Shashimi', 1, '2022-05-02 18:30:34', '2022-05-02 18:30:34'),
(862, '3', 'male', 'Male', 'Masculin', 1, '2022-05-02 18:30:34', '2022-05-31 22:57:45'),
(863, '3', 'female', 'female', 'Féminin', 1, '2022-05-02 18:30:34', '2022-05-31 22:57:45'),
(864, '3', 'add_fees', 'Add Fees', 'Ajouter des frais', 1, '2022-05-02 18:30:34', '2022-05-31 22:57:45'),
(865, '3', 'pay_via_paystack', 'Pay via Paystack', 'payer via Paystack', 1, '2022-05-02 18:30:34', '2022-05-31 22:57:45'),
(866, '3', 'grand', 'Grand', 'Grand', 1, '2022-05-02 18:30:34', '2022-05-02 18:30:34'),
(867, '3', 'are_you_sure_to_detete_this_item', 'Are you sure to detete this item', 'Etes vous sur de supprimer cette donnée?', 1, '2022-05-02 18:30:34', '2022-05-31 22:57:45'),
(868, '3', 'student_profile', 'Student Profile', 'Profil élève', 1, '2022-05-02 18:30:34', '2022-06-03 10:22:04'),
(869, '3', 'admission_number', 'Admission Nnumber', 'Numéro d', 1, '2022-05-02 18:30:34', '2022-06-03 10:22:04'),
(870, '3', 'sibling_snformation', 'Sibling Information', 'Informations frères et sœurs', 1, '2022-05-02 18:30:34', '2022-05-31 22:57:45'),
(871, '3', 'sibling_name', 'Sibling Name', 'Nom du frère et soeur', 1, '2022-05-02 18:30:34', '2022-05-31 22:57:45'),
(872, '3', 'father_name', 'Father’s Name', 'Nom du père', 1, '2022-05-02 18:30:34', '2022-05-31 22:57:45'),
(873, '3', 'mother_name', 'Mother’s Name', 'Nom de la mère', 1, '2022-05-02 18:30:34', '2022-05-31 22:57:45'),
(874, '3', 'guardian_name', 'Guardian’s Name', 'Nom du tuteur', 1, '2022-05-02 18:30:34', '2022-05-31 22:57:45'),
(875, '3', 'transport_and_dormitory_details', 'Transport and Dormitory Details', 'Détails des transports et dortoirs', 1, '2022-05-02 18:30:34', '2022-05-31 22:57:45'),
(876, '3', 'dormitory_name', 'Dormitory Name', 'Nom du dortoire', 1, '2022-05-02 18:30:34', '2022-05-31 22:57:45'),
(877, '3', 'other', 'Other', 'Autre', 1, '2022-05-02 18:30:34', '2022-05-31 22:57:45'),
(878, '3', 'upload_document', 'Upload Document', 'Télécharger documents', 1, '2022-05-02 18:30:34', '2022-05-31 22:57:45'),
(879, '3', 'document_title', 'Document Title', 'Titre de documents', 1, '2022-05-02 18:30:34', '2022-05-31 22:57:45'),
(880, '3', 'others_download', 'Others Download', 'Autres téléchargements', 1, '2022-05-02 18:30:34', '2022-05-31 22:57:45'),
(881, '3', 'attendance_result', 'Attendance result', 'Résultats de présence', 1, '2022-05-02 18:30:34', '2022-05-31 22:57:45'),
(882, '3', 'dormitory_room_list', 'Dormitory Room List', 'Liste de des dortoirs', 1, '2022-05-02 18:30:34', '2022-05-31 22:57:45'),
(883, '3', 'evaluation_date', 'Evaluation Date', 'Date d\'évaluation', 1, '2022-05-02 18:30:34', '2022-05-31 22:57:45'),
(884, '3', 'submission_date', 'Submission Date', 'Date de soumission', 1, '2022-05-02 18:30:34', '2022-05-31 22:57:45'),
(885, '3', 'homework_date', 'Homework date', 'Date du devoir', 1, '2022-05-02 18:30:34', '2022-05-31 22:57:45'),
(886, '3', 'subject_list', 'Subject List', 'Liste de sujets', 1, '2022-05-02 18:30:34', '2022-05-31 22:57:45'),
(887, '3', 'made', 'Made', 'Fait', 1, '2022-05-02 18:30:34', '2022-05-31 22:57:45'),
(888, '3', 'answer_script', 'Answer Script', 'script de réponse', 1, '2022-05-02 18:30:34', '2022-05-31 22:57:45'),
(889, '3', 'student_book_issue', 'Student Book Issue', 'Livre d\'élèves publiés', 1, '2022-05-02 18:30:34', '2022-06-03 10:22:04'),
(890, '3', 'all_issued_book_list', 'All Issued Book List', 'Listes de tous les livres puliés', 1, '2022-05-02 18:30:34', '2022-05-31 22:57:45'),
(891, '3', 'sorry', 'Sorry', 'Désolé', 1, '2022-05-02 18:30:34', '2022-05-31 22:57:45'),
(892, '3', 'there_is_no_notice_for_you', 'There is no notice for you', 'Aucun pour le moment', 1, '2022-05-02 18:30:34', '2022-05-31 22:57:45'),
(893, '3', 'available_for', 'Available For', 'Disponible pour', 1, '2022-05-02 18:30:34', '2022-05-02 18:30:34'),
(894, '3', 'take_online_exam', 'Take Online Exam', 'Prendre l', 1, '2022-05-02 18:30:34', '2022-06-03 10:22:04'),
(895, '3', 'select_subject', 'Select subject', 'Sélectionner sujet', 1, '2022-05-02 18:30:34', '2022-05-31 22:57:45'),
(896, '3', 'mark_as_holiday', 'Mark as Holiday', 'Marqué comme férié', 1, '2022-05-02 18:30:34', '2022-05-31 22:57:45'),
(897, '3', 'teacher', 'Teacher', 'Prof', 1, '2022-05-02 18:30:34', '2022-05-02 18:30:34');
INSERT INTO `sm_language_phrases` (`id`, `modules`, `default_phrases`, `en`, `fr`, `active_status`, `created_at`, `updated_at`) VALUES
(898, '3', 'upload_content', 'Upload Content', 'Télécharger du contenu', 1, '2022-05-02 18:30:34', '2022-05-02 18:30:34'),
(899, '3', 'assignment', 'Assignment', 'Affectation', 1, '2022-05-02 18:30:34', '2022-05-02 18:30:34'),
(900, '3', 'content_title', 'Content Title', 'Titre du contenu', 1, '2022-05-02 18:30:34', '2022-05-02 18:30:34'),
(901, '3', 'study_material', 'Study Material', 'Matériel détude', 1, '2022-05-02 18:30:34', '2022-05-02 18:30:34'),
(902, '3', 'syllabus', 'Syllabus', 'Programme', 1, '2022-05-02 18:30:34', '2022-05-02 18:30:34'),
(903, '3', 'other_download', 'Other Downloads', 'Autres téléchargements', 1, '2022-05-02 18:30:34', '2022-05-02 18:30:34'),
(904, '3', 'available_for', 'Available for', 'Disponible pour', 1, '2022-05-02 18:30:34', '2022-05-02 18:30:34'),
(905, '3', 'admin', 'Admin', 'Admin', 1, '2022-05-02 18:30:34', '2022-05-02 18:30:34'),
(906, '3', 'available_for_all_classes', 'Available for all classes', 'Disponible pour toutes les classes', 1, '2022-05-02 18:30:34', '2022-05-02 18:30:34'),
(907, '3', 'action', 'Action', 'action', 1, '2022-05-02 18:30:34', '2022-05-02 18:30:34'),
(908, '3', 'other_downloads_list', 'Other Downloads List', 'Autres téléchargements', 1, '2022-05-02 18:30:34', '2022-05-02 18:30:34'),
(909, '4', 'payment', 'Payment', 'Paiement', 1, '2022-05-02 18:30:34', '2022-05-02 18:30:34'),
(910, '4', 'payment_ID_Details', 'Payment ID Details', 'ID de paiement', 1, '2022-05-02 18:30:34', '2022-05-02 18:30:34'),
(911, '4', 'mode', 'Mode', 'Mode', 1, '2022-05-02 18:30:34', '2022-05-02 18:30:34'),
(912, '4', 'amount', 'Amount', 'Montant', 1, '2022-05-02 18:30:34', '2022-05-02 18:30:34'),
(913, '4', 'discount', 'Discount', 'Remise', 1, '2022-05-02 18:30:34', '2022-05-02 18:30:34'),
(914, '4', 'fine', 'Fine', 'Bien', 1, '2022-05-02 18:30:34', '2022-05-02 18:30:34'),
(915, '4', 'fees_due_list', 'Fees Due List', 'Frais à payer', 1, '2022-05-02 18:30:34', '2022-05-02 18:30:34'),
(916, '4', 'due_birth', 'Due Birth', 'Naissance due', 1, '2022-05-02 18:30:34', '2022-05-02 18:30:34'),
(917, '4', 'deposit', 'Deposit', 'Dépôt', 1, '2022-05-02 18:30:34', '2022-05-02 18:30:34'),
(918, '4', 'balance', 'Balance', 'Équilibre', 1, '2022-05-02 18:30:34', '2022-05-02 18:30:34'),
(919, '4', 'master', 'Master', 'Maîtriser', 1, '2022-05-02 18:30:34', '2022-05-02 18:30:34'),
(920, '4', 'assign', 'Assign', 'Attribuer', 1, '2022-05-02 18:30:34', '2022-05-02 18:30:34'),
(921, '4', 'item', 'Item', 'Article', 1, '2022-05-02 18:30:34', '2022-05-02 18:30:34'),
(922, '4', 'content', 'content', 'contenu', 1, '2022-05-02 18:30:34', '2022-05-02 18:30:34'),
(923, '4', 'fees_code', 'Fees Code', 'Code des frais', 1, '2022-05-02 18:30:34', '2022-05-02 18:30:34'),
(924, '4', 'code', 'Code', 'Code', 1, '2022-05-02 18:30:34', '2022-05-02 18:30:34'),
(925, '4', 'once', 'Once', 'Une fois', 1, '2022-05-02 18:30:34', '2022-06-03 10:23:21'),
(926, '4', 'year', 'Year', 'Année', 1, '2022-05-02 18:30:34', '2022-05-02 18:30:34'),
(927, '4', 'previous_Session_Balance_Fees', 'Previous Session Balance Fees', 'Frais de solde de la session précédente', 1, '2022-05-02 18:30:34', '2022-05-02 18:30:34'),
(928, '4', 'previous_balance_can_only_update_now.', 'Previous balance already forwarded, you can only update now.', 'Le solde précédent ayant déjà été transféré, vous ne pouvez mettre à jour que maintenant.', 1, '2022-05-02 18:30:34', '2022-05-02 18:30:34'),
(929, '4', 'fees_collection', 'Fees Collection', 'Collection de frais', 1, '2022-05-02 18:30:34', '2022-05-02 18:30:34'),
(930, '4', 'collect_fees', 'Collect Fees', 'Recueillir les frais', 1, '2022-05-02 18:30:34', '2022-05-02 18:30:34'),
(931, '4', 'search_fees_payment', 'Search Fees Payment', 'Recherche des frais de paiement', 1, '2022-05-02 18:30:34', '2022-05-02 18:30:34'),
(932, '4', 'search_fees_due', 'Search Fees Due', 'Frais de recherche dus', 1, '2022-05-02 18:30:34', '2022-05-02 18:30:34'),
(933, '4', 'fees_master', 'Fees Master', 'Frais Maître', 1, '2022-05-02 18:30:34', '2022-05-02 18:30:34'),
(934, '4', 'fees_group', 'Fees Group', 'Groupe de frais', 1, '2022-05-02 18:30:34', '2022-05-02 18:30:34'),
(935, '4', 'fees_type', 'Fees Type', 'Type de frais', 1, '2022-05-02 18:30:34', '2022-05-02 18:30:34'),
(936, '4', 'fees_discount', 'Fees Discount', 'Remise des frais', 1, '2022-05-02 18:30:34', '2022-05-02 18:30:34'),
(937, '4', 'fees_forward', 'Fees Carry Forward', 'Frais reportés', 1, '2022-05-02 18:30:34', '2022-05-02 18:30:34'),
(938, '5', 'accounts', 'Accounts', 'Comptes', 1, '2022-05-02 18:30:34', '2022-05-02 18:30:34'),
(939, '5', 'profit', 'Profit', 'Profit', 1, '2022-05-02 18:30:34', '2022-05-02 18:30:34'),
(940, '5', 'income', 'Income', 'le revenu', 1, '2022-05-02 18:30:34', '2022-05-02 18:30:34'),
(941, '5', 'expense', 'Expense', 'Frais', 1, '2022-05-02 18:30:34', '2022-05-02 18:30:34'),
(942, '5', 'chart_of_account', 'Chart Of Account', 'Charte dutilisation', 1, '2022-05-02 18:30:34', '2022-05-02 18:30:34'),
(943, '5', 'payment_method', 'Payment Method', 'Mode de paiement', 1, '2022-05-02 18:30:34', '2022-05-02 18:30:34'),
(944, '5', 'bank_account', 'Bank Account', 'Compte bancaire', 1, '2022-05-02 18:30:34', '2022-05-02 18:30:34'),
(945, '5', 'a_c_Head', 'A/C Head', 'Tête A / C', 1, '2022-05-02 18:30:34', '2022-05-02 18:30:34'),
(946, '5', 'add_expense', 'Add Expense', 'Ajouter une dépense', 1, '2022-05-02 18:30:34', '2022-05-02 18:30:34'),
(947, '5', 'search_income_expense', 'Search Income/Expense', 'Recherche revenu / dépense', 1, '2022-05-02 18:30:34', '2022-05-02 18:30:34'),
(948, '5', 'item_Receive', 'Item Receive', 'Reception d\'articles', 1, '2022-05-02 18:30:34', '2022-06-01 07:30:33'),
(949, '5', 'income_head', 'Income Head', 'Chef de revenu', 1, '2022-05-02 18:30:34', '2022-05-02 18:30:34'),
(950, '5', 'sells', 'Sells', 'Vend', 1, '2022-05-02 18:30:34', '2022-05-02 18:30:34'),
(951, '5', 'grand_total', 'Grand Total', 'somme finale', 1, '2022-05-02 18:30:34', '2022-05-02 18:30:34'),
(952, '5', 'expense_head', 'Expense Head', 'Chef de dépenses', 1, '2022-05-02 18:30:34', '2022-05-02 18:30:34'),
(953, '5', 'purchase', 'Purchase', 'achat', 1, '2022-05-02 18:30:34', '2022-05-02 18:30:34'),
(954, '5', 'from', 'From', 'De', 1, '2022-05-02 18:30:34', '2022-05-02 18:30:34'),
(955, '5', 'head', 'Head', 'Tête', 1, '2022-05-02 18:30:34', '2022-05-02 18:30:34'),
(956, '5', 'method', 'Method', 'Méthode', 1, '2022-05-02 18:30:34', '2022-05-02 18:30:34'),
(957, '5', 'account_name', 'Account Name', 'Nom du compte', 1, '2022-05-02 18:30:34', '2022-05-02 18:30:34'),
(958, '5', 'opening_balance', 'Opening Balance', 'Solde douverture', 1, '2022-05-02 18:30:34', '2022-05-02 18:30:34'),
(959, '5', 'account', 'Account', 'Compte', 1, '2022-05-02 18:30:34', '2022-05-02 18:30:34'),
(960, '6', 'human_resource', 'Human resource', 'Ressource humaine', 1, '2022-05-02 18:30:34', '2022-05-02 18:30:34'),
(961, '6', 'staff_directory', 'Staff Directory', 'Répertoire personnel', 1, '2022-05-02 18:30:34', '2022-05-02 18:30:34'),
(962, '6', 'staff_attendance', 'Staff Attendance', 'Présence du personnel', 1, '2022-05-02 18:30:34', '2022-05-02 18:30:34'),
(963, '6', 'staff_attendance_report', 'Staff Attendance Report', 'Rapport de présence du personnel', 1, '2022-05-02 18:30:34', '2022-05-02 18:30:34'),
(964, '6', 'payroll', 'Payroll', 'Paie', 1, '2022-05-02 18:30:34', '2022-05-02 18:30:34'),
(965, '6', 'payroll_report', 'Payroll Report', 'Rapport de paie', 1, '2022-05-02 18:30:34', '2022-05-02 18:30:34'),
(966, '6', 'approve_leave_request', 'Approve Leave Request', 'Approuver la demande de congé', 1, '2022-05-02 18:30:34', '2022-05-02 18:30:34'),
(967, '6', 'apply_leave', 'Apply Leave', 'Appliquer congé', 1, '2022-05-02 18:30:34', '2022-05-02 18:30:34'),
(968, '6', 'leave_type', 'Leave type', 'Type de congé', 1, '2022-05-02 18:30:34', '2022-05-31 23:14:33'),
(969, '6', 'department', 'Department', 'département', 1, '2022-05-02 18:30:34', '2022-05-02 18:30:34'),
(970, '6', 'designation', 'Designation', 'La désignation', 1, '2022-05-02 18:30:34', '2022-05-02 18:30:34'),
(971, '6', 'staff_list', 'Staff List', 'Liste du personnel', 1, '2022-05-02 18:30:34', '2022-05-02 18:30:34'),
(972, '6', 'add_staff', 'Add Staff', 'Ajouter du personnel', 1, '2022-05-02 18:30:34', '2022-05-02 18:30:34'),
(973, '6', 'search_by_staff_id', 'Search By Staff Id', 'Rechercher par ID de personnel', 1, '2022-05-02 18:30:34', '2022-05-02 18:30:34'),
(974, '6', 'staff', 'Staff', 'Personnel', 1, '2022-05-02 18:30:34', '2022-05-02 18:30:34'),
(975, '6', 'select_role', 'Select Role', 'Sélectionnez un rôle', 1, '2022-05-02 18:30:34', '2022-05-02 18:30:34'),
(976, '6', 'generate_payroll', 'Generate Payroll', 'Générer la paie', 1, '2022-05-02 18:30:34', '2022-05-02 18:30:34'),
(977, '6', 'generated', 'Generate', 'produire', 1, '2022-05-02 18:30:34', '2022-05-02 18:30:34'),
(978, '6', 'paid', 'Paid', 'Payé', 1, '2022-05-02 18:30:34', '2022-05-02 18:30:34'),
(979, '6', 'not', 'Not', 'ne pas', 1, '2022-05-02 18:30:34', '2022-05-02 18:30:34'),
(980, '6', 'proceed_to_pay', 'Proceed to Pay', 'Procéder au paiement', 1, '2022-05-02 18:30:34', '2022-05-02 18:30:34'),
(981, '6', 'view_payslip', 'View Payslip', 'Voir fiche de paie', 1, '2022-05-02 18:30:34', '2022-05-02 18:30:34'),
(982, '6', 'month', 'Month', 'Mois', 1, '2022-05-02 18:30:34', '2022-05-02 18:30:34'),
(983, '6', 'payslip', 'Payslip', 'Fiche de paie', 1, '2022-05-02 18:30:34', '2022-05-02 18:30:34'),
(984, '6', 'basic_salary', 'Basic Salary', 'Salaire de base', 1, '2022-05-02 18:30:34', '2022-05-02 18:30:34'),
(985, '6', 'earnings', 'Earnings', 'Gains', 1, '2022-05-02 18:30:34', '2022-05-02 18:30:34'),
(986, '6', 'deductions', 'Deductions', 'Déductions', 1, '2022-05-02 18:30:34', '2022-05-02 18:30:34'),
(987, '6', 'gross_salary', 'Gross Salary', 'Salaire brut', 1, '2022-05-02 18:30:34', '2022-05-02 18:30:34'),
(988, '6', 'tax', 'Tax', 'Impôt', 1, '2022-05-02 18:30:34', '2022-05-02 18:30:34'),
(989, '6', 'net_salary', 'Net Salary', 'Salaire net', 1, '2022-05-02 18:30:34', '2022-05-02 18:30:34'),
(990, '6', 'to', 'To', 'À', 1, '2022-05-02 18:30:34', '2022-05-02 18:30:34'),
(991, '6', 'apply_date', 'Apply date', 'Date dapplication', 1, '2022-05-02 18:30:34', '2022-05-02 18:30:34'),
(992, '6', 'pending', 'Pending', 'en attente', 1, '2022-05-02 18:30:34', '2022-05-31 23:14:33'),
(993, '6', 'approved', 'Approved', 'Approuvé', 1, '2022-05-02 18:30:34', '2022-05-02 18:30:34'),
(994, '6', 'cancelled', 'Cancelled', 'Annulé', 1, '2022-05-02 18:30:34', '2022-05-02 18:30:34'),
(995, '6', 'leave_from', 'Leave From', 'Partir de', 1, '2022-05-02 18:30:34', '2022-05-02 18:30:34'),
(996, '6', 'leave_to', 'Leave to', 'Laisser à', 1, '2022-05-02 18:30:34', '2022-05-02 18:30:34'),
(997, '6', 'reason', 'Reason', 'Raison', 1, '2022-05-02 18:30:34', '2022-05-02 18:30:34'),
(998, '6', 'leave', 'Leave', 'Congé', 1, '2022-05-02 18:30:34', '2022-05-31 23:14:33'),
(999, '6', 'type_name', 'Type Name', 'Nom du type', 1, '2022-05-02 18:30:34', '2022-05-02 18:30:34'),
(1000, '6', 'total_days', 'Total Days', 'Nombre total de jours', 1, '2022-05-02 18:30:34', '2022-05-02 18:30:34'),
(1001, '6', 'leave_type_list', 'Leave Type List', 'Laisser la liste des types', 1, '2022-05-02 18:30:34', '2022-06-01 07:34:42'),
(1002, '6', 'departments', 'Departments', 'Départements', 1, '2022-05-02 18:30:34', '2022-05-02 18:30:34'),
(1003, '6', 'department_name', 'Department Name', 'Nom du département', 1, '2022-05-02 18:30:34', '2022-05-02 18:30:34'),
(1004, '6', 'designations', 'Designations', 'Désignations', 1, '2022-05-02 18:30:34', '2022-05-02 18:30:34'),
(1005, '6', 'staffs_payroll', 'Staffs Payroll', 'Personnel', 1, '2022-05-02 18:30:34', '2022-05-02 18:30:34'),
(1006, '6', 'staff_no', 'Staff No', 'Numéro du personnel', 1, '2022-05-02 18:30:35', '2022-05-02 18:30:35'),
(1007, '6', 'date_of_joining', 'Date of Joining', 'Date dadhésion', 1, '2022-05-02 18:30:35', '2022-05-02 18:30:35'),
(1008, '6', 'value', 'Value', 'Valeur', 1, '2022-05-02 18:30:35', '2022-05-02 18:30:35'),
(1009, '6', 'payroll_summary', 'Payroll Summary', 'Résumé de la paie', 1, '2022-05-02 18:30:35', '2022-05-02 18:30:35'),
(1010, '6', 'calculate', 'calculate', 'calculer', 1, '2022-05-02 18:30:35', '2022-05-02 18:30:35'),
(1011, '6', 'earning', 'Earning', 'Revenus', 1, '2022-05-02 18:30:35', '2022-05-02 18:30:35'),
(1012, '6', 'deduction', 'Deduction', 'Déduction', 1, '2022-05-02 18:30:35', '2022-05-02 18:30:35'),
(1013, '6', 'submit', 'Submit', 'Soumettre', 1, '2022-05-02 18:30:35', '2022-05-02 18:30:35'),
(1014, '6', 'edit_staff', 'Edit Staff', 'Modifier le personnel', 1, '2022-05-02 18:30:35', '2022-05-02 18:30:35'),
(1015, '6', 'basic_info', 'Basic Info', 'Informations de base', 1, '2022-05-02 18:30:35', '2022-05-02 18:30:35'),
(1016, '6', 'staff_number', 'Staff Number', 'Numéro du personnel', 1, '2022-05-02 18:30:35', '2022-05-02 18:30:35'),
(1017, '6', 'emergency_mobile', 'Emergency Mobile', 'Mobile durgence', 1, '2022-05-02 18:30:35', '2022-05-02 18:30:35'),
(1018, '6', 'current_address', 'Current Address', 'Adresse actuelle', 1, '2022-05-02 18:30:35', '2022-05-02 18:30:35'),
(1019, '6', 'permanent_address', 'Permanent Address', 'Adresse permanente', 1, '2022-05-02 18:30:35', '2022-05-02 18:30:35'),
(1020, '6', 'qualifications', 'Qualifications', 'Qualifications', 1, '2022-05-02 18:30:35', '2022-05-02 18:30:35'),
(1021, '6', 'experience', 'Experience', 'Expérience', 1, '2022-05-02 18:30:35', '2022-05-02 18:30:35'),
(1022, '6', 'payroll_details', 'Payroll Details', 'Détails de la paie', 1, '2022-05-02 18:30:35', '2022-05-02 18:30:35'),
(1023, '6', 'epf_no', 'EPF NO', 'EPF NO', 1, '2022-05-02 18:30:35', '2022-05-02 18:30:35'),
(1024, '6', 'bank_info_details', 'Bank Info Details', 'Informations bancaires', 1, '2022-05-02 18:30:35', '2022-05-02 18:30:35'),
(1025, '6', 'bank_account_name', 'Bank Account Name', 'Nom du compte bancaire', 1, '2022-05-02 18:30:35', '2022-05-02 18:30:35'),
(1026, '6', 'branch_name', 'Branch Name', 'Nom de la filiale', 1, '2022-05-02 18:30:35', '2022-05-02 18:30:35'),
(1027, '6', 'social_links_details', 'Social Links Details', 'Liens sociaux Détails', 1, '2022-05-02 18:30:35', '2022-05-02 18:30:35'),
(1028, '6', 'facebook_url', 'Facebook Url', 'Ladresse URL de Facebook', 1, '2022-05-02 18:30:35', '2022-05-02 18:30:35'),
(1029, '6', 'twitter_url', 'Twitter Url', 'URL de Twitter', 1, '2022-05-02 18:30:35', '2022-05-02 18:30:35'),
(1030, '6', 'linkedin_url', 'Linkedin Url', 'URL de Linkedin', 1, '2022-05-02 18:30:35', '2022-05-02 18:30:35'),
(1031, '6', 'instragram_url', 'Instragram Url', 'URL Instragram', 1, '2022-05-02 18:30:35', '2022-05-02 18:30:35'),
(1032, '6', 'update_staff', 'Update Staff', 'Mettre à jour le personnel', 1, '2022-05-02 18:30:35', '2022-05-02 18:30:35'),
(1033, '6', 'pending_leave_request', 'Pending Leave', 'Congé en attente', 1, '2022-05-02 18:30:35', '2022-05-31 23:14:32'),
(1034, '7', 'leave', 'Leave', 'Congé', 1, '2022-05-02 18:30:35', '2022-05-17 10:34:44'),
(1035, '7', 'leave_define', 'Leave Define', 'Définir Congé', 1, '2022-05-02 18:30:35', '2022-05-17 10:34:44'),
(1036, '7', 'my_remaining_leaves', 'My Remaining Leaves', 'Mes congés restants', 1, '2022-05-02 18:30:35', '2022-05-31 23:16:33'),
(1037, '7', 'remaining_days', 'Remaining Days', 'Jours restants', 1, '2022-05-02 18:30:35', '2022-05-02 18:30:35'),
(1038, '7', 'extra_taken', 'Extra Taken', 'Extra pris', 1, '2022-05-02 18:30:35', '2022-05-02 18:30:35'),
(1039, '7', 'total_days', 'Total Days', 'Nombre total de jours', 1, '2022-05-02 18:30:35', '2022-05-02 18:30:35'),
(1040, '7', 'days', 'Days', 'Journées', 1, '2022-05-02 18:30:35', '2022-05-02 18:30:35'),
(1041, '8', 'examination', 'Examination', 'Examen', 1, '2022-05-02 18:30:35', '2022-05-02 18:30:35'),
(1042, '8', 'exam', 'Exam', 'Examen', 1, '2022-05-02 18:30:35', '2022-05-02 18:30:35'),
(1043, '8', 'add_exam_type', 'Add Exam Type', 'Ajouter un type dexamen', 1, '2022-05-02 18:30:35', '2022-05-02 18:30:35'),
(1044, '8', 'exam_schedule', 'Exam Schedule', 'Calendrier des examens', 1, '2022-05-02 18:30:35', '2022-05-02 18:30:35'),
(1045, '8', 'marks_register', 'Marks Register', 'Registre des marques', 1, '2022-05-02 18:30:35', '2022-05-02 18:30:35'),
(1046, '8', 'final_result', 'Final Result', 'Résultat final', 1, '2022-05-02 18:30:35', '2022-05-31 23:36:52'),
(1047, '8', 'seat_plan', 'Seat Plan', 'Plan de siège', 1, '2022-05-02 18:30:35', '2022-05-02 18:30:35'),
(1048, '8', 'exam_attendance', 'Exam Attendance', 'Présence à l\'examen', 1, '2022-05-02 18:30:35', '2022-06-14 12:18:17'),
(1049, '8', 'with', 'With', 'Avec', 1, '2022-05-02 18:30:35', '2022-05-31 23:36:52'),
(1050, '8', 'marks_grade', 'Marks Grade', 'Note de marques', 1, '2022-05-02 18:30:35', '2022-05-02 18:30:35'),
(1051, '8', 'custom_result_setting', 'Custom Result Setting', 'paramètre de personnalisation  résultats', 1, '2022-05-02 18:30:35', '2022-06-03 10:29:39'),
(1052, '8', 'send_marks_by_sms', 'Send Marks By Sms', 'Envoyer des notes par sms', 1, '2022-05-02 18:30:35', '2022-05-31 23:36:52'),
(1053, '8', 'percentage', 'Percentage', 'Pourcentage', 1, '2022-05-02 18:30:35', '2022-05-31 23:36:52'),
(1054, '8', 'question_group', 'Question Group', 'Groupe de questions', 1, '2022-05-02 18:30:35', '2022-05-02 18:30:35'),
(1055, '8', 'with_out', 'With out', 'sans autant', 1, '2022-05-02 18:30:35', '2022-05-31 23:36:52'),
(1056, '8', 'question_bank', 'Question Bank', 'Banque de questions', 1, '2022-05-02 18:30:35', '2022-05-02 18:30:35'),
(1057, '8', 'online_exam', 'Online Exam', 'Examen en ligne', 1, '2022-05-02 18:30:35', '2022-05-02 18:30:35'),
(1058, '8', 'exam_type', 'Exam Type', 'Type d\'examen', 1, '2022-05-02 18:30:35', '2022-06-14 12:18:17'),
(1059, '8', 'exam_setup', 'Exam Setup', 'Configuration de l\'examen', 1, '2022-05-02 18:30:35', '2022-06-14 12:18:17'),
(1060, '8', 'exam_name', 'Exam Name', 'Nom de lexamen', 1, '2022-05-02 18:30:35', '2022-05-02 18:30:35'),
(1061, '8', 'sl', 'Sl', 'Sl', 1, '2022-05-02 18:30:35', '2022-05-02 18:30:35'),
(1062, '8', 'select_subjects', 'Select Subjects', 'Sélectionner des matières', 1, '2022-05-02 18:30:35', '2022-06-14 12:18:17'),
(1063, '8', 'exam_mark', 'Exam Mark', 'Note dexamen', 1, '2022-05-02 18:30:35', '2022-05-31 23:36:52'),
(1064, '8', 'add_mark_distributions', 'Add Mark Distributions', 'Ajouter des distributions de points', 1, '2022-05-02 18:30:35', '2022-05-31 23:36:52'),
(1065, '8', 'exam_title', 'Exam Title', 'Titre de lexamen', 1, '2022-05-02 18:30:35', '2022-05-02 18:30:35'),
(1066, '8', 'ct_AT_Exam', 'Name', 'prénom', 1, '2022-05-02 18:30:35', '2022-05-02 18:30:35'),
(1067, '8', 'mark_distribution', 'Mark Distribution', 'Distribution des notes', 1, '2022-05-02 18:30:35', '2022-05-31 23:36:51'),
(1068, '8', 'subject', 'Subject', 'Sujet', 1, '2022-05-02 18:30:35', '2022-05-31 23:36:51'),
(1069, '8', 'total_mark', 'Total Mark', 'Total des points', 1, '2022-05-02 18:30:35', '2022-05-31 23:36:51'),
(1070, '8', 'view_status', 'View Status', 'Voir le statut', 1, '2022-05-02 18:30:35', '2022-05-02 18:30:35'),
(1071, '8', 'copy', 'Copy', 'Copie', 1, '2022-05-02 18:30:35', '2022-05-02 18:30:35'),
(1072, '8', 'add_exam_schedule', 'add Exam Schedule', 'ajouter un calendrier dexamen', 1, '2022-05-02 18:30:35', '2022-05-02 18:30:35'),
(1073, '8', 'FALSE', 'FALSE', 'FAUX', 1, '2022-05-02 18:30:35', '2022-05-31 23:36:51'),
(1074, '8', 'exam_list', 'Exam List', 'Liste dexamen', 1, '2022-05-02 18:30:35', '2022-05-02 18:30:35'),
(1075, '8', 'archive', 'Archive', 'Archive', 1, '2022-05-02 18:30:35', '2022-05-02 18:30:35'),
(1076, '8', 'marks', 'Marks', 'Des notes', 1, '2022-05-02 18:30:35', '2022-05-02 18:30:35'),
(1077, '8', 'official', 'Official', 'Officielle', 1, '2022-05-02 18:30:35', '2022-05-31 23:36:51'),
(1078, '8', 'select_exam', 'Select Exam', 'Sélectionnez un examen', 1, '2022-05-02 18:30:35', '2022-05-02 18:30:35'),
(1079, '8', 'transcript', 'Transcript', 'Transcription', 1, '2022-05-02 18:30:35', '2022-05-31 23:36:51'),
(1080, '8', 'percent', 'Percent', 'Pourcentage', 1, '2022-05-02 18:30:35', '2022-05-31 23:36:51'),
(1081, '8', 'previous', 'Previous', 'Précédent', 1, '2022-05-02 18:30:35', '2022-05-31 23:36:51'),
(1082, '8', 'seat_plan_report', 'Seat Plan Report', 'Rapport de plan de siège', 1, '2022-05-02 18:30:35', '2022-05-02 18:30:35'),
(1083, '8', 'record', 'Record', 'Enregistrements', 1, '2022-05-02 18:30:35', '2022-05-31 23:36:51'),
(1084, '8', 'assign_students', 'Assign Students', 'Attribuer des élèves', 1, '2022-05-02 18:30:35', '2022-06-03 10:29:39'),
(1085, '8', 'search_by_year', 'Year', 'Année', 1, '2022-05-02 18:30:35', '2022-05-31 23:36:51'),
(1086, '8', 'start_end_time', 'start-end time', 'heure de début', 1, '2022-05-02 18:30:35', '2022-05-02 18:30:35'),
(1087, '8', 'button', 'Button', 'Bouton', 1, '2022-05-02 18:30:35', '2022-05-31 23:36:51'),
(1088, '8', 'total_students', 'Total Students', 'Total des élèves', 1, '2022-05-02 18:30:35', '2022-06-03 10:29:39'),
(1089, '8', 'exam_not_found', 'Exam schedule is not available.', 'Programme d', 1, '2022-05-02 18:30:35', '2022-06-03 10:29:39'),
(1090, '8', 'attendance_create', 'Attendance Create', 'Créer Présence', 1, '2022-05-02 18:30:35', '2022-05-31 23:36:51'),
(1091, '8', 'biometrics', 'Biometrics', 'Biometrique', 1, '2022-05-02 18:30:35', '2022-05-31 23:36:51'),
(1092, '8', 'grade', 'Grade', 'Qualité', 1, '2022-05-02 18:30:35', '2022-05-02 18:30:35'),
(1093, '8', 'consider_start_time', 'Consider Start Time', 'Considérer l', 1, '2022-05-02 18:30:35', '2022-06-14 12:18:17'),
(1094, '8', 'gpa', 'GPA', 'GPA', 1, '2022-05-02 18:30:35', '2022-05-02 18:30:35'),
(1095, '8', 'consider_end_time', 'Consider End Time', 'Considérer l', 1, '2022-05-02 18:30:35', '2022-06-14 12:18:17'),
(1096, '8', 'percent_from', 'Percent From', 'Pourcentage de', 1, '2022-05-02 18:30:35', '2022-05-31 23:36:51'),
(1097, '8', 'PDF', 'PDF', 'PDF', 1, '2022-05-02 18:30:35', '2022-05-02 18:30:35'),
(1098, '8', 'percent_upto', 'Percent Upto', 'Pourcentage jusquà', 1, '2022-05-02 18:30:35', '2022-05-02 18:30:35'),
(1099, '8', 'evalution', 'Evalution', 'Evaluation', 1, '2022-05-02 18:30:35', '2022-05-31 23:36:51'),
(1100, '8', 'send_marks_via_SMS', 'Send Marks Via SMS', 'Envoyer des notes par SMS', 1, '2022-05-02 18:30:35', '2022-05-31 23:36:51'),
(1101, '8', 'Ending', 'Ending', 'Fin', 1, '2022-05-02 18:30:35', '2022-05-31 23:36:51'),
(1102, '8', 'select_receiver', 'Select Receiver', 'Sélectionnez le destinataire', 1, '2022-05-02 18:30:35', '2022-05-02 18:30:35'),
(1103, '8', 'final_result', 'Final Result', 'Résultat final', 1, '2022-05-02 18:30:35', '2022-05-31 23:36:51'),
(1104, '8', 'students', 'Students', 'Elèves', 1, '2022-05-02 18:30:35', '2022-06-03 10:29:39'),
(1105, '8', 'third_term', 'Third Term', 'Troisième semestre', 1, '2022-05-02 18:30:35', '2022-05-31 23:36:51'),
(1106, '8', 'select_group', 'Select Group', 'Sélectionner un groupe', 1, '2022-05-02 18:30:35', '2022-05-02 18:30:35'),
(1107, '8', 'second_term', 'Second Term', 'Second semestre', 1, '2022-05-02 18:30:35', '2022-05-31 23:36:51'),
(1108, '8', 'question_type', 'Question Type', 'Type de question', 1, '2022-05-02 18:30:35', '2022-05-02 18:30:35'),
(1109, '8', 'first_term', 'First term', 'Premier semestre', 1, '2022-05-02 18:30:35', '2022-05-31 23:36:51'),
(1110, '8', 'multiple_choice', 'Multiple Choice', 'Choix multiple', 1, '2022-05-02 18:30:35', '2022-05-02 18:30:35'),
(1111, '8', 'create_class_routine', 'Create class routine', 'Créer une routine de la classe', 1, '2022-05-02 18:30:35', '2022-05-31 23:36:51'),
(1112, '8', 'true_false', 'True False', 'Vrai faux', 1, '2022-05-02 18:30:35', '2022-05-02 18:30:35'),
(1113, '8', 'optional', 'Optional', 'Facultatif', 1, '2022-05-02 18:30:35', '2022-06-03 10:29:39'),
(1114, '8', 'fill_in_the_blanks', 'Fill in the Blanks', 'Remplir les espaces vides', 1, '2022-05-02 18:30:35', '2022-05-02 18:30:35'),
(1115, '8', 'question', 'Question', 'Question', 1, '2022-05-02 18:30:35', '2022-05-02 18:30:35'),
(1116, '8', 'number_of_options', 'Number Of Options', 'Nombre doptions', 1, '2022-05-02 18:30:35', '2022-05-02 18:30:35'),
(1117, '8', 'with', 'With', 'Avec', 1, '2022-05-02 18:30:35', '2022-05-31 23:36:51'),
(1118, '8', 'create', 'Create', 'Créer', 1, '2022-05-02 18:30:35', '2022-05-02 18:30:35'),
(1119, '8', 'with_out', 'With out', 'Sans pour autant', 1, '2022-05-02 18:30:35', '2022-05-31 23:36:51'),
(1120, '8', 'option', 'option', 'option', 1, '2022-05-02 18:30:35', '2022-05-02 18:30:35'),
(1121, '8', 'true', 'TRUE', 'VRAI', 1, '2022-05-02 18:30:35', '2022-05-02 18:30:35'),
(1122, '8', 'false', 'FALSE', 'FAUX', 1, '2022-05-02 18:30:35', '2022-05-02 18:30:35'),
(1123, '8', 'suitable_words', 'Suitable Words', 'Mots convenables', 1, '2022-05-02 18:30:35', '2022-05-02 18:30:35'),
(1124, '8', 'start_time', 'Start Time', 'Heure de début', 1, '2022-05-02 18:30:35', '2022-05-02 18:30:35'),
(1125, '8', 'end_time', 'End time', 'Heure de fin', 1, '2022-05-02 18:30:35', '2022-05-02 18:30:35'),
(1126, '8', 'minimum_percentage', 'Minimum Percentage', 'Pourcentage minimum', 1, '2022-05-02 18:30:35', '2022-05-02 18:30:35'),
(1127, '8', 'instruction', 'Instruction', 'Instruction', 1, '2022-05-02 18:30:35', '2022-05-02 18:30:35'),
(1128, '8', 'exam_date', 'Exam Date', 'Date de lexamen', 1, '2022-05-02 18:30:35', '2022-05-02 18:30:35'),
(1129, '8', 'time', 'Time', 'Temps', 1, '2022-05-02 18:30:35', '2022-05-02 18:30:35'),
(1130, '8', 'published', 'Published', 'Publié', 1, '2022-05-02 18:30:35', '2022-05-02 18:30:35'),
(1131, '8', 'manage_question', 'Manage Question', 'Gérer la question', 1, '2022-05-02 18:30:35', '2022-05-02 18:30:35'),
(1132, '8', 'published_now', 'Published Now', 'Publié maintenant', 1, '2022-05-02 18:30:35', '2022-05-02 18:30:35'),
(1133, '8', 'view_result', 'View Result', 'Voir résultat', 1, '2022-05-02 18:30:35', '2022-05-02 18:30:35'),
(1134, '8', 'monday', 'Monday', 'Lundi', 1, '2022-05-02 18:30:35', '2022-05-02 18:30:35'),
(1135, '8', 'tuesday', 'Tuesday', 'Mardi', 1, '2022-05-02 18:30:35', '2022-05-02 18:30:35'),
(1136, '8', 'wednesday', 'Wednesday', 'Mercredi', 1, '2022-05-02 18:30:35', '2022-05-02 18:30:35'),
(1137, '8', 'thursday', 'Thursday', 'Jeudi', 1, '2022-05-02 18:30:35', '2022-05-02 18:30:35'),
(1138, '8', 'friday', 'Friday', 'Vendredi', 1, '2022-05-02 18:30:35', '2022-05-02 18:30:35'),
(1139, '8', 'Saturday', 'Saturday', 'samedi', 1, '2022-05-02 18:30:35', '2022-05-02 18:30:35'),
(1140, '8', 'sunday', 'Sunday', 'dimanche', 1, '2022-05-02 18:30:35', '2022-05-02 18:30:35'),
(1141, '8', 'room_number', 'Room Number', 'Numéro de chambre', 1, '2022-05-02 18:30:35', '2022-05-02 18:30:35'),
(1142, '8', 'not_scheduled', 'Not Scheduled', 'Non programmé', 1, '2022-05-02 18:30:35', '2022-05-31 23:36:51'),
(1143, '8', 'result_view', 'Result View', 'Résultat', 1, '2022-05-02 18:30:35', '2022-05-02 18:30:35'),
(1144, '8', 'total_marks', 'Total Marks', 'Total des notes', 1, '2022-05-02 18:30:35', '2022-05-02 18:30:35'),
(1145, '8', 'obtained_marks', 'Obtained Marks', 'Note obtenues', 1, '2022-05-02 18:30:35', '2022-05-31 23:36:51'),
(1146, '8', 'marking', 'Marking', 'Notation', 1, '2022-05-02 18:30:35', '2022-05-31 23:36:51'),
(1147, '8', 'view_answer_marking', 'View answer & marking', 'Voir la réponse et la notation', 1, '2022-05-02 18:30:35', '2022-05-31 23:36:51'),
(1148, '8', 'online_exam_question', 'Online Exam Question', 'Question dexamen en ligne', 1, '2022-05-02 18:30:35', '2022-05-02 18:30:35'),
(1149, '8', 'question_list', 'Question List', 'Liste de questions', 1, '2022-05-02 18:30:35', '2022-05-02 18:30:35'),
(1150, '8', 'questions', 'Questions', 'Des questions', 1, '2022-05-02 18:30:35', '2022-05-02 18:30:35'),
(1151, '8', 'exam_details', 'Exam Details', 'Détails de lexamen', 1, '2022-05-02 18:30:35', '2022-05-02 18:30:35'),
(1152, '8', 'passing_percentage', 'Passing Percentage', 'Pourcentage de réussite', 1, '2022-05-02 18:30:35', '2022-05-31 23:36:51'),
(1153, '8', 'online_active_exams', 'Online Active Exams', 'Examens actifs en ligne', 1, '2022-05-02 18:30:35', '2022-05-02 18:30:35'),
(1154, '8', 'take_exam', 'Take Exam', 'Passer un examen', 1, '2022-05-02 18:30:35', '2022-05-02 18:30:35'),
(1155, '8', 'classes', 'Classes', 'Des classes', 1, '2022-05-02 18:30:35', '2022-05-02 18:30:35'),
(1156, '8', 'exam_terms', 'Exam Terms', 'Termes de lexamen', 1, '2022-05-02 18:30:35', '2022-05-02 18:30:35'),
(1157, '8', 'document', 'document', 'document', 1, '2022-05-02 18:30:35', '2022-05-02 18:30:35'),
(1158, '8', 'timeline', 'Timeline', 'Chronologie', 1, '2022-05-02 18:30:35', '2022-05-02 18:30:35'),
(1159, '8', 'Parent_Guardian_Details', 'Parent / Guardian Details', 'Détails sur le parent / tuteur', 1, '2022-05-02 18:30:35', '2022-05-02 18:30:35'),
(1160, '8', 'full_marks', 'Full Marks', 'La totalité des points', 1, '2022-05-02 18:30:35', '2022-05-02 18:30:35'),
(1161, '8', 'results', 'Results', 'Résultats', 1, '2022-05-02 18:30:35', '2022-05-02 18:30:35'),
(1162, '8', 'visible_to_this_person', 'Visible to this person', 'Visible à cette personne', 1, '2022-05-02 18:30:35', '2022-05-02 18:30:35'),
(1163, '9', 'academics', 'Academics', 'SECTEUR ACADEMIQUE', 1, '2022-05-02 18:30:35', '2022-06-14 10:59:58'),
(1164, '9', 'class_routine', 'Class Routine', 'EMPLOI DU TEMPS', 1, '2022-05-02 18:30:35', '2022-06-14 10:59:58'),
(1165, '9', 'class_routine_create', 'Class Routine Create', 'Créer  un emploi de temps  de classe', 1, '2022-05-02 18:30:35', '2022-06-14 12:02:24'),
(1166, '9', 'view_teacher_routine', 'View Class Routine(Teacher)', 'Voir l', 1, '2022-05-02 18:30:35', '2022-06-14 12:02:24'),
(1167, '9', 'assign_subject', 'Assign Subject', 'Attribuer une matière', 1, '2022-05-02 18:30:35', '2022-06-14 12:02:24'),
(1168, '9', 'assign_subject_create', 'Assign Subject create', 'Assigner la matière créer', 1, '2022-05-02 18:30:35', '2022-06-14 12:02:24'),
(1169, '9', 'assign_class_teacher', 'Assign Class Teacher', 'Attribuer un enseignant de classe', 1, '2022-05-02 18:30:35', '2022-05-02 18:30:35'),
(1170, '9', 'subjects', 'Subjects', 'Matières', 1, '2022-05-02 18:30:35', '2022-06-14 10:59:57'),
(1171, '9', 'class', 'Class', 'Classe', 1, '2022-05-02 18:30:35', '2022-05-02 18:30:35'),
(1172, '9', 'section', 'Section', 'SERIE', 1, '2022-05-02 18:30:35', '2022-06-14 10:59:57'),
(1173, '9', 'class_room', 'Class Room', 'Salle de cours', 1, '2022-05-02 18:30:35', '2022-05-02 18:30:35'),
(1174, '9', 'n_a', 'N/A', 'N / A', 1, '2022-05-02 18:30:35', '2022-05-02 18:30:35'),
(1175, '9', 'class_teacher', 'Class Teacher', 'Professeur de classe', 1, '2022-05-02 18:30:35', '2022-05-02 18:30:35'),
(1176, '9', 'assign_teacher', 'Assign teacher', 'Assigner un enseignant', 1, '2022-05-02 18:30:35', '2022-05-02 18:30:35'),
(1177, '9', 'subject_name', 'Subject Name', 'Nom de la matière', 1, '2022-05-02 18:30:35', '2022-06-14 12:02:24'),
(1178, '9', 'theory', 'Theory', 'Théorie', 1, '2022-05-02 18:30:35', '2022-05-02 18:30:35'),
(1179, '9', 'practical', 'Practical', 'Pratique', 1, '2022-05-02 18:30:35', '2022-05-02 18:30:35'),
(1180, '9', 'subject_code', 'Subject Code', 'Code de matière', 1, '2022-05-02 18:30:35', '2022-06-14 12:02:24'),
(1181, '9', 'subject_type', 'Subject Type', 'Type de matière', 1, '2022-05-02 18:30:35', '2022-06-14 12:02:24'),
(1182, '9', 'capacity', 'Capacity', 'Capacité', 1, '2022-05-02 18:30:35', '2022-05-02 18:30:35'),
(1183, '9', 'cl_ex_time_setup', 'Cl/Ex Time Setup', 'Configuration de lheure Cl / Ex', 1, '2022-05-02 18:30:35', '2022-05-02 18:30:35'),
(1184, '9', 'class_exam_time_setup', 'Class & Exam Time Setup', 'Configuration du temps de cours et dexamen', 1, '2022-05-02 18:30:35', '2022-05-02 18:30:35'),
(1185, '9', 'class_time', 'Class Time', 'Le moment daller en classe', 1, '2022-05-02 18:30:35', '2022-05-02 18:30:35'),
(1186, '9', 'time_type', 'Time Type', 'Type de temps', 1, '2022-05-02 18:30:35', '2022-05-02 18:30:35'),
(1187, '9', 'exam_time', 'Exam Time', 'Temps dexamen', 1, '2022-05-02 18:30:35', '2022-05-02 18:30:35'),
(1188, '9', 'period', 'Period', 'Période', 1, '2022-05-02 18:30:35', '2022-05-02 18:30:35'),
(1189, '9', 'select_time', 'Select Time', 'Sélectionnez lheure', 1, '2022-05-02 18:30:36', '2022-05-02 18:30:36'),
(1190, '9', 'not_assigned_yet', 'Not assigned yet', 'Pas encore assigné', 1, '2022-05-02 18:30:36', '2022-05-02 18:30:36'),
(1191, '9', 'of', 'of', 'de', 1, '2022-05-02 18:30:36', '2022-06-01 07:43:49'),
(1192, '9', 'about', 'About', 'A propos', 1, '2022-05-02 18:30:36', '2022-06-14 12:07:29'),
(1193, '9', 'payable', 'Payable', 'Payable', 1, '2022-05-02 18:30:36', '2022-05-02 18:30:36'),
(1194, '9', 'start', 'Start', 'Début', 1, '2022-05-02 18:30:36', '2022-06-01 07:43:49'),
(1195, '9', 'end', 'End', 'Fin', 1, '2022-05-02 18:30:36', '2022-06-01 07:43:49'),
(1196, '9', 'uqinue_fine_list', 'Uqinue fine list', 'Belle liste unique', 1, '2022-05-02 18:30:36', '2022-06-01 07:43:49'),
(1197, '9', 'days_after_date', 'Days After Due Date', 'Jours après la date d', 1, '2022-05-02 18:30:36', '2022-06-06 10:51:50'),
(1198, '9', 'fixed', 'Fixed', 'Fixé', 1, '2022-05-02 18:30:36', '2022-06-01 07:43:49'),
(1199, '9', 'ltl_rtl', 'LTL To RTL', 'LTL To RTL', 1, '2022-05-02 18:30:36', '2022-05-02 18:30:36'),
(1200, '9', 'testimonial_list', 'Testimonial List', 'Testimonial List', 1, '2022-05-02 18:30:36', '2022-05-02 18:30:36'),
(1201, '9', 'assign_optional_subject', 'Assign Optional Subject', 'Attribuer matière créé', 1, '2022-05-02 18:30:36', '2022-06-14 12:02:24'),
(1202, '9', 'term_wise_report', 'Term Wise Report', 'Rapport à long terme', 1, '2022-05-02 18:30:36', '2022-06-01 07:43:49'),
(1203, '9', 'type_wise_report', 'Type Wise Report', 'Type Wise Report', 1, '2022-05-02 18:30:36', '2022-05-02 18:30:36'),
(1204, '9', 'due_wise_report', 'Due Wise Report', 'Due Wise Report', 1, '2022-05-02 18:30:36', '2022-05-02 18:30:36'),
(1205, '9', 'contract_type', 'Contract Type', 'Type de contrat', 1, '2022-05-02 18:30:36', '2022-06-01 07:43:49'),
(1206, '9', 'verify', 'Verify', 'Verifier', 1, '2022-05-02 18:30:36', '2022-06-01 07:43:49'),
(1207, '9', 'addOns', 'Add Ons', 'Add Ons', 1, '2022-05-02 18:30:36', '2022-05-02 18:30:36'),
(1208, '9', 'adons', 'Add Ons', 'Add Ons', 1, '2022-05-02 18:30:36', '2022-05-02 18:30:36'),
(1209, '9', 'due_wise_report', 'Due Wise Report', 'Due Wise Report', 1, '2022-05-02 18:30:36', '2022-05-02 18:30:36'),
(1210, '9', 'type_wise_report', 'Type Wise Report', 'Type Wise Report', 1, '2022-05-02 18:30:36', '2022-05-02 18:30:36'),
(1211, '9', 'term_wise_report', 'Term Wise Report', 'Term Wise Report', 1, '2022-05-02 18:30:36', '2022-05-02 18:30:36'),
(1212, '0', 'export', 'Export', 'Exporter', 1, '2022-05-02 18:30:36', '2022-05-19 21:57:41'),
(1213, '0', 'PDF', 'PDF', 'PDF', 1, '2022-05-02 18:30:36', '2022-05-02 18:30:36'),
(1214, '0', 'biometrics', 'Biometrics', 'Biometriques', 1, '2022-05-02 18:30:36', '2022-05-19 21:57:41'),
(1215, '0', 'bio', 'Biometrics', 'Biometriques', 1, '2022-05-02 18:30:36', '2022-05-19 21:57:41'),
(1216, '0', 'bio', 'Biometrics', 'Biometriques', 1, '2022-05-02 18:30:36', '2022-05-31 15:12:04'),
(1217, '0', 'buy', 'Buy', 'payer', 1, '2022-05-02 18:30:36', '2022-05-19 21:57:41'),
(1218, '0', 'csu', 'Custom URL', 'Custom URL', 1, '2022-05-02 18:30:36', '2022-05-02 18:30:36'),
(1219, '0', 'now', 'Now', 'Maintenant', 1, '2022-05-02 18:30:36', '2022-05-19 21:57:41'),
(1220, '19', 'social_media', 'Social Media', 'Now', 1, '2022-05-02 18:30:36', '2022-05-02 18:30:36'),
(1221, '19', 'icon', 'Icon', 'Now', 1, '2022-05-02 18:30:36', '2022-05-02 18:30:36'),
(1222, '3', 'student_delete_note', 'Note: if delete, then all related information will removed.', 'Note:si vous supprimez alors  toutes les informations relatives seront enlevées', 1, '2022-05-02 18:30:36', '2022-05-31 22:57:44'),
(1223, '6', 'staff_delete_note', 'Note: if delete, then all related information will removed.', 'Remarque: si vous supprimez, toutes les informations associées seront supprimées', 1, '2022-05-02 18:30:36', '2022-06-01 07:34:42'),
(1224, '17', 'cumulative', 'Cumulative', 'cumulative', 1, '2022-05-02 18:30:36', '2022-05-02 18:30:36'),
(1225, '17', 'sheet', 'Sheet', 'feuille', 1, '2022-05-02 18:30:36', '2022-06-01 08:25:04'),
(1226, '17', 'report', 'Report', 'rapport', 1, '2022-05-02 18:30:36', '2022-06-01 08:25:04'),
(1227, '17', 'contonuous', 'Contonuous', 'continu', 1, '2022-05-02 18:30:36', '2022-06-01 08:25:04'),
(1228, '17', 'assessment', 'Assessment', 'Evaluation', 1, '2022-05-02 18:30:36', '2022-06-01 08:25:04'),
(1229, '17', 'termly', 'Termly', 'Trimestrielle', 1, '2022-05-02 18:30:36', '2022-06-01 08:25:04'),
(1230, '17', 'academic', 'Academic', 'academique', 1, '2022-05-02 18:30:36', '2022-06-01 08:25:04'),
(1231, '17', 'performance', 'Performance', 'performance', 1, '2022-05-02 18:30:36', '2022-05-02 18:30:36'),
(1232, '17', 'terminal', 'Terminal', 'terminal', 1, '2022-05-02 18:30:36', '2022-05-02 18:30:36'),
(1233, '17', 'sheet', 'Sheet', 'feuille', 1, '2022-05-02 18:30:36', '2022-06-01 08:25:04'),
(1234, '17', 'continuous', 'Continuous', 'continu', 1, '2022-05-02 18:30:36', '2022-06-01 08:25:04'),
(1235, '17', 'assessment', 'Assessment', 'Evaluation', 1, '2022-05-02 18:30:36', '2022-06-01 08:25:04'),
(1236, '17', 'version', 'Version', 'version', 1, '2022-05-02 18:30:36', '2022-05-02 18:30:36'),
(1237, '17', 'institution', 'institution', 'institution', 1, '2022-05-02 18:30:36', '2022-05-02 18:30:36'),
(1238, '17', 'one', 'one', 'unique', 1, '2022-05-02 18:30:36', '2022-06-01 08:25:04'),
(1239, '17', 'school', 'school', 'Etablissement', 1, '2022-05-02 18:30:36', '2022-06-01 08:25:04'),
(1240, '17', 'opening', 'opening', 'ouverture', 1, '2022-05-02 18:30:36', '2022-06-01 08:25:04'),
(1241, '17', 'confirm_password', 'confirm password', 'Confirme mot  de passe', 1, '2022-05-02 18:30:36', '2022-06-01 08:25:04'),
(1242, '17', 'or', 'or', 'ou', 1, '2022-05-02 18:30:36', '2022-06-01 08:25:04'),
(1243, '17', 'routine', 'routine', 'routine', 1, '2022-05-02 18:30:36', '2022-05-02 18:30:36'),
(1244, '17', 'ticket_comment', 'Ticke Comment', 'Ticke Comment', 1, '2022-05-02 18:30:36', '2022-05-02 18:30:36'),
(1245, '17', 'manager', 'manager', 'Gestionnaire', 1, '2022-05-02 18:30:36', '2022-06-01 08:25:04'),
(1246, '17', 'registration', 'registration', 'Inscription', 1, '2022-05-02 18:30:36', '2022-06-01 08:25:04'),
(1247, '17', 'after', 'after', 'après', 1, '2022-05-02 18:30:36', '2022-06-01 08:25:04'),
(1248, '17', 'my', 'my', 'mon', 1, '2022-05-02 18:30:36', '2022-06-01 08:25:04'),
(1249, '17', 'ticket', 'ticket', 'ticket', 1, '2022-05-02 18:30:36', '2022-05-02 18:30:36'),
(1250, '17', 'guardian_mobile', 'guardian mobile', 'Mobile du tuteur', 1, '2022-05-02 18:30:36', '2022-06-01 08:25:04'),
(1251, '17', 'is_approved', 'is approved', 'est approuvé', 1, '2022-05-02 18:30:36', '2022-06-01 08:25:04'),
(1252, '17', 'is_enabled', 'Is Enabled', 'Est activé', 1, '2022-05-02 18:30:36', '2022-06-01 08:25:04'),
(1253, '17', 'ticket_list', 'ticket list', 'liste de tickets', 1, '2022-05-02 18:30:36', '2022-06-01 08:25:04'),
(1254, '17', 'priority_list', 'priority list', 'Liste prioritaire', 1, '2022-05-02 18:30:36', '2022-06-01 08:25:04'),
(1255, '17', 'ticket_priority', 'ticket priority', 'priorité des tickets', 1, '2022-05-02 18:30:36', '2022-06-01 08:25:04'),
(1256, '17', 'ticket_category', 'ticket category', 'Catégories de ticket', 1, '2022-05-02 18:30:36', '2022-06-01 08:25:04'),
(1257, '17', 'category_list', 'category list', 'liste de catégori', 1, '2022-05-02 18:30:36', '2022-06-01 08:25:03'),
(1258, '17', 'ticket_system', 'ticket system', 'système de tickets', 1, '2022-05-02 18:30:36', '2022-06-01 08:25:03'),
(1259, '17', 'delete_uploaded_content', 'delete uploaded content', 'Supprimer les contenus téléchargés', 1, '2022-05-02 18:30:36', '2022-06-01 08:25:03'),
(1260, '17', 'add_content', 'add content', 'Ajouter contenu', 1, '2022-05-02 18:30:36', '2022-06-01 08:25:03'),
(1261, '18', 'download_uploaded_content', 'download uploaded content', 'Télécharger le fichier', 1, '2022-05-02 18:30:36', '2022-06-06 10:34:11'),
(1262, '18', 'password_reset_message', 'password reset message', 'Message de réinitialisation mot de passe', 1, '2022-05-02 18:30:36', '2022-06-06 10:34:11'),
(1263, '18', 'student_login_credential_message', 'student login credential message', 'message d’identification de connexion de l’élève', 1, '2022-05-02 18:30:36', '2022-06-06 10:34:11'),
(1264, '18', 'guardian_login_credential_message', 'guardian login credential message', 'message d\'identification de connexion tuteur', 1, '2022-05-02 18:30:36', '2022-06-06 10:34:11'),
(1265, '18', 'staff_login_credential_message', 'staff login credential message', 'message d\'dentification de connexion du personnel', 1, '2022-05-02 18:30:36', '2022-06-06 10:34:11'),
(1266, '18', 'dues_payment_message', 'dues payment message', 'message  de paiement du', 1, '2022-05-02 18:30:36', '2022-06-06 10:34:11'),
(1267, '18', 'email_footer_text', 'email footer text', 'texte de pied de page de l\'email', 1, '2022-05-02 18:30:36', '2022-06-06 10:34:11'),
(1268, '18', 'registration', 'Registration', 'Inscription', 1, '2022-05-02 18:30:36', '2022-05-17 15:31:06'),
(1269, '18', 'after', 'After', 'Après', 1, '2022-05-02 18:30:36', '2022-06-06 10:34:11'),
(1270, '18', 'header', 'Header', 'Haut de page', 1, '2022-05-02 18:30:36', '2022-06-06 10:34:11'),
(1271, '18', 'footer', 'Footer', 'Pied de page', 1, '2022-05-02 18:30:36', '2022-06-06 10:34:11'),
(1272, '18', 'footer', 'Footer', 'Pied de page', 1, '2022-05-02 18:30:36', '2022-06-06 10:34:11'),
(1273, '18', 'sec', 'Section', 'serie', 1, '2022-05-02 18:30:36', '2022-06-06 10:34:11'),
(1274, '18', 'guardian_mobile', 'Guardian Mobile', 'mobile tuteur', 1, '2022-05-02 18:30:36', '2022-06-06 10:34:11'),
(1275, '18', 'are_you_sure_to_approve', 'Are you sure to approve this item?', 'Etes vous sur de cette article', 1, '2022-05-02 18:30:36', '2022-05-17 15:31:06'),
(1276, '18', 'guardian_mobile', 'Guardian Mobile', 'mobile tuteur', 1, '2022-05-02 18:30:36', '2022-06-06 10:34:11'),
(1277, '18', 'saas', 'SAAS', 'SAAS', 1, '2022-05-02 18:30:36', '2022-05-02 18:30:36'),
(1278, '18', 'how_do_you_know_us', 'How do you know us', '', 1, '2022-05-02 18:30:36', '2022-05-02 18:30:36'),
(1279, '18', 'recaptcha', 'Recaptcha', '', 1, '2022-05-02 18:30:36', '2022-05-02 18:30:36'),
(1280, '18', 'nocaptcha_sitekey', 'noCaptcha Sitekey', '', 1, '2022-05-02 18:30:36', '2022-05-02 18:30:36'),
(1281, '18', 'nocaptcha_secret', 'noCaptcha Secret', '', 1, '2022-05-02 18:30:36', '2022-05-02 18:30:36'),
(1282, '18', 'guardian_relation', 'Guardian Relation', 'Relation avec tuteur', 1, '2022-05-02 18:30:36', '2022-06-06 10:34:10'),
(1283, '18', 'relation', 'Relation', 'Relation', 1, '2022-05-02 18:30:36', '2022-06-06 10:34:10'),
(1284, '18', 'promossion_without', 'Promotion Without', 'sans promotion', 1, '2022-05-02 18:30:36', '2022-06-06 10:34:10'),
(1285, '18', 'promossion', 'Promotion', 'Promotion', 1, '2022-05-02 18:30:36', '2022-06-06 10:34:10'),
(1286, '18', 'administrator', 'Administrator', 'Administrateur', 1, '2022-05-02 18:30:36', '2022-06-06 10:34:10'),
(1287, '18', 'age', 'Age', '', 1, '2022-05-02 18:30:36', '2022-05-02 18:30:36'),
(1288, '18', 'note_for_multiple_child_registration', 'If you want to register your another child please contact with school.', 'Si vous souhaitez inscrire votre autre enfant, veuillez contacter l’école.', 1, '2022-05-02 18:30:36', '2022-06-06 10:34:10'),
(1289, '18', 'click_for_recaptcha_create', 'Click here for create Recaptcha (v2).', '', 1, '2022-05-02 18:30:36', '2022-05-02 18:30:36'),
(1290, '18', 'textlocal', 'Textlocal', '', 1, '2022-05-02 18:30:36', '2022-05-02 18:30:36'),
(1291, '18', 'sms_template', 'Sms Template', '', 1, '2022-05-02 18:30:36', '2022-05-02 18:30:36'),
(1292, '18', 'zoom', 'Zoom', '', 1, '2022-05-02 18:30:36', '2022-05-02 18:30:36'),
(1293, '18', 'virtual_class', 'Virtual Class', '', 1, '2022-05-02 18:30:36', '2022-05-02 18:30:36'),
(1294, '18', 'topic', 'Topic', '', 1, '2022-05-02 18:30:36', '2022-05-02 18:30:36'),
(1295, '18', 'description', 'Description', '', 1, '2022-05-02 18:30:36', '2022-05-02 18:30:36'),
(1296, '18', 'date_of_meeting', 'Date of Meeting', '', 1, '2022-05-02 18:30:36', '2022-05-02 18:30:36'),
(1297, '18', 'time_of_meeting', 'Time of Meeting', '', 1, '2022-05-02 18:30:36', '2022-05-02 18:30:36'),
(1298, '18', 'meeting_durration', 'Meetting Durration (Minutes)', '', 1, '2022-05-02 18:30:36', '2022-05-02 18:30:36'),
(1299, '18', 'zoom_recurring', 'Recurring', '', 1, '2022-05-02 18:30:36', '2022-05-02 18:30:36'),
(1300, '18', 'zoom_recurring_type', 'Recurrence Type', '', 1, '2022-05-02 18:30:36', '2022-05-02 18:30:36'),
(1301, '18', 'zoom_recurring_daily', 'Daily', '', 1, '2022-05-02 18:30:36', '2022-05-02 18:30:36'),
(1302, '18', 'zoom_recurring_weekly', 'Weekly', '', 1, '2022-05-02 18:30:36', '2022-05-02 18:30:36'),
(1303, '18', 'zoom_recurring_monthly', 'Monthly', '', 1, '2022-05-02 18:30:36', '2022-05-02 18:30:36'),
(1304, '18', 'zoom_recurring_repect', 'Repeat every', '', 1, '2022-05-02 18:30:36', '2022-05-02 18:30:36'),
(1305, '18', 'zoom_recurring_end', 'End Recurrence', '', 1, '2022-05-02 18:30:36', '2022-05-02 18:30:36'),
(1306, '18', 'join_before_host', 'Join before host', '', 1, '2022-05-02 18:30:36', '2022-05-02 18:30:36'),
(1307, '18', 'host_video', 'Host Video', '', 1, '2022-05-02 18:30:36', '2022-05-02 18:30:36'),
(1308, '18', 'participant_video', 'Participant Video', '', 1, '2022-05-02 18:30:36', '2022-05-02 18:30:36'),
(1309, '18', 'mute_upon_entry', 'Participate mic mute', '', 1, '2022-05-02 18:30:36', '2022-05-02 18:30:36'),
(1310, '18', 'watermark', 'Watermark', '', 1, '2022-05-02 18:30:36', '2022-05-02 18:30:36'),
(1311, '18', 'waiting_room', 'Waiting Room', '', 1, '2022-05-02 18:30:36', '2022-05-02 18:30:36'),
(1312, '18', 'auto_recording', 'Auto Recording', '', 1, '2022-05-02 18:30:36', '2022-05-02 18:30:36'),
(1313, '18', 'audio_options', 'Audio Option', '', 1, '2022-05-02 18:30:36', '2022-05-02 18:30:36'),
(1314, '18', 'meeting_approval', 'Meeting Join Approval', '', 1, '2022-05-02 18:30:36', '2022-05-02 18:30:36'),
(1315, '18', 'meeting_id', 'Meeting ID', '', 1, '2022-05-02 18:30:36', '2022-05-02 18:30:36'),
(1316, '18', 'zoom_start_join', 'Join/Start', '', 1, '2022-05-02 18:30:36', '2022-05-02 18:30:36'),
(1317, '18', 'start', 'Start', '', 1, '2022-05-02 18:30:36', '2022-05-02 18:30:36'),
(1318, '18', 'join', 'Join', '', 1, '2022-05-02 18:30:36', '2022-05-02 18:30:36'),
(1319, '18', 'show', 'Show', '', 1, '2022-05-02 18:30:36', '2022-05-02 18:30:36'),
(1320, '18', 'delete_meetings', 'Delete Meeting', '', 1, '2022-05-02 18:30:36', '2022-05-02 18:30:36'),
(1321, '18', 'are_you_sure_delete', 'Are you sure to delete ?', '', 1, '2022-05-02 18:30:36', '2022-05-02 18:30:36'),
(1322, '18', 'zoom_setting', 'Zoom Setting', '', 1, '2022-05-02 18:30:36', '2022-05-02 18:30:36'),
(1323, '18', 'for_paid_package', 'For Paid Package', '', 1, '2022-05-02 18:30:36', '2022-05-02 18:30:36'),
(1324, '18', 'api_key', 'API Key', '', 1, '2022-05-02 18:30:36', '2022-05-02 18:30:36'),
(1325, '18', 'serect_key', 'Secret Key', '', 1, '2022-05-02 18:30:36', '2022-05-02 18:30:36'),
(1326, '18', 'pakage', 'Pakage', '', 1, '2022-05-02 18:30:36', '2022-05-02 18:30:36'),
(1327, '18', 'join_meeting', 'Join Meeting', '', 1, '2022-05-02 18:30:36', '2022-05-02 18:30:36'),
(1328, '18', 'attached_file', 'Attached File', '', 1, '2022-05-02 18:30:36', '2022-05-02 18:30:36'),
(1329, '18', 'start_date_time', 'Start Date & Time', '', 1, '2022-05-02 18:30:36', '2022-05-02 18:30:36'),
(1330, '18', 'not_yet_start', 'Not Yet Start', '', 1, '2022-05-02 18:30:36', '2022-05-02 18:30:36'),
(1331, '18', 'closed', 'Closed', '', 1, '2022-05-02 18:30:36', '2022-05-02 18:30:36'),
(1332, '18', 'host_id', 'Host ID', '', 1, '2022-05-02 18:30:36', '2022-05-02 18:30:36'),
(1333, '18', 'timezone', 'Timezone', '', 1, '2022-05-02 18:30:36', '2022-05-02 18:30:36'),
(1334, '18', 'created_at', 'Created At', '', 1, '2022-05-02 18:30:36', '2022-05-02 18:30:36'),
(1335, '18', 'join_url', 'Join URL', '', 1, '2022-05-02 18:30:36', '2022-05-02 18:30:36'),
(1336, '18', 'encrypted', 'Encrypted', '', 1, '2022-05-02 18:30:36', '2022-05-02 18:30:36'),
(1337, '18', 'in_mettings', 'in Mettings', '', 1, '2022-05-02 18:30:36', '2022-05-02 18:30:36'),
(1338, '18', 'cn_mettings', 'cn Mettings', '', 1, '2022-05-02 18:30:36', '2022-05-02 18:30:36'),
(1339, '18', 'use_pmi', 'use pmi', '', 1, '2022-05-02 18:30:36', '2022-05-02 18:30:36'),
(1340, '18', 'enforce_login', 'Enforce Login', '', 1, '2022-05-02 18:30:36', '2022-05-02 18:30:36'),
(1341, '18', 'enforce_login_domains', 'Enforce Login Domains', '', 1, '2022-05-02 18:30:36', '2022-05-02 18:30:36'),
(1342, '18', 'alternative_hosts', 'Alternative Hosts', '', 1, '2022-05-02 18:30:36', '2022-05-02 18:30:36'),
(1343, '18', 'meeting_authentication', 'Meeting Authentication', '', 1, '2022-05-02 18:30:36', '2022-05-02 18:30:36'),
(1344, '18', 'delete_virtual_meeting', 'Delete virtaul meeting', '', 1, '2022-05-02 18:30:36', '2022-05-02 18:30:36'),
(1345, '18', 'room', 'Room', '', 1, '2022-05-02 18:30:36', '2022-05-02 18:30:36'),
(1346, '18', 'meeting', 'Meeting', '', 1, '2022-05-02 18:30:36', '2022-05-02 18:30:36'),
(1347, '18', 'join_class', 'Join Class', '', 1, '2022-05-02 18:30:36', '2022-05-02 18:30:36'),
(1348, '18', 'participants', 'Participants', '', 1, '2022-05-02 18:30:36', '2022-05-02 18:30:36'),
(1349, '18', 'meetings', 'Meetings', '', 1, '2022-05-02 18:30:36', '2022-05-02 18:30:36'),
(1350, '18', 'select_member', 'Select Member', '', 1, '2022-05-02 18:30:36', '2022-05-02 18:30:36'),
(1351, '18', 'change_default_settings', 'Change Default Settings', '', 1, '2022-05-02 18:30:36', '2022-05-02 18:30:36'),
(1352, '18', 'virtual_class_meetting', 'Vitual Class/Meeting', '', 1, '2022-05-02 18:30:36', '2022-05-02 18:30:36'),
(1353, '18', 'class_reports', 'Class Reports', '', 1, '2022-05-02 18:30:36', '2022-05-02 18:30:36'),
(1354, '18', 'class_reports', 'Class Reports', '', 1, '2022-05-02 18:30:36', '2022-05-02 18:30:36'),
(1355, '18', 'meeting_reports', 'Meeting Reports', '', 1, '2022-05-02 18:30:36', '2022-05-02 18:30:36'),
(1356, '18', 'date_of_class', 'Date of class', '', 1, '2022-05-02 18:30:36', '2022-05-02 18:30:36'),
(1357, '18', 'time_of_class', 'Time of class', '', 1, '2022-05-02 18:30:36', '2022-05-02 18:30:36'),
(1358, '18', 'duration_of_class', 'Duration of class', '', 1, '2022-05-02 18:30:36', '2022-05-02 18:30:36'),
(1359, '18', 'virtual_class_id', 'VClass ID', '', 1, '2022-05-02 18:30:36', '2022-05-02 18:30:36'),
(1360, '18', 'virtual_meeting', 'Virtual Meeting', '', 1, '2022-05-02 18:30:36', '2022-05-02 18:30:36'),
(1361, '18', 'virtual_class', 'Virtual class', '', 1, '2022-05-02 18:30:36', '2022-05-02 18:30:36');
INSERT INTO `sm_language_phrases` (`id`, `modules`, `default_phrases`, `en`, `fr`, `active_status`, `created_at`, `updated_at`) VALUES
(1362, '18', 'dues_payment_message', 'dues payment message', '', 1, '2022-05-02 18:30:36', '2022-05-02 18:30:36'),
(1363, '18', 'email_footer_text', 'email footer text', '', 1, '2022-05-02 18:30:36', '2022-05-02 18:30:36'),
(1364, '18', 'registration', 'Registration', 'Inscription', 1, '2022-05-02 18:30:36', '2022-06-06 10:34:10'),
(1365, '18', 'after', 'After', 'Après', 1, '2022-05-02 18:30:37', '2022-06-06 10:34:10'),
(1366, '18', 'header', 'Header', 'Haut de page', 1, '2022-05-02 18:30:37', '2022-06-06 10:34:10'),
(1367, '18', 'footer', 'Footer', 'Pied de page', 1, '2022-05-02 18:30:37', '2022-06-06 10:34:10'),
(1368, '18', 'footer', 'Footer', 'Bas de page', 1, '2022-05-02 18:30:37', '2022-06-06 10:34:10'),
(1369, '18', 'sec', 'Section', 'Serie', 1, '2022-05-02 18:30:37', '2022-06-06 10:34:10'),
(1370, '18', 'guardian_mobile', 'Guardian Mobile', 'Mobile tuteur', 1, '2022-05-02 18:30:37', '2022-06-06 10:34:10'),
(1371, '18', 'are_you_sure_to_approve', 'Are you sure to approve this item?', 'Etes vous sur de cette donnée', 1, '2022-05-02 18:30:37', '2022-06-06 10:34:10'),
(1372, '18', 'guardian_mobile', 'Guardian Mobile', 'Mobile tuteur', 1, '2022-05-02 18:30:37', '2022-06-06 10:34:10'),
(1373, '18', 'saas', 'SAAS', 'SAAS', 1, '2022-05-02 18:30:37', '2022-05-02 18:30:37'),
(1374, '18', 'how_do_you_know_us', 'How do you know us', '', 1, '2022-05-02 18:30:37', '2022-05-02 18:30:37'),
(1375, '18', 'recaptcha', 'Recaptcha', '', 1, '2022-05-02 18:30:37', '2022-05-02 18:30:37'),
(1376, '18', 'nocaptcha_sitekey', 'noCaptcha Sitekey', '', 1, '2022-05-02 18:30:37', '2022-05-02 18:30:37'),
(1377, '18', 'nocaptcha_secret', 'noCaptcha Secret', '', 1, '2022-05-02 18:30:37', '2022-05-02 18:30:37'),
(1378, '18', 'guardian_relation', 'Guardian Relation', 'Relation tuteur', 1, '2022-05-02 18:30:37', '2022-06-06 10:34:10'),
(1379, '18', 'relation', 'Relation', 'Relation', 1, '2022-05-02 18:30:37', '2022-06-06 10:34:10'),
(1380, '18', 'promossion_without', 'Promotion Without', 'Sans promotion', 1, '2022-05-02 18:30:37', '2022-06-06 10:34:10'),
(1381, '18', 'promossion', 'Promotion', 'Promotion', 1, '2022-05-02 18:30:37', '2022-06-06 10:34:10'),
(1382, '18', 'administrator', 'Administrator', 'Administrateur', 1, '2022-05-02 18:30:37', '2022-06-06 10:34:10'),
(1383, '18', 'age', 'Age', '', 1, '2022-05-02 18:30:37', '2022-05-02 18:30:37'),
(1384, '18', 'note_for_multiple_child_registration', 'If you want to register your another child please contact with school.', '', 1, '2022-05-02 18:30:37', '2022-05-02 18:30:37'),
(1385, '18', 'click_for_recaptcha_create', 'Click here for create Recaptcha (v2).', '', 1, '2022-05-02 18:30:37', '2022-05-02 18:30:37'),
(1386, '18', 'textlocal', 'Textlocal', '', 1, '2022-05-02 18:30:37', '2022-05-02 18:30:37'),
(1387, '18', 'attendance_this_month', 'Att. This Month', 'Dans ce mois', 1, '2022-05-02 18:30:37', '2022-05-17 15:31:06'),
(1388, '18', 'sms_template', 'Sms Template', '', 1, '2022-05-02 18:30:37', '2022-05-02 18:30:37'),
(1389, '18', 'liability', 'Liability', 'Liability', 1, '2022-05-02 18:30:37', '2022-05-02 18:30:37'),
(1390, '18', 'asset', 'Asset', 'Asset', 1, '2022-05-02 18:30:37', '2022-05-02 18:30:37'),
(1391, '18', 'label', 'Label', 'Label', 1, '2022-05-02 18:30:37', '2022-05-02 18:30:37'),
(1392, '18', 'bank_details', 'Bank Details', 'Détails de la banque', 1, '2022-05-02 18:30:37', '2022-05-17 15:31:06'),
(1393, '18', 'africatalking', 'Africatalking', 'Africatalking', 1, '2022-05-02 18:30:37', '2022-05-02 18:30:37'),
(1394, '18', 'africatalking_api_key', 'Africatalking API Key', 'Africatalking API Key', 1, '2022-05-02 18:30:37', '2022-05-02 18:30:37'),
(1395, '18', 'slip', 'Slip', 'glisser', 1, '2022-05-02 18:30:37', '2022-06-06 10:34:10'),
(1396, '18', 'result_not_publish_yet', 'Result Not Publish Yet', 'Résultats pas encore publiés', 1, '2022-05-02 18:30:37', '2022-05-17 15:31:06'),
(1397, '0', 'add_to_do', 'Add to do', 'Ajouter à faire', 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Structure de la table `sm_leave_defines`
--

DROP TABLE IF EXISTS `sm_leave_defines`;
CREATE TABLE IF NOT EXISTS `sm_leave_defines` (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `days` int UNSIGNED DEFAULT NULL,
  `active_status` tinyint NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `role_id` int UNSIGNED DEFAULT NULL,
  `type_id` int UNSIGNED DEFAULT NULL,
  `created_by` int UNSIGNED DEFAULT '1',
  `updated_by` int UNSIGNED DEFAULT '1',
  `school_id` int UNSIGNED DEFAULT '1',
  `academic_id` int UNSIGNED DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `sm_leave_defines_role_id_foreign` (`role_id`),
  KEY `sm_leave_defines_type_id_foreign` (`type_id`),
  KEY `sm_leave_defines_school_id_foreign` (`school_id`),
  KEY `sm_leave_defines_academic_id_foreign` (`academic_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `sm_leave_requests`
--

DROP TABLE IF EXISTS `sm_leave_requests`;
CREATE TABLE IF NOT EXISTS `sm_leave_requests` (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `apply_date` date DEFAULT NULL,
  `leave_from` date DEFAULT NULL,
  `leave_to` date DEFAULT NULL,
  `reason` text COLLATE utf8mb4_unicode_ci,
  `note` text COLLATE utf8mb4_unicode_ci,
  `file` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `approve_status` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'P for Pending, A for Approve, R for reject',
  `active_status` tinyint NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `leave_define_id` int UNSIGNED DEFAULT NULL,
  `staff_id` int UNSIGNED DEFAULT NULL,
  `role_id` int UNSIGNED DEFAULT NULL,
  `type_id` int UNSIGNED DEFAULT NULL,
  `created_by` int UNSIGNED DEFAULT '1',
  `updated_by` int UNSIGNED DEFAULT '1',
  `school_id` int UNSIGNED DEFAULT '1',
  `academic_id` int UNSIGNED DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `sm_leave_requests_leave_define_id_foreign` (`leave_define_id`),
  KEY `sm_leave_requests_staff_id_foreign` (`staff_id`),
  KEY `sm_leave_requests_role_id_foreign` (`role_id`),
  KEY `sm_leave_requests_type_id_foreign` (`type_id`),
  KEY `sm_leave_requests_school_id_foreign` (`school_id`),
  KEY `sm_leave_requests_academic_id_foreign` (`academic_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `sm_leave_types`
--

DROP TABLE IF EXISTS `sm_leave_types`;
CREATE TABLE IF NOT EXISTS `sm_leave_types` (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `total_days` int UNSIGNED DEFAULT NULL,
  `active_status` tinyint NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_by` int UNSIGNED DEFAULT '1',
  `updated_by` int UNSIGNED DEFAULT '1',
  `school_id` int UNSIGNED DEFAULT '1',
  `academic_id` int UNSIGNED DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `sm_leave_types_school_id_foreign` (`school_id`),
  KEY `sm_leave_types_academic_id_foreign` (`academic_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `sm_library_members`
--

DROP TABLE IF EXISTS `sm_library_members`;
CREATE TABLE IF NOT EXISTS `sm_library_members` (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `member_ud_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `active_status` tinyint NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `member_type` int UNSIGNED DEFAULT NULL,
  `student_staff_id` int UNSIGNED DEFAULT NULL,
  `created_by` int UNSIGNED DEFAULT '1',
  `updated_by` int UNSIGNED DEFAULT '1',
  `school_id` int UNSIGNED DEFAULT '1',
  `academic_id` int UNSIGNED DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `sm_library_members_member_type_foreign` (`member_type`),
  KEY `sm_library_members_student_staff_id_foreign` (`student_staff_id`),
  KEY `sm_library_members_school_id_foreign` (`school_id`),
  KEY `sm_library_members_academic_id_foreign` (`academic_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `sm_marks_grades`
--

DROP TABLE IF EXISTS `sm_marks_grades`;
CREATE TABLE IF NOT EXISTS `sm_marks_grades` (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `grade_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `gpa` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `from` double(8,2) DEFAULT NULL,
  `up` double(8,2) DEFAULT NULL,
  `percent_from` int DEFAULT NULL,
  `percent_upto` int DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `active_status` tinyint NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_by` int UNSIGNED DEFAULT '1',
  `updated_by` int UNSIGNED DEFAULT '1',
  `school_id` int UNSIGNED DEFAULT '1',
  `academic_id` int UNSIGNED DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `sm_marks_grades_school_id_foreign` (`school_id`),
  KEY `sm_marks_grades_academic_id_foreign` (`academic_id`)
) ENGINE=MyISAM AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `sm_marks_grades`
--

INSERT INTO `sm_marks_grades` (`id`, `grade_name`, `gpa`, `from`, `up`, `percent_from`, `percent_upto`, `description`, `active_status`, `created_at`, `updated_at`, `created_by`, `updated_by`, `school_id`, `academic_id`) VALUES
(1, 'A+', '5.00', 5.00, 5.99, 80, 100, 'Outstanding !', 1, '2022-05-02 06:26:37', '2022-05-02 18:26:37', 1, 1, 1, 1),
(2, 'A', '4.00', 4.00, 4.99, 70, 79, 'Very Good !', 1, '2022-05-02 06:26:37', '2022-05-02 18:26:37', 1, 1, 1, 1),
(3, 'A-', '3.50', 3.50, 3.99, 60, 69, 'Good !', 1, '2022-05-02 06:26:37', '2022-05-02 18:26:37', 1, 1, 1, 1),
(4, 'B', '3.00', 3.00, 3.49, 50, 59, 'Outstanding !', 1, '2022-05-02 06:26:37', '2022-05-02 18:26:37', 1, 1, 1, 1),
(5, 'C', '2.00', 2.00, 2.99, 40, 49, 'Bad !', 1, '2022-05-02 06:26:37', '2022-05-02 18:26:37', 1, 1, 1, 1),
(6, 'D', '1.00', 1.00, 1.99, 33, 39, 'Very Bad !', 1, '2022-05-02 06:26:37', '2022-05-02 18:26:37', 1, 1, 1, 1),
(7, 'F', '0.00', 0.00, 0.99, 0, 32, 'Failed !', 1, '2022-05-02 06:26:37', '2022-05-02 18:26:37', 1, 1, 1, 1),
(8, 'A+', '5.00', NULL, NULL, 90, 100, '', 1, '2022-05-26 01:48:19', '2022-05-26 13:48:19', 1, 1, 1, 3),
(9, 'A', '4.37', NULL, NULL, 85, 90, '', 1, '2022-05-26 02:01:04', '2022-05-26 14:01:04', 1, 1, 1, 3),
(10, 'A-', '4.06', NULL, NULL, 80, 85, '', 1, '2022-05-26 02:02:36', '2022-05-26 14:02:36', 1, 1, 1, 3),
(11, 'B+', '3.75', NULL, NULL, 75, 80, '', 1, '2022-05-26 02:06:24', '2022-05-26 14:06:24', 1, 1, 1, 3),
(12, 'B', '3.43', NULL, NULL, 70, 75, '', 1, '2022-05-26 02:08:25', '2022-05-26 14:08:25', 1, 1, 1, 3),
(13, 'B-', '3.12', NULL, NULL, 60, 70, '', 1, '2022-05-26 02:11:23', '2022-05-26 14:11:23', 1, 1, 1, 3),
(14, 'C+', '2.81', NULL, NULL, 55, 60, '', 1, '2022-05-26 02:13:26', '2022-05-26 14:16:02', 1, 1, 1, 3),
(15, 'C', '2.5', NULL, NULL, 50, 52, '', 1, '2022-05-26 02:14:38', '2022-05-26 14:16:32', 1, 1, 1, 3),
(16, 'C-', '1.87', NULL, NULL, 40, 50, '', 1, '2022-05-26 02:22:46', '2022-05-26 14:22:46', 1, 1, 1, 3),
(17, 'D', '1.56', NULL, NULL, 35, 40, '', 1, '2022-05-26 02:28:41', '2022-05-26 14:28:41', 1, 1, 1, 3),
(18, 'E', '0.00', NULL, NULL, 0, 35, '', 1, '2022-05-26 02:34:08', '2022-05-26 14:34:08', 1, 1, 1, 3);

-- --------------------------------------------------------

--
-- Structure de la table `sm_marks_registers`
--

DROP TABLE IF EXISTS `sm_marks_registers`;
CREATE TABLE IF NOT EXISTS `sm_marks_registers` (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `active_status` tinyint NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `student_id` int UNSIGNED DEFAULT NULL,
  `exam_id` int UNSIGNED DEFAULT NULL,
  `class_id` int UNSIGNED DEFAULT NULL,
  `section_id` int UNSIGNED DEFAULT NULL,
  `created_by` int UNSIGNED DEFAULT '1',
  `updated_by` int UNSIGNED DEFAULT '1',
  `school_id` int UNSIGNED DEFAULT '1',
  `academic_id` int UNSIGNED DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `sm_marks_registers_student_id_foreign` (`student_id`),
  KEY `sm_marks_registers_exam_id_foreign` (`exam_id`),
  KEY `sm_marks_registers_class_id_foreign` (`class_id`),
  KEY `sm_marks_registers_section_id_foreign` (`section_id`),
  KEY `sm_marks_registers_school_id_foreign` (`school_id`),
  KEY `sm_marks_registers_academic_id_foreign` (`academic_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `sm_marks_register_children`
--

DROP TABLE IF EXISTS `sm_marks_register_children`;
CREATE TABLE IF NOT EXISTS `sm_marks_register_children` (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `marks` int DEFAULT NULL,
  `abs` int NOT NULL DEFAULT '0' COMMENT '1 for absent, 0 for present',
  `gpa_point` double(8,2) DEFAULT NULL,
  `gpa_grade` varchar(55) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `active_status` tinyint NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `marks_register_id` int UNSIGNED DEFAULT NULL,
  `subject_id` int UNSIGNED DEFAULT NULL,
  `created_by` int UNSIGNED DEFAULT '1',
  `updated_by` int UNSIGNED DEFAULT '1',
  `school_id` int UNSIGNED DEFAULT '1',
  `academic_id` int UNSIGNED DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `sm_marks_register_children_marks_register_id_foreign` (`marks_register_id`),
  KEY `sm_marks_register_children_subject_id_foreign` (`subject_id`),
  KEY `sm_marks_register_children_school_id_foreign` (`school_id`),
  KEY `sm_marks_register_children_academic_id_foreign` (`academic_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `sm_marks_send_sms`
--

DROP TABLE IF EXISTS `sm_marks_send_sms`;
CREATE TABLE IF NOT EXISTS `sm_marks_send_sms` (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `sms_send_status` tinyint NOT NULL DEFAULT '1',
  `active_status` tinyint NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `exam_id` int UNSIGNED DEFAULT NULL,
  `student_id` int UNSIGNED DEFAULT NULL,
  `created_by` int UNSIGNED DEFAULT '1',
  `updated_by` int UNSIGNED DEFAULT '1',
  `school_id` int UNSIGNED DEFAULT '1',
  `academic_id` int UNSIGNED DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `sm_marks_send_sms_exam_id_foreign` (`exam_id`),
  KEY `sm_marks_send_sms_student_id_foreign` (`student_id`),
  KEY `sm_marks_send_sms_school_id_foreign` (`school_id`),
  KEY `sm_marks_send_sms_academic_id_foreign` (`academic_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `sm_mark_stores`
--

DROP TABLE IF EXISTS `sm_mark_stores`;
CREATE TABLE IF NOT EXISTS `sm_mark_stores` (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `student_roll_no` int NOT NULL DEFAULT '1',
  `student_addmission_no` int NOT NULL DEFAULT '1',
  `total_marks` double(8,2) NOT NULL DEFAULT '0.00',
  `is_absent` tinyint NOT NULL DEFAULT '1',
  `teacher_remarks` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `subject_id` int UNSIGNED DEFAULT NULL,
  `exam_term_id` int UNSIGNED DEFAULT NULL,
  `exam_setup_id` int UNSIGNED DEFAULT NULL,
  `student_id` int UNSIGNED DEFAULT NULL,
  `class_id` int UNSIGNED DEFAULT NULL,
  `section_id` int UNSIGNED DEFAULT NULL,
  `created_by` int UNSIGNED DEFAULT '1',
  `updated_by` int UNSIGNED DEFAULT '1',
  `school_id` int UNSIGNED DEFAULT '1',
  `academic_id` int UNSIGNED DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `sm_mark_stores_subject_id_foreign` (`subject_id`),
  KEY `sm_mark_stores_exam_term_id_foreign` (`exam_term_id`),
  KEY `sm_mark_stores_exam_setup_id_foreign` (`exam_setup_id`),
  KEY `sm_mark_stores_student_id_foreign` (`student_id`),
  KEY `sm_mark_stores_class_id_foreign` (`class_id`),
  KEY `sm_mark_stores_section_id_foreign` (`section_id`),
  KEY `sm_mark_stores_school_id_foreign` (`school_id`),
  KEY `sm_mark_stores_academic_id_foreign` (`academic_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `sm_modules`
--

DROP TABLE IF EXISTS `sm_modules`;
CREATE TABLE IF NOT EXISTS `sm_modules` (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `active_status` tinyint NOT NULL DEFAULT '1',
  `order` int NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_by` int UNSIGNED DEFAULT '1',
  `updated_by` int UNSIGNED DEFAULT '1',
  `school_id` int UNSIGNED DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `sm_modules_school_id_foreign` (`school_id`)
) ENGINE=MyISAM AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `sm_modules`
--

INSERT INTO `sm_modules` (`id`, `name`, `active_status`, `order`, `created_at`, `updated_at`, `created_by`, `updated_by`, `school_id`) VALUES
(1, 'Dashboard', 1, 0, '2022-05-02 06:27:49', NULL, 1, 1, 1),
(2, 'Admin Section', 1, 1, '2022-05-02 06:27:49', NULL, 1, 1, 1),
(3, 'Student Information', 1, 2, '2022-05-02 06:27:49', NULL, 1, 1, 1),
(4, 'Teacher', 1, 3, '2022-05-02 06:27:49', NULL, 1, 1, 1),
(5, 'Fees Collection', 1, 4, '2022-05-02 06:27:49', NULL, 1, 1, 1),
(6, 'Accounts', 1, 5, '2022-05-02 06:27:49', NULL, 1, 1, 1),
(7, 'Human resource', 1, 6, '2022-05-02 06:27:49', NULL, 1, 1, 1),
(8, 'Leave Application', 1, 7, '2022-05-02 06:27:49', NULL, 1, 1, 1),
(9, 'Examination', 1, 8, '2022-05-02 06:27:49', NULL, 1, 1, 1),
(10, 'Academics', 1, 9, '2022-05-02 06:27:49', NULL, 1, 1, 1),
(11, 'HomeWork', 1, 10, '2022-05-02 06:27:49', NULL, 1, 1, 1),
(12, 'Communicate', 1, 11, '2022-05-02 06:27:49', NULL, 1, 1, 1),
(13, 'Library', 1, 12, '2022-05-02 06:27:49', NULL, 1, 1, 1),
(14, 'Inventory', 1, 13, '2022-05-02 06:27:49', NULL, 1, 1, 1),
(15, 'Transport', 1, 14, '2022-05-02 06:27:49', NULL, 1, 1, 1),
(16, 'Dormitory', 1, 15, '2022-05-02 06:27:49', NULL, 1, 1, 1),
(17, 'Reports', 1, 16, '2022-05-02 06:27:49', NULL, 1, 1, 1),
(18, 'System Settings', 1, 17, '2022-05-02 06:27:49', NULL, 1, 1, 1),
(19, 'Common', 1, 18, '2022-05-02 06:27:49', NULL, 1, 1, 1);

-- --------------------------------------------------------

--
-- Structure de la table `sm_module_links`
--

DROP TABLE IF EXISTS `sm_module_links`;
CREATE TABLE IF NOT EXISTS `sm_module_links` (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `module_id` int UNSIGNED DEFAULT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `route` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `active_status` tinyint NOT NULL DEFAULT '1',
  `created_by` int UNSIGNED DEFAULT '1',
  `updated_by` int UNSIGNED DEFAULT '1',
  `school_id` int UNSIGNED DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `sm_module_links_module_id_foreign` (`module_id`),
  KEY `sm_module_links_created_by_foreign` (`created_by`),
  KEY `sm_module_links_updated_by_foreign` (`updated_by`),
  KEY `sm_module_links_school_id_foreign` (`school_id`)
) ENGINE=MyISAM AUTO_INCREMENT=398 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `sm_module_links`
--

INSERT INTO `sm_module_links` (`id`, `module_id`, `name`, `route`, `active_status`, `created_by`, `updated_by`, `school_id`, `created_at`, `updated_at`) VALUES
(1, 1, 'Dashboard Menu', '', 1, 1, 1, 1, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(2, 1, '➡ Number of Student', '', 1, 1, 1, 1, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(3, 1, '➡ Number of Teacher', '', 1, 1, 1, 1, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(4, 1, '➡ Number of Parents', '', 1, 1, 1, 1, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(5, 1, '➡ Number of Staff', '', 1, 1, 1, 1, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(6, 1, '➡ Current Month Income and Expense Chart', '', 1, 1, 1, 1, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(7, 1, '➡ Current Year Income and Expense Chart', '', 1, 1, 1, 1, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(8, 1, '➡ Notice Board', '', 1, 1, 1, 1, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(9, 1, '➡ Calendar Section', '', 1, 1, 1, 1, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(10, 1, '➡ To Do list', '', 1, 1, 1, 1, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(11, 2, 'Admin Section Menu', '', 1, 1, 1, 1, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(12, 2, 'Admission Query menu', 'admission-query', 1, 1, 1, 1, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(13, 2, '➡ Create Query Add', '', 1, 1, 1, 1, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(14, 2, '➡ Create Query Edit', '', 1, 1, 1, 1, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(15, 2, '➡ Create Query Delete', '', 1, 1, 1, 1, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(16, 2, 'Visitor Book Menu', 'visitor', 1, 1, 1, 1, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(17, 2, '➡ Visitor  Add', '', 1, 1, 1, 1, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(18, 2, '➡ Visitor Edit', '', 1, 1, 1, 1, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(19, 2, '➡ Visitor Delete', '', 1, 1, 1, 1, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(20, 2, '➡ Visitor Download', '', 1, 1, 1, 1, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(21, 2, 'Complaint Menu', 'complaint', 1, 1, 1, 1, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(22, 2, '➡ Complaint Add', '', 1, 1, 1, 1, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(23, 2, '➡ Complaint Edit', '', 1, 1, 1, 1, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(24, 2, '➡ Complaint Delete', '', 1, 1, 1, 1, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(25, 2, '➡ Complaint Download', '', 1, 1, 1, 1, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(26, 2, '➡ Complaint View', '', 1, 1, 1, 1, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(27, 2, 'Postal Receive Menu', 'postal-receive', 1, 1, 1, 1, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(28, 2, '➡ Postal Receive Add', '', 1, 1, 1, 1, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(29, 2, '➡ Postal Receive Edit', '', 1, 1, 1, 1, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(30, 2, '➡ Postal Receive Delete', '', 1, 1, 1, 1, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(31, 2, '➡ Postal Receive Download', '', 1, 1, 1, 1, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(32, 2, 'Postal Dispatch Menu', 'postal-dispatch', 1, 1, 1, 1, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(33, 2, '➡ Postal Dispatch Add', '', 1, 1, 1, 1, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(34, 2, '➡ Postal Dispatch Edit', '', 1, 1, 1, 1, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(35, 2, '➡ Postal Dispatch Delete', '', 1, 1, 1, 1, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(36, 2, 'Phone Call Log Menu', 'phone-call', 1, 1, 1, 1, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(37, 2, '➡ Phone Call Log Add', '', 1, 1, 1, 1, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(38, 2, '➡ Phone Call Log Edit', '', 1, 1, 1, 1, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(39, 2, '➡ Phone Call Log Delete', '', 1, 1, 1, 1, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(40, 2, '➡ Phone Call Log Download', '', 1, 1, 1, 1, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(41, 2, 'Admin Setup Menu', 'setup-admin', 1, 1, 1, 1, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(42, 2, '➡ Admin Setup Add', '', 1, 1, 1, 1, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(43, 2, '➡ Admin Setup Edit', '', 1, 1, 1, 1, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(44, 2, '➡ Admin Setup Delete', '', 1, 1, 1, 1, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(45, 2, 'Student ID Menu', 'student-id-card', 1, 1, 1, 1, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(46, 2, '➡ Student ID Add', '', 1, 1, 1, 1, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(47, 2, '➡ Student ID Edit', '', 1, 1, 1, 1, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(48, 2, '➡ Student ID Delete', '', 1, 1, 1, 1, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(49, 2, 'Student Certificate Menu', 'student-certificate', 1, 1, 1, 1, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(50, 2, '➡ Student Certificate Add', '', 1, 1, 1, 1, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(51, 2, '➡ Student Certificate Edit', '', 1, 1, 1, 1, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(52, 2, '➡ Student Certificate Delete', '', 1, 1, 1, 1, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(53, 2, 'Generate Certificate Menu', 'generate-certificate', 1, 1, 1, 1, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(54, 2, '➡ Generate Certificate Add', '', 1, 1, 1, 1, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(55, 2, '➡ Generate Certificate Edit', '', 1, 1, 1, 1, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(56, 2, '➡ Generate Certificate Delete', '', 1, 1, 1, 1, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(57, 2, 'Generate ID Card Menu', 'generate-id-card', 1, 1, 1, 1, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(58, 2, '➡ Generate ID Card Add', '', 1, 1, 1, 1, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(59, 2, '➡ Generate ID Card Edit', '', 1, 1, 1, 1, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(60, 2, '➡ Generate ID Card Delete', '', 1, 1, 1, 1, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(61, 3, 'Student Menu', '', 1, 1, 1, 1, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(62, 3, 'Student Admission Menu', 'student-admission', 1, 1, 1, 1, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(63, 3, '➡ Import Student', '', 1, 1, 1, 1, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(64, 3, 'Student List Menu', 'student-list', 1, 1, 1, 1, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(65, 3, '➡ Student List Add', '', 1, 1, 1, 1, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(66, 3, '➡ Student List Edit', '', 1, 1, 1, 1, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(67, 3, '➡ Student List Delete', '', 1, 1, 1, 1, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(68, 3, 'Student Attendance Menu', 'student-attendance', 1, 1, 1, 1, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(69, 3, '➡ Student Attendance Add', '', 1, 1, 1, 1, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(70, 3, 'Student Attendance Report Menu', 'student-attendance-report', 1, 1, 1, 1, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(71, 3, 'Student Category Menu', 'student-category', 1, 1, 1, 1, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(72, 3, '➡ Student Category Add', '', 1, 1, 1, 1, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(73, 3, '➡ Student Category Edit', '', 1, 1, 1, 1, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(74, 3, '➡ Student Category Delete', '', 1, 1, 1, 1, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(75, 3, '➡ Student Category Download', '', 1, 1, 1, 1, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(76, 3, 'Student Group Menu', 'student-group', 1, 1, 1, 1, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(77, 3, '➡ Student Group Add', '', 1, 1, 1, 1, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(79, 3, '➡ Student Group Edit', '', 1, 1, 1, 1, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(80, 3, '➡ Student Group Delete', '', 1, 1, 1, 1, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(81, 3, 'Student Promote Menu', 'student-promote', 1, 1, 1, 1, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(82, 3, '➡ Student Promote Add', '', 1, 1, 1, 1, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(83, 3, 'Disabled Students Menu', 'disabled-student', 1, 1, 1, 1, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(84, 3, '➡ Disabled Students Add', '', 1, 1, 1, 1, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(85, 3, '➡ Disabled Students Edit', '', 1, 1, 1, 1, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(86, 3, '➡ Disabled Students Delete', '', 1, 1, 1, 1, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(87, 4, 'Teacher Section Menu', '', 1, 1, 1, 1, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(88, 4, 'Upload Content Menu', 'upload-content', 1, 1, 1, 1, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(89, 4, '➡ Create Content Add', '', 1, 1, 1, 1, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(90, 4, '➡ Content Download', '', 1, 1, 1, 1, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(91, 4, '➡ Content Delete', '', 1, 1, 1, 1, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(92, 4, 'Assignment Menu', 'assignment-list', 1, 1, 1, 1, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(93, 4, '➡ Create Assignment Add', '', 0, 1, 1, 1, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(94, 4, '➡ Assignment Download', '', 1, 1, 1, 1, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(95, 4, '➡ Assignment Delete', '', 1, 1, 1, 1, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(96, 4, 'Study Material Menu', 'study-metarial-list', 1, 1, 1, 1, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(97, 4, '➡ Create Study Material Add', '', 0, 1, 1, 1, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(98, 4, '➡ Study Material Download', '', 1, 1, 1, 1, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(99, 4, '➡ Study Material Delete', '', 1, 1, 1, 1, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(100, 4, 'Syllabus Menu', 'syllabus-list', 1, 1, 1, 1, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(101, 4, '➡ Create Study Syllabus Add', '', 0, 1, 1, 1, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(102, 4, '➡ Study Syllabus Edit', '', 0, 1, 1, 1, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(103, 4, '➡ Study Syllabus Delete', '', 1, 1, 1, 1, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(104, 4, '➡ Study Syllabus Download', '', 1, 1, 1, 1, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(105, 4, 'Other Downloads Menu', 'other-download-list', 1, 1, 1, 1, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(106, 4, '➡ Other Downloads Download', '', 1, 1, 1, 1, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(107, 4, '➡ Other Downloads Delete', '', 1, 1, 1, 1, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(108, 5, 'Fees Collection Menu', '', 1, 1, 1, 1, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(109, 5, 'Collect Fees Menu', 'collect-fees', 1, 1, 1, 1, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(110, 5, '➡ Create Collect Fees', '', 1, 1, 1, 1, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(111, 5, '➡ Collect Fees Add', '', 1, 1, 1, 1, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(112, 5, '➡ Collect Fees Print', '', 1, 1, 1, 1, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(113, 5, 'Search Fees Payment Menu', 'search-fees-payment', 1, 1, 1, 1, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(114, 5, '➡ Create Search Fees Payment Add', '', 0, 1, 1, 1, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(115, 5, '➡ Search Fees Payment View', '', 1, 1, 1, 1, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(116, 5, 'Search Fees Due Menu', 'search-fees-due', 1, 1, 1, 1, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(117, 5, '➡ Search Fees Due View', '', 1, 1, 1, 1, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(118, 5, 'Fees Master Menu', 'fees-master', 1, 1, 1, 1, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(119, 5, '➡ Create Fees Master Add', '', 1, 1, 1, 1, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(120, 5, '➡ Fees Master Edit', '', 1, 1, 1, 1, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(121, 5, '➡ Fees Master Delete', '', 1, 1, 1, 1, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(122, 5, '➡ Fees Master Assign', '', 1, 1, 1, 1, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(123, 5, 'Fees Group Menu', 'fees-group', 1, 1, 1, 1, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(124, 5, '➡ Create Fees Group Add', '', 1, 1, 1, 1, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(125, 5, '➡ Fees Group Edit', '', 1, 1, 1, 1, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(126, 5, '➡ Fees Group Delete', '', 1, 1, 1, 1, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(127, 5, 'Fees Type Menu', 'fees-type', 1, 1, 1, 1, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(128, 5, '➡ Create Fees Type Add', '', 1, 1, 1, 1, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(129, 5, '➡ Fees Type Edit', '', 1, 1, 1, 1, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(130, 5, '➡ Fees Type Delete', '', 1, 1, 1, 1, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(131, 5, 'Fees Discount Menu', 'fees-discount', 1, 1, 1, 1, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(132, 5, '➡ Create Fees Discount Add', '', 1, 1, 1, 1, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(133, 5, '➡ Fees Discount Edit', '', 1, 1, 1, 1, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(134, 5, '➡ Fees Discount Delete', '', 1, 1, 1, 1, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(135, 5, '➡ Fees Discount Assign', '', 1, 1, 1, 1, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(136, 5, 'Fees Carry Forward Menu', 'fees-forward', 1, 1, 1, 1, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(137, 6, 'Accounts Menu', '', 1, 1, 1, 1, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(138, 6, 'Profit Menu', 'profit', 1, 1, 1, 1, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(139, 6, 'Income Menu', 'add-income', 1, 1, 1, 1, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(140, 6, '➡ Create Income Add', '', 1, 1, 1, 1, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(141, 6, '➡ Income Edit', '', 1, 1, 1, 1, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(142, 6, '➡ Income Delete', '', 1, 1, 1, 1, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(143, 6, 'Expense Menu', 'add-expense', 1, 1, 1, 1, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(144, 6, '➡ Create Expense Add', '', 1, 1, 1, 1, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(145, 6, '➡ Expense Edit', '', 1, 1, 1, 1, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(146, 6, '➡ Expense Delete', '', 1, 1, 1, 1, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(147, 6, 'Search Menu', 'search-account', 1, 1, 1, 1, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(148, 6, 'Chart of Account Menu', 'chart-of-account', 1, 1, 1, 1, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(149, 6, '➡ Create Chart of Account Add', '', 1, 1, 1, 1, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(150, 6, '➡ Chart of Account Edit', '', 1, 1, 1, 1, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(151, 6, '➡ Chart of Account Delete', '', 1, 1, 1, 1, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(152, 6, 'Payment method Menu', 'payment-method', 1, 1, 1, 1, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(153, 6, '➡ Create Payment method Add', '', 1, 1, 1, 1, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(154, 6, '➡ Payment method Edit', '', 1, 1, 1, 1, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(155, 6, '➡ Payment method Delete', '', 1, 1, 1, 1, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(156, 6, 'Bank Account Menu', 'bank-account', 1, 1, 1, 1, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(157, 6, '➡ Create Bank Account Add', '', 1, 1, 1, 1, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(158, 6, '➡ Bank Account Edit', '', 1, 1, 1, 1, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(159, 6, '➡ Bank Account Delete', '', 1, 1, 1, 1, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(160, 7, 'Human Resource Menu', '', 1, 1, 1, 1, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(161, 7, 'Staff Directory Menu', 'staff-directory', 1, 1, 1, 1, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(162, 7, '➡ Staff Directory Add', '', 1, 1, 1, 1, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(163, 7, '➡ Staff Directory Edit', '', 1, 1, 1, 1, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(164, 7, '➡ Staff Directory Delete', '', 1, 1, 1, 1, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(165, 7, 'Staff Attendance Menu', 'staff-attendance', 1, 1, 1, 1, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(166, 7, '➡ Staff Attendance Add', '', 1, 1, 1, 1, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(167, 7, '➡ Staff Attendance Edit', '', 0, 1, 1, 1, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(168, 7, '➡ Staff Attendance Delete', '', 0, 1, 1, 1, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(169, 7, 'Staff Attendance Report Menu', 'staff-attendance-report', 1, 1, 1, 1, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(170, 7, 'Payroll Menu', 'payroll', 1, 1, 1, 1, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(171, 7, '➡ Payroll Edit', '', 0, 1, 1, 1, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(172, 7, '➡ Payroll Delete', '', 0, 1, 1, 1, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(173, 7, '➡ Payroll Search', '', 1, 1, 1, 1, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(174, 7, '➡ Generate Payroll', '', 1, 1, 1, 1, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(175, 7, '➡ Payroll Create', '', 1, 1, 1, 1, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(176, 7, '➡ Payroll Proceed To Pay', '', 1, 1, 1, 1, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(177, 7, '➡ View Payslip', '', 1, 1, 1, 1, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(178, 7, 'Payroll Report Menu', 'payroll-report', 1, 1, 1, 1, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(179, 7, '➡ Payroll Report Search', '', 1, 1, 1, 1, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(180, 7, 'Designations Menu', 'designation', 1, 1, 1, 1, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(181, 7, '➡ Designations Add', '', 1, 1, 1, 1, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(182, 7, '➡ Designations Edit', '', 1, 1, 1, 1, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(183, 7, '➡ Designations Delete', '', 1, 1, 1, 1, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(184, 7, 'Departments Menu', 'department', 1, 1, 1, 1, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(185, 7, '➡ Departments Add', '', 1, 1, 1, 1, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(186, 7, '➡ Departments Edit', '', 1, 1, 1, 1, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(187, 7, '➡ Departments Delete', '', 1, 1, 1, 1, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(188, 8, 'Leave Menu', '', 1, 1, 1, 1, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(189, 8, 'Approve Leave Menu', 'approve-leave', 1, 1, 1, 1, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(190, 8, '➡ Approve Leave Add', '', 0, 1, 1, 1, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(191, 8, '➡ Approve Leave Edit', '', 1, 1, 1, 1, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(192, 8, '➡ Approve Leave Delete', '', 1, 1, 1, 1, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(193, 8, 'Apply Leave Menu', 'apply-leave', 1, 1, 1, 1, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(194, 8, '➡ Apply Leave View', '', 1, 1, 1, 1, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(195, 8, '➡ Apply Leave Delete', '', 1, 1, 1, 1, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(196, 8, 'Pending Leave Menu', 'pending-leave', 1, 1, 1, 1, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(197, 8, '➡ Pending Leave View', '', 1, 1, 1, 1, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(198, 8, '➡ Pending Leave Delete', '', 1, 1, 1, 1, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(199, 8, 'Leave Define Menu', 'leave-define', 1, 1, 1, 1, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(200, 8, '➡ Leave Define Add', '', 1, 1, 1, 1, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(201, 8, '➡ Leave Define Edit', '', 1, 1, 1, 1, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(202, 8, '➡ Leave Define Delete', '', 1, 1, 1, 1, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(203, 8, 'Leave Type Menu', 'leave-type', 1, 1, 1, 1, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(204, 8, '➡ Leave Type Add', '', 1, 1, 1, 1, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(205, 8, '➡ Leave Type Edit', '', 1, 1, 1, 1, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(206, 8, '➡ Leave Type Delete', '', 1, 1, 1, 1, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(207, 9, 'Examination Menu', '', 1, 1, 1, 1, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(208, 9, 'Add Exam Type Menu', 'exam-type', 1, 1, 1, 1, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(209, 9, '➡ Add Exam Type Add', '', 1, 1, 1, 1, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(210, 9, '➡ Add Exam Type Edit', '', 1, 1, 1, 1, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(211, 9, '➡ Add Exam Type Delete', '', 1, 1, 1, 1, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(214, 9, 'Exam Setup Menu', 'exam', 1, 1, 1, 1, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(215, 9, '➡ Exam Setup Add', '', 1, 1, 1, 1, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(216, 9, '➡ Exam Setup Delete', '', 1, 1, 1, 1, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(217, 9, 'Exam Schedule Menu', 'exam-schedule', 1, 1, 1, 1, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(218, 9, '➡ Exam Schedule Add', '', 1, 1, 1, 1, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(219, 9, '➡ Exam Schedule Create', '', 1, 1, 1, 1, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(220, 9, 'Exam Attendance Menu', 'exam-attendance', 1, 1, 1, 1, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(221, 9, '➡ Exam Attendance Add', '', 1, 1, 1, 1, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(222, 9, 'Marks Register Menu', 'marks-register', 1, 1, 1, 1, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(223, 9, '➡ Marks Register Add', '', 1, 1, 1, 1, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(224, 9, '➡ Marks Register Create', '', 1, 1, 1, 1, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(225, 9, 'Marks Grade Menu', 'marks-grade', 1, 1, 1, 1, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(226, 9, '➡ Marks Grade Add', '', 1, 1, 1, 1, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(227, 9, '➡ Marks Grade Edit', '', 1, 1, 1, 1, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(228, 9, '➡ Marks Grade Delete', '', 1, 1, 1, 1, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(229, 9, 'Send Marks By SMS Menu', 'send-marks-by-sms', 1, 1, 1, 1, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(230, 9, 'Question Group Menu', 'question-group', 1, 1, 1, 1, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(231, 9, '➡ Question Group Add', '', 1, 1, 1, 1, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(232, 9, '➡ Question Group Edit', '', 1, 1, 1, 1, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(233, 9, '➡ Question Group Delete', '', 1, 1, 1, 1, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(234, 9, 'Question Bank Menu', 'question-bank', 1, 1, 1, 1, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(235, 9, '➡ Question Bank Add', '', 1, 1, 1, 1, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(236, 9, '➡ Question Bank Edit', '', 1, 1, 1, 1, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(237, 9, '➡ Question Bank Delete', '', 1, 1, 1, 1, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(238, 9, 'Online Exam Menu', 'online-exam', 1, 1, 1, 1, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(239, 9, '➡ Online Exam Add', '', 1, 1, 1, 1, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(240, 9, '➡ Online Exam Edit', '', 1, 1, 1, 1, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(241, 9, '➡ Online Exam Delete', '', 1, 1, 1, 1, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(242, 9, '➡ Online Exam Manage Question', '', 1, 1, 1, 1, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(243, 9, '➡ Online Exam Marks Register', '', 1, 1, 1, 1, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(244, 9, '➡ Online Exam Result', '', 1, 1, 1, 1, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(245, 10, 'Academics Menu', '', 1, 1, 1, 1, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(246, 10, 'Class Routine Menu', 'class-routine-new', 1, 1, 1, 1, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(247, 10, '➡ Class Routine Add', '', 1, 1, 1, 1, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(248, 10, '➡ Class Routine Edit', '', 1, 1, 1, 1, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(249, 10, '➡ Class Routine Delete', '', 1, 1, 1, 1, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(250, 10, 'Assign Subject Menu', 'assign-subject', 1, 1, 1, 1, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(251, 10, '➡ Assign Subject Add', '', 1, 1, 1, 1, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(252, 10, '➡ Assign Subject Delete', '', 1, 1, 1, 1, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(253, 10, 'Assign Class Teacher Menu', 'assign-class-teacher', 1, 1, 1, 1, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(254, 10, '➡ Assign Class Teacher Add', '', 1, 1, 1, 1, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(255, 10, '➡ Assign Class Teacher Edit', '', 1, 1, 1, 1, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(256, 10, '➡ Assign Class Teacher Delete', '', 1, 1, 1, 1, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(257, 10, 'Subjects Menu', 'subject', 1, 1, 1, 1, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(258, 10, '➡ Subjects Add', '', 1, 1, 1, 1, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(259, 10, '➡ Subjects Edit', '', 1, 1, 1, 1, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(260, 10, '➡ Subjects Delete', '', 1, 1, 1, 1, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(261, 10, 'Class Menu', 'class', 1, 1, 1, 1, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(262, 10, '➡ Class Add', '', 1, 1, 1, 1, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(263, 10, '➡ Class Edit', '', 1, 1, 1, 1, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(264, 10, '➡ Class Delete', '', 1, 1, 1, 1, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(265, 10, 'Section Menu', 'section', 1, 1, 1, 1, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(266, 10, '➡ Section Add', '', 1, 1, 1, 1, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(267, 10, '➡ Section Edit', '', 1, 1, 1, 1, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(268, 10, '➡ Section Delete', '', 1, 1, 1, 1, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(269, 10, 'Class Room Menu', 'class-room', 1, 1, 1, 1, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(270, 10, '➡ Class Room Add', '', 1, 1, 1, 1, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(271, 10, '➡ Class Room Edit', '', 1, 1, 1, 1, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(272, 10, '➡ Class Room Delete', '', 1, 1, 1, 1, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(273, 10, 'CL/EX Time Setup Menu', 'class-time', 1, 1, 1, 1, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(274, 10, '➡ CL/EX Time Setup Add', '', 1, 1, 1, 1, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(275, 10, '➡ CL/EX Time Setup Edit', '', 1, 1, 1, 1, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(276, 10, '➡ CL/EX Time Setup Delete', '', 1, 1, 1, 1, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(277, 11, 'Homework Menu', '', 1, 1, 1, 1, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(278, 11, 'Add Homework Menu', 'add-homeworks', 1, 1, 1, 1, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(279, 11, '➡ Create Homework Add', '', 1, 1, 1, 1, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(280, 11, 'Homework List Menu', 'homework-list', 1, 1, 1, 1, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(281, 11, '➡ Homework List Evaluation', '', 1, 1, 1, 1, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(282, 11, '➡ Homework List Edit', '', 1, 1, 1, 1, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(283, 11, '➡ Homework List Delete', '', 1, 1, 1, 1, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(284, 11, 'Homework Evaluation Report Menu', 'evaluation-report', 1, 1, 1, 1, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(285, 11, '➡ Homework Evaluation Report View', '', 1, 1, 1, 1, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(286, 12, 'Communicate Menu', '', 1, 1, 1, 1, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(287, 12, 'Notice Board Menu', 'notice-list', 1, 1, 1, 1, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(288, 12, '➡ Create Notice Board Add', '', 1, 1, 1, 1, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(289, 12, '➡ Create Notice Board Edit', '', 1, 1, 1, 1, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(290, 12, '➡ Create Notice Board Delete', '', 1, 1, 1, 1, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(291, 12, 'Send Email / SMS  Menu', 'send-email-sms-view', 1, 1, 1, 1, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(292, 12, '➡ Send Email / SMS  Send', '', 1, 1, 1, 1, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(293, 12, 'Email / SMS Log Menu', 'email-sms-log', 1, 1, 1, 1, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(294, 12, 'Event Menu', 'event', 1, 1, 1, 1, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(295, 12, '➡ Event Add', '', 1, 1, 1, 1, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(296, 12, '➡ Event Edit', '', 1, 1, 1, 1, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(297, 12, '➡ Event Delete', '', 1, 1, 1, 1, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(298, 13, 'Library Menu', '', 1, 1, 1, 1, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(299, 13, 'Add Book Menu', 'add-book', 1, 1, 1, 1, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(300, 13, '➡ Create Add Book Add', '', 1, 1, 1, 1, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(301, 13, 'Book List  Menu', 'book-list', 1, 1, 1, 1, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(302, 13, '➡ Create Book List Edit', '', 1, 1, 1, 1, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(303, 13, '➡ Create Book List Delete', '', 1, 1, 1, 1, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(304, 13, 'Book Category Menu', 'book-category-list', 1, 1, 1, 1, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(305, 13, '➡ Book Category Add', '', 1, 1, 1, 1, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(306, 13, '➡ Book Category Edit', '', 1, 1, 1, 1, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(307, 13, '➡ Book Category Delete', '', 1, 1, 1, 1, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(308, 13, 'Add Member Menu', 'library-member', 1, 1, 1, 1, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(309, 13, '➡ Add Member Add', '', 1, 1, 1, 1, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(310, 13, '➡ Add Member Cancel', '', 1, 1, 1, 1, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(311, 13, 'Issue/Return Book Menu', 'member-list', 1, 1, 1, 1, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(312, 13, '➡ Issue/Return Book Issue', '', 1, 1, 1, 1, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(313, 13, '➡ Issue/Return Book Return', '', 1, 1, 1, 1, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(314, 13, 'All Issued Book', 'all-issed-book', 1, 1, 1, 1, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(315, 14, 'Inventory Menu', '', 1, 1, 1, 1, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(316, 14, 'Item Category Menu', 'item-category', 1, 1, 1, 1, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(317, 14, '➡ Create Item Category Add', '', 1, 1, 1, 1, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(318, 14, '➡ Create Item Category Edit', '', 1, 1, 1, 1, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(319, 14, '➡ Item Category Delete', '', 1, 1, 1, 1, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(320, 14, 'Item List Menu', 'item-list', 1, 1, 1, 1, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(321, 14, '➡ Create Item List Add', '', 1, 1, 1, 1, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(322, 14, '➡ Item List Edit', '', 1, 1, 1, 1, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(323, 14, '➡ Item List Delete', '', 1, 1, 1, 1, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(324, 14, 'Item Store Menu', 'item-store', 1, 1, 1, 1, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(325, 14, '➡ Create Item Store Add', '', 1, 1, 1, 1, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(326, 14, '➡ Item Store Edit', '', 1, 1, 1, 1, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(327, 14, '➡ Item Store Delete', '', 1, 1, 1, 1, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(328, 14, 'Supplier Menu', 'suppliers', 1, 1, 1, 1, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(329, 14, '➡ Create Supplier Add', '', 1, 1, 1, 1, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(330, 14, '➡ Supplier Edit', '', 1, 1, 1, 1, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(331, 14, '➡ Supplier Delete', '', 1, 1, 1, 1, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(332, 14, 'Item Receive Menu', 'item-receive', 1, 1, 1, 1, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(333, 14, '➡ Create Item Receive Add', '', 1, 1, 1, 1, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(334, 14, 'Item Receive List Menu', 'item-receive-list', 1, 1, 1, 1, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(335, 14, '➡ Create Item Receive List Add', '', 1, 1, 1, 1, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(336, 14, '➡ Item Receive List Edit', '', 1, 1, 1, 1, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(337, 14, '➡ Item Receive List View', '', 1, 1, 1, 1, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(338, 14, '➡ Item Receive List Cancel', '', 1, 1, 1, 1, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(339, 14, 'Item Sell Menu', 'item-sell-list', 1, 1, 1, 1, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(340, 14, '➡ Create Item Sell Add', '', 1, 1, 1, 1, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(341, 14, '➡ Item Sell Edit', '', 1, 1, 1, 1, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(342, 14, '➡ Item Sell Delete', '', 1, 1, 1, 1, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(343, 14, '➡ Add Payment', '', 1, 1, 1, 1, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(344, 14, '➡ View Payment', '', 1, 1, 1, 1, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(345, 14, 'Item Issue Menu', 'item-issue', 1, 1, 1, 1, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(346, 14, '➡ Create Item Issue Add', '', 1, 1, 1, 1, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(347, 14, '➡ Item Issue Return', '', 1, 1, 1, 1, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(348, 15, 'Transport Menu', '', 1, 1, 1, 1, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(349, 15, 'Routes Menu', 'transport-route', 1, 1, 1, 1, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(350, 15, '➡ Create Routes Add', '', 1, 1, 1, 1, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(351, 15, '➡ Create Routes Edit', '', 1, 1, 1, 1, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(352, 15, '➡ Create Routes Delete', '', 1, 1, 1, 1, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(353, 15, 'Vehicle Menu', 'vehicle', 1, 1, 1, 1, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(354, 15, '➡ Create Vehicle Add', '', 1, 1, 1, 1, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(355, 15, '➡ Create Vehicle Edit', '', 1, 1, 1, 1, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(356, 15, '➡ Create Vehicle Delete', '', 1, 1, 1, 1, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(357, 15, 'Assign Vehicle Menu', 'assign-vehicle', 1, 1, 1, 1, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(358, 15, '➡ Create Assign Vehicle Add', '', 1, 1, 1, 1, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(359, 15, '➡ Create Assign Vehicle Edit', '', 1, 1, 1, 1, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(360, 15, '➡ Create Assign Vehicle Delete', '', 1, 1, 1, 1, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(361, 15, 'Student Transport Report Menu', 'student-transport-report', 1, 1, 1, 1, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(362, 16, 'Dormitory Menu', '', 1, 1, 1, 1, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(363, 16, 'Dormitory Rooms Menu', 'room-list', 1, 1, 1, 1, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(364, 16, '➡ Create Dormitory Rooms Add', '', 1, 1, 1, 1, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(365, 16, '➡ Create Dormitory Rooms Edit', '', 1, 1, 1, 1, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(366, 16, '➡ Create Dormitory Rooms Delete', '', 1, 1, 1, 1, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(367, 16, 'Dormitory Menu', 'dormitory-list', 1, 1, 1, 1, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(368, 16, '➡ Create Dormitory Add', '', 1, 1, 1, 1, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(369, 16, '➡ Create Dormitory Edit', '', 1, 1, 1, 1, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(370, 16, '➡ Create Dormitory Delete', '', 1, 1, 1, 1, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(371, 16, 'Room Type Menu', 'room-type', 1, 1, 1, 1, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(372, 16, '➡ Create Room Type Add', '', 1, 1, 1, 1, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(373, 16, '➡ Create Room Type Edit', '', 1, 1, 1, 1, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(374, 16, '➡ Create Room Type Delete', '', 1, 1, 1, 1, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(375, 16, 'Student Dormitory Report Menu', 'student-dormitory-report', 1, 1, 1, 1, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(376, 17, 'Reports Menu', 'student-report', 1, 1, 1, 1, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(377, 17, 'Guardian Report Menu', 'guardian-report', 1, 1, 1, 1, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(378, 17, 'Student History Menu', 'student-history', 1, 1, 1, 1, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(379, 17, 'Student Login Report', 'student-login-report', 1, 1, 1, 1, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(380, 17, '➡ Student Login Report Edit', '', 1, 1, 1, 1, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(381, 17, 'Fees Statement Menu', 'fees-statement', 1, 1, 1, 1, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(382, 17, 'Balance Fees Report Menu', 'balance-fees-report', 1, 1, 1, 1, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(383, 17, 'Transaction Report Menu', 'transaction-report', 1, 1, 1, 1, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(384, 17, 'Class Report Menu', 'class-report', 1, 1, 1, 1, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(385, 17, 'Class Routine Menu', 'class-routine-report', 1, 1, 1, 1, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(386, 17, 'Exam Routine Menu', 'exam-routine-report', 1, 1, 1, 1, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(387, 17, 'Teacher Class Routine Menu', 'teacher-class-routine-report', 1, 1, 1, 1, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(388, 17, 'Merit List Report Menu', 'merit-list-report', 1, 1, 1, 1, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(389, 17, 'Online Exam Report Menu', 'online-exam-report', 1, 1, 1, 1, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(390, 17, 'Mark Sheet Report Menu', 'mark-sheet-report-student', 1, 1, 1, 1, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(391, 17, 'Tabulation Sheet Report Menu', 'tabulation-sheet-report', 1, 1, 1, 1, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(392, 17, 'Progress Card Report Menu', 'progress-card-report', 1, 1, 1, 1, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(393, 17, 'Student Fine Report Menu', 'student-fine-report', 1, 1, 1, 1, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(394, 17, 'User Log Menu', 'user-log', 1, 1, 1, 1, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(395, 8, '➡ Apply Leave Add', '', 1, 1, 1, 1, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(396, 8, '➡ Apply Leave Edit', '', 1, 1, 1, 1, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(397, 9, '➡ Exam Setup Edit', '', 1, 1, 1, 1, '2019-07-25 01:21:21', '2019-07-25 03:24:22');

-- --------------------------------------------------------

--
-- Structure de la table `sm_module_permissions`
--

DROP TABLE IF EXISTS `sm_module_permissions`;
CREATE TABLE IF NOT EXISTS `sm_module_permissions` (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `dashboard_id` int DEFAULT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `active_status` tinyint NOT NULL DEFAULT '1',
  `created_by` int UNSIGNED DEFAULT '1',
  `updated_by` int UNSIGNED DEFAULT '1',
  `school_id` int UNSIGNED DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `sm_module_permissions_school_id_foreign` (`school_id`)
) ENGINE=MyISAM AUTO_INCREMENT=47 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `sm_module_permissions`
--

INSERT INTO `sm_module_permissions` (`id`, `dashboard_id`, `name`, `active_status`, `created_by`, `updated_by`, `school_id`, `created_at`, `updated_at`) VALUES
(1, 1, 'Dashboard', 1, 1, 1, 1, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(2, 1, 'Admin Section', 1, 1, 1, 1, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(3, 1, 'Student Information', 1, 1, 1, 1, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(4, 1, 'Teacher', 1, 1, 1, 1, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(5, 1, 'Fees Collection', 1, 1, 1, 1, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(6, 1, 'Accounts', 1, 1, 1, 1, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(7, 1, 'Human Resource', 1, 1, 1, 1, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(8, 1, 'Leave Application', 1, 1, 1, 1, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(9, 1, 'Examination', 1, 1, 1, 1, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(10, 1, 'Academics', 1, 1, 1, 1, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(11, 1, 'Homework', 1, 1, 1, 1, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(12, 1, 'Communicate', 1, 1, 1, 1, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(13, 1, 'Library', 1, 1, 1, 1, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(14, 1, 'Inventory', 1, 1, 1, 1, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(15, 1, 'Transport', 1, 1, 1, 1, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(16, 1, 'Dormitory', 1, 1, 1, 1, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(17, 1, 'Reports', 1, 1, 1, 1, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(18, 1, 'System Settings', 1, 1, 1, 1, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(19, 1, 'Style', 1, 1, 1, 1, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(20, 1, 'API Permission', 1, 1, 1, 1, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(21, 1, 'Front Settings', 1, 1, 1, 1, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(22, 2, 'My Profile', 1, 1, 1, 1, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(23, 2, 'Fees', 1, 1, 1, 1, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(24, 2, 'Class Routine', 1, 1, 1, 1, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(25, 2, 'Homework', 1, 1, 1, 1, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(26, 2, 'Download Center', 1, 1, 1, 1, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(27, 2, 'Attendance', 1, 1, 1, 1, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(28, 2, 'Examinations', 1, 1, 1, 1, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(29, 2, 'Online Exam', 1, 1, 1, 1, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(30, 2, 'Notice Board', 1, 1, 1, 1, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(31, 2, 'Subjects', 1, 1, 1, 1, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(32, 2, 'Teacher', 1, 1, 1, 1, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(33, 2, 'Library', 1, 1, 1, 1, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(34, 2, 'Transfort', 1, 1, 1, 1, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(35, 2, 'Dormitory', 1, 1, 1, 1, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(36, 3, 'My Children', 1, 1, 1, 1, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(37, 3, 'Fees', 1, 1, 1, 1, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(38, 3, 'Class Routine', 1, 1, 1, 1, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(39, 3, 'Homework', 1, 1, 1, 1, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(40, 3, 'Attendance', 1, 1, 1, 1, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(41, 3, 'Exam Result', 1, 1, 1, 1, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(42, 3, 'Notice Board', 1, 1, 1, 1, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(43, 3, 'Subjects', 1, 1, 1, 1, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(44, 3, 'Teacher', 1, 1, 1, 1, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(45, 3, 'Transfort', 1, 1, 1, 1, '2019-07-25 01:21:21', '2019-07-25 03:24:22'),
(46, 3, 'Dormitory', 1, 1, 1, 1, '2019-07-25 01:21:21', '2019-07-25 03:24:22');

-- --------------------------------------------------------

--
-- Structure de la table `sm_module_permission_assigns`
--

DROP TABLE IF EXISTS `sm_module_permission_assigns`;
CREATE TABLE IF NOT EXISTS `sm_module_permission_assigns` (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `active_status` tinyint NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `module_id` int UNSIGNED DEFAULT NULL,
  `role_id` int UNSIGNED DEFAULT NULL,
  `created_by` int UNSIGNED DEFAULT '1',
  `updated_by` int UNSIGNED DEFAULT '1',
  `school_id` int UNSIGNED DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `sm_module_permission_assigns_module_id_foreign` (`module_id`),
  KEY `sm_module_permission_assigns_role_id_foreign` (`role_id`),
  KEY `sm_module_permission_assigns_school_id_foreign` (`school_id`)
) ENGINE=MyISAM AUTO_INCREMENT=217 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `sm_module_permission_assigns`
--

INSERT INTO `sm_module_permission_assigns` (`id`, `active_status`, `created_at`, `updated_at`, `module_id`, `role_id`, `created_by`, `updated_by`, `school_id`) VALUES
(1, 1, '2019-11-18 07:14:09', '2019-11-18 07:14:09', 1, 1, 1, 1, 1),
(2, 1, '2019-11-18 07:14:09', '2019-11-18 07:14:09', 2, 1, 1, 1, 1),
(3, 1, '2019-11-18 07:14:09', '2019-11-18 07:14:09', 3, 1, 1, 1, 1),
(4, 1, '2019-11-18 07:14:09', '2019-11-18 07:14:09', 4, 1, 1, 1, 1),
(5, 1, '2019-11-18 07:14:09', '2019-11-18 07:14:09', 5, 1, 1, 1, 1),
(6, 1, '2019-11-18 07:14:09', '2019-11-18 07:14:09', 6, 1, 1, 1, 1),
(7, 1, '2019-11-18 07:14:09', '2019-11-18 07:14:09', 7, 1, 1, 1, 1),
(8, 1, '2019-11-18 07:14:09', '2019-11-18 07:14:09', 8, 1, 1, 1, 1),
(9, 1, '2019-11-18 07:14:09', '2019-11-18 07:14:09', 9, 1, 1, 1, 1),
(10, 1, '2019-11-18 07:14:09', '2019-11-18 07:14:09', 10, 1, 1, 1, 1),
(11, 1, '2019-11-18 07:14:09', '2019-11-18 07:14:09', 11, 1, 1, 1, 1),
(12, 1, '2019-11-18 07:14:09', '2019-11-18 07:14:09', 12, 1, 1, 1, 1),
(13, 1, '2019-11-18 07:14:09', '2019-11-18 07:14:09', 13, 1, 1, 1, 1),
(14, 1, '2019-11-18 07:14:09', '2019-11-18 07:14:09', 14, 1, 1, 1, 1),
(15, 1, '2019-11-18 07:14:09', '2019-11-18 07:14:09', 15, 1, 1, 1, 1),
(16, 1, '2019-11-18 07:14:09', '2019-11-18 07:14:09', 16, 1, 1, 1, 1),
(17, 1, '2019-11-18 07:14:09', '2019-11-18 07:14:09', 17, 1, 1, 1, 1),
(18, 1, '2019-11-18 07:14:09', '2019-11-18 07:14:09', 18, 1, 1, 1, 1),
(19, 1, '2019-11-18 07:14:09', '2019-11-18 07:14:09', 19, 1, 1, 1, 1),
(20, 1, '2019-11-18 07:14:09', '2019-11-18 07:14:09', 20, 1, 1, 1, 1),
(21, 1, '2019-11-18 07:14:09', '2019-11-18 07:14:09', 21, 1, 1, 1, 1),
(127, 1, '2019-11-18 07:14:10', '2019-11-18 07:14:10', 22, 2, 1, 1, 1),
(128, 1, '2019-11-18 07:14:10', '2019-11-18 07:14:10', 23, 2, 1, 1, 1),
(129, 1, '2019-11-18 07:14:10', '2019-11-18 07:14:10', 24, 2, 1, 1, 1),
(130, 1, '2019-11-18 07:14:10', '2019-11-18 07:14:10', 25, 2, 1, 1, 1),
(131, 1, '2019-11-18 07:14:10', '2019-11-18 07:14:10', 26, 2, 1, 1, 1),
(132, 1, '2019-11-18 07:14:10', '2019-11-18 07:14:10', 27, 2, 1, 1, 1),
(133, 1, '2019-11-18 07:14:10', '2019-11-18 07:14:10', 28, 2, 1, 1, 1),
(134, 1, '2019-11-18 07:14:10', '2019-11-18 07:14:10', 29, 2, 1, 1, 1),
(135, 1, '2019-11-18 07:14:10', '2019-11-18 07:14:10', 30, 2, 1, 1, 1),
(136, 1, '2019-11-18 07:14:10', '2019-11-18 07:14:10', 31, 2, 1, 1, 1),
(137, 1, '2019-11-18 07:14:10', '2019-11-18 07:14:10', 32, 2, 1, 1, 1),
(138, 1, '2019-11-18 07:14:10', '2019-11-18 07:14:10', 33, 2, 1, 1, 1),
(139, 1, '2019-11-18 07:14:10', '2019-11-18 07:14:10', 34, 2, 1, 1, 1),
(140, 1, '2019-11-18 07:14:10', '2019-11-18 07:14:10', 35, 2, 1, 1, 1),
(141, 1, '2019-11-18 07:14:10', '2019-11-18 07:14:10', 36, 3, 1, 1, 1),
(142, 1, '2019-11-18 07:14:10', '2019-11-18 07:14:10', 37, 3, 1, 1, 1),
(143, 1, '2019-11-18 07:14:10', '2019-11-18 07:14:10', 38, 3, 1, 1, 1),
(144, 1, '2019-11-18 07:14:10', '2019-11-18 07:14:10', 39, 3, 1, 1, 1),
(145, 1, '2019-11-18 07:14:10', '2019-11-18 07:14:10', 40, 3, 1, 1, 1),
(146, 1, '2019-11-18 07:14:10', '2019-11-18 07:14:10', 41, 3, 1, 1, 1),
(147, 1, '2019-11-18 07:14:10', '2019-11-18 07:14:10', 42, 3, 1, 1, 1),
(148, 1, '2019-11-18 07:14:10', '2019-11-18 07:14:10', 43, 3, 1, 1, 1),
(149, 1, '2019-11-18 07:14:10', '2019-11-18 07:14:10', 44, 3, 1, 1, 1),
(150, 1, '2019-11-18 07:14:10', '2019-11-18 07:14:10', 45, 3, 1, 1, 1),
(151, 1, '2019-11-18 07:14:10', '2019-11-18 07:14:10', 46, 3, 1, 1, 1),
(167, 1, '2019-12-03 09:55:49', '2019-12-03 09:55:49', 2, 5, 1, 1, 1),
(168, 1, '2019-12-03 09:55:49', '2019-12-03 09:55:49', 3, 5, 1, 1, 1),
(169, 1, '2019-12-03 09:55:49', '2019-12-03 09:55:49', 4, 5, 1, 1, 1),
(170, 1, '2019-12-03 09:55:49', '2019-12-03 09:55:49', 5, 5, 1, 1, 1),
(171, 1, '2019-12-03 09:55:49', '2019-12-03 09:55:49', 6, 5, 1, 1, 1),
(172, 1, '2019-12-03 09:55:49', '2019-12-03 09:55:49', 7, 5, 1, 1, 1),
(173, 1, '2019-12-03 09:55:49', '2019-12-03 09:55:49', 8, 5, 1, 1, 1),
(174, 1, '2019-12-03 09:55:49', '2019-12-03 09:55:49', 9, 5, 1, 1, 1),
(175, 1, '2019-12-03 09:55:49', '2019-12-03 09:55:49', 10, 5, 1, 1, 1),
(176, 1, '2019-12-03 09:55:49', '2019-12-03 09:55:49', 11, 5, 1, 1, 1),
(177, 1, '2019-12-03 09:55:49', '2019-12-03 09:55:49', 12, 5, 1, 1, 1),
(178, 1, '2019-12-03 09:55:49', '2019-12-03 09:55:49', 13, 5, 1, 1, 1),
(179, 1, '2019-12-03 09:55:49', '2019-12-03 09:55:49', 14, 5, 1, 1, 1),
(180, 1, '2019-12-03 09:55:49', '2019-12-03 09:55:49', 15, 5, 1, 1, 1),
(181, 1, '2019-12-03 09:55:49', '2019-12-03 09:55:49', 16, 5, 1, 1, 1),
(182, 1, '2019-12-03 09:55:49', '2019-12-03 09:55:49', 17, 5, 1, 1, 1),
(183, 1, '2019-12-03 09:55:49', '2019-12-03 09:55:49', 19, 5, 1, 1, 1),
(184, 1, '2019-12-03 09:55:49', '2019-12-03 09:55:49', 20, 5, 1, 1, 1),
(185, 1, '2019-12-03 09:55:49', '2019-12-03 09:55:49', 21, 5, 1, 1, 1),
(197, 1, '2019-12-03 10:14:06', '2019-12-03 10:14:06', 3, 4, 1, 1, 1),
(198, 1, '2019-12-03 10:14:06', '2019-12-03 10:14:06', 4, 4, 1, 1, 1),
(199, 1, '2019-12-03 10:14:06', '2019-12-03 10:14:06', 8, 4, 1, 1, 1),
(200, 1, '2019-12-03 10:14:06', '2019-12-03 10:14:06', 9, 4, 1, 1, 1),
(201, 1, '2019-12-03 10:14:06', '2019-12-03 10:14:06', 10, 4, 1, 1, 1),
(202, 1, '2019-12-03 10:14:06', '2019-12-03 10:14:06', 11, 4, 1, 1, 1),
(203, 1, '2019-12-03 10:14:06', '2019-12-03 10:14:06', 17, 4, 1, 1, 1),
(204, 1, '2019-12-03 10:14:06', '2019-12-03 10:14:06', 19, 4, 1, 1, 1),
(205, 1, '2019-12-03 10:16:38', '2019-12-03 10:16:38', 3, 6, 1, 1, 1),
(206, 1, '2019-12-03 10:16:38', '2019-12-03 10:16:38', 5, 6, 1, 1, 1),
(207, 1, '2019-12-03 10:16:38', '2019-12-03 10:16:38', 6, 6, 1, 1, 1),
(208, 1, '2019-12-03 10:16:38', '2019-12-03 10:16:38', 7, 6, 1, 1, 1),
(209, 1, '2019-12-03 10:16:38', '2019-12-03 10:16:38', 14, 6, 1, 1, 1),
(210, 1, '2019-12-03 10:16:38', '2019-12-03 10:16:38', 17, 6, 1, 1, 1),
(211, 1, '2019-12-03 10:17:09', '2019-12-03 10:17:09', 2, 7, 1, 1, 1),
(212, 1, '2019-12-03 10:17:09', '2019-12-03 10:17:09', 3, 7, 1, 1, 1),
(213, 1, '2019-12-03 10:17:09', '2019-12-03 10:17:09', 7, 7, 1, 1, 1),
(214, 1, '2019-12-03 10:17:30', '2019-12-03 10:17:30', 3, 8, 1, 1, 1),
(215, 1, '2019-12-03 10:17:30', '2019-12-03 10:17:30', 7, 8, 1, 1, 1),
(216, 1, '2019-12-03 10:17:30', '2019-12-03 10:17:30', 13, 8, 1, 1, 1);

-- --------------------------------------------------------

--
-- Structure de la table `sm_news`
--

DROP TABLE IF EXISTS `sm_news`;
CREATE TABLE IF NOT EXISTS `sm_news` (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `news_title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `view_count` int DEFAULT NULL,
  `active_status` int DEFAULT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image_thumb` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `news_body` text COLLATE utf8mb4_unicode_ci,
  `publish_date` date DEFAULT NULL,
  `order` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `category_id` int UNSIGNED DEFAULT NULL,
  `created_by` int UNSIGNED DEFAULT '1',
  `updated_by` int UNSIGNED DEFAULT '1',
  `school_id` int UNSIGNED DEFAULT '1',
  `academic_id` int UNSIGNED DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `sm_news_category_id_foreign` (`category_id`),
  KEY `sm_news_school_id_foreign` (`school_id`),
  KEY `sm_news_academic_id_foreign` (`academic_id`)
) ENGINE=MyISAM AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `sm_news`
--

INSERT INTO `sm_news` (`id`, `news_title`, `view_count`, `active_status`, `image`, `image_thumb`, `news_body`, `publish_date`, `order`, `created_at`, `updated_at`, `category_id`, `created_by`, `updated_by`, `school_id`, `academic_id`) VALUES
(1, 'A cum est ab aut eum.', 0, 1, 'public/uploads/news/news1.jpg', NULL, 'Ratione dicta consectetur qui tenetur deleniti. Distinctio qui ut sit autem ut. Sunt dignissimos at deserunt quia est non. Esse quia magni enim sed ut. Aliquam quam voluptas iste occaecati consequuntur sunt. Alias quis consequuntur praesentium numquam quaerat ad. Perferendis et vero non voluptatem cumque occaecati. Nostrum est nihil quae expedita deserunt dignissimos neque. Qui ipsam sit architecto quia. Ut enim et et libero ducimus.', '2019-06-02', '1', '2022-05-02 06:30:44', NULL, 1, 1, 1, 1, 1),
(2, 'Enim et voluptatem soluta soluta.', 1, 1, 'public/uploads/news/news2.jpg', NULL, 'Et quas sint ipsa cumque quia. Esse velit perspiciatis sint numquam. Ea esse harum quis et iusto. Et dolores nostrum quia doloremque consequatur similique ut. Nulla autem et rerum in nisi pariatur et. Voluptatum quos sed voluptas soluta sed non. Repudiandae et voluptatem quam qui quia sit sint. Aut quibusdam sint voluptatum atque ipsa. Illum aliquam neque numquam inventore sit laboriosam repellendus.', '2019-06-02', '2', '2022-05-02 06:30:44', NULL, 1, 1, 1, 1, 1),
(3, 'Quia dolores porro impedit.', 0, 1, 'public/uploads/news/news3.jpg', NULL, 'Sunt aut et quae accusantium. Quia voluptas commodi et eum quasi unde quia. Enim consequuntur sapiente suscipit iure. Labore sequi nisi quidem laborum ipsam optio ducimus. Perferendis et vitae sapiente nihil iste blanditiis nihil porro. Velit eum quibusdam harum quis. Possimus ut aliquid et. Repellat vero corporis et omnis vel. Nam perferendis veritatis tenetur ab et. Consequatur voluptatem tenetur libero sit aliquam nulla eum. Aut voluptatibus vel ut culpa commodi excepturi.', '2019-06-02', '3', '2022-05-02 06:30:44', NULL, 1, 1, 1, 1, 1),
(4, 'Temporibus in fuga alias corrupti.', 9, 1, 'public/uploads/news/news4.jpg', NULL, 'Enim alias magnam praesentium quam aut sint. Quaerat eum sed expedita quia quia. Mollitia molestiae maxime tempora officia totam. Ea soluta molestiae optio vero totam. Dolores consequuntur fugiat est neque qui. Quod ad culpa illo doloribus rerum quia. Earum accusamus adipisci deleniti suscipit velit laboriosam eaque. Quod dolorem non adipisci dolorem.', '2019-06-02', '4', '2022-05-02 06:30:44', NULL, 1, 1, 1, 1, 1),
(5, 'Minus accusamus enim delectus et ut.', 9, 1, 'public/uploads/news/news5.jpg', NULL, 'Sed consequatur illo ipsa quod. Aut minus nemo quia eligendi soluta itaque commodi et. Pariatur voluptate alias molestiae incidunt perspiciatis voluptatum et. Molestiae qui quia ea autem autem enim. Ad aut pariatur voluptatem est minima quae consequatur inventore. Error velit voluptatibus voluptate est vel nobis veniam. Cumque iusto est quas quos laudantium. Autem tempora dolorum reprehenderit totam sequi et. Debitis omnis natus culpa dolores nihil.', '2019-06-02', '5', '2022-05-02 06:30:44', NULL, 2, 1, 1, 1, 1),
(6, 'Ad ut optio omnis qui.', 0, 1, 'public/uploads/news/news6.jpg', NULL, 'Repellat quia asperiores suscipit necessitatibus deserunt atque. Sit vero aliquam sint velit molestiae. Repellendus dicta officiis omnis voluptatibus laboriosam omnis nemo. Et neque provident cumque aspernatur et. Architecto amet eos earum. Autem recusandae temporibus omnis. Vel porro ut unde doloremque. In esse ab doloribus aut consequatur voluptate.', '2019-06-02', '6', '2022-05-02 06:30:44', NULL, 2, 1, 1, 1, 1),
(7, 'Ut sunt nesciunt voluptate in quis.', 3, 1, 'public/uploads/news/news7.jpg', NULL, 'Eum libero non qui voluptate ex omnis facere. Eum veritatis sed voluptate. Aut dolore nostrum dignissimos quam. Id fugiat et voluptate aut possimus. Autem sed molestias sit voluptates architecto voluptatem. Ab impedit eligendi praesentium saepe et atque in voluptatibus. Corporis quo ut dolores eius quia ut earum. Velit itaque soluta qui in. Sunt sequi incidunt non. Rerum esse ullam qui voluptas ut. Qui ea nihil enim est autem.', '2019-06-02', '7', '2022-05-02 06:30:44', NULL, 2, 1, 1, 1, 1),
(8, 'Molestias ut itaque nam voluptas.', 9, 1, 'public/uploads/news/news8.jpg', NULL, 'Voluptate qui molestiae aspernatur quisquam aspernatur suscipit. Quia consequatur ratione qui vero soluta velit reprehenderit. Nemo incidunt minima ex provident. A adipisci magnam atque nesciunt vel impedit. Numquam deserunt nam assumenda nihil voluptatum velit. Aspernatur vel et accusamus possimus. Suscipit voluptatem amet quidem veniam eius. Sint ad voluptatibus accusantium inventore culpa. Ut qui in qui repellat dicta et reprehenderit. Neque doloribus ducimus unde fugit sapiente.', '2019-06-02', '8', '2022-05-02 06:30:44', NULL, 2, 1, 1, 1, 1),
(9, 'Facere reiciendis quo et vero unde.', 5, 1, 'public/uploads/news/news9.jpg', NULL, 'Et sed deleniti tempore porro esse. Ab velit itaque consequatur iste dolor. Sint ipsum exercitationem voluptatem quo ut eaque veniam. Nemo consequatur ullam vel ipsum odio et. Tempora sed at consequatur et sequi quas doloremque blanditiis. Velit hic sunt debitis officia. Asperiores sit blanditiis dolorum voluptatem voluptatem quibusdam. Rerum beatae non autem doloribus inventore saepe qui. Dolor officiis sed quibusdam recusandae et cum veritatis. Eius sequi voluptas et.', '2019-06-02', '9', '2022-05-02 06:30:44', NULL, 3, 1, 1, 1, 1),
(10, 'Ea ut qui in possimus consequuntur.', 5, 1, 'public/uploads/news/news10.jpg', NULL, 'Sed dicta nihil eaque autem reprehenderit temporibus et. Fuga et possimus commodi harum dolorem laboriosam asperiores. Sed fugit minima consequatur dolorum cupiditate. Dolorem cumque incidunt non sit et magni recusandae. Ut ratione expedita libero facilis modi quibusdam. Consequuntur veniam reiciendis ullam enim. Similique eum voluptatem asperiores non. Velit facere est magni ad velit fuga.', '2019-06-02', '10', '2022-05-02 06:30:44', NULL, 3, 1, 1, 1, 1),
(11, 'Eum sint nihil ipsa et est et dolores.', 0, 1, 'public/uploads/news/news11.jpg', NULL, 'Quas ut similique ullam aut. Tempore pariatur rerum totam. Molestiae in veniam quae eum error qui non id. Facilis autem aut sapiente voluptatem dolorem eos. Ipsum facilis nihil aliquam. Quidem officia rem sint veniam aperiam. Aut ut dolorem enim possimus odio. Adipisci suscipit cumque ut est. Unde inventore sunt iure labore modi unde doloremque rerum.', '2019-06-02', '11', '2022-05-02 06:30:44', NULL, 3, 1, 1, 1, 1),
(12, 'Quibusdam vitae sint et.', 7, 1, 'public/uploads/news/news12.jpg', NULL, 'Ex qui nam sunt eveniet praesentium occaecati. Sunt velit tempora illo hic. Id eligendi ullam amet debitis molestiae inventore necessitatibus. Vel unde eveniet facilis molestiae. Blanditiis est libero ipsum ea. Deleniti aspernatur iste veritatis rerum. Adipisci minus soluta est possimus. Deserunt sint modi consequatur iure sapiente quo.', '2019-06-02', '12', '2022-05-02 06:30:44', NULL, 3, 1, 1, 1, 1);

-- --------------------------------------------------------

--
-- Structure de la table `sm_news_categories`
--

DROP TABLE IF EXISTS `sm_news_categories`;
CREATE TABLE IF NOT EXISTS `sm_news_categories` (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `category_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `school_id` int UNSIGNED DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `sm_news_categories_school_id_foreign` (`school_id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `sm_news_categories`
--

INSERT INTO `sm_news_categories` (`id`, `category_name`, `created_at`, `updated_at`, `school_id`) VALUES
(1, 'International', NULL, NULL, 1),
(2, 'Our history', NULL, NULL, 1),
(3, 'Our mission and vision', NULL, NULL, 1),
(4, 'National', NULL, NULL, 1),
(5, 'Sports', NULL, NULL, 1);

-- --------------------------------------------------------

--
-- Structure de la table `sm_news_pages`
--

DROP TABLE IF EXISTS `sm_news_pages`;
CREATE TABLE IF NOT EXISTS `sm_news_pages` (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `main_title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `main_description` text COLLATE utf8mb4_unicode_ci,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `main_image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `button_text` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `button_url` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `active_status` tinyint NOT NULL DEFAULT '1',
  `created_by` int UNSIGNED DEFAULT '1',
  `updated_by` int UNSIGNED DEFAULT '1',
  `school_id` int UNSIGNED DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `sm_news_pages_created_by_foreign` (`created_by`),
  KEY `sm_news_pages_updated_by_foreign` (`updated_by`),
  KEY `sm_news_pages_school_id_foreign` (`school_id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `sm_news_pages`
--

INSERT INTO `sm_news_pages` (`id`, `created_at`, `updated_at`, `title`, `description`, `main_title`, `main_description`, `image`, `main_image`, `button_text`, `button_url`, `active_status`, `created_by`, `updated_by`, `school_id`) VALUES
(1, NULL, NULL, 'News Infix', 'Lisus consequat sapien metus dis urna, facilisi. Nonummy rutrum eu lacinia platea a, ipsum parturient, orci tristique. Nisi diam natoque.', 'Under Graduate Education', 'INFIX has all in one place. You’ll find everything what you are looking into education management system software. We care! User will never bothered in our real eye catchy user friendly UI & UX  Interface design. You know! Smart Idea always comes to well planners. And Our INFIX is Smart for its Well Documentation. Explore in new support world! It’s now faster & quicker. You’ll find us on Support Ticket, Email, Skype, WhatsApp.', 'public/uploads/about_page/about.jpg', 'public/uploads/about_page/about-img.jpg', 'Learn More News ', 'news-page', 1, 1, 1, 1);

-- --------------------------------------------------------

--
-- Structure de la table `sm_notice_boards`
--

DROP TABLE IF EXISTS `sm_notice_boards`;
CREATE TABLE IF NOT EXISTS `sm_notice_boards` (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `notice_title` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `notice_message` text COLLATE utf8mb4_unicode_ci,
  `notice_date` date DEFAULT NULL,
  `publish_on` date DEFAULT NULL,
  `inform_to` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Notice message sent to these roles',
  `active_status` tinyint NOT NULL DEFAULT '1',
  `is_published` int DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_by` int UNSIGNED DEFAULT '1',
  `updated_by` int UNSIGNED DEFAULT '1',
  `school_id` int UNSIGNED DEFAULT '1',
  `academic_id` int UNSIGNED DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `sm_notice_boards_school_id_foreign` (`school_id`),
  KEY `sm_notice_boards_academic_id_foreign` (`academic_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `sm_notifications`
--

DROP TABLE IF EXISTS `sm_notifications`;
CREATE TABLE IF NOT EXISTS `sm_notifications` (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `date` date DEFAULT NULL,
  `message` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `url` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_read` tinyint NOT NULL DEFAULT '0',
  `active_status` tinyint NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `user_id` int UNSIGNED DEFAULT '1',
  `role_id` int UNSIGNED NOT NULL DEFAULT '1',
  `created_by` int UNSIGNED NOT NULL DEFAULT '1',
  `updated_by` int UNSIGNED NOT NULL DEFAULT '1',
  `school_id` int UNSIGNED NOT NULL DEFAULT '1',
  `academic_id` int UNSIGNED DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `sm_notifications_school_id_foreign` (`school_id`),
  KEY `sm_notifications_academic_id_foreign` (`academic_id`)
) ENGINE=MyISAM AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `sm_notifications`
--

INSERT INTO `sm_notifications` (`id`, `date`, `message`, `url`, `is_read`, `active_status`, `created_at`, `updated_at`, `user_id`, `role_id`, `created_by`, `updated_by`, `school_id`, `academic_id`) VALUES
(1, '2022-05-13', 'Syllabus updated', 'student-syllabus', 1, 1, '2022-05-13 15:08:31', '2022-05-20 18:24:33', 1, 2, 1, 1, 1, 3),
(2, '2022-05-13', 'Syllabus updated', 'student-syllabus', 0, 1, '2022-05-13 15:08:31', '2022-05-13 15:08:31', 2, 2, 1, 1, 1, 3),
(3, '2022-05-20', 'New online exam published', NULL, 1, 1, '2022-05-20 03:12:29', '2022-05-19 21:13:19', 5, 2, 1, 1, 1, 3),
(4, '2022-05-20', 'New online exam published for your child', NULL, 0, 1, '2022-05-20 03:12:29', '2022-05-20 03:12:29', 6, 3, 1, 1, 1, 3),
(5, '2022-05-20', 'New online exam published', NULL, 0, 1, '2022-05-20 03:12:29', '2022-05-20 03:12:29', 7, 2, 1, 1, 1, 3),
(6, '2022-05-20', 'New online exam published for your child', NULL, 0, 1, '2022-05-20 03:12:29', '2022-05-20 03:12:29', 8, 3, 1, 1, 1, 3),
(7, '2022-05-20', 'New exam scheduled', NULL, 1, 1, '2022-05-20 19:32:20', '2022-05-20 19:53:03', 5, 2, 1, 1, 1, 3),
(8, '2022-05-20', 'New exam scheduled for your child', NULL, 0, 1, '2022-05-20 19:32:20', '2022-05-20 19:32:20', 6, 3, 1, 1, 1, 3),
(9, '2022-05-20', 'New exam scheduled', NULL, 0, 1, '2022-05-20 19:32:20', '2022-05-20 19:32:20', 7, 2, 1, 1, 1, 3),
(10, '2022-05-20', 'New exam scheduled for your child', NULL, 0, 1, '2022-05-20 19:32:20', '2022-05-20 19:32:20', 6, 3, 1, 1, 1, 3),
(11, '2022-05-21', 'New fees Assigned', NULL, 1, 1, '2022-05-21 19:36:18', '2022-05-21 19:56:42', 5, 2, 1, 1, 1, 3),
(12, '2022-05-21', 'New fees assigned for your child', NULL, 0, 1, '2022-05-21 19:36:18', '2022-05-21 19:36:18', 6, 3, 1, 1, 1, 3),
(13, '2022-05-21', 'New fees Assigned', NULL, 0, 1, '2022-05-21 19:36:18', '2022-05-21 19:36:18', 7, 2, 1, 1, 1, 3),
(14, '2022-05-21', 'New fees assigned for your child', NULL, 0, 1, '2022-05-21 19:36:18', '2022-05-21 19:36:18', 8, 3, 1, 1, 1, 3);

-- --------------------------------------------------------

--
-- Structure de la table `sm_online_exams`
--

DROP TABLE IF EXISTS `sm_online_exams`;
CREATE TABLE IF NOT EXISTS `sm_online_exams` (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date` date DEFAULT NULL,
  `start_time` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `end_time` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `end_date_time` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `percentage` int DEFAULT NULL,
  `instruction` text COLLATE utf8mb4_unicode_ci,
  `status` tinyint DEFAULT NULL COMMENT '0 = Pending 1 Published',
  `is_taken` tinyint DEFAULT '0',
  `is_closed` tinyint DEFAULT '0',
  `is_waiting` tinyint DEFAULT '0',
  `is_running` tinyint DEFAULT '0',
  `active_status` tinyint NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `class_id` int UNSIGNED DEFAULT NULL,
  `section_id` int UNSIGNED DEFAULT NULL,
  `subject_id` int UNSIGNED DEFAULT NULL,
  `created_by` int UNSIGNED DEFAULT '1',
  `updated_by` int UNSIGNED DEFAULT '1',
  `school_id` int UNSIGNED DEFAULT '1',
  `academic_id` int UNSIGNED DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `sm_online_exams_class_id_foreign` (`class_id`),
  KEY `sm_online_exams_section_id_foreign` (`section_id`),
  KEY `sm_online_exams_subject_id_foreign` (`subject_id`),
  KEY `sm_online_exams_school_id_foreign` (`school_id`),
  KEY `sm_online_exams_academic_id_foreign` (`academic_id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `sm_online_exams`
--

INSERT INTO `sm_online_exams` (`id`, `title`, `date`, `start_time`, `end_time`, `end_date_time`, `percentage`, `instruction`, `status`, `is_taken`, `is_closed`, `is_waiting`, `is_running`, `active_status`, `created_at`, `updated_at`, `class_id`, `section_id`, `subject_id`, `created_by`, `updated_by`, `school_id`, `academic_id`) VALUES
(1, 'examen 1', '2022-05-20', '08:30:00', '11:00:00', '2022-05-20 11:00:00', 50, 'Ne pas tricher', 1, 0, 1, 0, 0, 1, '2022-05-19 20:41:56', '2022-05-20 16:38:20', 5, 5, 1, 1, 1, 1, 3);

-- --------------------------------------------------------

--
-- Structure de la table `sm_online_exam_marks`
--

DROP TABLE IF EXISTS `sm_online_exam_marks`;
CREATE TABLE IF NOT EXISTS `sm_online_exam_marks` (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `marks` int DEFAULT NULL,
  `abs` int NOT NULL DEFAULT '0',
  `active_status` tinyint NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `student_id` int UNSIGNED DEFAULT NULL,
  `subject_id` int UNSIGNED DEFAULT NULL,
  `exam_id` int UNSIGNED DEFAULT NULL,
  `created_by` int UNSIGNED DEFAULT '1',
  `updated_by` int UNSIGNED DEFAULT '1',
  `school_id` int UNSIGNED DEFAULT '1',
  `academic_id` int UNSIGNED DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `sm_online_exam_marks_student_id_foreign` (`student_id`),
  KEY `sm_online_exam_marks_subject_id_foreign` (`subject_id`),
  KEY `sm_online_exam_marks_exam_id_foreign` (`exam_id`),
  KEY `sm_online_exam_marks_school_id_foreign` (`school_id`),
  KEY `sm_online_exam_marks_academic_id_foreign` (`academic_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `sm_online_exam_questions`
--

DROP TABLE IF EXISTS `sm_online_exam_questions`;
CREATE TABLE IF NOT EXISTS `sm_online_exam_questions` (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `type` varchar(1) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mark` int DEFAULT NULL,
  `title` text COLLATE utf8mb4_unicode_ci,
  `trueFalse` varchar(1) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'F = false, T = true ',
  `suitable_words` text COLLATE utf8mb4_unicode_ci,
  `active_status` tinyint NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `online_exam_id` int UNSIGNED DEFAULT NULL,
  `created_by` int UNSIGNED DEFAULT '1',
  `updated_by` int UNSIGNED DEFAULT '1',
  `school_id` int UNSIGNED DEFAULT '1',
  `academic_id` int UNSIGNED DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `sm_online_exam_questions_online_exam_id_foreign` (`online_exam_id`),
  KEY `sm_online_exam_questions_school_id_foreign` (`school_id`),
  KEY `sm_online_exam_questions_academic_id_foreign` (`academic_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `sm_online_exam_question_assigns`
--

DROP TABLE IF EXISTS `sm_online_exam_question_assigns`;
CREATE TABLE IF NOT EXISTS `sm_online_exam_question_assigns` (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `online_exam_id` int UNSIGNED DEFAULT NULL,
  `question_bank_id` int UNSIGNED DEFAULT NULL,
  `created_by` int UNSIGNED DEFAULT '1',
  `updated_by` int UNSIGNED DEFAULT '1',
  `school_id` int UNSIGNED DEFAULT '1',
  `academic_id` int UNSIGNED DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `sm_online_exam_question_assigns_online_exam_id_foreign` (`online_exam_id`),
  KEY `sm_online_exam_question_assigns_question_bank_id_foreign` (`question_bank_id`),
  KEY `sm_online_exam_question_assigns_school_id_foreign` (`school_id`),
  KEY `sm_online_exam_question_assigns_academic_id_foreign` (`academic_id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `sm_online_exam_question_assigns`
--

INSERT INTO `sm_online_exam_question_assigns` (`id`, `created_at`, `updated_at`, `online_exam_id`, `question_bank_id`, `created_by`, `updated_by`, `school_id`, `academic_id`) VALUES
(1, '2022-05-19 20:56:52', '2022-05-19 20:56:52', 1, 3, 1, 1, 1, 3);

-- --------------------------------------------------------

--
-- Structure de la table `sm_online_exam_question_mu_options`
--

DROP TABLE IF EXISTS `sm_online_exam_question_mu_options`;
CREATE TABLE IF NOT EXISTS `sm_online_exam_question_mu_options` (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint DEFAULT NULL COMMENT '0 unchecked 1 checked',
  `active_status` tinyint NOT NULL DEFAULT '1',
  `online_exam_question_id` int UNSIGNED DEFAULT NULL COMMENT 'here we use foreign key shorter name',
  `created_by` int UNSIGNED DEFAULT '1',
  `updated_by` int UNSIGNED DEFAULT '1',
  `school_id` int UNSIGNED DEFAULT '1',
  `academic_id` int UNSIGNED DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `on_ex_qu_id` (`online_exam_question_id`),
  KEY `sm_online_exam_question_mu_options_school_id_foreign` (`school_id`),
  KEY `sm_online_exam_question_mu_options_academic_id_foreign` (`academic_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `sm_optional_subject_assigns`
--

DROP TABLE IF EXISTS `sm_optional_subject_assigns`;
CREATE TABLE IF NOT EXISTS `sm_optional_subject_assigns` (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `student_id` int UNSIGNED DEFAULT NULL,
  `subject_id` int UNSIGNED DEFAULT NULL,
  `created_by` int UNSIGNED DEFAULT '1',
  `updated_by` int UNSIGNED DEFAULT '1',
  `school_id` int UNSIGNED DEFAULT '1',
  `session_id` int UNSIGNED NOT NULL,
  `academic_id` int UNSIGNED DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `sm_optional_subject_assigns_student_id_foreign` (`student_id`),
  KEY `sm_optional_subject_assigns_subject_id_foreign` (`subject_id`),
  KEY `sm_optional_subject_assigns_school_id_foreign` (`school_id`),
  KEY `sm_optional_subject_assigns_session_id_foreign` (`session_id`),
  KEY `sm_optional_subject_assigns_academic_id_foreign` (`academic_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `sm_parents`
--

DROP TABLE IF EXISTS `sm_parents`;
CREATE TABLE IF NOT EXISTS `sm_parents` (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `fathers_name` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fathers_mobile` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fathers_occupation` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fathers_photo` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mothers_name` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mothers_mobile` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mothers_occupation` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mothers_photo` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `relation` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `guardians_name` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `guardians_mobile` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `guardians_email` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `guardians_occupation` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `guardians_relation` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `guardians_photo` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `guardians_address` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_guardian` int DEFAULT NULL,
  `active_status` tinyint NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `user_id` int UNSIGNED DEFAULT '1',
  `school_id` int UNSIGNED DEFAULT '1',
  `academic_id` int UNSIGNED DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `sm_parents_user_id_foreign` (`user_id`),
  KEY `sm_parents_school_id_foreign` (`school_id`),
  KEY `sm_parents_academic_id_foreign` (`academic_id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `sm_parents`
--

INSERT INTO `sm_parents` (`id`, `fathers_name`, `fathers_mobile`, `fathers_occupation`, `fathers_photo`, `mothers_name`, `mothers_mobile`, `mothers_occupation`, `mothers_photo`, `relation`, `guardians_name`, `guardians_mobile`, `guardians_email`, `guardians_occupation`, `guardians_relation`, `guardians_photo`, `guardians_address`, `is_guardian`, `active_status`, `created_at`, `updated_at`, `user_id`, `school_id`, `academic_id`) VALUES
(1, '', '', '', NULL, '', '', '', NULL, 'O', 'CHRISTIAN', '694281630', 'Gardien@gmail.com', '', 'Other', NULL, '', NULL, 1, '2022-01-01 11:00:00', '2022-05-13 12:30:27', 6, 1, 3),
(2, '', '', '', NULL, '', '', '', NULL, 'O', 'CHRISTIAN', '692167030', 'Gardien0@gmail.com', '', 'Other', NULL, '', NULL, 1, '2022-01-01 11:00:00', '2022-05-13 12:31:30', 8, 1, 3),
(3, '', '', '', NULL, '', '', '', NULL, 'O', '', '658978976', 'tuteur@gmail.com', '', 'Other', NULL, '', NULL, 1, '2022-01-01 11:00:00', '2022-07-05 17:28:41', 18, 1, 3);

-- --------------------------------------------------------

--
-- Structure de la table `sm_payment_gateway_settings`
--

DROP TABLE IF EXISTS `sm_payment_gateway_settings`;
CREATE TABLE IF NOT EXISTS `sm_payment_gateway_settings` (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `gateway_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `gateway_username` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `gateway_password` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `gateway_signature` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `gateway_client_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `gateway_mode` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `gateway_secret_key` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `gateway_secret_word` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `gateway_publisher_key` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `gateway_private_key` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `active_status` tinyint NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `bank_details` text COLLATE utf8mb4_unicode_ci,
  `cheque_details` text COLLATE utf8mb4_unicode_ci,
  `created_by` int UNSIGNED DEFAULT '1',
  `updated_by` int UNSIGNED DEFAULT '1',
  `school_id` int UNSIGNED DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `sm_payment_gateway_settings_school_id_foreign` (`school_id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `sm_payment_gateway_settings`
--

INSERT INTO `sm_payment_gateway_settings` (`id`, `gateway_name`, `gateway_username`, `gateway_password`, `gateway_signature`, `gateway_client_id`, `gateway_mode`, `gateway_secret_key`, `gateway_secret_word`, `gateway_publisher_key`, `gateway_private_key`, `active_status`, `created_at`, `updated_at`, `bank_details`, `cheque_details`, `created_by`, `updated_by`, `school_id`) VALUES
(1, 'Stripe', 'demo@strip.com', '12334589', NULL, '', NULL, 'AVZdghanegaOjiL6DPXd0XwjMGEQ2aXc58z1-isWmBFnw1h2j', 'AVZdghanegaOjiL6DPXd0XwjMGEQ2aXc58z1', NULL, NULL, 0, '2022-05-02 06:26:10', NULL, NULL, NULL, 1, 1, 1),
(2, 'Paystack', 'demo@gmail.com', '12334589', NULL, '', NULL, 'sk_live_2679322872013c265e161bc8ea11efc1e822bce1', NULL, 'pk_live_e5738ce9aade963387204f1f19bee599176e7a71', NULL, 0, '2022-05-02 06:26:10', NULL, NULL, NULL, 1, 1, 1),
(3, 'Bank', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '2022-05-02 06:26:10', NULL, NULL, NULL, 1, 1, 1),
(4, 'Cheque', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '2022-05-02 06:26:10', NULL, NULL, NULL, 1, 1, 1);

-- --------------------------------------------------------

--
-- Structure de la table `sm_payment_methhods`
--

DROP TABLE IF EXISTS `sm_payment_methhods`;
CREATE TABLE IF NOT EXISTS `sm_payment_methhods` (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `method` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `active_status` tinyint NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `gateway_id` int UNSIGNED DEFAULT NULL,
  `created_by` int UNSIGNED DEFAULT '1',
  `updated_by` int UNSIGNED DEFAULT '1',
  `school_id` int UNSIGNED DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `sm_payment_methhods_gateway_id_foreign` (`gateway_id`),
  KEY `sm_payment_methhods_school_id_foreign` (`school_id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `sm_payment_methhods`
--

INSERT INTO `sm_payment_methhods` (`id`, `method`, `type`, `active_status`, `created_at`, `updated_at`, `gateway_id`, `created_by`, `updated_by`, `school_id`) VALUES
(1, 'Cash', 'System', 0, '2022-05-02 06:26:11', '2022-05-10 10:40:41', NULL, 1, 1, 1),
(2, 'Cheque', 'System', 0, '2022-05-02 06:26:11', '2022-05-10 10:40:41', NULL, 1, 1, 1),
(3, 'Bank', 'System', 1, '2022-05-02 06:26:11', '2022-05-10 10:40:41', NULL, 1, 1, 1),
(4, 'Stripe', 'System', 0, '2022-05-02 06:26:11', '2022-05-10 10:40:41', NULL, 1, 1, 1),
(5, 'Paystack', 'System', 1, '2022-05-02 06:26:11', '2022-05-10 10:40:42', NULL, 1, 1, 1);

-- --------------------------------------------------------

--
-- Structure de la table `sm_phone_call_logs`
--

DROP TABLE IF EXISTS `sm_phone_call_logs`;
CREATE TABLE IF NOT EXISTS `sm_phone_call_logs` (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date` date DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `next_follow_up_date` date DEFAULT NULL,
  `call_duration` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `call_type` varchar(2) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `active_status` tinyint NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_by` int UNSIGNED DEFAULT '1',
  `updated_by` int UNSIGNED DEFAULT '1',
  `school_id` int UNSIGNED DEFAULT '1',
  `academic_id` int UNSIGNED DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `sm_phone_call_logs_school_id_foreign` (`school_id`),
  KEY `sm_phone_call_logs_academic_id_foreign` (`academic_id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `sm_phone_call_logs`
--

INSERT INTO `sm_phone_call_logs` (`id`, `name`, `phone`, `date`, `description`, `next_follow_up_date`, `call_duration`, `call_type`, `active_status`, `created_at`, `updated_at`, `created_by`, `updated_by`, `school_id`, `academic_id`) VALUES
(1, 'Dimi', '656009944', '2022-05-15', '', '2022-05-15', '6min', 'I', 1, '2022-05-15 21:19:08', '2022-05-15 21:19:08', 1, 1, 1, 3);

-- --------------------------------------------------------

--
-- Structure de la table `sm_postal_dispatches`
--

DROP TABLE IF EXISTS `sm_postal_dispatches`;
CREATE TABLE IF NOT EXISTS `sm_postal_dispatches` (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `to_title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `from_title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `reference_no` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date` date DEFAULT NULL,
  `note` text COLLATE utf8mb4_unicode_ci,
  `file` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `active_status` tinyint NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_by` int UNSIGNED DEFAULT '1',
  `updated_by` int UNSIGNED DEFAULT '1',
  `school_id` int UNSIGNED DEFAULT '1',
  `academic_id` int UNSIGNED DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `sm_postal_dispatches_school_id_foreign` (`school_id`),
  KEY `sm_postal_dispatches_academic_id_foreign` (`academic_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `sm_postal_receives`
--

DROP TABLE IF EXISTS `sm_postal_receives`;
CREATE TABLE IF NOT EXISTS `sm_postal_receives` (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `from_title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `to_title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `reference_no` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date` date DEFAULT NULL,
  `note` text COLLATE utf8mb4_unicode_ci,
  `file` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `active_status` tinyint NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_by` int UNSIGNED DEFAULT '1',
  `updated_by` int UNSIGNED DEFAULT '1',
  `school_id` int UNSIGNED DEFAULT '1',
  `academic_id` int UNSIGNED DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `sm_postal_receives_school_id_foreign` (`school_id`),
  KEY `sm_postal_receives_academic_id_foreign` (`academic_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `sm_product_purchases`
--

DROP TABLE IF EXISTS `sm_product_purchases`;
CREATE TABLE IF NOT EXISTS `sm_product_purchases` (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `purchase_date` date NOT NULL,
  `expaire_date` date NOT NULL,
  `price` double(10,2) DEFAULT NULL,
  `paid_amount` double(10,2) DEFAULT NULL,
  `due_amount` double(10,2) DEFAULT NULL,
  `package` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `user_id` int UNSIGNED DEFAULT NULL,
  `staff_id` int UNSIGNED DEFAULT NULL,
  `school_id` int UNSIGNED DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `sm_product_purchases_user_id_foreign` (`user_id`),
  KEY `sm_product_purchases_staff_id_foreign` (`staff_id`),
  KEY `sm_product_purchases_school_id_foreign` (`school_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `sm_question_banks`
--

DROP TABLE IF EXISTS `sm_question_banks`;
CREATE TABLE IF NOT EXISTS `sm_question_banks` (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `type` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'M for multi ans, T for trueFalse, F for fill in the blanks',
  `question` text COLLATE utf8mb4_unicode_ci,
  `marks` int DEFAULT NULL,
  `trueFalse` varchar(1) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'F = false, T = true ',
  `suitable_words` text COLLATE utf8mb4_unicode_ci,
  `number_of_option` varchar(2) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `active_status` tinyint NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `q_group_id` int UNSIGNED DEFAULT NULL,
  `class_id` int UNSIGNED DEFAULT NULL,
  `section_id` int UNSIGNED DEFAULT NULL,
  `created_by` int UNSIGNED DEFAULT '1',
  `updated_by` int UNSIGNED DEFAULT '1',
  `school_id` int UNSIGNED DEFAULT '1',
  `academic_id` int UNSIGNED DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `sm_question_banks_q_group_id_foreign` (`q_group_id`),
  KEY `sm_question_banks_class_id_foreign` (`class_id`),
  KEY `sm_question_banks_section_id_foreign` (`section_id`),
  KEY `sm_question_banks_school_id_foreign` (`school_id`),
  KEY `sm_question_banks_academic_id_foreign` (`academic_id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `sm_question_banks`
--

INSERT INTO `sm_question_banks` (`id`, `type`, `question`, `marks`, `trueFalse`, `suitable_words`, `number_of_option`, `active_status`, `created_at`, `updated_at`, `q_group_id`, `class_id`, `section_id`, `created_by`, `updated_by`, `school_id`, `academic_id`) VALUES
(1, 'M', '1Qu\'est ce que la comédie?\r\n2Qu\'est ce que la mélodie', 15, NULL, NULL, '4', 1, '2022-05-19 20:31:37', '2022-05-19 20:31:37', 2, 2, 3, 1, 1, 1, 3),
(2, 'T', 'Le lion est un animal', 36, 'T', NULL, NULL, 1, '2022-05-19 20:34:11', '2022-05-19 20:34:11', 2, 3, 8, 1, 1, 1, 3),
(3, 'T', 'le lion est un animal', 15, 'T', NULL, NULL, 1, '2022-05-19 20:54:47', '2022-05-19 20:54:47', 2, 5, 5, 1, 1, 1, 3);

-- --------------------------------------------------------

--
-- Structure de la table `sm_question_bank_mu_options`
--

DROP TABLE IF EXISTS `sm_question_bank_mu_options`;
CREATE TABLE IF NOT EXISTS `sm_question_bank_mu_options` (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint DEFAULT NULL COMMENT '0 = false, 1 = correct',
  `active_status` tinyint NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `question_bank_id` int UNSIGNED DEFAULT NULL,
  `created_by` int UNSIGNED DEFAULT '1',
  `updated_by` int UNSIGNED DEFAULT '1',
  `school_id` int UNSIGNED DEFAULT '1',
  `academic_id` int UNSIGNED DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `sm_question_bank_mu_options_question_bank_id_foreign` (`question_bank_id`),
  KEY `sm_question_bank_mu_options_school_id_foreign` (`school_id`),
  KEY `sm_question_bank_mu_options_academic_id_foreign` (`academic_id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `sm_question_bank_mu_options`
--

INSERT INTO `sm_question_bank_mu_options` (`id`, `title`, `status`, `active_status`, `created_at`, `updated_at`, `question_bank_id`, `created_by`, `updated_by`, `school_id`, `academic_id`) VALUES
(1, 'Un chose', 0, 1, '2022-05-19 20:31:37', '2022-05-19 20:31:37', 1, 1, 1, 1, 3),
(2, 'Un lion', 0, 1, '2022-05-19 20:31:37', '2022-05-19 20:31:37', 1, 1, 1, 1, 3),
(3, 'Un hibou', 0, 1, '2022-05-19 20:31:37', '2022-05-19 20:31:37', 1, 1, 1, 1, 3),
(4, 'Un chat', 0, 1, '2022-05-19 20:31:37', '2022-05-19 20:31:37', 1, 1, 1, 1, 3);

-- --------------------------------------------------------

--
-- Structure de la table `sm_question_groups`
--

DROP TABLE IF EXISTS `sm_question_groups`;
CREATE TABLE IF NOT EXISTS `sm_question_groups` (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `title` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `active_status` tinyint NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_by` int UNSIGNED DEFAULT '1',
  `updated_by` int UNSIGNED DEFAULT '1',
  `school_id` int UNSIGNED DEFAULT '1',
  `academic_id` int UNSIGNED DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `sm_question_groups_school_id_foreign` (`school_id`),
  KEY `sm_question_groups_academic_id_foreign` (`academic_id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `sm_question_groups`
--

INSERT INTO `sm_question_groups` (`id`, `title`, `active_status`, `created_at`, `updated_at`, `created_by`, `updated_by`, `school_id`, `academic_id`) VALUES
(1, 'QCM', 1, '2022-05-05 14:30:21', '2022-05-05 14:30:21', 1, 1, 1, 1),
(2, 'Sciences', 1, '2022-05-19 20:28:01', '2022-05-19 20:28:01', 1, 1, 1, 3);

-- --------------------------------------------------------

--
-- Structure de la table `sm_question_levels`
--

DROP TABLE IF EXISTS `sm_question_levels`;
CREATE TABLE IF NOT EXISTS `sm_question_levels` (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `level` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `active_status` tinyint NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_by` int UNSIGNED DEFAULT '1',
  `updated_by` int UNSIGNED DEFAULT '1',
  `school_id` int UNSIGNED DEFAULT '1',
  `academic_id` int UNSIGNED DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `sm_question_levels_school_id_foreign` (`school_id`),
  KEY `sm_question_levels_academic_id_foreign` (`academic_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `sm_result_stores`
--

DROP TABLE IF EXISTS `sm_result_stores`;
CREATE TABLE IF NOT EXISTS `sm_result_stores` (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `student_roll_no` int NOT NULL DEFAULT '1',
  `student_addmission_no` int NOT NULL DEFAULT '1',
  `is_absent` int NOT NULL DEFAULT '0' COMMENT '1=Absent, 0=Present',
  `total_marks` double(8,2) NOT NULL DEFAULT '0.00',
  `total_gpa_point` double(8,2) DEFAULT NULL,
  `total_gpa_grade` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '0',
  `teacher_remarks` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `exam_type_id` int UNSIGNED DEFAULT NULL,
  `subject_id` int UNSIGNED DEFAULT NULL,
  `exam_setup_id` int UNSIGNED DEFAULT NULL,
  `student_id` int UNSIGNED DEFAULT NULL,
  `class_id` int UNSIGNED DEFAULT NULL,
  `section_id` int UNSIGNED DEFAULT NULL,
  `created_by` int UNSIGNED DEFAULT '1',
  `updated_by` int UNSIGNED DEFAULT '1',
  `school_id` int UNSIGNED DEFAULT '1',
  `academic_id` int UNSIGNED DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `sm_result_stores_exam_type_id_foreign` (`exam_type_id`),
  KEY `sm_result_stores_subject_id_foreign` (`subject_id`),
  KEY `sm_result_stores_exam_setup_id_foreign` (`exam_setup_id`),
  KEY `sm_result_stores_student_id_foreign` (`student_id`),
  KEY `sm_result_stores_class_id_foreign` (`class_id`),
  KEY `sm_result_stores_section_id_foreign` (`section_id`),
  KEY `sm_result_stores_school_id_foreign` (`school_id`),
  KEY `sm_result_stores_academic_id_foreign` (`academic_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `sm_role_permissions`
--

DROP TABLE IF EXISTS `sm_role_permissions`;
CREATE TABLE IF NOT EXISTS `sm_role_permissions` (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `active_status` tinyint NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `module_link_id` int UNSIGNED DEFAULT NULL,
  `role_id` int UNSIGNED DEFAULT NULL,
  `created_by` int UNSIGNED DEFAULT '1',
  `updated_by` int UNSIGNED DEFAULT '1',
  `school_id` int UNSIGNED DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `sm_role_permissions_module_link_id_foreign` (`module_link_id`),
  KEY `sm_role_permissions_role_id_foreign` (`role_id`),
  KEY `sm_role_permissions_school_id_foreign` (`school_id`)
) ENGINE=MyISAM AUTO_INCREMENT=7662 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `sm_role_permissions`
--

INSERT INTO `sm_role_permissions` (`id`, `active_status`, `created_at`, `updated_at`, `module_link_id`, `role_id`, `created_by`, `updated_by`, `school_id`) VALUES
(1, 1, '2019-11-18 07:13:45', '2019-11-18 07:13:45', 1, 1, 1, 1, 1),
(2, 1, '2019-11-18 07:13:45', '2019-11-18 07:13:45', 2, 1, 1, 1, 1),
(3, 1, '2019-11-18 07:13:45', '2019-11-18 07:13:45', 3, 1, 1, 1, 1),
(4, 1, '2019-11-18 07:13:45', '2019-11-18 07:13:45', 4, 1, 1, 1, 1),
(5, 1, '2019-11-18 07:13:45', '2019-11-18 07:13:45', 5, 1, 1, 1, 1),
(6, 1, '2019-11-18 07:13:45', '2019-11-18 07:13:45', 6, 1, 1, 1, 1),
(7, 1, '2019-11-18 07:13:45', '2019-11-18 07:13:45', 7, 1, 1, 1, 1),
(8, 1, '2019-11-18 07:13:45', '2019-11-18 07:13:45', 8, 1, 1, 1, 1),
(9, 1, '2019-11-18 07:13:45', '2019-11-18 07:13:45', 9, 1, 1, 1, 1),
(10, 1, '2019-11-18 07:13:45', '2019-11-18 07:13:45', 10, 1, 1, 1, 1),
(11, 1, '2019-11-18 07:13:45', '2019-11-18 07:13:45', 11, 1, 1, 1, 1),
(12, 1, '2019-11-18 07:13:45', '2019-11-18 07:13:45', 12, 1, 1, 1, 1),
(13, 1, '2019-11-18 07:13:45', '2019-11-18 07:13:45', 13, 1, 1, 1, 1),
(14, 1, '2019-11-18 07:13:45', '2019-11-18 07:13:45', 14, 1, 1, 1, 1),
(15, 1, '2019-11-18 07:13:45', '2019-11-18 07:13:45', 15, 1, 1, 1, 1),
(16, 1, '2019-11-18 07:13:45', '2019-11-18 07:13:45', 16, 1, 1, 1, 1),
(17, 1, '2019-11-18 07:13:45', '2019-11-18 07:13:45', 17, 1, 1, 1, 1),
(18, 1, '2019-11-18 07:13:45', '2019-11-18 07:13:45', 18, 1, 1, 1, 1),
(19, 1, '2019-11-18 07:13:45', '2019-11-18 07:13:45', 19, 1, 1, 1, 1),
(20, 1, '2019-11-18 07:13:45', '2019-11-18 07:13:45', 20, 1, 1, 1, 1),
(21, 1, '2019-11-18 07:13:45', '2019-11-18 07:13:45', 21, 1, 1, 1, 1),
(22, 1, '2019-11-18 07:13:45', '2019-11-18 07:13:45', 22, 1, 1, 1, 1),
(23, 1, '2019-11-18 07:13:45', '2019-11-18 07:13:45', 23, 1, 1, 1, 1),
(24, 1, '2019-11-18 07:13:45', '2019-11-18 07:13:45', 24, 1, 1, 1, 1),
(25, 1, '2019-11-18 07:13:45', '2019-11-18 07:13:45', 25, 1, 1, 1, 1),
(26, 1, '2019-11-18 07:13:45', '2019-11-18 07:13:45', 26, 1, 1, 1, 1),
(27, 1, '2019-11-18 07:13:45', '2019-11-18 07:13:45', 27, 1, 1, 1, 1),
(28, 1, '2019-11-18 07:13:45', '2019-11-18 07:13:45', 28, 1, 1, 1, 1),
(29, 1, '2019-11-18 07:13:45', '2019-11-18 07:13:45', 29, 1, 1, 1, 1),
(30, 1, '2019-11-18 07:13:45', '2019-11-18 07:13:45', 30, 1, 1, 1, 1),
(31, 1, '2019-11-18 07:13:45', '2019-11-18 07:13:45', 31, 1, 1, 1, 1),
(32, 1, '2019-11-18 07:13:45', '2019-11-18 07:13:45', 32, 1, 1, 1, 1),
(33, 1, '2019-11-18 07:13:45', '2019-11-18 07:13:45', 33, 1, 1, 1, 1),
(34, 1, '2019-11-18 07:13:45', '2019-11-18 07:13:45', 34, 1, 1, 1, 1),
(35, 1, '2019-11-18 07:13:45', '2019-11-18 07:13:45', 35, 1, 1, 1, 1),
(36, 1, '2019-11-18 07:13:45', '2019-11-18 07:13:45', 36, 1, 1, 1, 1),
(37, 1, '2019-11-18 07:13:45', '2019-11-18 07:13:45', 37, 1, 1, 1, 1),
(38, 1, '2019-11-18 07:13:45', '2019-11-18 07:13:45', 38, 1, 1, 1, 1),
(39, 1, '2019-11-18 07:13:45', '2019-11-18 07:13:45', 39, 1, 1, 1, 1),
(40, 1, '2019-11-18 07:13:45', '2019-11-18 07:13:45', 40, 1, 1, 1, 1),
(41, 1, '2019-11-18 07:13:45', '2019-11-18 07:13:45', 41, 1, 1, 1, 1),
(42, 1, '2019-11-18 07:13:45', '2019-11-18 07:13:45', 42, 1, 1, 1, 1),
(43, 1, '2019-11-18 07:13:45', '2019-11-18 07:13:45', 43, 1, 1, 1, 1),
(44, 1, '2019-11-18 07:13:45', '2019-11-18 07:13:45', 44, 1, 1, 1, 1),
(45, 1, '2019-11-18 07:13:45', '2019-11-18 07:13:45', 45, 1, 1, 1, 1),
(46, 1, '2019-11-18 07:13:45', '2019-11-18 07:13:45', 46, 1, 1, 1, 1),
(47, 1, '2019-11-18 07:13:45', '2019-11-18 07:13:45', 47, 1, 1, 1, 1),
(48, 1, '2019-11-18 07:13:45', '2019-11-18 07:13:45', 48, 1, 1, 1, 1),
(49, 1, '2019-11-18 07:13:45', '2019-11-18 07:13:45', 49, 1, 1, 1, 1),
(50, 1, '2019-11-18 07:13:45', '2019-11-18 07:13:45', 50, 1, 1, 1, 1),
(51, 1, '2019-11-18 07:13:45', '2019-11-18 07:13:45', 51, 1, 1, 1, 1),
(52, 1, '2019-11-18 07:13:45', '2019-11-18 07:13:45', 52, 1, 1, 1, 1),
(53, 1, '2019-11-18 07:13:45', '2019-11-18 07:13:45', 53, 1, 1, 1, 1),
(54, 1, '2019-11-18 07:13:45', '2019-11-18 07:13:45', 54, 1, 1, 1, 1),
(55, 1, '2019-11-18 07:13:45', '2019-11-18 07:13:45', 55, 1, 1, 1, 1),
(56, 1, '2019-11-18 07:13:45', '2019-11-18 07:13:45', 56, 1, 1, 1, 1),
(57, 1, '2019-11-18 07:13:45', '2019-11-18 07:13:45', 57, 1, 1, 1, 1),
(58, 1, '2019-11-18 07:13:45', '2019-11-18 07:13:45', 58, 1, 1, 1, 1),
(59, 1, '2019-11-18 07:13:45', '2019-11-18 07:13:45', 59, 1, 1, 1, 1),
(60, 1, '2019-11-18 07:13:45', '2019-11-18 07:13:45', 60, 1, 1, 1, 1),
(61, 1, '2019-11-18 07:13:45', '2019-11-18 07:13:45', 61, 1, 1, 1, 1),
(62, 1, '2019-11-18 07:13:45', '2019-11-18 07:13:45', 62, 1, 1, 1, 1),
(63, 1, '2019-11-18 07:13:45', '2019-11-18 07:13:45', 63, 1, 1, 1, 1),
(64, 1, '2019-11-18 07:13:45', '2019-11-18 07:13:45', 64, 1, 1, 1, 1),
(65, 1, '2019-11-18 07:13:45', '2019-11-18 07:13:45', 65, 1, 1, 1, 1),
(66, 1, '2019-11-18 07:13:45', '2019-11-18 07:13:45', 66, 1, 1, 1, 1),
(67, 1, '2019-11-18 07:13:45', '2019-11-18 07:13:45', 67, 1, 1, 1, 1),
(68, 1, '2019-11-18 07:13:45', '2019-11-18 07:13:45', 68, 1, 1, 1, 1),
(69, 1, '2019-11-18 07:13:45', '2019-11-18 07:13:45', 69, 1, 1, 1, 1),
(70, 1, '2019-11-18 07:13:45', '2019-11-18 07:13:45', 70, 1, 1, 1, 1),
(71, 1, '2019-11-18 07:13:45', '2019-11-18 07:13:45', 71, 1, 1, 1, 1),
(72, 1, '2019-11-18 07:13:45', '2019-11-18 07:13:45', 72, 1, 1, 1, 1),
(73, 1, '2019-11-18 07:13:45', '2019-11-18 07:13:45', 73, 1, 1, 1, 1),
(74, 1, '2019-11-18 07:13:45', '2019-11-18 07:13:45', 74, 1, 1, 1, 1),
(75, 1, '2019-11-18 07:13:45', '2019-11-18 07:13:45', 75, 1, 1, 1, 1),
(76, 1, '2019-11-18 07:13:45', '2019-11-18 07:13:45', 76, 1, 1, 1, 1),
(77, 1, '2019-11-18 07:13:45', '2019-11-18 07:13:45', 77, 1, 1, 1, 1),
(78, 1, '2019-11-18 07:13:45', '2019-11-18 07:13:45', 79, 1, 1, 1, 1),
(79, 1, '2019-11-18 07:13:45', '2019-11-18 07:13:45', 80, 1, 1, 1, 1),
(80, 1, '2019-11-18 07:13:45', '2019-11-18 07:13:45', 81, 1, 1, 1, 1),
(81, 1, '2019-11-18 07:13:45', '2019-11-18 07:13:45', 82, 1, 1, 1, 1),
(82, 1, '2019-11-18 07:13:45', '2019-11-18 07:13:45', 83, 1, 1, 1, 1),
(83, 1, '2019-11-18 07:13:45', '2019-11-18 07:13:45', 84, 1, 1, 1, 1),
(84, 1, '2019-11-18 07:13:45', '2019-11-18 07:13:45', 85, 1, 1, 1, 1),
(85, 1, '2019-11-18 07:13:45', '2019-11-18 07:13:45', 86, 1, 1, 1, 1),
(86, 1, '2019-11-18 07:13:45', '2019-11-18 07:13:45', 87, 1, 1, 1, 1),
(87, 1, '2019-11-18 07:13:45', '2019-11-18 07:13:45', 88, 1, 1, 1, 1),
(88, 1, '2019-11-18 07:13:45', '2019-11-18 07:13:45', 89, 1, 1, 1, 1),
(89, 1, '2019-11-18 07:13:45', '2019-11-18 07:13:45', 90, 1, 1, 1, 1),
(90, 1, '2019-11-18 07:13:45', '2019-11-18 07:13:45', 91, 1, 1, 1, 1),
(91, 1, '2019-11-18 07:13:45', '2019-11-18 07:13:45', 92, 1, 1, 1, 1),
(92, 1, '2019-11-18 07:13:45', '2019-11-18 07:13:45', 93, 1, 1, 1, 1),
(93, 1, '2019-11-18 07:13:45', '2019-11-18 07:13:45', 94, 1, 1, 1, 1),
(94, 1, '2019-11-18 07:13:45', '2019-11-18 07:13:45', 95, 1, 1, 1, 1),
(95, 1, '2019-11-18 07:13:45', '2019-11-18 07:13:45', 96, 1, 1, 1, 1),
(96, 1, '2019-11-18 07:13:45', '2019-11-18 07:13:45', 97, 1, 1, 1, 1),
(97, 1, '2019-11-18 07:13:45', '2019-11-18 07:13:45', 98, 1, 1, 1, 1),
(98, 1, '2019-11-18 07:13:45', '2019-11-18 07:13:45', 99, 1, 1, 1, 1),
(99, 1, '2019-11-18 07:13:45', '2019-11-18 07:13:45', 100, 1, 1, 1, 1),
(100, 1, '2019-11-18 07:13:45', '2019-11-18 07:13:45', 101, 1, 1, 1, 1),
(101, 1, '2019-11-18 07:13:45', '2019-11-18 07:13:45', 102, 1, 1, 1, 1),
(102, 1, '2019-11-18 07:13:45', '2019-11-18 07:13:45', 103, 1, 1, 1, 1),
(103, 1, '2019-11-18 07:13:45', '2019-11-18 07:13:45', 104, 1, 1, 1, 1),
(104, 1, '2019-11-18 07:13:45', '2019-11-18 07:13:45', 105, 1, 1, 1, 1),
(105, 1, '2019-11-18 07:13:46', '2019-11-18 07:13:46', 106, 1, 1, 1, 1),
(106, 1, '2019-11-18 07:13:46', '2019-11-18 07:13:46', 107, 1, 1, 1, 1),
(107, 1, '2019-11-18 07:13:46', '2019-11-18 07:13:46', 108, 1, 1, 1, 1),
(108, 1, '2019-11-18 07:13:46', '2019-11-18 07:13:46', 109, 1, 1, 1, 1),
(109, 1, '2019-11-18 07:13:46', '2019-11-18 07:13:46', 110, 1, 1, 1, 1),
(110, 1, '2019-11-18 07:13:46', '2019-11-18 07:13:46', 111, 1, 1, 1, 1),
(111, 1, '2019-11-18 07:13:46', '2019-11-18 07:13:46', 112, 1, 1, 1, 1),
(112, 1, '2019-11-18 07:13:46', '2019-11-18 07:13:46', 113, 1, 1, 1, 1),
(113, 1, '2019-11-18 07:13:46', '2019-11-18 07:13:46', 114, 1, 1, 1, 1),
(114, 1, '2019-11-18 07:13:46', '2019-11-18 07:13:46', 115, 1, 1, 1, 1),
(115, 1, '2019-11-18 07:13:46', '2019-11-18 07:13:46', 116, 1, 1, 1, 1),
(116, 1, '2019-11-18 07:13:46', '2019-11-18 07:13:46', 117, 1, 1, 1, 1),
(117, 1, '2019-11-18 07:13:46', '2019-11-18 07:13:46', 118, 1, 1, 1, 1),
(118, 1, '2019-11-18 07:13:46', '2019-11-18 07:13:46', 119, 1, 1, 1, 1),
(119, 1, '2019-11-18 07:13:46', '2019-11-18 07:13:46', 120, 1, 1, 1, 1),
(120, 1, '2019-11-18 07:13:46', '2019-11-18 07:13:46', 121, 1, 1, 1, 1),
(121, 1, '2019-11-18 07:13:46', '2019-11-18 07:13:46', 122, 1, 1, 1, 1),
(122, 1, '2019-11-18 07:13:46', '2019-11-18 07:13:46', 123, 1, 1, 1, 1),
(123, 1, '2019-11-18 07:13:46', '2019-11-18 07:13:46', 124, 1, 1, 1, 1),
(124, 1, '2019-11-18 07:13:46', '2019-11-18 07:13:46', 125, 1, 1, 1, 1),
(125, 1, '2019-11-18 07:13:46', '2019-11-18 07:13:46', 126, 1, 1, 1, 1),
(126, 1, '2019-11-18 07:13:46', '2019-11-18 07:13:46', 127, 1, 1, 1, 1),
(127, 1, '2019-11-18 07:13:46', '2019-11-18 07:13:46', 128, 1, 1, 1, 1),
(128, 1, '2019-11-18 07:13:46', '2019-11-18 07:13:46', 129, 1, 1, 1, 1),
(129, 1, '2019-11-18 07:13:46', '2019-11-18 07:13:46', 130, 1, 1, 1, 1),
(130, 1, '2019-11-18 07:13:46', '2019-11-18 07:13:46', 131, 1, 1, 1, 1),
(131, 1, '2019-11-18 07:13:46', '2019-11-18 07:13:46', 132, 1, 1, 1, 1),
(132, 1, '2019-11-18 07:13:46', '2019-11-18 07:13:46', 133, 1, 1, 1, 1),
(133, 1, '2019-11-18 07:13:46', '2019-11-18 07:13:46', 134, 1, 1, 1, 1),
(134, 1, '2019-11-18 07:13:46', '2019-11-18 07:13:46', 135, 1, 1, 1, 1),
(135, 1, '2019-11-18 07:13:46', '2019-11-18 07:13:46', 136, 1, 1, 1, 1),
(136, 1, '2019-11-18 07:13:46', '2019-11-18 07:13:46', 137, 1, 1, 1, 1),
(137, 1, '2019-11-18 07:13:46', '2019-11-18 07:13:46', 138, 1, 1, 1, 1),
(138, 1, '2019-11-18 07:13:46', '2019-11-18 07:13:46', 139, 1, 1, 1, 1),
(139, 1, '2019-11-18 07:13:46', '2019-11-18 07:13:46', 140, 1, 1, 1, 1),
(140, 1, '2019-11-18 07:13:46', '2019-11-18 07:13:46', 141, 1, 1, 1, 1),
(141, 1, '2019-11-18 07:13:46', '2019-11-18 07:13:46', 142, 1, 1, 1, 1),
(142, 1, '2019-11-18 07:13:46', '2019-11-18 07:13:46', 143, 1, 1, 1, 1),
(143, 1, '2019-11-18 07:13:46', '2019-11-18 07:13:46', 144, 1, 1, 1, 1),
(144, 1, '2019-11-18 07:13:46', '2019-11-18 07:13:46', 145, 1, 1, 1, 1),
(145, 1, '2019-11-18 07:13:46', '2019-11-18 07:13:46', 146, 1, 1, 1, 1),
(146, 1, '2019-11-18 07:13:46', '2019-11-18 07:13:46', 147, 1, 1, 1, 1),
(147, 1, '2019-11-18 07:13:46', '2019-11-18 07:13:46', 148, 1, 1, 1, 1),
(148, 1, '2019-11-18 07:13:46', '2019-11-18 07:13:46', 149, 1, 1, 1, 1),
(149, 1, '2019-11-18 07:13:46', '2019-11-18 07:13:46', 150, 1, 1, 1, 1),
(150, 1, '2019-11-18 07:13:46', '2019-11-18 07:13:46', 151, 1, 1, 1, 1),
(151, 1, '2019-11-18 07:13:46', '2019-11-18 07:13:46', 152, 1, 1, 1, 1),
(152, 1, '2019-11-18 07:13:46', '2019-11-18 07:13:46', 153, 1, 1, 1, 1),
(153, 1, '2019-11-18 07:13:46', '2019-11-18 07:13:46', 154, 1, 1, 1, 1),
(154, 1, '2019-11-18 07:13:46', '2019-11-18 07:13:46', 155, 1, 1, 1, 1),
(155, 1, '2019-11-18 07:13:46', '2019-11-18 07:13:46', 156, 1, 1, 1, 1),
(156, 1, '2019-11-18 07:13:46', '2019-11-18 07:13:46', 157, 1, 1, 1, 1),
(157, 1, '2019-11-18 07:13:46', '2019-11-18 07:13:46', 158, 1, 1, 1, 1),
(158, 1, '2019-11-18 07:13:46', '2019-11-18 07:13:46', 159, 1, 1, 1, 1),
(159, 1, '2019-11-18 07:13:46', '2019-11-18 07:13:46', 160, 1, 1, 1, 1),
(160, 1, '2019-11-18 07:13:46', '2019-11-18 07:13:46', 161, 1, 1, 1, 1),
(161, 1, '2019-11-18 07:13:46', '2019-11-18 07:13:46', 162, 1, 1, 1, 1),
(162, 1, '2019-11-18 07:13:46', '2019-11-18 07:13:46', 163, 1, 1, 1, 1),
(163, 1, '2019-11-18 07:13:46', '2019-11-18 07:13:46', 164, 1, 1, 1, 1),
(164, 1, '2019-11-18 07:13:46', '2019-11-18 07:13:46', 165, 1, 1, 1, 1),
(165, 1, '2019-11-18 07:13:46', '2019-11-18 07:13:46', 166, 1, 1, 1, 1),
(166, 1, '2019-11-18 07:13:46', '2019-11-18 07:13:46', 167, 1, 1, 1, 1),
(167, 1, '2019-11-18 07:13:46', '2019-11-18 07:13:46', 168, 1, 1, 1, 1),
(168, 1, '2019-11-18 07:13:46', '2019-11-18 07:13:46', 169, 1, 1, 1, 1),
(169, 1, '2019-11-18 07:13:46', '2019-11-18 07:13:46', 170, 1, 1, 1, 1),
(170, 1, '2019-11-18 07:13:46', '2019-11-18 07:13:46', 171, 1, 1, 1, 1),
(171, 1, '2019-11-18 07:13:46', '2019-11-18 07:13:46', 172, 1, 1, 1, 1),
(172, 1, '2019-11-18 07:13:46', '2019-11-18 07:13:46', 173, 1, 1, 1, 1),
(173, 1, '2019-11-18 07:13:46', '2019-11-18 07:13:46', 174, 1, 1, 1, 1),
(174, 1, '2019-11-18 07:13:46', '2019-11-18 07:13:46', 175, 1, 1, 1, 1),
(175, 1, '2019-11-18 07:13:46', '2019-11-18 07:13:46', 176, 1, 1, 1, 1),
(176, 1, '2019-11-18 07:13:46', '2019-11-18 07:13:46', 177, 1, 1, 1, 1),
(177, 1, '2019-11-18 07:13:46', '2019-11-18 07:13:46', 178, 1, 1, 1, 1),
(178, 1, '2019-11-18 07:13:46', '2019-11-18 07:13:46', 179, 1, 1, 1, 1),
(179, 1, '2019-11-18 07:13:46', '2019-11-18 07:13:46', 180, 1, 1, 1, 1),
(180, 1, '2019-11-18 07:13:46', '2019-11-18 07:13:46', 181, 1, 1, 1, 1),
(181, 1, '2019-11-18 07:13:46', '2019-11-18 07:13:46', 182, 1, 1, 1, 1),
(182, 1, '2019-11-18 07:13:46', '2019-11-18 07:13:46', 183, 1, 1, 1, 1),
(183, 1, '2019-11-18 07:13:46', '2019-11-18 07:13:46', 184, 1, 1, 1, 1),
(184, 1, '2019-11-18 07:13:46', '2019-11-18 07:13:46', 185, 1, 1, 1, 1),
(185, 1, '2019-11-18 07:13:46', '2019-11-18 07:13:46', 186, 1, 1, 1, 1),
(186, 1, '2019-11-18 07:13:46', '2019-11-18 07:13:46', 187, 1, 1, 1, 1),
(187, 1, '2019-11-18 07:13:46', '2019-11-18 07:13:46', 188, 1, 1, 1, 1),
(188, 1, '2019-11-18 07:13:46', '2019-11-18 07:13:46', 189, 1, 1, 1, 1),
(189, 1, '2019-11-18 07:13:46', '2019-11-18 07:13:46', 190, 1, 1, 1, 1),
(190, 1, '2019-11-18 07:13:46', '2019-11-18 07:13:46', 191, 1, 1, 1, 1),
(191, 1, '2019-11-18 07:13:46', '2019-11-18 07:13:46', 192, 1, 1, 1, 1),
(192, 1, '2019-11-18 07:13:46', '2019-11-18 07:13:46', 193, 1, 1, 1, 1),
(193, 1, '2019-11-18 07:13:46', '2019-11-18 07:13:46', 194, 1, 1, 1, 1),
(194, 1, '2019-11-18 07:13:46', '2019-11-18 07:13:46', 195, 1, 1, 1, 1),
(195, 1, '2019-11-18 07:13:46', '2019-11-18 07:13:46', 196, 1, 1, 1, 1),
(196, 1, '2019-11-18 07:13:46', '2019-11-18 07:13:46', 197, 1, 1, 1, 1),
(197, 1, '2019-11-18 07:13:46', '2019-11-18 07:13:46', 198, 1, 1, 1, 1),
(198, 1, '2019-11-18 07:13:46', '2019-11-18 07:13:46', 199, 1, 1, 1, 1),
(199, 1, '2019-11-18 07:13:46', '2019-11-18 07:13:46', 200, 1, 1, 1, 1),
(200, 1, '2019-11-18 07:13:46', '2019-11-18 07:13:46', 201, 1, 1, 1, 1),
(201, 1, '2019-11-18 07:13:46', '2019-11-18 07:13:46', 202, 1, 1, 1, 1),
(202, 1, '2019-11-18 07:13:46', '2019-11-18 07:13:46', 203, 1, 1, 1, 1),
(203, 1, '2019-11-18 07:13:46', '2019-11-18 07:13:46', 204, 1, 1, 1, 1),
(204, 1, '2019-11-18 07:13:46', '2019-11-18 07:13:46', 205, 1, 1, 1, 1),
(205, 1, '2019-11-18 07:13:46', '2019-11-18 07:13:46', 206, 1, 1, 1, 1),
(206, 1, '2019-11-18 07:13:46', '2019-11-18 07:13:46', 207, 1, 1, 1, 1),
(207, 1, '2019-11-18 07:13:46', '2019-11-18 07:13:46', 208, 1, 1, 1, 1),
(208, 1, '2019-11-18 07:13:46', '2019-11-18 07:13:46', 209, 1, 1, 1, 1),
(209, 1, '2019-11-18 07:13:46', '2019-11-18 07:13:46', 210, 1, 1, 1, 1),
(210, 1, '2019-11-18 07:13:46', '2019-11-18 07:13:46', 211, 1, 1, 1, 1),
(211, 1, '2019-11-18 07:13:46', '2019-11-18 07:13:46', 214, 1, 1, 1, 1),
(212, 1, '2019-11-18 07:13:46', '2019-11-18 07:13:46', 215, 1, 1, 1, 1),
(213, 1, '2019-11-18 07:13:46', '2019-11-18 07:13:46', 216, 1, 1, 1, 1),
(214, 1, '2019-11-18 07:13:46', '2019-11-18 07:13:46', 217, 1, 1, 1, 1),
(215, 1, '2019-11-18 07:13:46', '2019-11-18 07:13:46', 218, 1, 1, 1, 1),
(216, 1, '2019-11-18 07:13:46', '2019-11-18 07:13:46', 219, 1, 1, 1, 1),
(217, 1, '2019-11-18 07:13:46', '2019-11-18 07:13:46', 220, 1, 1, 1, 1),
(218, 1, '2019-11-18 07:13:46', '2019-11-18 07:13:46', 221, 1, 1, 1, 1),
(219, 1, '2019-11-18 07:13:46', '2019-11-18 07:13:46', 222, 1, 1, 1, 1),
(220, 1, '2019-11-18 07:13:46', '2019-11-18 07:13:46', 223, 1, 1, 1, 1),
(221, 1, '2019-11-18 07:13:46', '2019-11-18 07:13:46', 224, 1, 1, 1, 1),
(222, 1, '2019-11-18 07:13:46', '2019-11-18 07:13:46', 225, 1, 1, 1, 1),
(223, 1, '2019-11-18 07:13:46', '2019-11-18 07:13:46', 226, 1, 1, 1, 1),
(224, 1, '2019-11-18 07:13:46', '2019-11-18 07:13:46', 227, 1, 1, 1, 1),
(225, 1, '2019-11-18 07:13:46', '2019-11-18 07:13:46', 228, 1, 1, 1, 1),
(226, 1, '2019-11-18 07:13:46', '2019-11-18 07:13:46', 229, 1, 1, 1, 1),
(227, 1, '2019-11-18 07:13:46', '2019-11-18 07:13:46', 230, 1, 1, 1, 1),
(228, 1, '2019-11-18 07:13:46', '2019-11-18 07:13:46', 231, 1, 1, 1, 1),
(229, 1, '2019-11-18 07:13:46', '2019-11-18 07:13:46', 232, 1, 1, 1, 1),
(230, 1, '2019-11-18 07:13:46', '2019-11-18 07:13:46', 233, 1, 1, 1, 1),
(231, 1, '2019-11-18 07:13:46', '2019-11-18 07:13:46', 234, 1, 1, 1, 1),
(232, 1, '2019-11-18 07:13:46', '2019-11-18 07:13:46', 235, 1, 1, 1, 1),
(233, 1, '2019-11-18 07:13:46', '2019-11-18 07:13:46', 236, 1, 1, 1, 1),
(234, 1, '2019-11-18 07:13:46', '2019-11-18 07:13:46', 237, 1, 1, 1, 1),
(235, 1, '2019-11-18 07:13:46', '2019-11-18 07:13:46', 238, 1, 1, 1, 1),
(236, 1, '2019-11-18 07:13:46', '2019-11-18 07:13:46', 239, 1, 1, 1, 1),
(237, 1, '2019-11-18 07:13:46', '2019-11-18 07:13:46', 240, 1, 1, 1, 1),
(238, 1, '2019-11-18 07:13:46', '2019-11-18 07:13:46', 241, 1, 1, 1, 1),
(239, 1, '2019-11-18 07:13:46', '2019-11-18 07:13:46', 242, 1, 1, 1, 1),
(240, 1, '2019-11-18 07:13:46', '2019-11-18 07:13:46', 243, 1, 1, 1, 1),
(241, 1, '2019-11-18 07:13:46', '2019-11-18 07:13:46', 244, 1, 1, 1, 1),
(242, 1, '2019-11-18 07:13:46', '2019-11-18 07:13:46', 245, 1, 1, 1, 1),
(243, 1, '2019-11-18 07:13:46', '2019-11-18 07:13:46', 246, 1, 1, 1, 1),
(244, 1, '2019-11-18 07:13:46', '2019-11-18 07:13:46', 247, 1, 1, 1, 1),
(245, 1, '2019-11-18 07:13:46', '2019-11-18 07:13:46', 248, 1, 1, 1, 1),
(246, 1, '2019-11-18 07:13:46', '2019-11-18 07:13:46', 249, 1, 1, 1, 1),
(247, 1, '2019-11-18 07:13:46', '2019-11-18 07:13:46', 250, 1, 1, 1, 1),
(248, 1, '2019-11-18 07:13:46', '2019-11-18 07:13:46', 251, 1, 1, 1, 1),
(249, 1, '2019-11-18 07:13:46', '2019-11-18 07:13:46', 252, 1, 1, 1, 1),
(250, 1, '2019-11-18 07:13:46', '2019-11-18 07:13:46', 253, 1, 1, 1, 1),
(251, 1, '2019-11-18 07:13:46', '2019-11-18 07:13:46', 254, 1, 1, 1, 1),
(252, 1, '2019-11-18 07:13:46', '2019-11-18 07:13:46', 255, 1, 1, 1, 1),
(253, 1, '2019-11-18 07:13:46', '2019-11-18 07:13:46', 256, 1, 1, 1, 1),
(254, 1, '2019-11-18 07:13:46', '2019-11-18 07:13:46', 257, 1, 1, 1, 1),
(255, 1, '2019-11-18 07:13:46', '2019-11-18 07:13:46', 258, 1, 1, 1, 1),
(256, 1, '2019-11-18 07:13:46', '2019-11-18 07:13:46', 259, 1, 1, 1, 1),
(257, 1, '2019-11-18 07:13:46', '2019-11-18 07:13:46', 260, 1, 1, 1, 1),
(258, 1, '2019-11-18 07:13:46', '2019-11-18 07:13:46', 261, 1, 1, 1, 1),
(259, 1, '2019-11-18 07:13:46', '2019-11-18 07:13:46', 262, 1, 1, 1, 1),
(260, 1, '2019-11-18 07:13:46', '2019-11-18 07:13:46', 263, 1, 1, 1, 1),
(261, 1, '2019-11-18 07:13:46', '2019-11-18 07:13:46', 264, 1, 1, 1, 1),
(262, 1, '2019-11-18 07:13:46', '2019-11-18 07:13:46', 265, 1, 1, 1, 1),
(263, 1, '2019-11-18 07:13:46', '2019-11-18 07:13:46', 266, 1, 1, 1, 1),
(264, 1, '2019-11-18 07:13:46', '2019-11-18 07:13:46', 267, 1, 1, 1, 1),
(265, 1, '2019-11-18 07:13:46', '2019-11-18 07:13:46', 268, 1, 1, 1, 1),
(266, 1, '2019-11-18 07:13:46', '2019-11-18 07:13:46', 269, 1, 1, 1, 1),
(267, 1, '2019-11-18 07:13:46', '2019-11-18 07:13:46', 270, 1, 1, 1, 1),
(268, 1, '2019-11-18 07:13:46', '2019-11-18 07:13:46', 271, 1, 1, 1, 1),
(269, 1, '2019-11-18 07:13:46', '2019-11-18 07:13:46', 272, 1, 1, 1, 1),
(270, 1, '2019-11-18 07:13:46', '2019-11-18 07:13:46', 273, 1, 1, 1, 1),
(271, 1, '2019-11-18 07:13:46', '2019-11-18 07:13:46', 274, 1, 1, 1, 1),
(272, 1, '2019-11-18 07:13:46', '2019-11-18 07:13:46', 275, 1, 1, 1, 1),
(273, 1, '2019-11-18 07:13:46', '2019-11-18 07:13:46', 276, 1, 1, 1, 1),
(274, 1, '2019-11-18 07:13:46', '2019-11-18 07:13:46', 277, 1, 1, 1, 1),
(275, 1, '2019-11-18 07:13:46', '2019-11-18 07:13:46', 278, 1, 1, 1, 1),
(276, 1, '2019-11-18 07:13:46', '2019-11-18 07:13:46', 279, 1, 1, 1, 1),
(277, 1, '2019-11-18 07:13:46', '2019-11-18 07:13:46', 280, 1, 1, 1, 1),
(278, 1, '2019-11-18 07:13:46', '2019-11-18 07:13:46', 281, 1, 1, 1, 1),
(279, 1, '2019-11-18 07:13:46', '2019-11-18 07:13:46', 282, 1, 1, 1, 1),
(280, 1, '2019-11-18 07:13:46', '2019-11-18 07:13:46', 283, 1, 1, 1, 1),
(281, 1, '2019-11-18 07:13:46', '2019-11-18 07:13:46', 284, 1, 1, 1, 1),
(282, 1, '2019-11-18 07:13:46', '2019-11-18 07:13:46', 285, 1, 1, 1, 1),
(283, 1, '2019-11-18 07:13:46', '2019-11-18 07:13:46', 286, 1, 1, 1, 1),
(284, 1, '2019-11-18 07:13:46', '2019-11-18 07:13:46', 287, 1, 1, 1, 1),
(285, 1, '2019-11-18 07:13:46', '2019-11-18 07:13:46', 288, 1, 1, 1, 1),
(286, 1, '2019-11-18 07:13:46', '2019-11-18 07:13:46', 289, 1, 1, 1, 1),
(287, 1, '2019-11-18 07:13:46', '2019-11-18 07:13:46', 290, 1, 1, 1, 1),
(288, 1, '2019-11-18 07:13:46', '2019-11-18 07:13:46', 291, 1, 1, 1, 1),
(289, 1, '2019-11-18 07:13:46', '2019-11-18 07:13:46', 292, 1, 1, 1, 1),
(290, 1, '2019-11-18 07:13:46', '2019-11-18 07:13:46', 293, 1, 1, 1, 1),
(291, 1, '2019-11-18 07:13:46', '2019-11-18 07:13:46', 294, 1, 1, 1, 1),
(292, 1, '2019-11-18 07:13:46', '2019-11-18 07:13:46', 295, 1, 1, 1, 1),
(293, 1, '2019-11-18 07:13:46', '2019-11-18 07:13:46', 296, 1, 1, 1, 1),
(294, 1, '2019-11-18 07:13:46', '2019-11-18 07:13:46', 297, 1, 1, 1, 1),
(295, 1, '2019-11-18 07:13:46', '2019-11-18 07:13:46', 298, 1, 1, 1, 1),
(296, 1, '2019-11-18 07:13:46', '2019-11-18 07:13:46', 299, 1, 1, 1, 1),
(297, 1, '2019-11-18 07:13:46', '2019-11-18 07:13:46', 300, 1, 1, 1, 1),
(298, 1, '2019-11-18 07:13:46', '2019-11-18 07:13:46', 301, 1, 1, 1, 1),
(299, 1, '2019-11-18 07:13:46', '2019-11-18 07:13:46', 302, 1, 1, 1, 1),
(300, 1, '2019-11-18 07:13:46', '2019-11-18 07:13:46', 303, 1, 1, 1, 1),
(301, 1, '2019-11-18 07:13:46', '2019-11-18 07:13:46', 304, 1, 1, 1, 1),
(302, 1, '2019-11-18 07:13:46', '2019-11-18 07:13:46', 305, 1, 1, 1, 1),
(303, 1, '2019-11-18 07:13:46', '2019-11-18 07:13:46', 306, 1, 1, 1, 1),
(304, 1, '2019-11-18 07:13:46', '2019-11-18 07:13:46', 307, 1, 1, 1, 1),
(305, 1, '2019-11-18 07:13:46', '2019-11-18 07:13:46', 308, 1, 1, 1, 1),
(306, 1, '2019-11-18 07:13:46', '2019-11-18 07:13:46', 309, 1, 1, 1, 1),
(307, 1, '2019-11-18 07:13:46', '2019-11-18 07:13:46', 310, 1, 1, 1, 1),
(308, 1, '2019-11-18 07:13:46', '2019-11-18 07:13:46', 311, 1, 1, 1, 1),
(309, 1, '2019-11-18 07:13:46', '2019-11-18 07:13:46', 312, 1, 1, 1, 1),
(310, 1, '2019-11-18 07:13:46', '2019-11-18 07:13:46', 313, 1, 1, 1, 1),
(311, 1, '2019-11-18 07:13:46', '2019-11-18 07:13:46', 314, 1, 1, 1, 1),
(312, 1, '2019-11-18 07:13:46', '2019-11-18 07:13:46', 315, 1, 1, 1, 1),
(313, 1, '2019-11-18 07:13:46', '2019-11-18 07:13:46', 316, 1, 1, 1, 1),
(314, 1, '2019-11-18 07:13:46', '2019-11-18 07:13:46', 317, 1, 1, 1, 1),
(315, 1, '2019-11-18 07:13:46', '2019-11-18 07:13:46', 318, 1, 1, 1, 1),
(316, 1, '2019-11-18 07:13:46', '2019-11-18 07:13:46', 319, 1, 1, 1, 1),
(317, 1, '2019-11-18 07:13:46', '2019-11-18 07:13:46', 320, 1, 1, 1, 1),
(318, 1, '2019-11-18 07:13:46', '2019-11-18 07:13:46', 321, 1, 1, 1, 1),
(319, 1, '2019-11-18 07:13:46', '2019-11-18 07:13:46', 322, 1, 1, 1, 1),
(320, 1, '2019-11-18 07:13:46', '2019-11-18 07:13:46', 323, 1, 1, 1, 1),
(321, 1, '2019-11-18 07:13:46', '2019-11-18 07:13:46', 324, 1, 1, 1, 1),
(322, 1, '2019-11-18 07:13:46', '2019-11-18 07:13:46', 325, 1, 1, 1, 1),
(323, 1, '2019-11-18 07:13:46', '2019-11-18 07:13:46', 326, 1, 1, 1, 1),
(324, 1, '2019-11-18 07:13:46', '2019-11-18 07:13:46', 327, 1, 1, 1, 1),
(325, 1, '2019-11-18 07:13:46', '2019-11-18 07:13:46', 328, 1, 1, 1, 1),
(326, 1, '2019-11-18 07:13:46', '2019-11-18 07:13:46', 329, 1, 1, 1, 1),
(327, 1, '2019-11-18 07:13:46', '2019-11-18 07:13:46', 330, 1, 1, 1, 1),
(328, 1, '2019-11-18 07:13:46', '2019-11-18 07:13:46', 331, 1, 1, 1, 1),
(329, 1, '2019-11-18 07:13:46', '2019-11-18 07:13:46', 332, 1, 1, 1, 1),
(330, 1, '2019-11-18 07:13:46', '2019-11-18 07:13:46', 333, 1, 1, 1, 1),
(331, 1, '2019-11-18 07:13:46', '2019-11-18 07:13:46', 334, 1, 1, 1, 1),
(332, 1, '2019-11-18 07:13:46', '2019-11-18 07:13:46', 335, 1, 1, 1, 1),
(333, 1, '2019-11-18 07:13:46', '2019-11-18 07:13:46', 336, 1, 1, 1, 1),
(334, 1, '2019-11-18 07:13:46', '2019-11-18 07:13:46', 337, 1, 1, 1, 1),
(335, 1, '2019-11-18 07:13:46', '2019-11-18 07:13:46', 338, 1, 1, 1, 1),
(336, 1, '2019-11-18 07:13:46', '2019-11-18 07:13:46', 339, 1, 1, 1, 1),
(337, 1, '2019-11-18 07:13:46', '2019-11-18 07:13:46', 340, 1, 1, 1, 1),
(338, 1, '2019-11-18 07:13:46', '2019-11-18 07:13:46', 341, 1, 1, 1, 1),
(339, 1, '2019-11-18 07:13:46', '2019-11-18 07:13:46', 342, 1, 1, 1, 1),
(340, 1, '2019-11-18 07:13:46', '2019-11-18 07:13:46', 343, 1, 1, 1, 1),
(341, 1, '2019-11-18 07:13:46', '2019-11-18 07:13:46', 344, 1, 1, 1, 1),
(342, 1, '2019-11-18 07:13:46', '2019-11-18 07:13:46', 345, 1, 1, 1, 1),
(343, 1, '2019-11-18 07:13:46', '2019-11-18 07:13:46', 346, 1, 1, 1, 1),
(344, 1, '2019-11-18 07:13:46', '2019-11-18 07:13:46', 347, 1, 1, 1, 1),
(345, 1, '2019-11-18 07:13:46', '2019-11-18 07:13:46', 348, 1, 1, 1, 1),
(346, 1, '2019-11-18 07:13:46', '2019-11-18 07:13:46', 349, 1, 1, 1, 1),
(347, 1, '2019-11-18 07:13:46', '2019-11-18 07:13:46', 350, 1, 1, 1, 1),
(348, 1, '2019-11-18 07:13:46', '2019-11-18 07:13:46', 351, 1, 1, 1, 1),
(349, 1, '2019-11-18 07:13:46', '2019-11-18 07:13:46', 352, 1, 1, 1, 1),
(350, 1, '2019-11-18 07:13:46', '2019-11-18 07:13:46', 353, 1, 1, 1, 1),
(351, 1, '2019-11-18 07:13:46', '2019-11-18 07:13:46', 354, 1, 1, 1, 1),
(352, 1, '2019-11-18 07:13:46', '2019-11-18 07:13:46', 355, 1, 1, 1, 1),
(353, 1, '2019-11-18 07:13:46', '2019-11-18 07:13:46', 356, 1, 1, 1, 1),
(354, 1, '2019-11-18 07:13:46', '2019-11-18 07:13:46', 357, 1, 1, 1, 1),
(355, 1, '2019-11-18 07:13:46', '2019-11-18 07:13:46', 358, 1, 1, 1, 1),
(356, 1, '2019-11-18 07:13:46', '2019-11-18 07:13:46', 359, 1, 1, 1, 1),
(357, 1, '2019-11-18 07:13:46', '2019-11-18 07:13:46', 360, 1, 1, 1, 1),
(358, 1, '2019-11-18 07:13:46', '2019-11-18 07:13:46', 361, 1, 1, 1, 1),
(359, 1, '2019-11-18 07:13:46', '2019-11-18 07:13:46', 362, 1, 1, 1, 1),
(360, 1, '2019-11-18 07:13:46', '2019-11-18 07:13:46', 363, 1, 1, 1, 1),
(361, 1, '2019-11-18 07:13:46', '2019-11-18 07:13:46', 364, 1, 1, 1, 1),
(362, 1, '2019-11-18 07:13:46', '2019-11-18 07:13:46', 365, 1, 1, 1, 1),
(363, 1, '2019-11-18 07:13:46', '2019-11-18 07:13:46', 366, 1, 1, 1, 1),
(364, 1, '2019-11-18 07:13:46', '2019-11-18 07:13:46', 367, 1, 1, 1, 1),
(365, 1, '2019-11-18 07:13:46', '2019-11-18 07:13:46', 368, 1, 1, 1, 1),
(366, 1, '2019-11-18 07:13:47', '2019-11-18 07:13:47', 369, 1, 1, 1, 1),
(367, 1, '2019-11-18 07:13:47', '2019-11-18 07:13:47', 370, 1, 1, 1, 1),
(368, 1, '2019-11-18 07:13:47', '2019-11-18 07:13:47', 371, 1, 1, 1, 1),
(369, 1, '2019-11-18 07:13:47', '2019-11-18 07:13:47', 372, 1, 1, 1, 1),
(370, 1, '2019-11-18 07:13:47', '2019-11-18 07:13:47', 373, 1, 1, 1, 1),
(371, 1, '2019-11-18 07:13:47', '2019-11-18 07:13:47', 374, 1, 1, 1, 1),
(372, 1, '2019-11-18 07:13:47', '2019-11-18 07:13:47', 375, 1, 1, 1, 1),
(373, 1, '2019-11-18 07:13:47', '2019-11-18 07:13:47', 376, 1, 1, 1, 1),
(374, 1, '2019-11-18 07:13:47', '2019-11-18 07:13:47', 377, 1, 1, 1, 1),
(375, 1, '2019-11-18 07:13:47', '2019-11-18 07:13:47', 378, 1, 1, 1, 1),
(376, 1, '2019-11-18 07:13:47', '2019-11-18 07:13:47', 379, 1, 1, 1, 1),
(377, 1, '2019-11-18 07:13:47', '2019-11-18 07:13:47', 380, 1, 1, 1, 1),
(378, 1, '2019-11-18 07:13:47', '2019-11-18 07:13:47', 381, 1, 1, 1, 1),
(379, 1, '2019-11-18 07:13:47', '2019-11-18 07:13:47', 382, 1, 1, 1, 1),
(380, 1, '2019-11-18 07:13:47', '2019-11-18 07:13:47', 383, 1, 1, 1, 1),
(381, 1, '2019-11-18 07:13:47', '2019-11-18 07:13:47', 384, 1, 1, 1, 1),
(382, 1, '2019-11-18 07:13:47', '2019-11-18 07:13:47', 385, 1, 1, 1, 1),
(383, 1, '2019-11-18 07:13:47', '2019-11-18 07:13:47', 386, 1, 1, 1, 1),
(384, 1, '2019-11-18 07:13:47', '2019-11-18 07:13:47', 387, 1, 1, 1, 1),
(385, 1, '2019-11-18 07:13:47', '2019-11-18 07:13:47', 388, 1, 1, 1, 1),
(386, 1, '2019-11-18 07:13:47', '2019-11-18 07:13:47', 389, 1, 1, 1, 1),
(387, 1, '2019-11-18 07:13:47', '2019-11-18 07:13:47', 390, 1, 1, 1, 1),
(388, 1, '2019-11-18 07:13:47', '2019-11-18 07:13:47', 391, 1, 1, 1, 1),
(389, 1, '2019-11-18 07:13:47', '2019-11-18 07:13:47', 392, 1, 1, 1, 1),
(390, 1, '2019-11-18 07:13:47', '2019-11-18 07:13:47', 393, 1, 1, 1, 1),
(391, 1, '2019-11-18 07:13:47', '2019-11-18 07:13:47', 394, 1, 1, 1, 1),
(392, 1, '2019-11-18 07:13:47', '2019-11-18 07:13:47', 395, 1, 1, 1, 1),
(393, 1, '2019-11-18 07:13:47', '2019-11-18 07:13:47', 396, 1, 1, 1, 1),
(787, 1, '2019-11-18 07:13:48', '2019-11-18 07:13:48', 1, 5, 1, 1, 1),
(788, 1, '2019-11-18 07:13:48', '2019-11-18 07:13:48', 2, 5, 1, 1, 1),
(789, 1, '2019-11-18 07:13:48', '2019-11-18 07:13:48', 3, 5, 1, 1, 1),
(790, 1, '2019-11-18 07:13:48', '2019-11-18 07:13:48', 4, 5, 1, 1, 1),
(791, 1, '2019-11-18 07:13:48', '2019-11-18 07:13:48', 5, 5, 1, 1, 1),
(792, 1, '2019-11-18 07:13:48', '2019-11-18 07:13:48', 6, 5, 1, 1, 1),
(793, 1, '2019-11-18 07:13:48', '2019-11-18 07:13:48', 7, 5, 1, 1, 1),
(794, 1, '2019-11-18 07:13:48', '2019-11-18 07:13:48', 8, 5, 1, 1, 1),
(795, 1, '2019-11-18 07:13:48', '2019-11-18 07:13:48', 9, 5, 1, 1, 1),
(796, 1, '2019-11-18 07:13:48', '2019-11-18 07:13:48', 10, 5, 1, 1, 1),
(797, 1, '2019-11-18 07:13:48', '2019-11-18 07:13:48', 11, 5, 1, 1, 1),
(798, 1, '2019-11-18 07:13:48', '2019-11-18 07:13:48', 12, 5, 1, 1, 1),
(799, 1, '2019-11-18 07:13:48', '2019-11-18 07:13:48', 13, 5, 1, 1, 1),
(800, 1, '2019-11-18 07:13:48', '2019-11-18 07:13:48', 14, 5, 1, 1, 1),
(801, 1, '2019-11-18 07:13:48', '2019-11-18 07:13:48', 15, 5, 1, 1, 1),
(802, 1, '2019-11-18 07:13:48', '2019-11-18 07:13:48', 16, 5, 1, 1, 1),
(803, 1, '2019-11-18 07:13:48', '2019-11-18 07:13:48', 17, 5, 1, 1, 1),
(804, 1, '2019-11-18 07:13:48', '2019-11-18 07:13:48', 18, 5, 1, 1, 1),
(805, 1, '2019-11-18 07:13:48', '2019-11-18 07:13:48', 19, 5, 1, 1, 1),
(806, 1, '2019-11-18 07:13:48', '2019-11-18 07:13:48', 20, 5, 1, 1, 1),
(807, 1, '2019-11-18 07:13:48', '2019-11-18 07:13:48', 21, 5, 1, 1, 1),
(808, 1, '2019-11-18 07:13:48', '2019-11-18 07:13:48', 22, 5, 1, 1, 1),
(809, 1, '2019-11-18 07:13:48', '2019-11-18 07:13:48', 23, 5, 1, 1, 1),
(810, 1, '2019-11-18 07:13:48', '2019-11-18 07:13:48', 24, 5, 1, 1, 1),
(811, 1, '2019-11-18 07:13:48', '2019-11-18 07:13:48', 25, 5, 1, 1, 1),
(812, 1, '2019-11-18 07:13:48', '2019-11-18 07:13:48', 26, 5, 1, 1, 1),
(813, 1, '2019-11-18 07:13:48', '2019-11-18 07:13:48', 27, 5, 1, 1, 1),
(814, 1, '2019-11-18 07:13:48', '2019-11-18 07:13:48', 28, 5, 1, 1, 1),
(815, 1, '2019-11-18 07:13:48', '2019-11-18 07:13:48', 29, 5, 1, 1, 1),
(816, 1, '2019-11-18 07:13:48', '2019-11-18 07:13:48', 30, 5, 1, 1, 1),
(817, 1, '2019-11-18 07:13:48', '2019-11-18 07:13:48', 31, 5, 1, 1, 1),
(818, 1, '2019-11-18 07:13:48', '2019-11-18 07:13:48', 32, 5, 1, 1, 1),
(819, 1, '2019-11-18 07:13:48', '2019-11-18 07:13:48', 33, 5, 1, 1, 1),
(820, 1, '2019-11-18 07:13:48', '2019-11-18 07:13:48', 34, 5, 1, 1, 1),
(821, 1, '2019-11-18 07:13:48', '2019-11-18 07:13:48', 35, 5, 1, 1, 1),
(822, 1, '2019-11-18 07:13:48', '2019-11-18 07:13:48', 36, 5, 1, 1, 1),
(823, 1, '2019-11-18 07:13:48', '2019-11-18 07:13:48', 37, 5, 1, 1, 1),
(824, 1, '2019-11-18 07:13:48', '2019-11-18 07:13:48', 38, 5, 1, 1, 1),
(825, 1, '2019-11-18 07:13:48', '2019-11-18 07:13:48', 39, 5, 1, 1, 1),
(826, 1, '2019-11-18 07:13:48', '2019-11-18 07:13:48', 40, 5, 1, 1, 1),
(827, 1, '2019-11-18 07:13:48', '2019-11-18 07:13:48', 41, 5, 1, 1, 1),
(828, 1, '2019-11-18 07:13:48', '2019-11-18 07:13:48', 42, 5, 1, 1, 1),
(829, 1, '2019-11-18 07:13:48', '2019-11-18 07:13:48', 43, 5, 1, 1, 1),
(830, 1, '2019-11-18 07:13:48', '2019-11-18 07:13:48', 44, 5, 1, 1, 1),
(831, 1, '2019-11-18 07:13:48', '2019-11-18 07:13:48', 45, 5, 1, 1, 1),
(832, 1, '2019-11-18 07:13:48', '2019-11-18 07:13:48', 46, 5, 1, 1, 1),
(833, 1, '2019-11-18 07:13:48', '2019-11-18 07:13:48', 47, 5, 1, 1, 1),
(834, 1, '2019-11-18 07:13:48', '2019-11-18 07:13:48', 48, 5, 1, 1, 1),
(835, 1, '2019-11-18 07:13:48', '2019-11-18 07:13:48', 49, 5, 1, 1, 1),
(836, 1, '2019-11-18 07:13:48', '2019-11-18 07:13:48', 50, 5, 1, 1, 1),
(837, 1, '2019-11-18 07:13:48', '2019-11-18 07:13:48', 51, 5, 1, 1, 1),
(838, 1, '2019-11-18 07:13:48', '2019-11-18 07:13:48', 52, 5, 1, 1, 1),
(839, 1, '2019-11-18 07:13:48', '2019-11-18 07:13:48', 53, 5, 1, 1, 1),
(840, 1, '2019-11-18 07:13:48', '2019-11-18 07:13:48', 54, 5, 1, 1, 1),
(841, 1, '2019-11-18 07:13:48', '2019-11-18 07:13:48', 55, 5, 1, 1, 1),
(842, 1, '2019-11-18 07:13:48', '2019-11-18 07:13:48', 56, 5, 1, 1, 1),
(843, 1, '2019-11-18 07:13:48', '2019-11-18 07:13:48', 57, 5, 1, 1, 1),
(844, 1, '2019-11-18 07:13:48', '2019-11-18 07:13:48', 58, 5, 1, 1, 1),
(845, 1, '2019-11-18 07:13:48', '2019-11-18 07:13:48', 59, 5, 1, 1, 1),
(846, 1, '2019-11-18 07:13:48', '2019-11-18 07:13:48', 60, 5, 1, 1, 1),
(847, 1, '2019-11-18 07:13:48', '2019-11-18 07:13:48', 61, 5, 1, 1, 1),
(848, 1, '2019-11-18 07:13:48', '2019-11-18 07:13:48', 62, 5, 1, 1, 1),
(849, 1, '2019-11-18 07:13:48', '2019-11-18 07:13:48', 63, 5, 1, 1, 1),
(850, 1, '2019-11-18 07:13:48', '2019-11-18 07:13:48', 64, 5, 1, 1, 1),
(851, 1, '2019-11-18 07:13:48', '2019-11-18 07:13:48', 65, 5, 1, 1, 1),
(852, 1, '2019-11-18 07:13:48', '2019-11-18 07:13:48', 66, 5, 1, 1, 1),
(853, 1, '2019-11-18 07:13:48', '2019-11-18 07:13:48', 67, 5, 1, 1, 1),
(854, 1, '2019-11-18 07:13:48', '2019-11-18 07:13:48', 68, 5, 1, 1, 1),
(855, 1, '2019-11-18 07:13:48', '2019-11-18 07:13:48', 69, 5, 1, 1, 1),
(856, 1, '2019-11-18 07:13:48', '2019-11-18 07:13:48', 70, 5, 1, 1, 1),
(857, 1, '2019-11-18 07:13:48', '2019-11-18 07:13:48', 71, 5, 1, 1, 1),
(858, 1, '2019-11-18 07:13:48', '2019-11-18 07:13:48', 72, 5, 1, 1, 1),
(859, 1, '2019-11-18 07:13:48', '2019-11-18 07:13:48', 73, 5, 1, 1, 1),
(860, 1, '2019-11-18 07:13:48', '2019-11-18 07:13:48', 74, 5, 1, 1, 1),
(861, 1, '2019-11-18 07:13:48', '2019-11-18 07:13:48', 75, 5, 1, 1, 1),
(862, 1, '2019-11-18 07:13:48', '2019-11-18 07:13:48', 76, 5, 1, 1, 1),
(863, 1, '2019-11-18 07:13:48', '2019-11-18 07:13:48', 77, 5, 1, 1, 1),
(864, 1, '2019-11-18 07:13:48', '2019-11-18 07:13:48', 79, 5, 1, 1, 1),
(865, 1, '2019-11-18 07:13:48', '2019-11-18 07:13:48', 80, 5, 1, 1, 1),
(866, 1, '2019-11-18 07:13:48', '2019-11-18 07:13:48', 81, 5, 1, 1, 1),
(867, 1, '2019-11-18 07:13:48', '2019-11-18 07:13:48', 82, 5, 1, 1, 1),
(868, 1, '2019-11-18 07:13:48', '2019-11-18 07:13:48', 83, 5, 1, 1, 1),
(869, 1, '2019-11-18 07:13:48', '2019-11-18 07:13:48', 84, 5, 1, 1, 1),
(870, 1, '2019-11-18 07:13:48', '2019-11-18 07:13:48', 85, 5, 1, 1, 1),
(871, 1, '2019-11-18 07:13:48', '2019-11-18 07:13:48', 86, 5, 1, 1, 1),
(872, 1, '2019-11-18 07:13:48', '2019-11-18 07:13:48', 87, 5, 1, 1, 1),
(873, 1, '2019-11-18 07:13:48', '2019-11-18 07:13:48', 88, 5, 1, 1, 1),
(874, 1, '2019-11-18 07:13:48', '2019-11-18 07:13:48', 89, 5, 1, 1, 1),
(875, 1, '2019-11-18 07:13:48', '2019-11-18 07:13:48', 90, 5, 1, 1, 1),
(876, 1, '2019-11-18 07:13:48', '2019-11-18 07:13:48', 91, 5, 1, 1, 1),
(877, 1, '2019-11-18 07:13:48', '2019-11-18 07:13:48', 92, 5, 1, 1, 1),
(878, 1, '2019-11-18 07:13:48', '2019-11-18 07:13:48', 93, 5, 1, 1, 1),
(879, 1, '2019-11-18 07:13:48', '2019-11-18 07:13:48', 94, 5, 1, 1, 1),
(880, 1, '2019-11-18 07:13:48', '2019-11-18 07:13:48', 95, 5, 1, 1, 1),
(881, 1, '2019-11-18 07:13:48', '2019-11-18 07:13:48', 96, 5, 1, 1, 1),
(882, 1, '2019-11-18 07:13:48', '2019-11-18 07:13:48', 97, 5, 1, 1, 1),
(883, 1, '2019-11-18 07:13:48', '2019-11-18 07:13:48', 98, 5, 1, 1, 1),
(884, 1, '2019-11-18 07:13:48', '2019-11-18 07:13:48', 99, 5, 1, 1, 1),
(885, 1, '2019-11-18 07:13:48', '2019-11-18 07:13:48', 100, 5, 1, 1, 1),
(886, 1, '2019-11-18 07:13:48', '2019-11-18 07:13:48', 101, 5, 1, 1, 1),
(887, 1, '2019-11-18 07:13:48', '2019-11-18 07:13:48', 102, 5, 1, 1, 1),
(888, 1, '2019-11-18 07:13:48', '2019-11-18 07:13:48', 103, 5, 1, 1, 1),
(889, 1, '2019-11-18 07:13:48', '2019-11-18 07:13:48', 104, 5, 1, 1, 1),
(890, 1, '2019-11-18 07:13:48', '2019-11-18 07:13:48', 105, 5, 1, 1, 1),
(891, 1, '2019-11-18 07:13:48', '2019-11-18 07:13:48', 106, 5, 1, 1, 1),
(892, 1, '2019-11-18 07:13:48', '2019-11-18 07:13:48', 107, 5, 1, 1, 1),
(893, 1, '2019-11-18 07:13:48', '2019-11-18 07:13:48', 108, 5, 1, 1, 1),
(894, 1, '2019-11-18 07:13:48', '2019-11-18 07:13:48', 109, 5, 1, 1, 1),
(895, 1, '2019-11-18 07:13:48', '2019-11-18 07:13:48', 110, 5, 1, 1, 1),
(896, 1, '2019-11-18 07:13:48', '2019-11-18 07:13:48', 111, 5, 1, 1, 1),
(897, 1, '2019-11-18 07:13:48', '2019-11-18 07:13:48', 112, 5, 1, 1, 1),
(898, 1, '2019-11-18 07:13:48', '2019-11-18 07:13:48', 113, 5, 1, 1, 1),
(899, 1, '2019-11-18 07:13:48', '2019-11-18 07:13:48', 114, 5, 1, 1, 1),
(900, 1, '2019-11-18 07:13:48', '2019-11-18 07:13:48', 115, 5, 1, 1, 1),
(901, 1, '2019-11-18 07:13:48', '2019-11-18 07:13:48', 116, 5, 1, 1, 1),
(902, 1, '2019-11-18 07:13:48', '2019-11-18 07:13:48', 117, 5, 1, 1, 1),
(903, 1, '2019-11-18 07:13:48', '2019-11-18 07:13:48', 118, 5, 1, 1, 1),
(904, 1, '2019-11-18 07:13:48', '2019-11-18 07:13:48', 119, 5, 1, 1, 1),
(905, 1, '2019-11-18 07:13:48', '2019-11-18 07:13:48', 120, 5, 1, 1, 1),
(906, 1, '2019-11-18 07:13:48', '2019-11-18 07:13:48', 121, 5, 1, 1, 1),
(907, 1, '2019-11-18 07:13:48', '2019-11-18 07:13:48', 122, 5, 1, 1, 1),
(908, 1, '2019-11-18 07:13:48', '2019-11-18 07:13:48', 123, 5, 1, 1, 1),
(909, 1, '2019-11-18 07:13:48', '2019-11-18 07:13:48', 124, 5, 1, 1, 1),
(910, 1, '2019-11-18 07:13:48', '2019-11-18 07:13:48', 125, 5, 1, 1, 1),
(911, 1, '2019-11-18 07:13:48', '2019-11-18 07:13:48', 126, 5, 1, 1, 1),
(912, 1, '2019-11-18 07:13:48', '2019-11-18 07:13:48', 127, 5, 1, 1, 1),
(913, 1, '2019-11-18 07:13:48', '2019-11-18 07:13:48', 128, 5, 1, 1, 1),
(914, 1, '2019-11-18 07:13:48', '2019-11-18 07:13:48', 129, 5, 1, 1, 1),
(915, 1, '2019-11-18 07:13:48', '2019-11-18 07:13:48', 130, 5, 1, 1, 1),
(916, 1, '2019-11-18 07:13:48', '2019-11-18 07:13:48', 131, 5, 1, 1, 1),
(917, 1, '2019-11-18 07:13:48', '2019-11-18 07:13:48', 132, 5, 1, 1, 1),
(918, 1, '2019-11-18 07:13:48', '2019-11-18 07:13:48', 133, 5, 1, 1, 1),
(919, 1, '2019-11-18 07:13:48', '2019-11-18 07:13:48', 134, 5, 1, 1, 1),
(920, 1, '2019-11-18 07:13:48', '2019-11-18 07:13:48', 135, 5, 1, 1, 1),
(921, 1, '2019-11-18 07:13:48', '2019-11-18 07:13:48', 136, 5, 1, 1, 1),
(922, 1, '2019-11-18 07:13:48', '2019-11-18 07:13:48', 137, 5, 1, 1, 1),
(923, 1, '2019-11-18 07:13:48', '2019-11-18 07:13:48', 138, 5, 1, 1, 1),
(924, 1, '2019-11-18 07:13:48', '2019-11-18 07:13:48', 139, 5, 1, 1, 1),
(925, 1, '2019-11-18 07:13:49', '2019-11-18 07:13:49', 140, 5, 1, 1, 1),
(926, 1, '2019-11-18 07:13:49', '2019-11-18 07:13:49', 141, 5, 1, 1, 1),
(927, 1, '2019-11-18 07:13:49', '2019-11-18 07:13:49', 142, 5, 1, 1, 1),
(928, 1, '2019-11-18 07:13:49', '2019-11-18 07:13:49', 143, 5, 1, 1, 1),
(929, 1, '2019-11-18 07:13:49', '2019-11-18 07:13:49', 144, 5, 1, 1, 1),
(930, 1, '2019-11-18 07:13:49', '2019-11-18 07:13:49', 145, 5, 1, 1, 1),
(931, 1, '2019-11-18 07:13:49', '2019-11-18 07:13:49', 146, 5, 1, 1, 1),
(932, 1, '2019-11-18 07:13:49', '2019-11-18 07:13:49', 147, 5, 1, 1, 1),
(933, 1, '2019-11-18 07:13:49', '2019-11-18 07:13:49', 148, 5, 1, 1, 1),
(934, 1, '2019-11-18 07:13:49', '2019-11-18 07:13:49', 149, 5, 1, 1, 1),
(935, 1, '2019-11-18 07:13:49', '2019-11-18 07:13:49', 150, 5, 1, 1, 1),
(936, 1, '2019-11-18 07:13:49', '2019-11-18 07:13:49', 151, 5, 1, 1, 1),
(937, 1, '2019-11-18 07:13:49', '2019-11-18 07:13:49', 152, 5, 1, 1, 1),
(938, 1, '2019-11-18 07:13:49', '2019-11-18 07:13:49', 153, 5, 1, 1, 1),
(939, 1, '2019-11-18 07:13:49', '2019-11-18 07:13:49', 154, 5, 1, 1, 1),
(940, 1, '2019-11-18 07:13:49', '2019-11-18 07:13:49', 155, 5, 1, 1, 1),
(941, 1, '2019-11-18 07:13:49', '2019-11-18 07:13:49', 156, 5, 1, 1, 1),
(942, 1, '2019-11-18 07:13:49', '2019-11-18 07:13:49', 157, 5, 1, 1, 1),
(943, 1, '2019-11-18 07:13:49', '2019-11-18 07:13:49', 158, 5, 1, 1, 1),
(944, 1, '2019-11-18 07:13:49', '2019-11-18 07:13:49', 159, 5, 1, 1, 1),
(945, 1, '2019-11-18 07:13:49', '2019-11-18 07:13:49', 160, 5, 1, 1, 1),
(946, 1, '2019-11-18 07:13:49', '2019-11-18 07:13:49', 161, 5, 1, 1, 1),
(947, 1, '2019-11-18 07:13:49', '2019-11-18 07:13:49', 162, 5, 1, 1, 1),
(948, 1, '2019-11-18 07:13:49', '2019-11-18 07:13:49', 163, 5, 1, 1, 1),
(949, 1, '2019-11-18 07:13:49', '2019-11-18 07:13:49', 164, 5, 1, 1, 1),
(950, 1, '2019-11-18 07:13:49', '2019-11-18 07:13:49', 165, 5, 1, 1, 1),
(951, 1, '2019-11-18 07:13:49', '2019-11-18 07:13:49', 166, 5, 1, 1, 1),
(952, 1, '2019-11-18 07:13:49', '2019-11-18 07:13:49', 167, 5, 1, 1, 1),
(953, 1, '2019-11-18 07:13:49', '2019-11-18 07:13:49', 168, 5, 1, 1, 1),
(954, 1, '2019-11-18 07:13:49', '2019-11-18 07:13:49', 169, 5, 1, 1, 1),
(955, 1, '2019-11-18 07:13:49', '2019-11-18 07:13:49', 170, 5, 1, 1, 1),
(956, 1, '2019-11-18 07:13:49', '2019-11-18 07:13:49', 171, 5, 1, 1, 1),
(957, 1, '2019-11-18 07:13:49', '2019-11-18 07:13:49', 172, 5, 1, 1, 1),
(958, 1, '2019-11-18 07:13:49', '2019-11-18 07:13:49', 173, 5, 1, 1, 1),
(959, 1, '2019-11-18 07:13:49', '2019-11-18 07:13:49', 174, 5, 1, 1, 1),
(960, 1, '2019-11-18 07:13:49', '2019-11-18 07:13:49', 175, 5, 1, 1, 1),
(961, 1, '2019-11-18 07:13:49', '2019-11-18 07:13:49', 176, 5, 1, 1, 1),
(962, 1, '2019-11-18 07:13:49', '2019-11-18 07:13:49', 177, 5, 1, 1, 1),
(963, 1, '2019-11-18 07:13:49', '2019-11-18 07:13:49', 178, 5, 1, 1, 1),
(964, 1, '2019-11-18 07:13:49', '2019-11-18 07:13:49', 179, 5, 1, 1, 1),
(965, 1, '2019-11-18 07:13:49', '2019-11-18 07:13:49', 180, 5, 1, 1, 1),
(966, 1, '2019-11-18 07:13:49', '2019-11-18 07:13:49', 181, 5, 1, 1, 1),
(967, 1, '2019-11-18 07:13:49', '2019-11-18 07:13:49', 182, 5, 1, 1, 1),
(968, 1, '2019-11-18 07:13:49', '2019-11-18 07:13:49', 183, 5, 1, 1, 1),
(969, 1, '2019-11-18 07:13:49', '2019-11-18 07:13:49', 184, 5, 1, 1, 1),
(970, 1, '2019-11-18 07:13:49', '2019-11-18 07:13:49', 185, 5, 1, 1, 1),
(971, 1, '2019-11-18 07:13:49', '2019-11-18 07:13:49', 186, 5, 1, 1, 1),
(972, 1, '2019-11-18 07:13:49', '2019-11-18 07:13:49', 187, 5, 1, 1, 1),
(973, 1, '2019-11-18 07:13:49', '2019-11-18 07:13:49', 188, 5, 1, 1, 1),
(974, 1, '2019-11-18 07:13:49', '2019-11-18 07:13:49', 189, 5, 1, 1, 1),
(975, 1, '2019-11-18 07:13:49', '2019-11-18 07:13:49', 190, 5, 1, 1, 1),
(976, 1, '2019-11-18 07:13:49', '2019-11-18 07:13:49', 191, 5, 1, 1, 1),
(977, 1, '2019-11-18 07:13:49', '2019-11-18 07:13:49', 192, 5, 1, 1, 1),
(978, 1, '2019-11-18 07:13:49', '2019-11-18 07:13:49', 193, 5, 1, 1, 1),
(979, 1, '2019-11-18 07:13:49', '2019-11-18 07:13:49', 194, 5, 1, 1, 1),
(980, 1, '2019-11-18 07:13:49', '2019-11-18 07:13:49', 195, 5, 1, 1, 1),
(981, 1, '2019-11-18 07:13:49', '2019-11-18 07:13:49', 196, 5, 1, 1, 1),
(982, 1, '2019-11-18 07:13:49', '2019-11-18 07:13:49', 197, 5, 1, 1, 1),
(983, 1, '2019-11-18 07:13:49', '2019-11-18 07:13:49', 198, 5, 1, 1, 1),
(984, 1, '2019-11-18 07:13:49', '2019-11-18 07:13:49', 199, 5, 1, 1, 1),
(985, 1, '2019-11-18 07:13:49', '2019-11-18 07:13:49', 200, 5, 1, 1, 1),
(986, 1, '2019-11-18 07:13:49', '2019-11-18 07:13:49', 201, 5, 1, 1, 1),
(987, 1, '2019-11-18 07:13:49', '2019-11-18 07:13:49', 202, 5, 1, 1, 1),
(988, 1, '2019-11-18 07:13:49', '2019-11-18 07:13:49', 203, 5, 1, 1, 1),
(989, 1, '2019-11-18 07:13:49', '2019-11-18 07:13:49', 204, 5, 1, 1, 1),
(990, 1, '2019-11-18 07:13:49', '2019-11-18 07:13:49', 205, 5, 1, 1, 1),
(991, 1, '2019-11-18 07:13:49', '2019-11-18 07:13:49', 206, 5, 1, 1, 1),
(992, 1, '2019-11-18 07:13:49', '2019-11-18 07:13:49', 207, 5, 1, 1, 1),
(993, 1, '2019-11-18 07:13:49', '2019-11-18 07:13:49', 208, 5, 1, 1, 1),
(994, 1, '2019-11-18 07:13:49', '2019-11-18 07:13:49', 209, 5, 1, 1, 1),
(995, 1, '2019-11-18 07:13:49', '2019-11-18 07:13:49', 210, 5, 1, 1, 1),
(996, 1, '2019-11-18 07:13:49', '2019-11-18 07:13:49', 211, 5, 1, 1, 1),
(997, 1, '2019-11-18 07:13:49', '2019-11-18 07:13:49', 214, 5, 1, 1, 1),
(998, 1, '2019-11-18 07:13:49', '2019-11-18 07:13:49', 215, 5, 1, 1, 1),
(999, 1, '2019-11-18 07:13:49', '2019-11-18 07:13:49', 216, 5, 1, 1, 1),
(1000, 1, '2019-11-18 07:13:49', '2019-11-18 07:13:49', 217, 5, 1, 1, 1),
(1001, 1, '2019-11-18 07:13:49', '2019-11-18 07:13:49', 218, 5, 1, 1, 1),
(1002, 1, '2019-11-18 07:13:49', '2019-11-18 07:13:49', 219, 5, 1, 1, 1),
(1003, 1, '2019-11-18 07:13:49', '2019-11-18 07:13:49', 220, 5, 1, 1, 1),
(1004, 1, '2019-11-18 07:13:49', '2019-11-18 07:13:49', 221, 5, 1, 1, 1),
(1005, 1, '2019-11-18 07:13:49', '2019-11-18 07:13:49', 222, 5, 1, 1, 1),
(1006, 1, '2019-11-18 07:13:49', '2019-11-18 07:13:49', 223, 5, 1, 1, 1),
(1007, 1, '2019-11-18 07:13:49', '2019-11-18 07:13:49', 224, 5, 1, 1, 1),
(1008, 1, '2019-11-18 07:13:49', '2019-11-18 07:13:49', 225, 5, 1, 1, 1),
(1009, 1, '2019-11-18 07:13:49', '2019-11-18 07:13:49', 226, 5, 1, 1, 1),
(1010, 1, '2019-11-18 07:13:49', '2019-11-18 07:13:49', 227, 5, 1, 1, 1),
(1011, 1, '2019-11-18 07:13:49', '2019-11-18 07:13:49', 228, 5, 1, 1, 1),
(1012, 1, '2019-11-18 07:13:49', '2019-11-18 07:13:49', 229, 5, 1, 1, 1),
(1013, 1, '2019-11-18 07:13:49', '2019-11-18 07:13:49', 230, 5, 1, 1, 1),
(1014, 1, '2019-11-18 07:13:49', '2019-11-18 07:13:49', 231, 5, 1, 1, 1),
(1015, 1, '2019-11-18 07:13:49', '2019-11-18 07:13:49', 232, 5, 1, 1, 1),
(1016, 1, '2019-11-18 07:13:49', '2019-11-18 07:13:49', 233, 5, 1, 1, 1),
(1017, 1, '2019-11-18 07:13:49', '2019-11-18 07:13:49', 234, 5, 1, 1, 1),
(1018, 1, '2019-11-18 07:13:49', '2019-11-18 07:13:49', 235, 5, 1, 1, 1),
(1019, 1, '2019-11-18 07:13:49', '2019-11-18 07:13:49', 236, 5, 1, 1, 1),
(1020, 1, '2019-11-18 07:13:49', '2019-11-18 07:13:49', 237, 5, 1, 1, 1),
(1021, 1, '2019-11-18 07:13:49', '2019-11-18 07:13:49', 238, 5, 1, 1, 1),
(1022, 1, '2019-11-18 07:13:49', '2019-11-18 07:13:49', 239, 5, 1, 1, 1),
(1023, 1, '2019-11-18 07:13:49', '2019-11-18 07:13:49', 240, 5, 1, 1, 1),
(1024, 1, '2019-11-18 07:13:49', '2019-11-18 07:13:49', 241, 5, 1, 1, 1),
(1025, 1, '2019-11-18 07:13:49', '2019-11-18 07:13:49', 242, 5, 1, 1, 1),
(1026, 1, '2019-11-18 07:13:49', '2019-11-18 07:13:49', 243, 5, 1, 1, 1),
(1027, 1, '2019-11-18 07:13:49', '2019-11-18 07:13:49', 244, 5, 1, 1, 1),
(1028, 1, '2019-11-18 07:13:49', '2019-11-18 07:13:49', 245, 5, 1, 1, 1),
(1029, 1, '2019-11-18 07:13:49', '2019-11-18 07:13:49', 246, 5, 1, 1, 1),
(1030, 1, '2019-11-18 07:13:49', '2019-11-18 07:13:49', 247, 5, 1, 1, 1),
(1031, 1, '2019-11-18 07:13:49', '2019-11-18 07:13:49', 248, 5, 1, 1, 1),
(1032, 1, '2019-11-18 07:13:49', '2019-11-18 07:13:49', 249, 5, 1, 1, 1),
(1033, 1, '2019-11-18 07:13:49', '2019-11-18 07:13:49', 250, 5, 1, 1, 1),
(1034, 1, '2019-11-18 07:13:49', '2019-11-18 07:13:49', 251, 5, 1, 1, 1),
(1035, 1, '2019-11-18 07:13:49', '2019-11-18 07:13:49', 252, 5, 1, 1, 1),
(1036, 1, '2019-11-18 07:13:49', '2019-11-18 07:13:49', 253, 5, 1, 1, 1),
(1037, 1, '2019-11-18 07:13:49', '2019-11-18 07:13:49', 254, 5, 1, 1, 1),
(1038, 1, '2019-11-18 07:13:49', '2019-11-18 07:13:49', 255, 5, 1, 1, 1),
(1039, 1, '2019-11-18 07:13:49', '2019-11-18 07:13:49', 256, 5, 1, 1, 1),
(1040, 1, '2019-11-18 07:13:49', '2019-11-18 07:13:49', 257, 5, 1, 1, 1),
(1041, 1, '2019-11-18 07:13:49', '2019-11-18 07:13:49', 258, 5, 1, 1, 1),
(1042, 1, '2019-11-18 07:13:49', '2019-11-18 07:13:49', 259, 5, 1, 1, 1),
(1043, 1, '2019-11-18 07:13:49', '2019-11-18 07:13:49', 260, 5, 1, 1, 1),
(1044, 1, '2019-11-18 07:13:49', '2019-11-18 07:13:49', 261, 5, 1, 1, 1),
(1045, 1, '2019-11-18 07:13:49', '2019-11-18 07:13:49', 262, 5, 1, 1, 1),
(1046, 1, '2019-11-18 07:13:49', '2019-11-18 07:13:49', 263, 5, 1, 1, 1),
(1047, 1, '2019-11-18 07:13:49', '2019-11-18 07:13:49', 264, 5, 1, 1, 1),
(1048, 1, '2019-11-18 07:13:49', '2019-11-18 07:13:49', 265, 5, 1, 1, 1),
(1049, 1, '2019-11-18 07:13:49', '2019-11-18 07:13:49', 266, 5, 1, 1, 1),
(1050, 1, '2019-11-18 07:13:49', '2019-11-18 07:13:49', 267, 5, 1, 1, 1),
(1051, 1, '2019-11-18 07:13:49', '2019-11-18 07:13:49', 268, 5, 1, 1, 1),
(1052, 1, '2019-11-18 07:13:49', '2019-11-18 07:13:49', 269, 5, 1, 1, 1),
(1053, 1, '2019-11-18 07:13:49', '2019-11-18 07:13:49', 270, 5, 1, 1, 1),
(1054, 1, '2019-11-18 07:13:49', '2019-11-18 07:13:49', 271, 5, 1, 1, 1),
(1055, 1, '2019-11-18 07:13:49', '2019-11-18 07:13:49', 272, 5, 1, 1, 1),
(1056, 1, '2019-11-18 07:13:49', '2019-11-18 07:13:49', 273, 5, 1, 1, 1),
(1057, 1, '2019-11-18 07:13:49', '2019-11-18 07:13:49', 274, 5, 1, 1, 1),
(1058, 1, '2019-11-18 07:13:49', '2019-11-18 07:13:49', 275, 5, 1, 1, 1),
(1059, 1, '2019-11-18 07:13:49', '2019-11-18 07:13:49', 276, 5, 1, 1, 1),
(1060, 1, '2019-11-18 07:13:49', '2019-11-18 07:13:49', 277, 5, 1, 1, 1),
(1061, 1, '2019-11-18 07:13:49', '2019-11-18 07:13:49', 278, 5, 1, 1, 1),
(1062, 1, '2019-11-18 07:13:49', '2019-11-18 07:13:49', 279, 5, 1, 1, 1),
(1063, 1, '2019-11-18 07:13:49', '2019-11-18 07:13:49', 280, 5, 1, 1, 1),
(1064, 1, '2019-11-18 07:13:49', '2019-11-18 07:13:49', 281, 5, 1, 1, 1),
(1065, 1, '2019-11-18 07:13:49', '2019-11-18 07:13:49', 282, 5, 1, 1, 1),
(1066, 1, '2019-11-18 07:13:49', '2019-11-18 07:13:49', 283, 5, 1, 1, 1),
(1067, 1, '2019-11-18 07:13:49', '2019-11-18 07:13:49', 284, 5, 1, 1, 1),
(1068, 1, '2019-11-18 07:13:49', '2019-11-18 07:13:49', 285, 5, 1, 1, 1),
(1069, 1, '2019-11-18 07:13:49', '2019-11-18 07:13:49', 286, 5, 1, 1, 1),
(1070, 1, '2019-11-18 07:13:49', '2019-11-18 07:13:49', 287, 5, 1, 1, 1),
(1071, 1, '2019-11-18 07:13:49', '2019-11-18 07:13:49', 288, 5, 1, 1, 1),
(1072, 1, '2019-11-18 07:13:49', '2019-11-18 07:13:49', 289, 5, 1, 1, 1),
(1073, 1, '2019-11-18 07:13:49', '2019-11-18 07:13:49', 290, 5, 1, 1, 1),
(1074, 1, '2019-11-18 07:13:49', '2019-11-18 07:13:49', 291, 5, 1, 1, 1),
(1075, 1, '2019-11-18 07:13:49', '2019-11-18 07:13:49', 292, 5, 1, 1, 1),
(1076, 1, '2019-11-18 07:13:49', '2019-11-18 07:13:49', 293, 5, 1, 1, 1),
(1077, 1, '2019-11-18 07:13:49', '2019-11-18 07:13:49', 294, 5, 1, 1, 1),
(1078, 1, '2019-11-18 07:13:49', '2019-11-18 07:13:49', 295, 5, 1, 1, 1),
(1079, 1, '2019-11-18 07:13:49', '2019-11-18 07:13:49', 296, 5, 1, 1, 1),
(1080, 1, '2019-11-18 07:13:49', '2019-11-18 07:13:49', 297, 5, 1, 1, 1),
(1081, 1, '2019-11-18 07:13:49', '2019-11-18 07:13:49', 298, 5, 1, 1, 1),
(1082, 1, '2019-11-18 07:13:49', '2019-11-18 07:13:49', 299, 5, 1, 1, 1),
(1083, 1, '2019-11-18 07:13:49', '2019-11-18 07:13:49', 300, 5, 1, 1, 1),
(1084, 1, '2019-11-18 07:13:49', '2019-11-18 07:13:49', 301, 5, 1, 1, 1),
(1085, 1, '2019-11-18 07:13:49', '2019-11-18 07:13:49', 302, 5, 1, 1, 1),
(1086, 1, '2019-11-18 07:13:49', '2019-11-18 07:13:49', 303, 5, 1, 1, 1),
(1087, 1, '2019-11-18 07:13:49', '2019-11-18 07:13:49', 304, 5, 1, 1, 1),
(1088, 1, '2019-11-18 07:13:49', '2019-11-18 07:13:49', 305, 5, 1, 1, 1),
(1089, 1, '2019-11-18 07:13:49', '2019-11-18 07:13:49', 306, 5, 1, 1, 1),
(1090, 1, '2019-11-18 07:13:49', '2019-11-18 07:13:49', 307, 5, 1, 1, 1),
(1091, 1, '2019-11-18 07:13:49', '2019-11-18 07:13:49', 308, 5, 1, 1, 1),
(1092, 1, '2019-11-18 07:13:49', '2019-11-18 07:13:49', 309, 5, 1, 1, 1),
(1093, 1, '2019-11-18 07:13:49', '2019-11-18 07:13:49', 310, 5, 1, 1, 1),
(1094, 1, '2019-11-18 07:13:49', '2019-11-18 07:13:49', 311, 5, 1, 1, 1),
(1095, 1, '2019-11-18 07:13:49', '2019-11-18 07:13:49', 312, 5, 1, 1, 1),
(1096, 1, '2019-11-18 07:13:49', '2019-11-18 07:13:49', 313, 5, 1, 1, 1),
(1097, 1, '2019-11-18 07:13:49', '2019-11-18 07:13:49', 314, 5, 1, 1, 1),
(1098, 1, '2019-11-18 07:13:49', '2019-11-18 07:13:49', 315, 5, 1, 1, 1);
INSERT INTO `sm_role_permissions` (`id`, `active_status`, `created_at`, `updated_at`, `module_link_id`, `role_id`, `created_by`, `updated_by`, `school_id`) VALUES
(1099, 1, '2019-11-18 07:13:49', '2019-11-18 07:13:49', 316, 5, 1, 1, 1),
(1100, 1, '2019-11-18 07:13:49', '2019-11-18 07:13:49', 317, 5, 1, 1, 1),
(1101, 1, '2019-11-18 07:13:49', '2019-11-18 07:13:49', 318, 5, 1, 1, 1),
(1102, 1, '2019-11-18 07:13:49', '2019-11-18 07:13:49', 319, 5, 1, 1, 1),
(1103, 1, '2019-11-18 07:13:49', '2019-11-18 07:13:49', 320, 5, 1, 1, 1),
(1104, 1, '2019-11-18 07:13:49', '2019-11-18 07:13:49', 321, 5, 1, 1, 1),
(1105, 1, '2019-11-18 07:13:49', '2019-11-18 07:13:49', 322, 5, 1, 1, 1),
(1106, 1, '2019-11-18 07:13:49', '2019-11-18 07:13:49', 323, 5, 1, 1, 1),
(1107, 1, '2019-11-18 07:13:49', '2019-11-18 07:13:49', 324, 5, 1, 1, 1),
(1108, 1, '2019-11-18 07:13:49', '2019-11-18 07:13:49', 325, 5, 1, 1, 1),
(1109, 1, '2019-11-18 07:13:49', '2019-11-18 07:13:49', 326, 5, 1, 1, 1),
(1110, 1, '2019-11-18 07:13:49', '2019-11-18 07:13:49', 327, 5, 1, 1, 1),
(1111, 1, '2019-11-18 07:13:49', '2019-11-18 07:13:49', 328, 5, 1, 1, 1),
(1112, 1, '2019-11-18 07:13:49', '2019-11-18 07:13:49', 329, 5, 1, 1, 1),
(1113, 1, '2019-11-18 07:13:49', '2019-11-18 07:13:49', 330, 5, 1, 1, 1),
(1114, 1, '2019-11-18 07:13:49', '2019-11-18 07:13:49', 331, 5, 1, 1, 1),
(1115, 1, '2019-11-18 07:13:49', '2019-11-18 07:13:49', 332, 5, 1, 1, 1),
(1116, 1, '2019-11-18 07:13:49', '2019-11-18 07:13:49', 333, 5, 1, 1, 1),
(1117, 1, '2019-11-18 07:13:49', '2019-11-18 07:13:49', 334, 5, 1, 1, 1),
(1118, 1, '2019-11-18 07:13:49', '2019-11-18 07:13:49', 335, 5, 1, 1, 1),
(1119, 1, '2019-11-18 07:13:49', '2019-11-18 07:13:49', 336, 5, 1, 1, 1),
(1120, 1, '2019-11-18 07:13:49', '2019-11-18 07:13:49', 337, 5, 1, 1, 1),
(1121, 1, '2019-11-18 07:13:49', '2019-11-18 07:13:49', 338, 5, 1, 1, 1),
(1122, 1, '2019-11-18 07:13:49', '2019-11-18 07:13:49', 339, 5, 1, 1, 1),
(1123, 1, '2019-11-18 07:13:49', '2019-11-18 07:13:49', 340, 5, 1, 1, 1),
(1124, 1, '2019-11-18 07:13:49', '2019-11-18 07:13:49', 341, 5, 1, 1, 1),
(1125, 1, '2019-11-18 07:13:49', '2019-11-18 07:13:49', 342, 5, 1, 1, 1),
(1126, 1, '2019-11-18 07:13:49', '2019-11-18 07:13:49', 343, 5, 1, 1, 1),
(1127, 1, '2019-11-18 07:13:49', '2019-11-18 07:13:49', 344, 5, 1, 1, 1),
(1128, 1, '2019-11-18 07:13:49', '2019-11-18 07:13:49', 345, 5, 1, 1, 1),
(1129, 1, '2019-11-18 07:13:49', '2019-11-18 07:13:49', 346, 5, 1, 1, 1),
(1130, 1, '2019-11-18 07:13:49', '2019-11-18 07:13:49', 347, 5, 1, 1, 1),
(1131, 1, '2019-11-18 07:13:49', '2019-11-18 07:13:49', 348, 5, 1, 1, 1),
(1132, 1, '2019-11-18 07:13:49', '2019-11-18 07:13:49', 349, 5, 1, 1, 1),
(1133, 1, '2019-11-18 07:13:49', '2019-11-18 07:13:49', 350, 5, 1, 1, 1),
(1134, 1, '2019-11-18 07:13:49', '2019-11-18 07:13:49', 351, 5, 1, 1, 1),
(1135, 1, '2019-11-18 07:13:49', '2019-11-18 07:13:49', 352, 5, 1, 1, 1),
(1136, 1, '2019-11-18 07:13:49', '2019-11-18 07:13:49', 353, 5, 1, 1, 1),
(1137, 1, '2019-11-18 07:13:49', '2019-11-18 07:13:49', 354, 5, 1, 1, 1),
(1138, 1, '2019-11-18 07:13:49', '2019-11-18 07:13:49', 355, 5, 1, 1, 1),
(1139, 1, '2019-11-18 07:13:49', '2019-11-18 07:13:49', 356, 5, 1, 1, 1),
(1140, 1, '2019-11-18 07:13:49', '2019-11-18 07:13:49', 357, 5, 1, 1, 1),
(1141, 1, '2019-11-18 07:13:49', '2019-11-18 07:13:49', 358, 5, 1, 1, 1),
(1142, 1, '2019-11-18 07:13:49', '2019-11-18 07:13:49', 359, 5, 1, 1, 1),
(1143, 1, '2019-11-18 07:13:49', '2019-11-18 07:13:49', 360, 5, 1, 1, 1),
(1144, 1, '2019-11-18 07:13:49', '2019-11-18 07:13:49', 361, 5, 1, 1, 1),
(1145, 1, '2019-11-18 07:13:49', '2019-11-18 07:13:49', 362, 5, 1, 1, 1),
(1146, 1, '2019-11-18 07:13:49', '2019-11-18 07:13:49', 363, 5, 1, 1, 1),
(1147, 1, '2019-11-18 07:13:49', '2019-11-18 07:13:49', 364, 5, 1, 1, 1),
(1148, 1, '2019-11-18 07:13:49', '2019-11-18 07:13:49', 365, 5, 1, 1, 1),
(1149, 1, '2019-11-18 07:13:49', '2019-11-18 07:13:49', 366, 5, 1, 1, 1),
(1150, 1, '2019-11-18 07:13:49', '2019-11-18 07:13:49', 367, 5, 1, 1, 1),
(1151, 1, '2019-11-18 07:13:49', '2019-11-18 07:13:49', 368, 5, 1, 1, 1),
(1152, 1, '2019-11-18 07:13:49', '2019-11-18 07:13:49', 369, 5, 1, 1, 1),
(1153, 1, '2019-11-18 07:13:49', '2019-11-18 07:13:49', 370, 5, 1, 1, 1),
(1154, 1, '2019-11-18 07:13:49', '2019-11-18 07:13:49', 371, 5, 1, 1, 1),
(1155, 1, '2019-11-18 07:13:49', '2019-11-18 07:13:49', 372, 5, 1, 1, 1),
(1156, 1, '2019-11-18 07:13:49', '2019-11-18 07:13:49', 373, 5, 1, 1, 1),
(1157, 1, '2019-11-18 07:13:49', '2019-11-18 07:13:49', 374, 5, 1, 1, 1),
(1158, 1, '2019-11-18 07:13:49', '2019-11-18 07:13:49', 375, 5, 1, 1, 1),
(1159, 1, '2019-11-18 07:13:49', '2019-11-18 07:13:49', 376, 5, 1, 1, 1),
(1160, 1, '2019-11-18 07:13:49', '2019-11-18 07:13:49', 377, 5, 1, 1, 1),
(1161, 1, '2019-11-18 07:13:49', '2019-11-18 07:13:49', 378, 5, 1, 1, 1),
(1162, 1, '2019-11-18 07:13:49', '2019-11-18 07:13:49', 379, 5, 1, 1, 1),
(1163, 1, '2019-11-18 07:13:49', '2019-11-18 07:13:49', 380, 5, 1, 1, 1),
(1164, 1, '2019-11-18 07:13:49', '2019-11-18 07:13:49', 381, 5, 1, 1, 1),
(1165, 1, '2019-11-18 07:13:49', '2019-11-18 07:13:49', 382, 5, 1, 1, 1),
(1166, 1, '2019-11-18 07:13:49', '2019-11-18 07:13:49', 383, 5, 1, 1, 1),
(1167, 1, '2019-11-18 07:13:49', '2019-11-18 07:13:49', 384, 5, 1, 1, 1),
(1168, 1, '2019-11-18 07:13:49', '2019-11-18 07:13:49', 385, 5, 1, 1, 1),
(1169, 1, '2019-11-18 07:13:49', '2019-11-18 07:13:49', 386, 5, 1, 1, 1),
(1170, 1, '2019-11-18 07:13:49', '2019-11-18 07:13:49', 387, 5, 1, 1, 1),
(1171, 1, '2019-11-18 07:13:49', '2019-11-18 07:13:49', 388, 5, 1, 1, 1),
(1172, 1, '2019-11-18 07:13:49', '2019-11-18 07:13:49', 389, 5, 1, 1, 1),
(1173, 1, '2019-11-18 07:13:49', '2019-11-18 07:13:49', 390, 5, 1, 1, 1),
(1174, 1, '2019-11-18 07:13:49', '2019-11-18 07:13:49', 391, 5, 1, 1, 1),
(1175, 1, '2019-11-18 07:13:49', '2019-11-18 07:13:49', 392, 5, 1, 1, 1),
(1176, 1, '2019-11-18 07:13:49', '2019-11-18 07:13:49', 393, 5, 1, 1, 1),
(1177, 1, '2019-11-18 07:13:49', '2019-11-18 07:13:49', 394, 5, 1, 1, 1),
(1178, 1, '2019-11-18 07:13:49', '2019-11-18 07:13:49', 395, 5, 1, 1, 1),
(1179, 1, '2019-11-18 07:13:49', '2019-11-18 07:13:49', 396, 5, 1, 1, 1),
(7213, 1, '2019-12-03 10:27:28', '2019-12-03 10:27:28', 1, 4, 1, 1, 1),
(7214, 1, '2019-12-03 10:27:28', '2019-12-03 10:27:28', 2, 4, 1, 1, 1),
(7215, 1, '2019-12-03 10:27:28', '2019-12-03 10:27:28', 3, 4, 1, 1, 1),
(7216, 1, '2019-12-03 10:27:28', '2019-12-03 10:27:28', 4, 4, 1, 1, 1),
(7217, 1, '2019-12-03 10:27:28', '2019-12-03 10:27:28', 5, 4, 1, 1, 1),
(7218, 1, '2019-12-03 10:27:28', '2019-12-03 10:27:28', 6, 4, 1, 1, 1),
(7219, 1, '2019-12-03 10:27:28', '2019-12-03 10:27:28', 7, 4, 1, 1, 1),
(7220, 1, '2019-12-03 10:27:28', '2019-12-03 10:27:28', 8, 4, 1, 1, 1),
(7221, 1, '2019-12-03 10:27:28', '2019-12-03 10:27:28', 9, 4, 1, 1, 1),
(7222, 1, '2019-12-03 10:27:28', '2019-12-03 10:27:28', 10, 4, 1, 1, 1),
(7223, 1, '2019-12-03 10:27:28', '2019-12-03 10:27:28', 61, 4, 1, 1, 1),
(7224, 1, '2019-12-03 10:27:28', '2019-12-03 10:27:28', 62, 4, 1, 1, 1),
(7225, 1, '2019-12-03 10:27:28', '2019-12-03 10:27:28', 63, 4, 1, 1, 1),
(7226, 1, '2019-12-03 10:27:28', '2019-12-03 10:27:28', 64, 4, 1, 1, 1),
(7227, 1, '2019-12-03 10:27:28', '2019-12-03 10:27:28', 65, 4, 1, 1, 1),
(7228, 1, '2019-12-03 10:27:28', '2019-12-03 10:27:28', 66, 4, 1, 1, 1),
(7229, 1, '2019-12-03 10:27:28', '2019-12-03 10:27:28', 67, 4, 1, 1, 1),
(7230, 1, '2019-12-03 10:27:28', '2019-12-03 10:27:28', 68, 4, 1, 1, 1),
(7231, 1, '2019-12-03 10:27:28', '2019-12-03 10:27:28', 69, 4, 1, 1, 1),
(7232, 1, '2019-12-03 10:27:28', '2019-12-03 10:27:28', 70, 4, 1, 1, 1),
(7233, 1, '2019-12-03 10:27:28', '2019-12-03 10:27:28', 71, 4, 1, 1, 1),
(7234, 1, '2019-12-03 10:27:28', '2019-12-03 10:27:28', 72, 4, 1, 1, 1),
(7235, 1, '2019-12-03 10:27:28', '2019-12-03 10:27:28', 73, 4, 1, 1, 1),
(7236, 1, '2019-12-03 10:27:28', '2019-12-03 10:27:28', 74, 4, 1, 1, 1),
(7237, 1, '2019-12-03 10:27:28', '2019-12-03 10:27:28', 75, 4, 1, 1, 1),
(7238, 1, '2019-12-03 10:27:28', '2019-12-03 10:27:28', 76, 4, 1, 1, 1),
(7239, 1, '2019-12-03 10:27:28', '2019-12-03 10:27:28', 77, 4, 1, 1, 1),
(7240, 1, '2019-12-03 10:27:28', '2019-12-03 10:27:28', 79, 4, 1, 1, 1),
(7241, 1, '2019-12-03 10:27:28', '2019-12-03 10:27:28', 80, 4, 1, 1, 1),
(7242, 1, '2019-12-03 10:27:28', '2019-12-03 10:27:28', 81, 4, 1, 1, 1),
(7243, 1, '2019-12-03 10:27:28', '2019-12-03 10:27:28', 82, 4, 1, 1, 1),
(7244, 1, '2019-12-03 10:27:28', '2019-12-03 10:27:28', 83, 4, 1, 1, 1),
(7245, 1, '2019-12-03 10:27:28', '2019-12-03 10:27:28', 84, 4, 1, 1, 1),
(7246, 1, '2019-12-03 10:27:28', '2019-12-03 10:27:28', 85, 4, 1, 1, 1),
(7247, 1, '2019-12-03 10:27:28', '2019-12-03 10:27:28', 86, 4, 1, 1, 1),
(7248, 1, '2019-12-03 10:27:28', '2019-12-03 10:27:28', 87, 4, 1, 1, 1),
(7249, 1, '2019-12-03 10:27:28', '2019-12-03 10:27:28', 88, 4, 1, 1, 1),
(7250, 1, '2019-12-03 10:27:28', '2019-12-03 10:27:28', 89, 4, 1, 1, 1),
(7251, 1, '2019-12-03 10:27:28', '2019-12-03 10:27:28', 90, 4, 1, 1, 1),
(7252, 1, '2019-12-03 10:27:28', '2019-12-03 10:27:28', 91, 4, 1, 1, 1),
(7253, 1, '2019-12-03 10:27:28', '2019-12-03 10:27:28', 92, 4, 1, 1, 1),
(7254, 1, '2019-12-03 10:27:28', '2019-12-03 10:27:28', 93, 4, 1, 1, 1),
(7255, 1, '2019-12-03 10:27:28', '2019-12-03 10:27:28', 94, 4, 1, 1, 1),
(7256, 1, '2019-12-03 10:27:28', '2019-12-03 10:27:28', 95, 4, 1, 1, 1),
(7257, 1, '2019-12-03 10:27:28', '2019-12-03 10:27:28', 96, 4, 1, 1, 1),
(7258, 1, '2019-12-03 10:27:28', '2019-12-03 10:27:28', 97, 4, 1, 1, 1),
(7259, 1, '2019-12-03 10:27:28', '2019-12-03 10:27:28', 98, 4, 1, 1, 1),
(7260, 1, '2019-12-03 10:27:28', '2019-12-03 10:27:28', 99, 4, 1, 1, 1),
(7261, 1, '2019-12-03 10:27:28', '2019-12-03 10:27:28', 100, 4, 1, 1, 1),
(7262, 1, '2019-12-03 10:27:28', '2019-12-03 10:27:28', 101, 4, 1, 1, 1),
(7263, 1, '2019-12-03 10:27:28', '2019-12-03 10:27:28', 102, 4, 1, 1, 1),
(7264, 1, '2019-12-03 10:27:28', '2019-12-03 10:27:28', 103, 4, 1, 1, 1),
(7265, 1, '2019-12-03 10:27:28', '2019-12-03 10:27:28', 104, 4, 1, 1, 1),
(7266, 1, '2019-12-03 10:27:28', '2019-12-03 10:27:28', 105, 4, 1, 1, 1),
(7267, 1, '2019-12-03 10:27:28', '2019-12-03 10:27:28', 106, 4, 1, 1, 1),
(7268, 1, '2019-12-03 10:27:28', '2019-12-03 10:27:28', 107, 4, 1, 1, 1),
(7269, 1, '2019-12-03 10:27:28', '2019-12-03 10:27:28', 188, 4, 1, 1, 1),
(7270, 1, '2019-12-03 10:27:28', '2019-12-03 10:27:28', 193, 4, 1, 1, 1),
(7271, 1, '2019-12-03 10:27:28', '2019-12-03 10:27:28', 194, 4, 1, 1, 1),
(7272, 1, '2019-12-03 10:27:29', '2019-12-03 10:27:29', 195, 4, 1, 1, 1),
(7273, 1, '2019-12-03 10:27:29', '2019-12-03 10:27:29', 196, 4, 1, 1, 1),
(7274, 1, '2019-12-03 10:27:29', '2019-12-03 10:27:29', 197, 4, 1, 1, 1),
(7275, 1, '2019-12-03 10:27:29', '2019-12-03 10:27:29', 198, 4, 1, 1, 1),
(7276, 1, '2019-12-03 10:27:29', '2019-12-03 10:27:29', 207, 4, 1, 1, 1),
(7277, 1, '2019-12-03 10:27:29', '2019-12-03 10:27:29', 208, 4, 1, 1, 1),
(7278, 1, '2019-12-03 10:27:29', '2019-12-03 10:27:29', 209, 4, 1, 1, 1),
(7279, 1, '2019-12-03 10:27:29', '2019-12-03 10:27:29', 210, 4, 1, 1, 1),
(7280, 1, '2019-12-03 10:27:29', '2019-12-03 10:27:29', 211, 4, 1, 1, 1),
(7281, 1, '2019-12-03 10:27:29', '2019-12-03 10:27:29', 214, 4, 1, 1, 1),
(7282, 1, '2019-12-03 10:27:29', '2019-12-03 10:27:29', 215, 4, 1, 1, 1),
(7283, 1, '2019-12-03 10:27:29', '2019-12-03 10:27:29', 216, 4, 1, 1, 1),
(7284, 1, '2019-12-03 10:27:29', '2019-12-03 10:27:29', 217, 4, 1, 1, 1),
(7285, 1, '2019-12-03 10:27:29', '2019-12-03 10:27:29', 218, 4, 1, 1, 1),
(7286, 1, '2019-12-03 10:27:29', '2019-12-03 10:27:29', 219, 4, 1, 1, 1),
(7287, 1, '2019-12-03 10:27:29', '2019-12-03 10:27:29', 220, 4, 1, 1, 1),
(7288, 1, '2019-12-03 10:27:29', '2019-12-03 10:27:29', 221, 4, 1, 1, 1),
(7289, 1, '2019-12-03 10:27:29', '2019-12-03 10:27:29', 222, 4, 1, 1, 1),
(7290, 1, '2019-12-03 10:27:29', '2019-12-03 10:27:29', 223, 4, 1, 1, 1),
(7291, 1, '2019-12-03 10:27:29', '2019-12-03 10:27:29', 224, 4, 1, 1, 1),
(7292, 1, '2019-12-03 10:27:29', '2019-12-03 10:27:29', 225, 4, 1, 1, 1),
(7293, 1, '2019-12-03 10:27:29', '2019-12-03 10:27:29', 226, 4, 1, 1, 1),
(7294, 1, '2019-12-03 10:27:29', '2019-12-03 10:27:29', 227, 4, 1, 1, 1),
(7295, 1, '2019-12-03 10:27:29', '2019-12-03 10:27:29', 228, 4, 1, 1, 1),
(7296, 1, '2019-12-03 10:27:29', '2019-12-03 10:27:29', 229, 4, 1, 1, 1),
(7297, 1, '2019-12-03 10:27:29', '2019-12-03 10:27:29', 230, 4, 1, 1, 1),
(7298, 1, '2019-12-03 10:27:29', '2019-12-03 10:27:29', 231, 4, 1, 1, 1),
(7299, 1, '2019-12-03 10:27:29', '2019-12-03 10:27:29', 232, 4, 1, 1, 1),
(7300, 1, '2019-12-03 10:27:29', '2019-12-03 10:27:29', 233, 4, 1, 1, 1),
(7301, 1, '2019-12-03 10:27:29', '2019-12-03 10:27:29', 234, 4, 1, 1, 1),
(7302, 1, '2019-12-03 10:27:29', '2019-12-03 10:27:29', 235, 4, 1, 1, 1),
(7303, 1, '2019-12-03 10:27:29', '2019-12-03 10:27:29', 236, 4, 1, 1, 1),
(7304, 1, '2019-12-03 10:27:29', '2019-12-03 10:27:29', 237, 4, 1, 1, 1),
(7305, 1, '2019-12-03 10:27:29', '2019-12-03 10:27:29', 238, 4, 1, 1, 1),
(7306, 1, '2019-12-03 10:27:29', '2019-12-03 10:27:29', 239, 4, 1, 1, 1),
(7307, 1, '2019-12-03 10:27:29', '2019-12-03 10:27:29', 240, 4, 1, 1, 1),
(7308, 1, '2019-12-03 10:27:29', '2019-12-03 10:27:29', 241, 4, 1, 1, 1),
(7309, 1, '2019-12-03 10:27:29', '2019-12-03 10:27:29', 242, 4, 1, 1, 1),
(7310, 1, '2019-12-03 10:27:29', '2019-12-03 10:27:29', 243, 4, 1, 1, 1),
(7311, 1, '2019-12-03 10:27:29', '2019-12-03 10:27:29', 244, 4, 1, 1, 1),
(7312, 1, '2019-12-03 10:27:29', '2019-12-03 10:27:29', 245, 4, 1, 1, 1),
(7313, 1, '2019-12-03 10:27:29', '2019-12-03 10:27:29', 246, 4, 1, 1, 1),
(7314, 1, '2019-12-03 10:27:29', '2019-12-03 10:27:29', 247, 4, 1, 1, 1),
(7315, 1, '2019-12-03 10:27:29', '2019-12-03 10:27:29', 248, 4, 1, 1, 1),
(7316, 1, '2019-12-03 10:27:29', '2019-12-03 10:27:29', 249, 4, 1, 1, 1),
(7317, 1, '2019-12-03 10:27:29', '2019-12-03 10:27:29', 250, 4, 1, 1, 1),
(7318, 1, '2019-12-03 10:27:29', '2019-12-03 10:27:29', 251, 4, 1, 1, 1),
(7319, 1, '2019-12-03 10:27:29', '2019-12-03 10:27:29', 252, 4, 1, 1, 1),
(7320, 1, '2019-12-03 10:27:29', '2019-12-03 10:27:29', 253, 4, 1, 1, 1),
(7321, 1, '2019-12-03 10:27:29', '2019-12-03 10:27:29', 254, 4, 1, 1, 1),
(7322, 1, '2019-12-03 10:27:29', '2019-12-03 10:27:29', 255, 4, 1, 1, 1),
(7323, 1, '2019-12-03 10:27:29', '2019-12-03 10:27:29', 256, 4, 1, 1, 1),
(7324, 1, '2019-12-03 10:27:29', '2019-12-03 10:27:29', 257, 4, 1, 1, 1),
(7325, 1, '2019-12-03 10:27:29', '2019-12-03 10:27:29', 258, 4, 1, 1, 1),
(7326, 1, '2019-12-03 10:27:29', '2019-12-03 10:27:29', 259, 4, 1, 1, 1),
(7327, 1, '2019-12-03 10:27:29', '2019-12-03 10:27:29', 260, 4, 1, 1, 1),
(7328, 1, '2019-12-03 10:27:29', '2019-12-03 10:27:29', 261, 4, 1, 1, 1),
(7329, 1, '2019-12-03 10:27:29', '2019-12-03 10:27:29', 262, 4, 1, 1, 1),
(7330, 1, '2019-12-03 10:27:29', '2019-12-03 10:27:29', 263, 4, 1, 1, 1),
(7331, 1, '2019-12-03 10:27:29', '2019-12-03 10:27:29', 264, 4, 1, 1, 1),
(7332, 1, '2019-12-03 10:27:29', '2019-12-03 10:27:29', 265, 4, 1, 1, 1),
(7333, 1, '2019-12-03 10:27:29', '2019-12-03 10:27:29', 266, 4, 1, 1, 1),
(7334, 1, '2019-12-03 10:27:29', '2019-12-03 10:27:29', 267, 4, 1, 1, 1),
(7335, 1, '2019-12-03 10:27:29', '2019-12-03 10:27:29', 268, 4, 1, 1, 1),
(7336, 1, '2019-12-03 10:27:29', '2019-12-03 10:27:29', 269, 4, 1, 1, 1),
(7337, 1, '2019-12-03 10:27:29', '2019-12-03 10:27:29', 270, 4, 1, 1, 1),
(7338, 1, '2019-12-03 10:27:29', '2019-12-03 10:27:29', 271, 4, 1, 1, 1),
(7339, 1, '2019-12-03 10:27:29', '2019-12-03 10:27:29', 272, 4, 1, 1, 1),
(7340, 1, '2019-12-03 10:27:29', '2019-12-03 10:27:29', 273, 4, 1, 1, 1),
(7341, 1, '2019-12-03 10:27:29', '2019-12-03 10:27:29', 274, 4, 1, 1, 1),
(7342, 1, '2019-12-03 10:27:29', '2019-12-03 10:27:29', 275, 4, 1, 1, 1),
(7343, 1, '2019-12-03 10:27:29', '2019-12-03 10:27:29', 276, 4, 1, 1, 1),
(7344, 1, '2019-12-03 10:27:29', '2019-12-03 10:27:29', 277, 4, 1, 1, 1),
(7345, 1, '2019-12-03 10:27:29', '2019-12-03 10:27:29', 278, 4, 1, 1, 1),
(7346, 1, '2019-12-03 10:27:29', '2019-12-03 10:27:29', 279, 4, 1, 1, 1),
(7347, 1, '2019-12-03 10:27:29', '2019-12-03 10:27:29', 280, 4, 1, 1, 1),
(7348, 1, '2019-12-03 10:27:29', '2019-12-03 10:27:29', 281, 4, 1, 1, 1),
(7349, 1, '2019-12-03 10:27:29', '2019-12-03 10:27:29', 282, 4, 1, 1, 1),
(7350, 1, '2019-12-03 10:27:29', '2019-12-03 10:27:29', 283, 4, 1, 1, 1),
(7351, 1, '2019-12-03 10:27:29', '2019-12-03 10:27:29', 284, 4, 1, 1, 1),
(7352, 1, '2019-12-03 10:27:29', '2019-12-03 10:27:29', 285, 4, 1, 1, 1),
(7353, 1, '2019-12-03 10:27:29', '2019-12-03 10:27:29', 385, 4, 1, 1, 1),
(7354, 1, '2019-12-03 10:27:29', '2019-12-03 10:27:29', 386, 4, 1, 1, 1),
(7355, 1, '2019-12-03 10:27:29', '2019-12-03 10:27:29', 387, 4, 1, 1, 1),
(7356, 1, '2019-12-03 10:27:29', '2019-12-03 10:27:29', 388, 4, 1, 1, 1),
(7357, 1, '2019-12-03 10:27:29', '2019-12-03 10:27:29', 391, 4, 1, 1, 1),
(7358, 1, '2019-12-03 10:27:29', '2019-12-03 10:27:29', 392, 4, 1, 1, 1),
(7359, 1, '2019-12-03 10:33:41', '2019-12-03 10:33:41', 1, 6, 1, 1, 1),
(7360, 1, '2019-12-03 10:33:41', '2019-12-03 10:33:41', 2, 6, 1, 1, 1),
(7361, 1, '2019-12-03 10:33:41', '2019-12-03 10:33:41', 3, 6, 1, 1, 1),
(7362, 1, '2019-12-03 10:33:41', '2019-12-03 10:33:41', 4, 6, 1, 1, 1),
(7363, 1, '2019-12-03 10:33:41', '2019-12-03 10:33:41', 5, 6, 1, 1, 1),
(7364, 1, '2019-12-03 10:33:41', '2019-12-03 10:33:41', 6, 6, 1, 1, 1),
(7365, 1, '2019-12-03 10:33:41', '2019-12-03 10:33:41', 7, 6, 1, 1, 1),
(7366, 1, '2019-12-03 10:33:41', '2019-12-03 10:33:41', 8, 6, 1, 1, 1),
(7367, 1, '2019-12-03 10:33:41', '2019-12-03 10:33:41', 9, 6, 1, 1, 1),
(7368, 1, '2019-12-03 10:33:41', '2019-12-03 10:33:41', 10, 6, 1, 1, 1),
(7369, 1, '2019-12-03 10:33:41', '2019-12-03 10:33:41', 61, 6, 1, 1, 1),
(7370, 1, '2019-12-03 10:33:41', '2019-12-03 10:33:41', 64, 6, 1, 1, 1),
(7371, 1, '2019-12-03 10:33:41', '2019-12-03 10:33:41', 108, 6, 1, 1, 1),
(7372, 1, '2019-12-03 10:33:41', '2019-12-03 10:33:41', 109, 6, 1, 1, 1),
(7373, 1, '2019-12-03 10:33:41', '2019-12-03 10:33:41', 110, 6, 1, 1, 1),
(7374, 1, '2019-12-03 10:33:41', '2019-12-03 10:33:41', 111, 6, 1, 1, 1),
(7375, 1, '2019-12-03 10:33:41', '2019-12-03 10:33:41', 112, 6, 1, 1, 1),
(7376, 1, '2019-12-03 10:33:41', '2019-12-03 10:33:41', 113, 6, 1, 1, 1),
(7377, 1, '2019-12-03 10:33:41', '2019-12-03 10:33:41', 114, 6, 1, 1, 1),
(7378, 1, '2019-12-03 10:33:41', '2019-12-03 10:33:41', 115, 6, 1, 1, 1),
(7379, 1, '2019-12-03 10:33:41', '2019-12-03 10:33:41', 116, 6, 1, 1, 1),
(7380, 1, '2019-12-03 10:33:41', '2019-12-03 10:33:41', 117, 6, 1, 1, 1),
(7381, 1, '2019-12-03 10:33:41', '2019-12-03 10:33:41', 118, 6, 1, 1, 1),
(7382, 1, '2019-12-03 10:33:41', '2019-12-03 10:33:41', 119, 6, 1, 1, 1),
(7383, 1, '2019-12-03 10:33:41', '2019-12-03 10:33:41', 120, 6, 1, 1, 1),
(7384, 1, '2019-12-03 10:33:41', '2019-12-03 10:33:41', 121, 6, 1, 1, 1),
(7385, 1, '2019-12-03 10:33:41', '2019-12-03 10:33:41', 122, 6, 1, 1, 1),
(7386, 1, '2019-12-03 10:33:41', '2019-12-03 10:33:41', 123, 6, 1, 1, 1),
(7387, 1, '2019-12-03 10:33:41', '2019-12-03 10:33:41', 124, 6, 1, 1, 1),
(7388, 1, '2019-12-03 10:33:41', '2019-12-03 10:33:41', 125, 6, 1, 1, 1),
(7389, 1, '2019-12-03 10:33:41', '2019-12-03 10:33:41', 126, 6, 1, 1, 1),
(7390, 1, '2019-12-03 10:33:41', '2019-12-03 10:33:41', 127, 6, 1, 1, 1),
(7391, 1, '2019-12-03 10:33:41', '2019-12-03 10:33:41', 128, 6, 1, 1, 1),
(7392, 1, '2019-12-03 10:33:41', '2019-12-03 10:33:41', 129, 6, 1, 1, 1),
(7393, 1, '2019-12-03 10:33:41', '2019-12-03 10:33:41', 130, 6, 1, 1, 1),
(7394, 1, '2019-12-03 10:33:41', '2019-12-03 10:33:41', 131, 6, 1, 1, 1),
(7395, 1, '2019-12-03 10:33:41', '2019-12-03 10:33:41', 132, 6, 1, 1, 1),
(7396, 1, '2019-12-03 10:33:41', '2019-12-03 10:33:41', 133, 6, 1, 1, 1),
(7397, 1, '2019-12-03 10:33:41', '2019-12-03 10:33:41', 134, 6, 1, 1, 1),
(7398, 1, '2019-12-03 10:33:41', '2019-12-03 10:33:41', 135, 6, 1, 1, 1),
(7399, 1, '2019-12-03 10:33:41', '2019-12-03 10:33:41', 136, 6, 1, 1, 1),
(7400, 1, '2019-12-03 10:33:41', '2019-12-03 10:33:41', 137, 6, 1, 1, 1),
(7401, 1, '2019-12-03 10:33:41', '2019-12-03 10:33:41', 138, 6, 1, 1, 1),
(7402, 1, '2019-12-03 10:33:41', '2019-12-03 10:33:41', 139, 6, 1, 1, 1),
(7403, 1, '2019-12-03 10:33:41', '2019-12-03 10:33:41', 140, 6, 1, 1, 1),
(7404, 1, '2019-12-03 10:33:41', '2019-12-03 10:33:41', 141, 6, 1, 1, 1),
(7405, 1, '2019-12-03 10:33:41', '2019-12-03 10:33:41', 142, 6, 1, 1, 1),
(7406, 1, '2019-12-03 10:33:41', '2019-12-03 10:33:41', 143, 6, 1, 1, 1),
(7407, 1, '2019-12-03 10:33:41', '2019-12-03 10:33:41', 144, 6, 1, 1, 1),
(7408, 1, '2019-12-03 10:33:41', '2019-12-03 10:33:41', 145, 6, 1, 1, 1),
(7409, 1, '2019-12-03 10:33:41', '2019-12-03 10:33:41', 146, 6, 1, 1, 1),
(7410, 1, '2019-12-03 10:33:41', '2019-12-03 10:33:41', 147, 6, 1, 1, 1),
(7411, 1, '2019-12-03 10:33:41', '2019-12-03 10:33:41', 148, 6, 1, 1, 1),
(7412, 1, '2019-12-03 10:33:41', '2019-12-03 10:33:41', 149, 6, 1, 1, 1),
(7413, 1, '2019-12-03 10:33:41', '2019-12-03 10:33:41', 150, 6, 1, 1, 1),
(7414, 1, '2019-12-03 10:33:41', '2019-12-03 10:33:41', 151, 6, 1, 1, 1),
(7415, 1, '2019-12-03 10:33:41', '2019-12-03 10:33:41', 152, 6, 1, 1, 1),
(7416, 1, '2019-12-03 10:33:41', '2019-12-03 10:33:41', 153, 6, 1, 1, 1),
(7417, 1, '2019-12-03 10:33:41', '2019-12-03 10:33:41', 154, 6, 1, 1, 1),
(7418, 1, '2019-12-03 10:33:41', '2019-12-03 10:33:41', 155, 6, 1, 1, 1),
(7419, 1, '2019-12-03 10:33:41', '2019-12-03 10:33:41', 156, 6, 1, 1, 1),
(7420, 1, '2019-12-03 10:33:41', '2019-12-03 10:33:41', 157, 6, 1, 1, 1),
(7421, 1, '2019-12-03 10:33:41', '2019-12-03 10:33:41', 158, 6, 1, 1, 1),
(7422, 1, '2019-12-03 10:33:41', '2019-12-03 10:33:41', 159, 6, 1, 1, 1),
(7423, 1, '2019-12-03 10:33:41', '2019-12-03 10:33:41', 160, 6, 1, 1, 1),
(7424, 1, '2019-12-03 10:33:41', '2019-12-03 10:33:41', 161, 6, 1, 1, 1),
(7425, 1, '2019-12-03 10:33:41', '2019-12-03 10:33:41', 310, 6, 1, 1, 1),
(7426, 1, '2019-12-03 10:33:41', '2019-12-03 10:33:41', 315, 6, 1, 1, 1),
(7427, 1, '2019-12-03 10:33:41', '2019-12-03 10:33:41', 316, 6, 1, 1, 1),
(7428, 1, '2019-12-03 10:33:41', '2019-12-03 10:33:41', 317, 6, 1, 1, 1),
(7429, 1, '2019-12-03 10:33:41', '2019-12-03 10:33:41', 318, 6, 1, 1, 1),
(7430, 1, '2019-12-03 10:33:41', '2019-12-03 10:33:41', 319, 6, 1, 1, 1),
(7431, 1, '2019-12-03 10:33:41', '2019-12-03 10:33:41', 320, 6, 1, 1, 1),
(7432, 1, '2019-12-03 10:33:41', '2019-12-03 10:33:41', 321, 6, 1, 1, 1),
(7433, 1, '2019-12-03 10:33:41', '2019-12-03 10:33:41', 322, 6, 1, 1, 1),
(7434, 1, '2019-12-03 10:33:41', '2019-12-03 10:33:41', 323, 6, 1, 1, 1),
(7435, 1, '2019-12-03 10:33:41', '2019-12-03 10:33:41', 324, 6, 1, 1, 1),
(7436, 1, '2019-12-03 10:33:41', '2019-12-03 10:33:41', 325, 6, 1, 1, 1),
(7437, 1, '2019-12-03 10:33:41', '2019-12-03 10:33:41', 326, 6, 1, 1, 1),
(7438, 1, '2019-12-03 10:33:41', '2019-12-03 10:33:41', 327, 6, 1, 1, 1),
(7439, 1, '2019-12-03 10:33:41', '2019-12-03 10:33:41', 328, 6, 1, 1, 1),
(7440, 1, '2019-12-03 10:33:41', '2019-12-03 10:33:41', 329, 6, 1, 1, 1),
(7441, 1, '2019-12-03 10:33:41', '2019-12-03 10:33:41', 330, 6, 1, 1, 1),
(7442, 1, '2019-12-03 10:33:41', '2019-12-03 10:33:41', 331, 6, 1, 1, 1),
(7443, 1, '2019-12-03 10:33:41', '2019-12-03 10:33:41', 332, 6, 1, 1, 1),
(7444, 1, '2019-12-03 10:33:41', '2019-12-03 10:33:41', 333, 6, 1, 1, 1),
(7445, 1, '2019-12-03 10:33:41', '2019-12-03 10:33:41', 334, 6, 1, 1, 1),
(7446, 1, '2019-12-03 10:33:41', '2019-12-03 10:33:41', 335, 6, 1, 1, 1),
(7447, 1, '2019-12-03 10:33:41', '2019-12-03 10:33:41', 336, 6, 1, 1, 1),
(7448, 1, '2019-12-03 10:33:41', '2019-12-03 10:33:41', 337, 6, 1, 1, 1),
(7449, 1, '2019-12-03 10:33:41', '2019-12-03 10:33:41', 338, 6, 1, 1, 1),
(7450, 1, '2019-12-03 10:33:41', '2019-12-03 10:33:41', 339, 6, 1, 1, 1),
(7451, 1, '2019-12-03 10:33:41', '2019-12-03 10:33:41', 340, 6, 1, 1, 1),
(7452, 1, '2019-12-03 10:33:41', '2019-12-03 10:33:41', 341, 6, 1, 1, 1),
(7453, 1, '2019-12-03 10:33:41', '2019-12-03 10:33:41', 342, 6, 1, 1, 1),
(7454, 1, '2019-12-03 10:33:41', '2019-12-03 10:33:41', 343, 6, 1, 1, 1),
(7455, 1, '2019-12-03 10:33:41', '2019-12-03 10:33:41', 344, 6, 1, 1, 1),
(7456, 1, '2019-12-03 10:33:41', '2019-12-03 10:33:41', 345, 6, 1, 1, 1),
(7457, 1, '2019-12-03 10:33:41', '2019-12-03 10:33:41', 346, 6, 1, 1, 1),
(7458, 1, '2019-12-03 10:33:41', '2019-12-03 10:33:41', 347, 6, 1, 1, 1),
(7459, 1, '2019-12-03 10:33:41', '2019-12-03 10:33:41', 381, 6, 1, 1, 1),
(7460, 1, '2019-12-03 10:33:41', '2019-12-03 10:33:41', 382, 6, 1, 1, 1),
(7461, 1, '2019-12-03 10:33:41', '2019-12-03 10:33:41', 393, 6, 1, 1, 1),
(7574, 1, '2019-12-03 10:42:20', '2019-12-03 10:42:20', 1, 8, 1, 1, 1),
(7575, 1, '2019-12-03 10:42:20', '2019-12-03 10:42:20', 2, 8, 1, 1, 1),
(7576, 1, '2019-12-03 10:42:20', '2019-12-03 10:42:20', 3, 8, 1, 1, 1),
(7577, 1, '2019-12-03 10:42:20', '2019-12-03 10:42:20', 4, 8, 1, 1, 1),
(7578, 1, '2019-12-03 10:42:20', '2019-12-03 10:42:20', 5, 8, 1, 1, 1),
(7579, 1, '2019-12-03 10:42:20', '2019-12-03 10:42:20', 6, 8, 1, 1, 1),
(7580, 1, '2019-12-03 10:42:20', '2019-12-03 10:42:20', 7, 8, 1, 1, 1),
(7581, 1, '2019-12-03 10:42:20', '2019-12-03 10:42:20', 8, 8, 1, 1, 1),
(7582, 1, '2019-12-03 10:42:20', '2019-12-03 10:42:20', 9, 8, 1, 1, 1),
(7583, 1, '2019-12-03 10:42:20', '2019-12-03 10:42:20', 10, 8, 1, 1, 1),
(7584, 1, '2019-12-03 10:42:20', '2019-12-03 10:42:20', 54, 8, 1, 1, 1),
(7585, 1, '2019-12-03 10:42:20', '2019-12-03 10:42:20', 61, 8, 1, 1, 1),
(7586, 1, '2019-12-03 10:42:20', '2019-12-03 10:42:20', 64, 8, 1, 1, 1),
(7587, 1, '2019-12-03 10:42:20', '2019-12-03 10:42:20', 160, 8, 1, 1, 1),
(7588, 1, '2019-12-03 10:42:20', '2019-12-03 10:42:20', 161, 8, 1, 1, 1),
(7589, 1, '2019-12-03 10:42:20', '2019-12-03 10:42:20', 286, 8, 1, 1, 1),
(7590, 1, '2019-12-03 10:42:20', '2019-12-03 10:42:20', 287, 8, 1, 1, 1),
(7591, 1, '2019-12-03 10:42:20', '2019-12-03 10:42:20', 288, 8, 1, 1, 1),
(7592, 1, '2019-12-03 10:42:20', '2019-12-03 10:42:20', 289, 8, 1, 1, 1),
(7593, 1, '2019-12-03 10:42:20', '2019-12-03 10:42:20', 290, 8, 1, 1, 1),
(7594, 1, '2019-12-03 10:42:20', '2019-12-03 10:42:20', 291, 8, 1, 1, 1),
(7595, 1, '2019-12-03 10:42:20', '2019-12-03 10:42:20', 292, 8, 1, 1, 1),
(7596, 1, '2019-12-03 10:42:20', '2019-12-03 10:42:20', 293, 8, 1, 1, 1),
(7597, 1, '2019-12-03 10:42:20', '2019-12-03 10:42:20', 294, 8, 1, 1, 1),
(7598, 1, '2019-12-03 10:42:20', '2019-12-03 10:42:20', 295, 8, 1, 1, 1),
(7599, 1, '2019-12-03 10:42:20', '2019-12-03 10:42:20', 296, 8, 1, 1, 1),
(7600, 1, '2019-12-03 10:42:20', '2019-12-03 10:42:20', 297, 8, 1, 1, 1),
(7601, 1, '2019-12-03 10:42:20', '2019-12-03 10:42:20', 298, 8, 1, 1, 1),
(7602, 1, '2019-12-03 10:42:20', '2019-12-03 10:42:20', 299, 8, 1, 1, 1),
(7603, 1, '2019-12-03 10:42:20', '2019-12-03 10:42:20', 300, 8, 1, 1, 1),
(7604, 1, '2019-12-03 10:42:20', '2019-12-03 10:42:20', 301, 8, 1, 1, 1),
(7605, 1, '2019-12-03 10:42:20', '2019-12-03 10:42:20', 302, 8, 1, 1, 1),
(7606, 1, '2019-12-03 10:42:20', '2019-12-03 10:42:20', 303, 8, 1, 1, 1),
(7607, 1, '2019-12-03 10:42:20', '2019-12-03 10:42:20', 304, 8, 1, 1, 1),
(7608, 1, '2019-12-03 10:42:20', '2019-12-03 10:42:20', 305, 8, 1, 1, 1),
(7609, 1, '2019-12-03 10:42:20', '2019-12-03 10:42:20', 306, 8, 1, 1, 1),
(7610, 1, '2019-12-03 10:42:20', '2019-12-03 10:42:20', 307, 8, 1, 1, 1),
(7611, 1, '2019-12-03 10:42:20', '2019-12-03 10:42:20', 308, 8, 1, 1, 1),
(7612, 1, '2019-12-03 10:42:20', '2019-12-03 10:42:20', 309, 8, 1, 1, 1),
(7613, 1, '2019-12-03 10:42:20', '2019-12-03 10:42:20', 310, 8, 1, 1, 1),
(7614, 1, '2019-12-03 10:42:20', '2019-12-03 10:42:20', 311, 8, 1, 1, 1),
(7615, 1, '2019-12-03 10:42:20', '2019-12-03 10:42:20', 312, 8, 1, 1, 1),
(7616, 1, '2019-12-03 10:42:20', '2019-12-03 10:42:20', 313, 8, 1, 1, 1),
(7617, 1, '2019-12-03 10:42:20', '2019-12-03 10:42:20', 314, 8, 1, 1, 1),
(7618, 1, '2019-12-03 10:48:21', '2019-12-03 10:48:21', 1, 7, 1, 1, 1),
(7619, 1, '2019-12-03 10:48:21', '2019-12-03 10:48:21', 2, 7, 1, 1, 1),
(7620, 1, '2019-12-03 10:48:21', '2019-12-03 10:48:21', 3, 7, 1, 1, 1),
(7621, 1, '2019-12-03 10:48:21', '2019-12-03 10:48:21', 4, 7, 1, 1, 1),
(7622, 1, '2019-12-03 10:48:21', '2019-12-03 10:48:21', 5, 7, 1, 1, 1),
(7623, 1, '2019-12-03 10:48:21', '2019-12-03 10:48:21', 6, 7, 1, 1, 1),
(7624, 1, '2019-12-03 10:48:21', '2019-12-03 10:48:21', 7, 7, 1, 1, 1),
(7625, 1, '2019-12-03 10:48:21', '2019-12-03 10:48:21', 8, 7, 1, 1, 1),
(7626, 1, '2019-12-03 10:48:21', '2019-12-03 10:48:21', 9, 7, 1, 1, 1),
(7627, 1, '2019-12-03 10:48:21', '2019-12-03 10:48:21', 10, 7, 1, 1, 1),
(7628, 1, '2019-12-03 10:48:21', '2019-12-03 10:48:21', 11, 7, 1, 1, 1),
(7629, 1, '2019-12-03 10:48:21', '2019-12-03 10:48:21', 12, 7, 1, 1, 1),
(7630, 1, '2019-12-03 10:48:21', '2019-12-03 10:48:21', 13, 7, 1, 1, 1),
(7631, 1, '2019-12-03 10:48:21', '2019-12-03 10:48:21', 14, 7, 1, 1, 1),
(7632, 1, '2019-12-03 10:48:21', '2019-12-03 10:48:21', 15, 7, 1, 1, 1),
(7633, 1, '2019-12-03 10:48:21', '2019-12-03 10:48:21', 16, 7, 1, 1, 1),
(7634, 1, '2019-12-03 10:48:21', '2019-12-03 10:48:21', 17, 7, 1, 1, 1),
(7635, 1, '2019-12-03 10:48:21', '2019-12-03 10:48:21', 18, 7, 1, 1, 1),
(7636, 1, '2019-12-03 10:48:21', '2019-12-03 10:48:21', 19, 7, 1, 1, 1),
(7637, 1, '2019-12-03 10:48:21', '2019-12-03 10:48:21', 20, 7, 1, 1, 1),
(7638, 1, '2019-12-03 10:48:21', '2019-12-03 10:48:21', 21, 7, 1, 1, 1),
(7639, 1, '2019-12-03 10:48:21', '2019-12-03 10:48:21', 22, 7, 1, 1, 1),
(7640, 1, '2019-12-03 10:48:21', '2019-12-03 10:48:21', 23, 7, 1, 1, 1),
(7641, 1, '2019-12-03 10:48:21', '2019-12-03 10:48:21', 24, 7, 1, 1, 1),
(7642, 1, '2019-12-03 10:48:21', '2019-12-03 10:48:21', 25, 7, 1, 1, 1),
(7643, 1, '2019-12-03 10:48:21', '2019-12-03 10:48:21', 26, 7, 1, 1, 1),
(7644, 1, '2019-12-03 10:48:21', '2019-12-03 10:48:21', 27, 7, 1, 1, 1),
(7645, 1, '2019-12-03 10:48:21', '2019-12-03 10:48:21', 28, 7, 1, 1, 1),
(7646, 1, '2019-12-03 10:48:21', '2019-12-03 10:48:21', 29, 7, 1, 1, 1),
(7647, 1, '2019-12-03 10:48:21', '2019-12-03 10:48:21', 30, 7, 1, 1, 1),
(7648, 1, '2019-12-03 10:48:21', '2019-12-03 10:48:21', 31, 7, 1, 1, 1),
(7649, 1, '2019-12-03 10:48:21', '2019-12-03 10:48:21', 32, 7, 1, 1, 1),
(7650, 1, '2019-12-03 10:48:21', '2019-12-03 10:48:21', 33, 7, 1, 1, 1),
(7651, 1, '2019-12-03 10:48:21', '2019-12-03 10:48:21', 34, 7, 1, 1, 1),
(7652, 1, '2019-12-03 10:48:21', '2019-12-03 10:48:21', 35, 7, 1, 1, 1),
(7653, 1, '2019-12-03 10:48:21', '2019-12-03 10:48:21', 36, 7, 1, 1, 1),
(7654, 1, '2019-12-03 10:48:21', '2019-12-03 10:48:21', 37, 7, 1, 1, 1),
(7655, 1, '2019-12-03 10:48:21', '2019-12-03 10:48:21', 38, 7, 1, 1, 1),
(7656, 1, '2019-12-03 10:48:21', '2019-12-03 10:48:21', 39, 7, 1, 1, 1),
(7657, 1, '2019-12-03 10:48:21', '2019-12-03 10:48:21', 40, 7, 1, 1, 1),
(7658, 1, '2019-12-03 10:48:21', '2019-12-03 10:48:21', 61, 7, 1, 1, 1),
(7659, 1, '2019-12-03 10:48:21', '2019-12-03 10:48:21', 64, 7, 1, 1, 1),
(7660, 1, '2019-12-03 10:48:21', '2019-12-03 10:48:21', 160, 7, 1, 1, 1),
(7661, 1, '2019-12-03 10:48:21', '2019-12-03 10:48:21', 161, 7, 1, 1, 1);

-- --------------------------------------------------------

--
-- Structure de la table `sm_room_lists`
--

DROP TABLE IF EXISTS `sm_room_lists`;
CREATE TABLE IF NOT EXISTS `sm_room_lists` (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `number_of_bed` int NOT NULL,
  `cost_per_bed` double(16,2) DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `active_status` tinyint NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `dormitory_id` int UNSIGNED DEFAULT '1',
  `room_type_id` int UNSIGNED DEFAULT '1',
  `created_by` int UNSIGNED DEFAULT '1',
  `updated_by` int UNSIGNED DEFAULT '1',
  `school_id` int UNSIGNED DEFAULT '1',
  `academic_id` int UNSIGNED DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `sm_room_lists_dormitory_id_foreign` (`dormitory_id`),
  KEY `sm_room_lists_room_type_id_foreign` (`room_type_id`),
  KEY `sm_room_lists_school_id_foreign` (`school_id`),
  KEY `sm_room_lists_academic_id_foreign` (`academic_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `sm_room_types`
--

DROP TABLE IF EXISTS `sm_room_types`;
CREATE TABLE IF NOT EXISTS `sm_room_types` (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `active_status` tinyint NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_by` int UNSIGNED DEFAULT '1',
  `updated_by` int UNSIGNED DEFAULT '1',
  `school_id` int UNSIGNED DEFAULT '1',
  `academic_id` int UNSIGNED DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `sm_room_types_school_id_foreign` (`school_id`),
  KEY `sm_room_types_academic_id_foreign` (`academic_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `sm_routes`
--

DROP TABLE IF EXISTS `sm_routes`;
CREATE TABLE IF NOT EXISTS `sm_routes` (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `title` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `far` double(10,2) NOT NULL,
  `active_status` tinyint NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_by` int UNSIGNED DEFAULT '1',
  `updated_by` int UNSIGNED DEFAULT '1',
  `school_id` int UNSIGNED DEFAULT '1',
  `academic_id` int UNSIGNED DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `sm_routes_school_id_foreign` (`school_id`),
  KEY `sm_routes_academic_id_foreign` (`academic_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `sm_schools`
--

DROP TABLE IF EXISTS `sm_schools`;
CREATE TABLE IF NOT EXISTS `sm_schools` (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `school_name` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_by` tinyint NOT NULL DEFAULT '1',
  `updated_by` tinyint NOT NULL DEFAULT '1',
  `email` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` text COLLATE utf8mb4_unicode_ci,
  `phone` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `school_code` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_email_verified` tinyint(1) NOT NULL DEFAULT '0',
  `starting_date` date DEFAULT NULL,
  `ending_date` date DEFAULT NULL,
  `package_id` int DEFAULT NULL,
  `plan_type` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `contact_type` enum('yearly','monthly','once') COLLATE utf8mb4_unicode_ci NOT NULL,
  `active_status` tinyint NOT NULL DEFAULT '1' COMMENT '1 approved, 0 pending',
  `is_enabled` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'yes' COMMENT 'yes=Login enable, no=Login disable',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `sm_schools`
--

INSERT INTO `sm_schools` (`id`, `school_name`, `created_by`, `updated_by`, `email`, `address`, `phone`, `school_code`, `is_email_verified`, `starting_date`, `ending_date`, `package_id`, `plan_type`, `contact_type`, `active_status`, `is_enabled`, `created_at`, `updated_at`) VALUES
(1, 'ENSPD', 1, 1, 'contact@enspd-udo.cm', 'Campus Pk 17 Logbessou-Douala', '+237697542240', '01005000002', 0, '2022-05-02', NULL, NULL, NULL, 'yearly', 1, 'yes', NULL, '2022-05-10 09:42:14');

-- --------------------------------------------------------

--
-- Structure de la table `sm_seat_plans`
--

DROP TABLE IF EXISTS `sm_seat_plans`;
CREATE TABLE IF NOT EXISTS `sm_seat_plans` (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `active_status` tinyint NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `exam_id` int UNSIGNED DEFAULT NULL,
  `subject_id` int UNSIGNED DEFAULT NULL,
  `class_id` int UNSIGNED DEFAULT NULL,
  `section_id` int UNSIGNED DEFAULT NULL,
  `created_by` int UNSIGNED DEFAULT '1',
  `updated_by` int UNSIGNED DEFAULT '1',
  `school_id` int UNSIGNED DEFAULT '1',
  `academic_id` int UNSIGNED DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `sm_seat_plans_exam_id_foreign` (`exam_id`),
  KEY `sm_seat_plans_subject_id_foreign` (`subject_id`),
  KEY `sm_seat_plans_class_id_foreign` (`class_id`),
  KEY `sm_seat_plans_section_id_foreign` (`section_id`),
  KEY `sm_seat_plans_school_id_foreign` (`school_id`),
  KEY `sm_seat_plans_academic_id_foreign` (`academic_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `sm_seat_plan_children`
--

DROP TABLE IF EXISTS `sm_seat_plan_children`;
CREATE TABLE IF NOT EXISTS `sm_seat_plan_children` (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `room_id` tinyint DEFAULT NULL,
  `assign_students` int DEFAULT NULL,
  `start_time` time DEFAULT NULL,
  `end_time` time DEFAULT NULL,
  `active_status` tinyint NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `seat_plan_id` int UNSIGNED DEFAULT NULL,
  `created_by` int UNSIGNED DEFAULT '1',
  `updated_by` int UNSIGNED DEFAULT '1',
  `school_id` int UNSIGNED DEFAULT '1',
  `academic_id` int UNSIGNED DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `sm_seat_plan_children_seat_plan_id_foreign` (`seat_plan_id`),
  KEY `sm_seat_plan_children_school_id_foreign` (`school_id`),
  KEY `sm_seat_plan_children_academic_id_foreign` (`academic_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `sm_sections`
--

DROP TABLE IF EXISTS `sm_sections`;
CREATE TABLE IF NOT EXISTS `sm_sections` (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `section_name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `active_status` tinyint NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_by` int UNSIGNED DEFAULT '1',
  `updated_by` int UNSIGNED DEFAULT '1',
  `school_id` int UNSIGNED DEFAULT '1',
  `academic_id` int UNSIGNED DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `sm_sections_school_id_foreign` (`school_id`),
  KEY `sm_sections_academic_id_foreign` (`academic_id`)
) ENGINE=MyISAM AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `sm_sections`
--

INSERT INTO `sm_sections` (`id`, `section_name`, `active_status`, `created_at`, `updated_at`, `created_by`, `updated_by`, `school_id`, `academic_id`) VALUES
(2, 'section 1', 1, '2022-05-01 23:00:00', '2022-05-01 23:00:00', 1, 1, 1, 1),
(3, 'STT', 1, '2022-05-13 11:40:12', '2022-06-14 11:06:32', 1, 1, 1, 3),
(4, 'A1', 1, '2022-05-13 11:43:21', '2022-06-14 11:02:47', 1, 1, 1, 3),
(5, 'CG', 1, '2022-05-13 11:45:43', '2022-06-14 11:07:00', 1, 1, 1, 3),
(6, 'A4 ALL', 1, '2022-05-13 08:47:32', '2022-06-14 11:04:52', 1, 1, 1, 3),
(7, 'A4 ESP', 1, '2022-05-13 08:47:48', '2022-06-14 11:04:20', 1, 1, 1, 3),
(8, 'A3', 1, '2022-05-13 08:48:01', '2022-06-14 11:03:49', 1, 1, 1, 3),
(9, 'A2', 1, '2022-05-13 08:48:28', '2022-06-14 11:03:19', 1, 1, 1, 3),
(10, 'C', 1, '2022-05-13 08:50:34', '2022-06-14 11:05:27', 1, 1, 1, 3),
(11, 'D', 1, '2022-05-13 08:50:56', '2022-06-14 11:06:01', 1, 1, 1, 3),
(13, 'TCO', 1, '2022-06-01 23:00:00', '2022-06-01 23:00:00', 1, 1, 1, 4),
(14, 'GCI', 1, '2022-06-01 23:00:00', '2022-06-01 23:00:00', 1, 1, 1, 4),
(15, 'TTIC', 1, '2022-06-01 23:00:00', '2022-06-01 23:00:00', 1, 1, 1, 4),
(16, 'ROI', 1, '2022-06-01 23:00:00', '2022-06-01 23:00:00', 1, 1, 1, 4),
(17, 'PEI', 1, '2022-06-01 23:00:00', '2022-06-01 23:00:00', 1, 1, 1, 4),
(18, 'HSSI', 1, '2022-06-01 23:00:00', '2022-06-01 23:00:00', 1, 1, 1, 4),
(19, 'GPC', 1, '2022-06-01 23:00:00', '2022-06-01 23:00:00', 1, 1, 1, 4),
(20, 'TAU', 1, '2022-06-01 23:00:00', '2022-06-01 23:00:00', 1, 1, 1, 4),
(21, 'TCI', 1, '2022-06-01 23:00:00', '2022-06-01 23:00:00', 1, 1, 1, 4);

-- --------------------------------------------------------

--
-- Structure de la table `sm_send_messages`
--

DROP TABLE IF EXISTS `sm_send_messages`;
CREATE TABLE IF NOT EXISTS `sm_send_messages` (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `message_title` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `message_des` varchar(500) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `notice_date` date DEFAULT NULL,
  `publish_on` date DEFAULT NULL,
  `message_to` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'message sent to these roles',
  `active_status` tinyint NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_by` int UNSIGNED DEFAULT '1',
  `updated_by` int UNSIGNED DEFAULT '1',
  `school_id` int UNSIGNED DEFAULT '1',
  `academic_id` int UNSIGNED DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `sm_send_messages_school_id_foreign` (`school_id`),
  KEY `sm_send_messages_academic_id_foreign` (`academic_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `sm_sessions`
--

DROP TABLE IF EXISTS `sm_sessions`;
CREATE TABLE IF NOT EXISTS `sm_sessions` (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `session` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `active_status` tinyint NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_by` int UNSIGNED DEFAULT '1',
  `updated_by` int UNSIGNED DEFAULT '1',
  `school_id` int UNSIGNED DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `sm_sessions_school_id_foreign` (`school_id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `sm_sessions`
--

INSERT INTO `sm_sessions` (`id`, `session`, `active_status`, `created_at`, `updated_at`, `created_by`, `updated_by`, `school_id`) VALUES
(1, '2020-2021', 1, '2022-05-02 06:26:15', '2022-05-02 18:26:15', 1, 1, 1);

-- --------------------------------------------------------

--
-- Structure de la table `sm_setup_admins`
--

DROP TABLE IF EXISTS `sm_setup_admins`;
CREATE TABLE IF NOT EXISTS `sm_setup_admins` (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `type` tinyint DEFAULT NULL COMMENT '1 purpose, 2 complaint type, 3 source, 4 Reference',
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `active_status` tinyint NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_by` int UNSIGNED DEFAULT '1',
  `updated_by` int UNSIGNED DEFAULT '1',
  `school_id` int UNSIGNED DEFAULT '1',
  `academic_id` int UNSIGNED DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `sm_setup_admins_school_id_foreign` (`school_id`),
  KEY `sm_setup_admins_academic_id_foreign` (`academic_id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `sm_setup_admins`
--

INSERT INTO `sm_setup_admins` (`id`, `type`, `name`, `description`, `active_status`, `created_at`, `updated_at`, `created_by`, `updated_by`, `school_id`, `academic_id`) VALUES
(1, 2, 'Adoon', 'bAbaaaaababbab', 1, '2022-05-13 14:35:15', '2022-05-13 14:35:15', 1, 1, 1, 3),
(2, 3, 'note', 'Seule les absences de notes seront traitées', 1, '2022-05-14 22:27:53', '2022-05-14 22:27:53', 1, 1, 1, 3),
(3, 4, '0717', '', 1, '2022-05-15 20:54:33', '2022-05-15 20:54:33', 1, 1, 1, 3);

-- --------------------------------------------------------

--
-- Structure de la table `sm_sms_gateways`
--

DROP TABLE IF EXISTS `sm_sms_gateways`;
CREATE TABLE IF NOT EXISTS `sm_sms_gateways` (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `gateway_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `clickatell_username` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `clickatell_password` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `clickatell_api_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `twilio_account_sid` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `twilio_authentication_token` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `twilio_registered_no` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `msg91_authentication_key_sid` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `msg91_sender_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `msg91_route` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `msg91_country_code` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `textlocal_username` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `textlocal_hash` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `textlocal_sender` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `africatalking_username` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `africatalking_api_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `active_status` tinyint NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_by` int UNSIGNED DEFAULT '1',
  `updated_by` int UNSIGNED DEFAULT '1',
  `school_id` int UNSIGNED DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `sm_sms_gateways_school_id_foreign` (`school_id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `sm_sms_gateways`
--

INSERT INTO `sm_sms_gateways` (`id`, `gateway_name`, `clickatell_username`, `clickatell_password`, `clickatell_api_id`, `twilio_account_sid`, `twilio_authentication_token`, `twilio_registered_no`, `msg91_authentication_key_sid`, `msg91_sender_id`, `msg91_route`, `msg91_country_code`, `textlocal_username`, `textlocal_hash`, `textlocal_sender`, `africatalking_username`, `africatalking_api_key`, `active_status`, `created_at`, `updated_at`, `created_by`, `updated_by`, `school_id`) VALUES
(1, 'Twilio', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '2022-05-02 18:29:33', '2022-05-02 18:29:33', 1, 1, 1),
(2, 'Msg91', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '2022-05-02 18:29:33', '2022-05-02 18:29:33', 1, 1, 1),
(3, 'TextLocal', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'adminpanel@gmail.com', 'francais', 'SYSTEM ADMINISTRATOR', NULL, NULL, 0, '2022-05-02 18:29:33', '2022-05-20 15:58:39', 1, 1, 1),
(4, 'AfricaTalking', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'sandbox', NULL, 1, '2022-05-02 18:29:33', '2022-05-20 00:04:16', 1, 1, 1);

-- --------------------------------------------------------

--
-- Structure de la table `sm_social_media_icons`
--

DROP TABLE IF EXISTS `sm_social_media_icons`;
CREATE TABLE IF NOT EXISTS `sm_social_media_icons` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `url` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `icon` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint NOT NULL DEFAULT '0' COMMENT '1 active, 0 inactive',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_by` int UNSIGNED DEFAULT '1',
  `updated_by` int UNSIGNED DEFAULT '1',
  `school_id` int UNSIGNED DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `sm_social_media_icons_school_id_foreign` (`school_id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `sm_social_media_icons`
--

INSERT INTO `sm_social_media_icons` (`id`, `url`, `icon`, `status`, `created_at`, `updated_at`, `created_by`, `updated_by`, `school_id`) VALUES
(1, 'https://www.facebook.com/Spondonit/?epa=SEARCH_BOX', 'fa fa-facebook', 1, NULL, NULL, 1, 1, 1),
(2, 'https://www.facebook.com/Spondonit/?epa=SEARCH_BOX', 'fa fa-twitter', 1, NULL, NULL, 1, 1, 1),
(3, 'https://www.facebook.com/Spondonit/?epa=SEARCH_BOX', 'fa fa-dribbble', 1, NULL, NULL, 1, 1, 1),
(4, 'https://www.facebook.com/Spondonit/?epa=SEARCH_BOX', 'fa fa-linkedin', 1, NULL, NULL, 1, 1, 1);

-- --------------------------------------------------------

--
-- Structure de la table `sm_staffs`
--

DROP TABLE IF EXISTS `sm_staffs`;
CREATE TABLE IF NOT EXISTS `sm_staffs` (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `staff_no` int DEFAULT NULL,
  `first_name` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_name` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `full_name` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fathers_name` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mothers_name` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date_of_birth` date DEFAULT '2022-05-02',
  `date_of_joining` date DEFAULT '2022-05-02',
  `email` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mobile` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `emergency_mobile` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `marital_status` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `merital_status` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `staff_photo` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `current_address` varchar(500) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `permanent_address` varchar(500) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `qualification` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `experience` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `epf_no` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `basic_salary` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `contract_type` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `location` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `casual_leave` varchar(15) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `medical_leave` varchar(15) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `metarnity_leave` varchar(15) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bank_account_name` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bank_account_no` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bank_name` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bank_brach` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `facebook_url` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `twiteer_url` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `linkedin_url` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `instragram_url` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `joining_letter` varchar(500) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `resume` varchar(500) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `other_document` varchar(500) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `notes` varchar(500) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `active_status` tinyint NOT NULL DEFAULT '1',
  `driving_license` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `driving_license_ex_date` date DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `designation_id` int UNSIGNED DEFAULT '1',
  `department_id` int UNSIGNED DEFAULT '1',
  `user_id` int UNSIGNED DEFAULT '1',
  `role_id` int UNSIGNED DEFAULT '1',
  `gender_id` int UNSIGNED DEFAULT '1',
  `created_by` int UNSIGNED DEFAULT '1',
  `updated_by` int UNSIGNED DEFAULT '1',
  `school_id` int UNSIGNED DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `sm_staffs_designation_id_foreign` (`designation_id`),
  KEY `sm_staffs_department_id_foreign` (`department_id`),
  KEY `sm_staffs_user_id_foreign` (`user_id`),
  KEY `sm_staffs_role_id_foreign` (`role_id`),
  KEY `sm_staffs_gender_id_foreign` (`gender_id`),
  KEY `sm_staffs_school_id_foreign` (`school_id`)
) ENGINE=MyISAM AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `sm_staffs`
--

INSERT INTO `sm_staffs` (`id`, `staff_no`, `first_name`, `last_name`, `full_name`, `fathers_name`, `mothers_name`, `date_of_birth`, `date_of_joining`, `email`, `mobile`, `emergency_mobile`, `marital_status`, `merital_status`, `staff_photo`, `current_address`, `permanent_address`, `qualification`, `experience`, `epf_no`, `basic_salary`, `contract_type`, `location`, `casual_leave`, `medical_leave`, `metarnity_leave`, `bank_account_name`, `bank_account_no`, `bank_name`, `bank_brach`, `facebook_url`, `twiteer_url`, `linkedin_url`, `instragram_url`, `joining_letter`, `resume`, `other_document`, `notes`, `active_status`, `driving_license`, `driving_license_ex_date`, `created_at`, `updated_at`, `designation_id`, `department_id`, `user_id`, `role_id`, `gender_id`, `created_by`, `updated_by`, `school_id`) VALUES
(1, 1, 'System', 'Administrator', 'System Administrator', 'NA', 'NA', '1980-12-26', '2019-05-26', 'adminpanel@gmail.com', '+880123456790', '+880123456790', NULL, 'NA', 'public/uploads/staff/staff.jpg', 'NA', 'NA', 'NA', 'NA', NULL, NULL, NULL, NULL, '12', '15', '45', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '56776987453', '2019-02-23', '2022-05-02 06:26:24', '2022-05-02 18:31:43', 1, 1, 1, 1, 1, 1, 1, 1),
(2, 2, 'EBENEZER', 'MAKA MAKA', 'EBENEZER MAKA MAKA', '', '', '1970-01-01', '2022-05-10', 'ebenezer3@gmail.com', '655268910', '', 'married', NULL, 'public/uploads/staff/23b3215b4f0db18cbd5a26d4577e24f4.png', 'DOUALA', '', '', '', '', '55000', '', '', NULL, NULL, NULL, '', '', '', '', '', '', '', '', '', '', '', NULL, 1, '', NULL, '2022-05-10 15:26:53', '2022-05-10 15:26:53', 1, 2, 2, 4, 1, 1, 1, 1),
(3, 3, 'SAMUEL', 'EKE', 'SAMUEL EKE', '', '', '1970-01-01', '2022-05-11', 'SamuelEKE@gmail.com', '655552490', '', '', NULL, 'public/uploads/staff/8a3f8de4ecc629b6e54713c0a3187662.png', 'Douala pk17', '', '', '', '', '50000', '', '', NULL, NULL, NULL, '', '', '', '', '', '', '', '', '', '', '', NULL, 1, '', NULL, '2022-05-11 12:53:25', '2022-05-11 12:53:25', 1, 1, 3, 5, 1, 1, 1, 1),
(4, 10, 'djoyo', '', 'djoyo ', '', '', '2022-05-02', '2022-05-02', 'djoyo@gmail.com', '655249074', '', '', NULL, NULL, '', '', '', '', '', '0', '', '', NULL, NULL, NULL, '', '', '', '', '', '', '', '', NULL, NULL, NULL, NULL, 1, NULL, NULL, '2022-05-12 09:05:21', '2022-05-13 10:54:49', 1, 1, 4, 8, 1, 1, 1, 1),
(5, 10, 'Moifo Loic', '', 'Moifo Loic', NULL, NULL, '2022-05-02', '2022-05-02', 'moifo@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '2022-06-08 11:40:51', '2022-06-08 11:40:51', 1, 1, 9, 4, 1, 1, 1, 1),
(10, 10, 'Luc', '', 'Luc', NULL, NULL, '2022-05-02', '2022-05-02', 'luc@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '2022-06-13 09:48:36', '2022-06-13 09:48:36', 1, 1, 14, 4, 1, 1, 1, 1),
(8, 10, 'moiffo', '', 'moiffo', NULL, NULL, '2022-05-02', '2022-05-02', 'moi@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '2022-06-12 09:21:44', '2022-06-12 09:21:44', 1, 1, 12, 4, 1, 1, 1, 1),
(9, 10, 'moi', '', 'moi', NULL, NULL, '2022-05-02', '2022-05-02', 'moi@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '2022-06-13 07:49:25', '2022-06-13 07:49:25', 1, 1, 13, 4, 1, 1, 1, 1),
(11, 10, 'Luc', '', 'Luc', NULL, NULL, '2022-05-02', '2022-05-02', 'luc@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '2022-06-13 11:45:56', '2022-06-13 11:45:56', 1, 1, 15, 4, 1, 1, 1, 1),
(12, 11, 'Marcel', 'NZOGO', 'Marcel NZOGO', 'Marcel', '', '1970-01-01', '2022-06-24', 'Nzogo@gmail.com', '665462489', '', '', NULL, 'public/uploads/staff/d7e909db5f4c5c7d49ee3341c0ddf945.png', 'Douala', '', '', '', '', '55000', '', '', NULL, NULL, NULL, '', '', '', '', '', '', '', '', '', '', '', NULL, 1, '', NULL, '2022-06-24 19:05:59', '2022-06-24 19:05:59', 2, 2, 16, 4, 1, 1, 1, 1);

-- --------------------------------------------------------

--
-- Structure de la table `sm_staff_attendance_imports`
--

DROP TABLE IF EXISTS `sm_staff_attendance_imports`;
CREATE TABLE IF NOT EXISTS `sm_staff_attendance_imports` (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `attendence_date` date DEFAULT NULL,
  `in_time` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `out_time` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `attendance_type` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Present: P Late: L Absent: A Holiday: H Half Day: F',
  `notes` varchar(500) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `staff_id` int UNSIGNED DEFAULT NULL,
  `created_by` int UNSIGNED DEFAULT '1',
  `updated_by` int UNSIGNED DEFAULT '1',
  `school_id` int UNSIGNED DEFAULT '1',
  `academic_id` int UNSIGNED DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `sm_staff_attendance_imports_staff_id_foreign` (`staff_id`),
  KEY `sm_staff_attendance_imports_school_id_foreign` (`school_id`),
  KEY `sm_staff_attendance_imports_academic_id_foreign` (`academic_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `sm_staff_attendences`
--

DROP TABLE IF EXISTS `sm_staff_attendences`;
CREATE TABLE IF NOT EXISTS `sm_staff_attendences` (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `attendence_type` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Present: P Late: L Absent: A Holiday: H Half Day: F',
  `notes` varchar(500) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `attendence_date` date DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `staff_id` int UNSIGNED DEFAULT NULL,
  `created_by` int UNSIGNED DEFAULT '1',
  `updated_by` int UNSIGNED DEFAULT '1',
  `school_id` int UNSIGNED DEFAULT '1',
  `academic_id` int UNSIGNED DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `sm_staff_attendences_staff_id_foreign` (`staff_id`),
  KEY `sm_staff_attendences_school_id_foreign` (`school_id`),
  KEY `sm_staff_attendences_academic_id_foreign` (`academic_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `sm_students`
--

DROP TABLE IF EXISTS `sm_students`;
CREATE TABLE IF NOT EXISTS `sm_students` (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `admission_no` int DEFAULT NULL,
  `roll_no` int DEFAULT NULL,
  `first_name` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_name` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `full_name` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date_of_birth` date DEFAULT NULL,
  `caste` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mobile` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `admission_date` date DEFAULT NULL,
  `student_photo` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `age` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `height` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `weight` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `current_address` varchar(500) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `permanent_address` varchar(500) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `driver_id` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `national_id_no` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `local_id_no` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bank_account_no` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bank_name` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `previous_school_details` varchar(500) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `aditional_notes` varchar(500) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `document_title_1` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `document_file_1` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `document_title_2` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `document_file_2` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `document_title_3` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `document_file_3` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `document_title_4` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `document_file_4` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `active_status` tinyint NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `bloodgroup_id` int UNSIGNED DEFAULT NULL,
  `religion_id` int UNSIGNED DEFAULT NULL,
  `route_list_id` int UNSIGNED DEFAULT NULL,
  `dormitory_id` int UNSIGNED DEFAULT NULL,
  `vechile_id` int UNSIGNED DEFAULT NULL,
  `room_id` int UNSIGNED DEFAULT NULL,
  `student_category_id` int UNSIGNED DEFAULT NULL,
  `class_id` int UNSIGNED NOT NULL,
  `section_id` int UNSIGNED NOT NULL,
  `session_id` int UNSIGNED NOT NULL,
  `parent_id` int UNSIGNED DEFAULT NULL,
  `user_id` int UNSIGNED DEFAULT NULL,
  `role_id` int UNSIGNED NOT NULL,
  `gender_id` int UNSIGNED DEFAULT NULL,
  `created_by` int UNSIGNED DEFAULT '1',
  `updated_by` int UNSIGNED DEFAULT '1',
  `school_id` int UNSIGNED DEFAULT '1',
  `academic_id` int UNSIGNED DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `sm_students_bloodgroup_id_foreign` (`bloodgroup_id`),
  KEY `sm_students_religion_id_foreign` (`religion_id`),
  KEY `sm_students_route_list_id_foreign` (`route_list_id`),
  KEY `sm_students_dormitory_id_foreign` (`dormitory_id`),
  KEY `sm_students_vechile_id_foreign` (`vechile_id`),
  KEY `sm_students_room_id_foreign` (`room_id`),
  KEY `sm_students_student_category_id_foreign` (`student_category_id`),
  KEY `sm_students_class_id_foreign` (`class_id`),
  KEY `sm_students_section_id_foreign` (`section_id`),
  KEY `sm_students_session_id_foreign` (`session_id`),
  KEY `sm_students_parent_id_foreign` (`parent_id`),
  KEY `sm_students_user_id_foreign` (`user_id`),
  KEY `sm_students_role_id_foreign` (`role_id`),
  KEY `sm_students_gender_id_foreign` (`gender_id`),
  KEY `sm_students_school_id_foreign` (`school_id`),
  KEY `sm_students_academic_id_foreign` (`academic_id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `sm_students`
--

INSERT INTO `sm_students` (`id`, `admission_no`, `roll_no`, `first_name`, `last_name`, `full_name`, `date_of_birth`, `caste`, `email`, `mobile`, `admission_date`, `student_photo`, `age`, `height`, `weight`, `current_address`, `permanent_address`, `driver_id`, `national_id_no`, `local_id_no`, `bank_account_no`, `bank_name`, `previous_school_details`, `aditional_notes`, `document_title_1`, `document_file_1`, `document_title_2`, `document_file_2`, `document_title_3`, `document_file_3`, `document_title_4`, `document_file_4`, `active_status`, `created_at`, `updated_at`, `bloodgroup_id`, `religion_id`, `route_list_id`, `dormitory_id`, `vechile_id`, `room_id`, `student_category_id`, `class_id`, `section_id`, `session_id`, `parent_id`, `user_id`, `role_id`, `gender_id`, `created_by`, `updated_by`, `school_id`, `academic_id`) VALUES
(1, 122, 11, 'ASTRIDE', 'DJOYO SONAGOU', 'ASTRIDE DJOYO SONAGOU', '1999-06-25', '', 'djoyoson@gmail.com', '', '2022-05-13', NULL, NULL, '', '', '', '', NULL, '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '2022-01-01 11:00:00', '2022-05-13 10:20:36', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 5, 5, 3, 1, 5, 2, 1, 1, 1, 1, 3),
(2, 123, 12, 'OKOUMAMA', 'GWETH', 'OKOUMAMA GWETH', '1992-04-28', '', 'okoumag@gmail.com', '', '2022-05-13', NULL, NULL, '', '', '', '', NULL, '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '2022-01-01 11:00:00', '2022-05-13 10:22:49', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 5, 5, 3, 2, 7, 2, 1, 1, 1, 1, 3),
(3, 124, 1, 'marthe', '', 'marthe ', '2004-07-22', '', '', '', '2022-07-05', NULL, NULL, '', '', '', '', NULL, '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '2022-01-01 11:00:00', '2022-07-05 17:28:41', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 4, 3, 3, 17, 2, 2, 1, 1, 1, 3);

-- --------------------------------------------------------

--
-- Structure de la table `sm_student_attendances`
--

DROP TABLE IF EXISTS `sm_student_attendances`;
CREATE TABLE IF NOT EXISTS `sm_student_attendances` (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `attendance_type` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Present: P Late: L Absent: A Holiday: H Half Day: F',
  `notes` varchar(500) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `attendance_date` date DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `student_id` int UNSIGNED DEFAULT NULL,
  `created_by` int UNSIGNED DEFAULT '1',
  `updated_by` int UNSIGNED DEFAULT '1',
  `school_id` int UNSIGNED DEFAULT '1',
  `academic_id` int UNSIGNED DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `sm_student_attendances_student_id_foreign` (`student_id`),
  KEY `sm_student_attendances_school_id_foreign` (`school_id`),
  KEY `sm_student_attendances_academic_id_foreign` (`academic_id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `sm_student_attendances`
--

INSERT INTO `sm_student_attendances` (`id`, `attendance_type`, `notes`, `attendance_date`, `created_at`, `updated_at`, `student_id`, `created_by`, `updated_by`, `school_id`, `academic_id`) VALUES
(1, 'L', '', '2022-05-24', '2022-05-16 08:14:52', '2022-05-16 08:14:52', 1, 1, 1, 1, 3),
(2, 'P', '', '2022-05-24', '2022-05-16 08:14:52', '2022-05-16 08:14:52', 2, 1, 1, 1, 3),
(3, 'F', '', '2022-05-16', '2022-05-16 08:15:48', '2022-05-16 08:15:48', 1, 1, 1, 1, 3),
(4, 'P', '', '2022-05-16', '2022-05-16 08:15:48', '2022-05-16 08:15:48', 2, 1, 1, 1, 3);

-- --------------------------------------------------------

--
-- Structure de la table `sm_student_attendance_imports`
--

DROP TABLE IF EXISTS `sm_student_attendance_imports`;
CREATE TABLE IF NOT EXISTS `sm_student_attendance_imports` (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `attendance_date` date DEFAULT NULL,
  `in_time` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `out_time` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `attendance_type` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Present: P Late: L Absent: A Holiday: H Half Day: F',
  `notes` varchar(500) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `student_id` int UNSIGNED DEFAULT NULL,
  `created_by` int UNSIGNED DEFAULT '1',
  `updated_by` int UNSIGNED DEFAULT '1',
  `school_id` int UNSIGNED DEFAULT '1',
  `academic_id` int UNSIGNED DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `sm_student_attendance_imports_student_id_foreign` (`student_id`),
  KEY `sm_student_attendance_imports_school_id_foreign` (`school_id`),
  KEY `sm_student_attendance_imports_academic_id_foreign` (`academic_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `sm_student_categories`
--

DROP TABLE IF EXISTS `sm_student_categories`;
CREATE TABLE IF NOT EXISTS `sm_student_categories` (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `category_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_by` int UNSIGNED DEFAULT '1',
  `updated_by` int UNSIGNED DEFAULT '1',
  `school_id` int UNSIGNED DEFAULT '1',
  `academic_id` int UNSIGNED DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `sm_student_categories_school_id_foreign` (`school_id`),
  KEY `sm_student_categories_academic_id_foreign` (`academic_id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `sm_student_categories`
--

INSERT INTO `sm_student_categories` (`id`, `category_name`, `created_at`, `updated_at`, `created_by`, `updated_by`, `school_id`, `academic_id`) VALUES
(1, 'Handicapé', '2022-05-10 14:12:39', '2022-05-10 14:12:39', 1, 1, 1, 3);

-- --------------------------------------------------------

--
-- Structure de la table `sm_student_certificates`
--

DROP TABLE IF EXISTS `sm_student_certificates`;
CREATE TABLE IF NOT EXISTS `sm_student_certificates` (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `header_left_text` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date` date DEFAULT NULL,
  `body` text COLLATE utf8mb4_unicode_ci,
  `footer_left_text` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `footer_center_text` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `footer_right_text` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `student_photo` tinyint NOT NULL DEFAULT '1' COMMENT '1 = yes 0 no',
  `file` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `active_status` tinyint NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_by` int UNSIGNED DEFAULT '1',
  `updated_by` int UNSIGNED DEFAULT '1',
  `school_id` int UNSIGNED DEFAULT '1',
  `academic_id` int UNSIGNED DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `sm_student_certificates_school_id_foreign` (`school_id`),
  KEY `sm_student_certificates_academic_id_foreign` (`academic_id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `sm_student_certificates`
--

INSERT INTO `sm_student_certificates` (`id`, `name`, `header_left_text`, `date`, `body`, `footer_left_text`, `footer_center_text`, `footer_right_text`, `student_photo`, `file`, `active_status`, `created_at`, `updated_at`, `created_by`, `updated_by`, `school_id`, `academic_id`) VALUES
(1, 'Certificate in Technical Communication (PCTC)', 'Since 2020', '2020-05-17', 'Earning my UCR Extension professional certificate is one of the most beneficial things I\'ve done for my career. Before even completing the program, I was contacted twice by companies who were interested in hiring me as a technical writer. This program helped me reach my career goals in a very short time', 'Advisor Signature', 'Instructor Signature', 'Principale Signature', 0, 'public/uploads/certificate/c.jpg', 1, '2022-05-02 18:29:57', '2022-05-02 18:29:57', 1, 1, 1, 1);

-- --------------------------------------------------------

--
-- Structure de la table `sm_student_documents`
--

DROP TABLE IF EXISTS `sm_student_documents`;
CREATE TABLE IF NOT EXISTS `sm_student_documents` (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `student_staff_id` int DEFAULT NULL,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'stu=student,stf=staff',
  `file` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `active_status` tinyint NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_by` int UNSIGNED DEFAULT '1',
  `updated_by` int UNSIGNED DEFAULT '1',
  `school_id` int UNSIGNED DEFAULT '1',
  `academic_id` int UNSIGNED DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `sm_student_documents_school_id_foreign` (`school_id`),
  KEY `sm_student_documents_academic_id_foreign` (`academic_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `sm_student_excel_formats`
--

DROP TABLE IF EXISTS `sm_student_excel_formats`;
CREATE TABLE IF NOT EXISTS `sm_student_excel_formats` (
  `roll_no` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `first_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date_of_birth` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `religion` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `caste` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mobile` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `admission_date` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `category` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `blood_group` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `height` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `weight` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `siblings_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `father_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `father_phone` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `father_occupation` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mother_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mother_phone` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mother_occupation` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `guardian_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `guardian_relation` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `guardian_email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `guardian_phone` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `guardian_occupation` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `guardian_address` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `current_address` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `permanent_address` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bank_account_no` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bank_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `national_identification_no` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `local_identification_no` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `previous_school_details` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `note` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `school_id` int UNSIGNED DEFAULT '1',
  `academic_id` int UNSIGNED DEFAULT '1',
  KEY `sm_student_excel_formats_school_id_foreign` (`school_id`),
  KEY `sm_student_excel_formats_academic_id_foreign` (`academic_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `sm_student_groups`
--

DROP TABLE IF EXISTS `sm_student_groups`;
CREATE TABLE IF NOT EXISTS `sm_student_groups` (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `group` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `active_status` tinyint NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_by` int UNSIGNED DEFAULT '1',
  `updated_by` int UNSIGNED DEFAULT '1',
  `school_id` int UNSIGNED DEFAULT '1',
  `academic_id` int UNSIGNED DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `sm_student_groups_school_id_foreign` (`school_id`),
  KEY `sm_student_groups_academic_id_foreign` (`academic_id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `sm_student_groups`
--

INSERT INTO `sm_student_groups` (`id`, `group`, `active_status`, `created_at`, `updated_at`, `created_by`, `updated_by`, `school_id`, `academic_id`) VALUES
(2, 'A', 1, '2022-05-10 14:13:53', '2022-05-10 14:13:53', 1, 1, 1, 3);

-- --------------------------------------------------------

--
-- Structure de la table `sm_student_homeworks`
--

DROP TABLE IF EXISTS `sm_student_homeworks`;
CREATE TABLE IF NOT EXISTS `sm_student_homeworks` (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `homework_date` date DEFAULT NULL,
  `submission_date` date DEFAULT NULL,
  `description` varchar(500) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `percentage` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `evaluated_by` int UNSIGNED DEFAULT NULL,
  `student_id` int UNSIGNED DEFAULT NULL,
  `subject_id` int UNSIGNED DEFAULT NULL,
  `created_by` int UNSIGNED DEFAULT '1',
  `updated_by` int UNSIGNED DEFAULT '1',
  `school_id` int UNSIGNED DEFAULT '1',
  `academic_id` int UNSIGNED DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `sm_student_homeworks_evaluated_by_foreign` (`evaluated_by`),
  KEY `sm_student_homeworks_student_id_foreign` (`student_id`),
  KEY `sm_student_homeworks_subject_id_foreign` (`subject_id`),
  KEY `sm_student_homeworks_school_id_foreign` (`school_id`),
  KEY `sm_student_homeworks_academic_id_foreign` (`academic_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `sm_student_id_cards`
--

DROP TABLE IF EXISTS `sm_student_id_cards`;
CREATE TABLE IF NOT EXISTS `sm_student_id_cards` (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `logo` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `designation` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `signature` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` text COLLATE utf8mb4_unicode_ci,
  `admission_no` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0' COMMENT '0 for no 1 for yes',
  `student_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0' COMMENT '0 for no 1 for yes',
  `class` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0' COMMENT '0 for no 1 for yes',
  `father_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0' COMMENT '0 for no 1 for yes',
  `mother_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0' COMMENT '0 for no 1 for yes',
  `student_address` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0' COMMENT '0 for no 1 for yes',
  `phone` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0' COMMENT '0 for no 1 for yes',
  `dob` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0' COMMENT '0 for no 1 for yes',
  `blood` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0' COMMENT '0 for no 1 for yes',
  `active_status` tinyint NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_by` int UNSIGNED DEFAULT '1',
  `updated_by` int UNSIGNED DEFAULT '1',
  `school_id` int UNSIGNED DEFAULT '1',
  `academic_id` int UNSIGNED DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `sm_student_id_cards_school_id_foreign` (`school_id`),
  KEY `sm_student_id_cards_academic_id_foreign` (`academic_id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `sm_student_id_cards`
--

INSERT INTO `sm_student_id_cards` (`id`, `title`, `logo`, `designation`, `signature`, `address`, `admission_no`, `student_name`, `class`, `father_name`, `mother_name`, `student_address`, `phone`, `dob`, `blood`, `active_status`, `created_at`, `updated_at`, `created_by`, `updated_by`, `school_id`, `academic_id`) VALUES
(1, 'CNI', 'public/uploads/studentIdCard/logo-ce8b823233099272a8bb3bccb4e2723d.PNG', 'DJOYO', 'public/uploads/studentIdCard/signature-2867c273018d1ac0fc81bfd31e76eff2.PNG', 'astridgauthier3@gmail.com', '1', '1', '1', '1', '1', '1', '1', '1', '1', 1, '2022-05-15 22:13:18', '2022-05-15 22:13:18', 1, 1, 1, 3);

-- --------------------------------------------------------

--
-- Structure de la table `sm_student_promotions`
--

DROP TABLE IF EXISTS `sm_student_promotions`;
CREATE TABLE IF NOT EXISTS `sm_student_promotions` (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `result_status` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `previous_class_id` int UNSIGNED DEFAULT NULL,
  `current_class_id` int UNSIGNED DEFAULT NULL,
  `previous_section_id` int UNSIGNED DEFAULT NULL,
  `current_section_id` int UNSIGNED DEFAULT NULL,
  `previous_session_id` int UNSIGNED DEFAULT NULL,
  `current_session_id` int UNSIGNED DEFAULT NULL,
  `student_id` int UNSIGNED DEFAULT NULL,
  `admission_number` int DEFAULT NULL,
  `student_info` longtext COLLATE utf8mb4_unicode_ci,
  `merit_student_info` longtext COLLATE utf8mb4_unicode_ci,
  `previous_roll_number` int DEFAULT NULL,
  `current_roll_number` int DEFAULT NULL,
  `created_by` int UNSIGNED DEFAULT '1',
  `updated_by` int UNSIGNED DEFAULT '1',
  `school_id` int UNSIGNED DEFAULT '1',
  `academic_id` int UNSIGNED DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `sm_student_promotions_previous_class_id_foreign` (`previous_class_id`),
  KEY `sm_student_promotions_current_class_id_foreign` (`current_class_id`),
  KEY `sm_student_promotions_previous_section_id_foreign` (`previous_section_id`),
  KEY `sm_student_promotions_current_section_id_foreign` (`current_section_id`),
  KEY `sm_student_promotions_previous_session_id_foreign` (`previous_session_id`),
  KEY `sm_student_promotions_current_session_id_foreign` (`current_session_id`),
  KEY `sm_student_promotions_student_id_foreign` (`student_id`),
  KEY `sm_student_promotions_school_id_foreign` (`school_id`),
  KEY `sm_student_promotions_academic_id_foreign` (`academic_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `sm_student_take_online_exams`
--

DROP TABLE IF EXISTS `sm_student_take_online_exams`;
CREATE TABLE IF NOT EXISTS `sm_student_take_online_exams` (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `status` tinyint NOT NULL DEFAULT '0' COMMENT '0=Not Yet, 1 = alreday submitted, 2 = got marks',
  `total_marks` int DEFAULT NULL,
  `active_status` tinyint NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `student_id` int UNSIGNED DEFAULT NULL,
  `online_exam_id` int UNSIGNED DEFAULT NULL,
  `created_by` int UNSIGNED DEFAULT '1',
  `updated_by` int UNSIGNED DEFAULT '1',
  `school_id` int UNSIGNED DEFAULT '1',
  `academic_id` int UNSIGNED DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `sm_student_take_online_exams_student_id_foreign` (`student_id`),
  KEY `sm_student_take_online_exams_online_exam_id_foreign` (`online_exam_id`),
  KEY `sm_student_take_online_exams_school_id_foreign` (`school_id`),
  KEY `sm_student_take_online_exams_academic_id_foreign` (`academic_id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `sm_student_take_online_exams`
--

INSERT INTO `sm_student_take_online_exams` (`id`, `status`, `total_marks`, `active_status`, `created_at`, `updated_at`, `student_id`, `online_exam_id`, `created_by`, `updated_by`, `school_id`, `academic_id`) VALUES
(1, 2, 15, 1, '2022-05-20 07:20:42', '2022-05-20 17:39:45', 1, 1, 1, 1, 1, 3);

-- --------------------------------------------------------

--
-- Structure de la table `sm_student_take_online_exam_questions`
--

DROP TABLE IF EXISTS `sm_student_take_online_exam_questions`;
CREATE TABLE IF NOT EXISTS `sm_student_take_online_exam_questions` (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `trueFalse` varchar(1) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'F = false, T = true ',
  `suitable_words` text COLLATE utf8mb4_unicode_ci,
  `active_status` tinyint NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `take_online_exam_id` int UNSIGNED DEFAULT NULL,
  `question_bank_id` int UNSIGNED DEFAULT NULL,
  `created_by` int UNSIGNED DEFAULT '1',
  `updated_by` int UNSIGNED DEFAULT '1',
  `school_id` int UNSIGNED DEFAULT '1',
  `academic_id` int UNSIGNED DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `t_on_ex_id` (`take_online_exam_id`),
  KEY `sm_student_take_online_exam_questions_question_bank_id_foreign` (`question_bank_id`),
  KEY `sm_student_take_online_exam_questions_school_id_foreign` (`school_id`),
  KEY `sm_student_take_online_exam_questions_academic_id_foreign` (`academic_id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `sm_student_take_online_exam_questions`
--

INSERT INTO `sm_student_take_online_exam_questions` (`id`, `trueFalse`, `suitable_words`, `active_status`, `created_at`, `updated_at`, `take_online_exam_id`, `question_bank_id`, `created_by`, `updated_by`, `school_id`, `academic_id`) VALUES
(1, 'T', NULL, 1, '2022-05-20 07:20:42', '2022-05-20 07:20:42', 1, 3, 1, 1, 1, 3);

-- --------------------------------------------------------

--
-- Structure de la table `sm_student_take_onln_ex_ques_options`
--

DROP TABLE IF EXISTS `sm_student_take_onln_ex_ques_options`;
CREATE TABLE IF NOT EXISTS `sm_student_take_onln_ex_ques_options` (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint DEFAULT NULL COMMENT '0 unchecked 1 checked',
  `active_status` tinyint NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `take_online_exam_question_id` int UNSIGNED DEFAULT NULL,
  `created_by` int UNSIGNED DEFAULT '1',
  `updated_by` int UNSIGNED DEFAULT '1',
  `school_id` int UNSIGNED DEFAULT '1',
  `academic_id` int UNSIGNED DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `t_on_ex_q_id` (`take_online_exam_question_id`),
  KEY `sm_student_take_onln_ex_ques_options_school_id_foreign` (`school_id`),
  KEY `sm_student_take_onln_ex_ques_options_academic_id_foreign` (`academic_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `sm_student_timelines`
--

DROP TABLE IF EXISTS `sm_student_timelines`;
CREATE TABLE IF NOT EXISTS `sm_student_timelines` (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `staff_student_id` int NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date` date DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `file` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'stu=student,stf=staff',
  `visible_to_student` int NOT NULL DEFAULT '0' COMMENT '0 = no, 1 = yes',
  `active_status` int NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_by` int UNSIGNED DEFAULT '1',
  `updated_by` int UNSIGNED DEFAULT '1',
  `school_id` int UNSIGNED DEFAULT '1',
  `academic_id` int UNSIGNED DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `sm_student_timelines_school_id_foreign` (`school_id`),
  KEY `sm_student_timelines_academic_id_foreign` (`academic_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `sm_styles`
--

DROP TABLE IF EXISTS `sm_styles`;
CREATE TABLE IF NOT EXISTS `sm_styles` (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `style_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `path_main_style` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `path_infix_style` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `primary_color` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `primary_color2` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title_color` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `text_color` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `white` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `black` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sidebar_bg` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `barchart1` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `barchart2` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `barcharttextcolor` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `barcharttextfamily` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `areachartlinecolor1` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `areachartlinecolor2` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `dashboardbackground` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `active_status` tinyint NOT NULL DEFAULT '1',
  `is_active` tinyint NOT NULL DEFAULT '0',
  `is_default` tinyint NOT NULL DEFAULT '0' COMMENT 'if 1 then yes, if 0 then no',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_by` int UNSIGNED DEFAULT '1',
  `updated_by` int UNSIGNED DEFAULT '1',
  `school_id` int UNSIGNED DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `sm_styles_school_id_foreign` (`school_id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `sm_styles`
--

INSERT INTO `sm_styles` (`id`, `style_name`, `path_main_style`, `path_infix_style`, `primary_color`, `primary_color2`, `title_color`, `text_color`, `white`, `black`, `sidebar_bg`, `barchart1`, `barchart2`, `barcharttextcolor`, `barcharttextfamily`, `areachartlinecolor1`, `areachartlinecolor2`, `dashboardbackground`, `active_status`, `is_active`, `is_default`, `created_at`, `updated_at`, `created_by`, `updated_by`, `school_id`) VALUES
(1, 'Default', 'style.css', 'infix.css', '#415094', '#7c32ff', '#222222', '#828bb2', '#ffffff', '#000000', '#e7ecff', '#8a33f8', '#f25278', '#415094', '\"poppins\", sans-serif', 'rgba(124, 50, 255, 0.5)', 'rgba(242, 82, 120, 0.5)', '', 1, 0, 0, '2022-05-02 18:30:55', '2022-06-01 13:11:28', 1, 1, 1),
(2, 'Lawn Green', 'lawngreen_version/style.css', 'lawngreen_version/infix.css', '#415094', '#03e396', '#222222', '#828bb2', '#ffffff', '#000000', '#e7ecff', '#415094', '#03e396', '#03e396', '\"Cerebri Sans\", Helvetica, Arial, sans-serif', '#415094', '#03e396', '#e7ecff', 1, 1, 0, '2022-05-02 18:30:55', '2022-06-14 02:04:55', 1, 1, 1),
(3, 'Sky Blue', 'blue_version/style.css', 'blue_version/infix.css', '#415094', '#2c7be5', '#222222', '#828bb2', '#ffffff', '#000000', '#e7ecff', '#8a33f8', '#f25278', '#415094', 'HKGroteskRegular', 'rgba(124, 50, 255, 0.5)', 'rgba(242, 82, 120, 0.5)', '#e7ecff', 1, 0, 0, NULL, '2022-06-14 02:04:55', 1, 1, 1);

-- --------------------------------------------------------

--
-- Structure de la table `sm_subjects`
--

DROP TABLE IF EXISTS `sm_subjects`;
CREATE TABLE IF NOT EXISTS `sm_subjects` (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `subject_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `subject_code` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `subject_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `active_status` tinyint NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_by` int UNSIGNED DEFAULT '1',
  `updated_by` int UNSIGNED DEFAULT '1',
  `school_id` int UNSIGNED DEFAULT '1',
  `academic_id` int UNSIGNED DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `sm_subjects_school_id_foreign` (`school_id`),
  KEY `sm_subjects_academic_id_foreign` (`academic_id`)
) ENGINE=MyISAM AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `sm_subjects`
--

INSERT INTO `sm_subjects` (`id`, `subject_name`, `subject_code`, `subject_type`, `active_status`, `created_at`, `updated_at`, `created_by`, `updated_by`, `school_id`, `academic_id`) VALUES
(1, 'ANGLAIS', 'ANG', 'T', 1, '2022-05-13 13:04:37', '2022-06-14 11:15:18', 1, 1, 1, 3),
(3, 'Français', 'Fr', 'T', 1, '2022-06-14 11:16:26', '2022-06-14 11:16:26', 1, 1, 1, 3),
(2, 'MATHEMATIQUES', 'MATHS', 'T', 1, '2022-06-02 09:11:33', '2022-06-02 09:45:29', 1, 1, 1, 3),
(4, 'HISTOIRE', 'HIST', 'T', 1, '2022-06-14 11:17:00', '2022-06-14 11:17:00', 1, 1, 1, 3),
(5, 'INFORMATIQUE', 'INFOS', 'T', 1, '2022-06-14 11:18:17', '2022-06-14 11:18:17', 1, 1, 1, 3),
(6, 'TIC', 'TP INFOS', 'P', 1, '2022-06-14 11:19:57', '2022-06-14 11:19:57', 1, 1, 1, 3),
(7, 'GEOGRAPHIE', 'GEO', 'T', 1, '2022-06-14 11:22:34', '2022-06-14 11:22:34', 1, 1, 1, 3),
(8, 'EDUCATION CIVIQUE ET MORALE', 'ECM', 'T', 1, '2022-06-14 11:24:38', '2022-06-14 11:24:38', 1, 1, 1, 3),
(9, 'EDUCATION PHYSIQUE ET SPORTIVE', 'EPS', 'P', 1, '2022-06-14 11:25:31', '2022-06-14 11:25:31', 1, 1, 1, 3),
(10, 'PHILOSOPHIE', 'PHILO', 'T', 1, '2022-06-14 11:27:02', '2022-06-14 11:27:02', 1, 1, 1, 3),
(11, 'PHYSIQUE', 'PHY', 'T', 1, '2022-06-14 11:28:33', '2022-06-14 11:28:33', 1, 1, 1, 3),
(12, 'CHIMIE', 'CHI', 'T', 1, '2022-06-14 11:30:26', '2022-06-14 11:31:50', 1, 1, 1, 3),
(13, 'LABORATOIRE CHIMIE', 'TP CHI', 'P', 1, '2022-06-14 11:31:11', '2022-06-14 11:32:24', 1, 1, 1, 3),
(14, 'Sciences de la Vie et de la Terre', 'SVT', 'T', 1, '2022-06-14 11:42:18', '2022-06-14 11:42:18', 1, 1, 1, 3),
(15, '2ème LANGUE', 'LV II', 'T', 1, '2022-06-14 11:57:18', '2022-06-14 11:57:18', 1, 1, 1, 3);

-- --------------------------------------------------------

--
-- Structure de la table `sm_subject_attendances`
--

DROP TABLE IF EXISTS `sm_subject_attendances`;
CREATE TABLE IF NOT EXISTS `sm_subject_attendances` (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `attendance_type` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Present: P Late: L Absent: A Holiday: H Half Day: F',
  `notes` varchar(500) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `attendance_date` date DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `subject_id` int UNSIGNED DEFAULT NULL,
  `student_id` int UNSIGNED DEFAULT NULL,
  `created_by` int UNSIGNED DEFAULT '1',
  `updated_by` int UNSIGNED DEFAULT '1',
  `school_id` int UNSIGNED DEFAULT '1',
  `academic_id` int UNSIGNED DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `sm_subject_attendances_subject_id_foreign` (`subject_id`),
  KEY `sm_subject_attendances_student_id_foreign` (`student_id`),
  KEY `sm_subject_attendances_school_id_foreign` (`school_id`),
  KEY `sm_subject_attendances_academic_id_foreign` (`academic_id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `sm_subject_attendances`
--

INSERT INTO `sm_subject_attendances` (`id`, `attendance_type`, `notes`, `attendance_date`, `created_at`, `updated_at`, `subject_id`, `student_id`, `created_by`, `updated_by`, `school_id`, `academic_id`) VALUES
(1, 'P', '', '2022-05-13', '2022-05-14 21:57:28', '2022-05-14 21:57:28', 1, 1, 1, 1, 1, 3),
(2, 'P', '', '2022-05-13', '2022-05-14 21:57:28', '2022-05-14 21:57:28', 1, 2, 1, 1, 1, 3);

-- --------------------------------------------------------

--
-- Structure de la table `sm_suppliers`
--

DROP TABLE IF EXISTS `sm_suppliers`;
CREATE TABLE IF NOT EXISTS `sm_suppliers` (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `company_name` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `company_address` varchar(500) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `contact_person_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `contact_person_mobile` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `contact_person_email` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cotact_person_address` varchar(500) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(500) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `active_status` tinyint NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_by` int UNSIGNED DEFAULT '1',
  `updated_by` int UNSIGNED DEFAULT '1',
  `school_id` int UNSIGNED DEFAULT '1',
  `academic_id` int UNSIGNED DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `sm_suppliers_school_id_foreign` (`school_id`),
  KEY `sm_suppliers_academic_id_foreign` (`academic_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `sm_system_versions`
--

DROP TABLE IF EXISTS `sm_system_versions`;
CREATE TABLE IF NOT EXISTS `sm_system_versions` (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `version_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `features` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `sm_system_versions`
--

INSERT INTO `sm_system_versions` (`id`, `version_name`, `title`, `features`, `created_at`, `updated_at`) VALUES
(1, '3.2', 'Upgrade System Integration', 'features 1, features 2', '2022-05-02 18:30:53', '2022-05-02 18:30:53');

-- --------------------------------------------------------

--
-- Structure de la table `sm_teacher_upload_contents`
--

DROP TABLE IF EXISTS `sm_teacher_upload_contents`;
CREATE TABLE IF NOT EXISTS `sm_teacher_upload_contents` (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `content_title` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content_type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'as assignment, st study material, sy sullabus, ot others download',
  `available_for_admin` int NOT NULL DEFAULT '0',
  `available_for_all_classes` int NOT NULL DEFAULT '0',
  `upload_date` date DEFAULT NULL,
  `description` varchar(500) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `upload_file` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `active_status` tinyint NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `class` int UNSIGNED DEFAULT NULL,
  `section` int UNSIGNED DEFAULT NULL,
  `created_by` int UNSIGNED DEFAULT '1',
  `updated_by` int UNSIGNED DEFAULT '1',
  `school_id` int UNSIGNED DEFAULT '1',
  `academic_id` int UNSIGNED DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `sm_teacher_upload_contents_class_foreign` (`class`),
  KEY `sm_teacher_upload_contents_section_foreign` (`section`),
  KEY `sm_teacher_upload_contents_school_id_foreign` (`school_id`),
  KEY `sm_teacher_upload_contents_academic_id_foreign` (`academic_id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `sm_teacher_upload_contents`
--

INSERT INTO `sm_teacher_upload_contents` (`id`, `content_title`, `content_type`, `available_for_admin`, `available_for_all_classes`, `upload_date`, `description`, `upload_file`, `active_status`, `created_at`, `updated_at`, `class`, `section`, `created_by`, `updated_by`, `school_id`, `academic_id`) VALUES
(1, 'Demo', 'sy', 0, 0, '2022-05-13', 'Voci le programme d\'examen', 'public/uploads/upload_contents/bc555e1bf0295219efb527279525ce01.pdf', 1, '2022-05-13 15:08:31', '2022-05-13 15:08:31', 5, 5, 1, 1, 1, 3);

-- --------------------------------------------------------

--
-- Structure de la table `sm_temporary_meritlists`
--

DROP TABLE IF EXISTS `sm_temporary_meritlists`;
CREATE TABLE IF NOT EXISTS `sm_temporary_meritlists` (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `iid` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `student_id` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `merit_order` int DEFAULT NULL,
  `student_name` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `admission_no` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `subjects_id_string` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `subjects_string` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `marks_string` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `total_marks` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `average_mark` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `gpa_point` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `result` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `exam_id` int UNSIGNED DEFAULT NULL,
  `class_id` int UNSIGNED DEFAULT NULL,
  `section_id` int UNSIGNED DEFAULT NULL,
  `school_id` int UNSIGNED DEFAULT '1',
  `academic_id` int UNSIGNED DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `sm_temporary_meritlists_exam_id_foreign` (`exam_id`),
  KEY `sm_temporary_meritlists_class_id_foreign` (`class_id`),
  KEY `sm_temporary_meritlists_section_id_foreign` (`section_id`),
  KEY `sm_temporary_meritlists_school_id_foreign` (`school_id`),
  KEY `sm_temporary_meritlists_academic_id_foreign` (`academic_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `sm_testimonials`
--

DROP TABLE IF EXISTS `sm_testimonials`;
CREATE TABLE IF NOT EXISTS `sm_testimonials` (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `designation` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `institution_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `school_id` int UNSIGNED DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `sm_testimonials_school_id_foreign` (`school_id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `sm_testimonials`
--

INSERT INTO `sm_testimonials` (`id`, `name`, `designation`, `institution_name`, `image`, `description`, `created_at`, `updated_at`, `school_id`) VALUES
(1, 'Tristique euhen', 'CEO', 'Google', 'public/uploads/testimonial/testimonial_1.jpg', 'its vast! Infix has more additional feature that will expect in a complete solution.', '2022-05-02 06:30:45', NULL, 1),
(2, 'Malala euhen', 'Chairman', 'Linkdin', 'public/uploads/testimonial/testimonial_2.jpg', 'its vast! Infix has more additional feature that will expect in a complete solution.', '2022-05-02 06:30:45', NULL, 1);

-- --------------------------------------------------------

--
-- Structure de la table `sm_time_zones`
--

DROP TABLE IF EXISTS `sm_time_zones`;
CREATE TABLE IF NOT EXISTS `sm_time_zones` (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `code` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `time_zone` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=425 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `sm_time_zones`
--

INSERT INTO `sm_time_zones` (`id`, `code`, `time_zone`, `created_at`, `updated_at`) VALUES
(1, 'AD', 'Europe/Andorra', '2022-05-02 18:30:59', '2022-05-02 18:30:59'),
(2, 'AE', 'Asia/Dubai', '2022-05-02 18:30:59', '2022-05-02 18:30:59'),
(3, 'AF', 'Asia/Kabul', '2022-05-02 18:31:00', '2022-05-02 18:31:00'),
(4, 'AG', 'America/Antigua', '2022-05-02 18:31:00', '2022-05-02 18:31:00'),
(5, 'AI', 'America/Anguilla', '2022-05-02 18:31:00', '2022-05-02 18:31:00'),
(6, 'AL', 'Europe/Tirane', '2022-05-02 18:31:00', '2022-05-02 18:31:00'),
(7, 'AM', 'Asia/Yerevan', '2022-05-02 18:31:00', '2022-05-02 18:31:00'),
(8, 'AO', 'Africa/Luanda', '2022-05-02 18:31:00', '2022-05-02 18:31:00'),
(9, 'AQ', 'Antarctica/McMurdo', '2022-05-02 18:31:00', '2022-05-02 18:31:00'),
(10, 'AQ', 'Antarctica/Casey', '2022-05-02 18:31:00', '2022-05-02 18:31:00'),
(11, 'AQ', 'Antarctica/Davis', '2022-05-02 18:31:00', '2022-05-02 18:31:00'),
(12, 'AQ', 'Antarctica/DumontDUrville', '2022-05-02 18:31:00', '2022-05-02 18:31:00'),
(13, 'AQ', 'Antarctica/Mawson', '2022-05-02 18:31:00', '2022-05-02 18:31:00'),
(14, 'AQ', 'Antarctica/Palmer', '2022-05-02 18:31:00', '2022-05-02 18:31:00'),
(15, 'AQ', 'Antarctica/Rothera', '2022-05-02 18:31:00', '2022-05-02 18:31:00'),
(16, 'AQ', 'Antarctica/Syowa', '2022-05-02 18:31:00', '2022-05-02 18:31:00'),
(17, 'AQ', 'Antarctica/Troll', '2022-05-02 18:31:00', '2022-05-02 18:31:00'),
(18, 'AQ', 'Antarctica/Vostok', '2022-05-02 18:31:00', '2022-05-02 18:31:00'),
(19, 'AR', 'America/Argentina/Buenos_Aires', '2022-05-02 18:31:00', '2022-05-02 18:31:00'),
(20, 'AR', 'America/Argentina/Cordoba', '2022-05-02 18:31:00', '2022-05-02 18:31:00'),
(21, 'AR', 'America/Argentina/Salta', '2022-05-02 18:31:00', '2022-05-02 18:31:00'),
(22, 'AR', 'America/Argentina/Jujuy', '2022-05-02 18:31:00', '2022-05-02 18:31:00'),
(23, 'AR', 'America/Argentina/Tucuman', '2022-05-02 18:31:00', '2022-05-02 18:31:00'),
(24, 'AR', 'America/Argentina/Catamarca', '2022-05-02 18:31:00', '2022-05-02 18:31:00'),
(25, 'AR', 'America/Argentina/La_Rioja', '2022-05-02 18:31:00', '2022-05-02 18:31:00'),
(26, 'AR', 'America/Argentina/San_Juan', '2022-05-02 18:31:00', '2022-05-02 18:31:00'),
(27, 'AR', 'America/Argentina/Mendoza', '2022-05-02 18:31:00', '2022-05-02 18:31:00'),
(28, 'AR', 'America/Argentina/San_Luis', '2022-05-02 18:31:00', '2022-05-02 18:31:00'),
(29, 'AR', 'America/Argentina/Rio_Gallegos', '2022-05-02 18:31:00', '2022-05-02 18:31:00'),
(30, 'AR', 'America/Argentina/Ushuaia', '2022-05-02 18:31:00', '2022-05-02 18:31:00'),
(31, 'AS', 'Pacific/Pago_Pago', '2022-05-02 18:31:00', '2022-05-02 18:31:00'),
(32, 'AT', 'Europe/Vienna', '2022-05-02 18:31:00', '2022-05-02 18:31:00'),
(33, 'AU', 'Australia/Lord_Howe', '2022-05-02 18:31:00', '2022-05-02 18:31:00'),
(34, 'AU', 'Antarctica/Macquarie', '2022-05-02 18:31:00', '2022-05-02 18:31:00'),
(35, 'AU', 'Australia/Hobart', '2022-05-02 18:31:00', '2022-05-02 18:31:00'),
(36, 'AU', 'Australia/Currie', '2022-05-02 18:31:00', '2022-05-02 18:31:00'),
(37, 'AU', 'Australia/Melbourne', '2022-05-02 18:31:00', '2022-05-02 18:31:00'),
(38, 'AU', 'Australia/Sydney', '2022-05-02 18:31:00', '2022-05-02 18:31:00'),
(39, 'AU', 'Australia/Broken_Hill', '2022-05-02 18:31:00', '2022-05-02 18:31:00'),
(40, 'AU', 'Australia/Brisbane', '2022-05-02 18:31:00', '2022-05-02 18:31:00'),
(41, 'AU', 'Australia/Lindeman', '2022-05-02 18:31:00', '2022-05-02 18:31:00'),
(42, 'AU', 'Australia/Adelaide', '2022-05-02 18:31:00', '2022-05-02 18:31:00'),
(43, 'AU', 'Australia/Darwin', '2022-05-02 18:31:00', '2022-05-02 18:31:00'),
(44, 'AU', 'Australia/Perth', '2022-05-02 18:31:00', '2022-05-02 18:31:00'),
(45, 'AU', 'Australia/Eucla', '2022-05-02 18:31:00', '2022-05-02 18:31:00'),
(46, 'AW', 'America/Aruba', '2022-05-02 18:31:00', '2022-05-02 18:31:00'),
(47, 'AX', 'Europe/Mariehamn', '2022-05-02 18:31:00', '2022-05-02 18:31:00'),
(48, 'AZ', 'Asia/Baku', '2022-05-02 18:31:00', '2022-05-02 18:31:00'),
(49, 'BA', 'Europe/Sarajevo', '2022-05-02 18:31:00', '2022-05-02 18:31:00'),
(50, 'BB', 'America/Barbados', '2022-05-02 18:31:00', '2022-05-02 18:31:00'),
(51, 'BD', 'Asia/Dhaka', '2022-05-02 18:31:00', '2022-05-02 18:31:00'),
(52, 'BE', 'Europe/Brussels', '2022-05-02 18:31:00', '2022-05-02 18:31:00'),
(53, 'BF', 'Africa/Ouagadougou', '2022-05-02 18:31:00', '2022-05-02 18:31:00'),
(54, 'BG', 'Europe/Sofia', '2022-05-02 18:31:00', '2022-05-02 18:31:00'),
(55, 'BH', 'Asia/Bahrain', '2022-05-02 18:31:00', '2022-05-02 18:31:00'),
(56, 'BI', 'Africa/Bujumbura', '2022-05-02 18:31:00', '2022-05-02 18:31:00'),
(57, 'BJ', 'Africa/Porto-Novo', '2022-05-02 18:31:00', '2022-05-02 18:31:00'),
(58, 'BL', 'America/St_Barthelemy', '2022-05-02 18:31:00', '2022-05-02 18:31:00'),
(59, 'BM', 'Atlantic/Bermuda', '2022-05-02 18:31:00', '2022-05-02 18:31:00'),
(60, 'BN', 'Asia/Brunei', '2022-05-02 18:31:00', '2022-05-02 18:31:00'),
(61, 'BO', 'America/La_Paz', '2022-05-02 18:31:00', '2022-05-02 18:31:00'),
(62, 'BQ', 'America/Kralendijk', '2022-05-02 18:31:00', '2022-05-02 18:31:00'),
(63, 'BR', 'America/Noronha', '2022-05-02 18:31:00', '2022-05-02 18:31:00'),
(64, 'BR', 'America/Belem', '2022-05-02 18:31:00', '2022-05-02 18:31:00'),
(65, 'BR', 'America/Fortaleza', '2022-05-02 18:31:00', '2022-05-02 18:31:00'),
(66, 'BR', 'America/Recife', '2022-05-02 18:31:00', '2022-05-02 18:31:00'),
(67, 'BR', 'America/Araguaina', '2022-05-02 18:31:00', '2022-05-02 18:31:00'),
(68, 'BR', 'America/Maceio', '2022-05-02 18:31:00', '2022-05-02 18:31:00'),
(69, 'BR', 'America/Bahia', '2022-05-02 18:31:00', '2022-05-02 18:31:00'),
(70, 'BR', 'America/Sao_Paulo', '2022-05-02 18:31:00', '2022-05-02 18:31:00'),
(71, 'BR', 'America/Campo_Grande', '2022-05-02 18:31:00', '2022-05-02 18:31:00'),
(72, 'BR', 'America/Cuiaba', '2022-05-02 18:31:00', '2022-05-02 18:31:00'),
(73, 'BR', 'America/Santarem', '2022-05-02 18:31:00', '2022-05-02 18:31:00'),
(74, 'BR', 'America/Porto_Velho', '2022-05-02 18:31:00', '2022-05-02 18:31:00'),
(75, 'BR', 'America/Boa_Vista', '2022-05-02 18:31:00', '2022-05-02 18:31:00'),
(76, 'BR', 'America/Manaus', '2022-05-02 18:31:00', '2022-05-02 18:31:00'),
(77, 'BR', 'America/Eirunepe', '2022-05-02 18:31:00', '2022-05-02 18:31:00'),
(78, 'BR', 'America/Rio_Branco', '2022-05-02 18:31:00', '2022-05-02 18:31:00'),
(79, 'BS', 'America/Nassau', '2022-05-02 18:31:00', '2022-05-02 18:31:00'),
(80, 'BT', 'Asia/Thimphu', '2022-05-02 18:31:00', '2022-05-02 18:31:00'),
(81, 'BW', 'Africa/Gaborone', '2022-05-02 18:31:00', '2022-05-02 18:31:00'),
(82, 'BY', 'Europe/Minsk', '2022-05-02 18:31:00', '2022-05-02 18:31:00'),
(83, 'BZ', 'America/Belize', '2022-05-02 18:31:00', '2022-05-02 18:31:00'),
(84, 'CA', 'America/St_Johns', '2022-05-02 18:31:00', '2022-05-02 18:31:00'),
(85, 'CA', 'America/Halifax', '2022-05-02 18:31:00', '2022-05-02 18:31:00'),
(86, 'CA', 'America/Glace_Bay', '2022-05-02 18:31:00', '2022-05-02 18:31:00'),
(87, 'CA', 'America/Moncton', '2022-05-02 18:31:00', '2022-05-02 18:31:00'),
(88, 'CA', 'America/Goose_Bay', '2022-05-02 18:31:00', '2022-05-02 18:31:00'),
(89, 'CA', 'America/Blanc-Sablon', '2022-05-02 18:31:00', '2022-05-02 18:31:00'),
(90, 'CA', 'America/Toronto', '2022-05-02 18:31:00', '2022-05-02 18:31:00'),
(91, 'CA', 'America/Nipigon', '2022-05-02 18:31:00', '2022-05-02 18:31:00'),
(92, 'CA', 'America/Thunder_Bay', '2022-05-02 18:31:00', '2022-05-02 18:31:00'),
(93, 'CA', 'America/Iqaluit', '2022-05-02 18:31:00', '2022-05-02 18:31:00'),
(94, 'CA', 'America/Pangnirtung', '2022-05-02 18:31:00', '2022-05-02 18:31:00'),
(95, 'CA', 'America/Atikokan', '2022-05-02 18:31:00', '2022-05-02 18:31:00'),
(96, 'CA', 'America/Winnipeg', '2022-05-02 18:31:00', '2022-05-02 18:31:00'),
(97, 'CA', 'America/Rainy_River', '2022-05-02 18:31:00', '2022-05-02 18:31:00'),
(98, 'CA', 'America/Resolute', '2022-05-02 18:31:00', '2022-05-02 18:31:00'),
(99, 'CA', 'America/Rankin_Inlet', '2022-05-02 18:31:00', '2022-05-02 18:31:00'),
(100, 'CA', 'America/Regina', '2022-05-02 18:31:00', '2022-05-02 18:31:00'),
(101, 'CA', 'America/Swift_Current', '2022-05-02 18:31:00', '2022-05-02 18:31:00'),
(102, 'CA', 'America/Edmonton', '2022-05-02 18:31:00', '2022-05-02 18:31:00'),
(103, 'CA', 'America/Cambridge_Bay', '2022-05-02 18:31:00', '2022-05-02 18:31:00'),
(104, 'CA', 'America/Yellowknife', '2022-05-02 18:31:00', '2022-05-02 18:31:00'),
(105, 'CA', 'America/Inuvik', '2022-05-02 18:31:00', '2022-05-02 18:31:00'),
(106, 'CA', 'America/Creston', '2022-05-02 18:31:00', '2022-05-02 18:31:00'),
(107, 'CA', 'America/Dawson_Creek', '2022-05-02 18:31:00', '2022-05-02 18:31:00'),
(108, 'CA', 'America/Fort_Nelson', '2022-05-02 18:31:00', '2022-05-02 18:31:00'),
(109, 'CA', 'America/Vancouver', '2022-05-02 18:31:00', '2022-05-02 18:31:00'),
(110, 'CA', 'America/Whitehorse', '2022-05-02 18:31:00', '2022-05-02 18:31:00'),
(111, 'CA', 'America/Dawson', '2022-05-02 18:31:00', '2022-05-02 18:31:00'),
(112, 'CC', 'Indian/Cocos', '2022-05-02 18:31:00', '2022-05-02 18:31:00'),
(113, 'CD', 'Africa/Kinshasa', '2022-05-02 18:31:00', '2022-05-02 18:31:00'),
(114, 'CD', 'Africa/Lubumbashi', '2022-05-02 18:31:00', '2022-05-02 18:31:00'),
(115, 'CF', 'Africa/Bangui', '2022-05-02 18:31:00', '2022-05-02 18:31:00'),
(116, 'CG', 'Africa/Brazzaville', '2022-05-02 18:31:00', '2022-05-02 18:31:00'),
(117, 'CH', 'Europe/Zurich', '2022-05-02 18:31:00', '2022-05-02 18:31:00'),
(118, 'CI', 'Africa/Abidjan', '2022-05-02 18:31:00', '2022-05-02 18:31:00'),
(119, 'CK', 'Pacific/Rarotonga', '2022-05-02 18:31:00', '2022-05-02 18:31:00'),
(120, 'CL', 'America/Santiago', '2022-05-02 18:31:00', '2022-05-02 18:31:00'),
(121, 'CL', 'America/Punta_Arenas', '2022-05-02 18:31:00', '2022-05-02 18:31:00'),
(122, 'CL', 'Pacific/Easter', '2022-05-02 18:31:00', '2022-05-02 18:31:00'),
(123, 'CM', 'Africa/Douala', '2022-05-02 18:31:00', '2022-05-02 18:31:00'),
(124, 'CN', 'Asia/Shanghai', '2022-05-02 18:31:00', '2022-05-02 18:31:00'),
(125, 'CN', 'Asia/Urumqi', '2022-05-02 18:31:00', '2022-05-02 18:31:00'),
(126, 'CO', 'America/Bogota', '2022-05-02 18:31:00', '2022-05-02 18:31:00'),
(127, 'CR', 'America/Costa_Rica', '2022-05-02 18:31:00', '2022-05-02 18:31:00'),
(128, 'CU', 'America/Havana', '2022-05-02 18:31:00', '2022-05-02 18:31:00'),
(129, 'CV', 'Atlantic/Cape_Verde', '2022-05-02 18:31:00', '2022-05-02 18:31:00'),
(130, 'CW', 'America/Curacao', '2022-05-02 18:31:00', '2022-05-02 18:31:00'),
(131, 'CX', 'Indian/Christmas', '2022-05-02 18:31:00', '2022-05-02 18:31:00'),
(132, 'CY', 'Asia/Nicosia', '2022-05-02 18:31:00', '2022-05-02 18:31:00'),
(133, 'CY', 'Asia/Famagusta', '2022-05-02 18:31:00', '2022-05-02 18:31:00'),
(134, 'CZ', 'Europe/Prague', '2022-05-02 18:31:00', '2022-05-02 18:31:00'),
(135, 'DE', 'Europe/Berlin', '2022-05-02 18:31:00', '2022-05-02 18:31:00'),
(136, 'DE', 'Europe/Busingen', '2022-05-02 18:31:00', '2022-05-02 18:31:00'),
(137, 'DJ', 'Africa/Djibouti', '2022-05-02 18:31:00', '2022-05-02 18:31:00'),
(138, 'DK', 'Europe/Copenhagen', '2022-05-02 18:31:00', '2022-05-02 18:31:00'),
(139, 'DM', 'America/Dominica', '2022-05-02 18:31:00', '2022-05-02 18:31:00'),
(140, 'DO', 'America/Santo_Domingo', '2022-05-02 18:31:00', '2022-05-02 18:31:00'),
(141, 'DZ', 'Africa/Algiers', '2022-05-02 18:31:00', '2022-05-02 18:31:00'),
(142, 'EC', 'America/Guayaquil', '2022-05-02 18:31:00', '2022-05-02 18:31:00'),
(143, 'EC', 'Pacific/Galapagos', '2022-05-02 18:31:00', '2022-05-02 18:31:00'),
(144, 'EE', 'Europe/Tallinn', '2022-05-02 18:31:00', '2022-05-02 18:31:00'),
(145, 'EG', 'Africa/Cairo', '2022-05-02 18:31:00', '2022-05-02 18:31:00'),
(146, 'EH', 'Africa/El_Aaiun', '2022-05-02 18:31:00', '2022-05-02 18:31:00'),
(147, 'ER', 'Africa/Asmara', '2022-05-02 18:31:00', '2022-05-02 18:31:00'),
(148, 'ES', 'Europe/Madrid', '2022-05-02 18:31:00', '2022-05-02 18:31:00'),
(149, 'ES', 'Africa/Ceuta', '2022-05-02 18:31:00', '2022-05-02 18:31:00'),
(150, 'ES', 'Atlantic/Canary', '2022-05-02 18:31:00', '2022-05-02 18:31:00'),
(151, 'ET', 'Africa/Addis_Ababa', '2022-05-02 18:31:00', '2022-05-02 18:31:00'),
(152, 'FI', 'Europe/Helsinki', '2022-05-02 18:31:00', '2022-05-02 18:31:00'),
(153, 'FJ', 'Pacific/Fiji', '2022-05-02 18:31:00', '2022-05-02 18:31:00'),
(154, 'FK', 'Atlantic/Stanley', '2022-05-02 18:31:00', '2022-05-02 18:31:00'),
(155, 'FM', 'Pacific/Chuuk', '2022-05-02 18:31:00', '2022-05-02 18:31:00'),
(156, 'FM', 'Pacific/Pohnpei', '2022-05-02 18:31:00', '2022-05-02 18:31:00'),
(157, 'FM', 'Pacific/Kosrae', '2022-05-02 18:31:00', '2022-05-02 18:31:00'),
(158, 'FO', 'Atlantic/Faroe', '2022-05-02 18:31:00', '2022-05-02 18:31:00'),
(159, 'FR', 'Europe/Paris', '2022-05-02 18:31:00', '2022-05-02 18:31:00'),
(160, 'GA', 'Africa/Libreville', '2022-05-02 18:31:00', '2022-05-02 18:31:00'),
(161, 'GB', 'Europe/London', '2022-05-02 18:31:00', '2022-05-02 18:31:00'),
(162, 'GD', 'America/Grenada', '2022-05-02 18:31:00', '2022-05-02 18:31:00'),
(163, 'GE', 'Asia/Tbilisi', '2022-05-02 18:31:00', '2022-05-02 18:31:00'),
(164, 'GF', 'America/Cayenne', '2022-05-02 18:31:00', '2022-05-02 18:31:00'),
(165, 'GG', 'Europe/Guernsey', '2022-05-02 18:31:00', '2022-05-02 18:31:00'),
(166, 'GH', 'Africa/Accra', '2022-05-02 18:31:00', '2022-05-02 18:31:00'),
(167, 'GI', 'Europe/Gibraltar', '2022-05-02 18:31:00', '2022-05-02 18:31:00'),
(168, 'GL', 'America/Godthab', '2022-05-02 18:31:00', '2022-05-02 18:31:00'),
(169, 'GL', 'America/Danmarkshavn', '2022-05-02 18:31:00', '2022-05-02 18:31:00'),
(170, 'GL', 'America/Scoresbysund', '2022-05-02 18:31:00', '2022-05-02 18:31:00'),
(171, 'GL', 'America/Thule', '2022-05-02 18:31:00', '2022-05-02 18:31:00'),
(172, 'GM', 'Africa/Banjul', '2022-05-02 18:31:00', '2022-05-02 18:31:00'),
(173, 'GN', 'Africa/Conakry', '2022-05-02 18:31:00', '2022-05-02 18:31:00'),
(174, 'GP', 'America/Guadeloupe', '2022-05-02 18:31:00', '2022-05-02 18:31:00'),
(175, 'GQ', 'Africa/Malabo', '2022-05-02 18:31:00', '2022-05-02 18:31:00'),
(176, 'GR', 'Europe/Athens', '2022-05-02 18:31:00', '2022-05-02 18:31:00'),
(177, 'GS', 'Atlantic/South_Georgia', '2022-05-02 18:31:00', '2022-05-02 18:31:00'),
(178, 'GT', 'America/Guatemala', '2022-05-02 18:31:00', '2022-05-02 18:31:00'),
(179, 'GU', 'Pacific/Guam', '2022-05-02 18:31:00', '2022-05-02 18:31:00'),
(180, 'GW', 'Africa/Bissau', '2022-05-02 18:31:00', '2022-05-02 18:31:00'),
(181, 'GY', 'America/Guyana', '2022-05-02 18:31:00', '2022-05-02 18:31:00'),
(182, 'HK', 'Asia/Hong_Kong', '2022-05-02 18:31:00', '2022-05-02 18:31:00'),
(183, 'HN', 'America/Tegucigalpa', '2022-05-02 18:31:00', '2022-05-02 18:31:00'),
(184, 'HR', 'Europe/Zagreb', '2022-05-02 18:31:00', '2022-05-02 18:31:00'),
(185, 'HT', 'America/Port-au-Prince', '2022-05-02 18:31:00', '2022-05-02 18:31:00'),
(186, 'HU', 'Europe/Budapest', '2022-05-02 18:31:00', '2022-05-02 18:31:00'),
(187, 'ID', 'Asia/Jakarta', '2022-05-02 18:31:00', '2022-05-02 18:31:00'),
(188, 'ID', 'Asia/Pontianak', '2022-05-02 18:31:00', '2022-05-02 18:31:00'),
(189, 'ID', 'Asia/Makassar', '2022-05-02 18:31:00', '2022-05-02 18:31:00'),
(190, 'ID', 'Asia/Jayapura', '2022-05-02 18:31:00', '2022-05-02 18:31:00'),
(191, 'IE', 'Europe/Dublin', '2022-05-02 18:31:00', '2022-05-02 18:31:00'),
(192, 'IL', 'Asia/Jerusalem', '2022-05-02 18:31:00', '2022-05-02 18:31:00'),
(193, 'IM', 'Europe/Isle_of_Man', '2022-05-02 18:31:00', '2022-05-02 18:31:00'),
(194, 'IN', 'Asia/Kolkata', '2022-05-02 18:31:00', '2022-05-02 18:31:00'),
(195, 'IO', 'Indian/Chagos', '2022-05-02 18:31:00', '2022-05-02 18:31:00'),
(196, 'IQ', 'Asia/Baghdad', '2022-05-02 18:31:00', '2022-05-02 18:31:00'),
(197, 'IR', 'Asia/Tehran', '2022-05-02 18:31:00', '2022-05-02 18:31:00'),
(198, 'IS', 'Atlantic/Reykjavik', '2022-05-02 18:31:00', '2022-05-02 18:31:00'),
(199, 'IT', 'Europe/Rome', '2022-05-02 18:31:00', '2022-05-02 18:31:00'),
(200, 'JE', 'Europe/Jersey', '2022-05-02 18:31:00', '2022-05-02 18:31:00'),
(201, 'JM', 'America/Jamaica', '2022-05-02 18:31:00', '2022-05-02 18:31:00'),
(202, 'JO', 'Asia/Amman', '2022-05-02 18:31:00', '2022-05-02 18:31:00'),
(203, 'JP', 'Asia/Tokyo', '2022-05-02 18:31:00', '2022-05-02 18:31:00'),
(204, 'KE', 'Africa/Nairobi', '2022-05-02 18:31:00', '2022-05-02 18:31:00'),
(205, 'KG', 'Asia/Bishkek', '2022-05-02 18:31:00', '2022-05-02 18:31:00'),
(206, 'KH', 'Asia/Phnom_Penh', '2022-05-02 18:31:00', '2022-05-02 18:31:00'),
(207, 'KI', 'Pacific/Tarawa', '2022-05-02 18:31:00', '2022-05-02 18:31:00'),
(208, 'KI', 'Pacific/Enderbury', '2022-05-02 18:31:00', '2022-05-02 18:31:00'),
(209, 'KI', 'Pacific/Kiritimati', '2022-05-02 18:31:00', '2022-05-02 18:31:00'),
(210, 'KM', 'Indian/Comoro', '2022-05-02 18:31:00', '2022-05-02 18:31:00'),
(211, 'KN', 'America/St_Kitts', '2022-05-02 18:31:00', '2022-05-02 18:31:00'),
(212, 'KP', 'Asia/Pyongyang', '2022-05-02 18:31:00', '2022-05-02 18:31:00'),
(213, 'KR', 'Asia/Seoul', '2022-05-02 18:31:00', '2022-05-02 18:31:00'),
(214, 'KW', 'Asia/Kuwait', '2022-05-02 18:31:00', '2022-05-02 18:31:00'),
(215, 'KY', 'America/Cayman', '2022-05-02 18:31:00', '2022-05-02 18:31:00'),
(216, 'KZ', 'Asia/Almaty', '2022-05-02 18:31:00', '2022-05-02 18:31:00'),
(217, 'KZ', 'Asia/Qyzylorda', '2022-05-02 18:31:00', '2022-05-02 18:31:00'),
(218, 'KZ', 'Asia/Aqtobe', '2022-05-02 18:31:00', '2022-05-02 18:31:00'),
(219, 'KZ', 'Asia/Aqtau', '2022-05-02 18:31:00', '2022-05-02 18:31:00'),
(220, 'KZ', 'Asia/Atyrau', '2022-05-02 18:31:00', '2022-05-02 18:31:00'),
(221, 'KZ', 'Asia/Oral', '2022-05-02 18:31:01', '2022-05-02 18:31:01'),
(222, 'LA', 'Asia/Vientiane', '2022-05-02 18:31:01', '2022-05-02 18:31:01'),
(223, 'LB', 'Asia/Beirut', '2022-05-02 18:31:01', '2022-05-02 18:31:01'),
(224, 'LC', 'America/St_Lucia', '2022-05-02 18:31:01', '2022-05-02 18:31:01'),
(225, 'LI', 'Europe/Vaduz', '2022-05-02 18:31:01', '2022-05-02 18:31:01'),
(226, 'LK', 'Asia/Colombo', '2022-05-02 18:31:01', '2022-05-02 18:31:01'),
(227, 'LR', 'Africa/Monrovia', '2022-05-02 18:31:01', '2022-05-02 18:31:01'),
(228, 'LS', 'Africa/Maseru', '2022-05-02 18:31:01', '2022-05-02 18:31:01'),
(229, 'LT', 'Europe/Vilnius', '2022-05-02 18:31:01', '2022-05-02 18:31:01'),
(230, 'LU', 'Europe/Luxembourg', '2022-05-02 18:31:01', '2022-05-02 18:31:01'),
(231, 'LV', 'Europe/Riga', '2022-05-02 18:31:01', '2022-05-02 18:31:01'),
(232, 'LY', 'Africa/Tripoli', '2022-05-02 18:31:01', '2022-05-02 18:31:01'),
(233, 'MA', 'Africa/Casablanca', '2022-05-02 18:31:01', '2022-05-02 18:31:01'),
(234, 'MC', 'Europe/Monaco', '2022-05-02 18:31:01', '2022-05-02 18:31:01'),
(235, 'MD', 'Europe/Chisinau', '2022-05-02 18:31:01', '2022-05-02 18:31:01'),
(236, 'ME', 'Europe/Podgorica', '2022-05-02 18:31:01', '2022-05-02 18:31:01'),
(237, 'MF', 'America/Marigot', '2022-05-02 18:31:01', '2022-05-02 18:31:01'),
(238, 'MG', 'Indian/Antananarivo', '2022-05-02 18:31:01', '2022-05-02 18:31:01'),
(239, 'MH', 'Pacific/Majuro', '2022-05-02 18:31:01', '2022-05-02 18:31:01'),
(240, 'MH', 'Pacific/Kwajalein', '2022-05-02 18:31:01', '2022-05-02 18:31:01'),
(241, 'MK', 'Europe/Skopje', '2022-05-02 18:31:01', '2022-05-02 18:31:01'),
(242, 'ML', 'Africa/Bamako', '2022-05-02 18:31:01', '2022-05-02 18:31:01'),
(243, 'MM', 'Asia/Yangon', '2022-05-02 18:31:01', '2022-05-02 18:31:01'),
(244, 'MN', 'Asia/Ulaanbaatar', '2022-05-02 18:31:01', '2022-05-02 18:31:01'),
(245, 'MN', 'Asia/Hovd', '2022-05-02 18:31:01', '2022-05-02 18:31:01'),
(246, 'MN', 'Asia/Choibalsan', '2022-05-02 18:31:01', '2022-05-02 18:31:01'),
(247, 'MO', 'Asia/Macau', '2022-05-02 18:31:01', '2022-05-02 18:31:01'),
(248, 'MP', 'Pacific/Saipan', '2022-05-02 18:31:01', '2022-05-02 18:31:01'),
(249, 'MQ', 'America/Martinique', '2022-05-02 18:31:01', '2022-05-02 18:31:01'),
(250, 'MR', 'Africa/Nouakchott', '2022-05-02 18:31:01', '2022-05-02 18:31:01'),
(251, 'MS', 'America/Montserrat', '2022-05-02 18:31:01', '2022-05-02 18:31:01'),
(252, 'MT', 'Europe/Malta', '2022-05-02 18:31:01', '2022-05-02 18:31:01'),
(253, 'MU', 'Indian/Mauritius', '2022-05-02 18:31:01', '2022-05-02 18:31:01'),
(254, 'MV', 'Indian/Maldives', '2022-05-02 18:31:01', '2022-05-02 18:31:01'),
(255, 'MW', 'Africa/Blantyre', '2022-05-02 18:31:01', '2022-05-02 18:31:01'),
(256, 'MX', 'America/Mexico_City', '2022-05-02 18:31:01', '2022-05-02 18:31:01'),
(257, 'MX', 'America/Cancun', '2022-05-02 18:31:01', '2022-05-02 18:31:01'),
(258, 'MX', 'America/Merida', '2022-05-02 18:31:01', '2022-05-02 18:31:01'),
(259, 'MX', 'America/Monterrey', '2022-05-02 18:31:01', '2022-05-02 18:31:01'),
(260, 'MX', 'America/Matamoros', '2022-05-02 18:31:01', '2022-05-02 18:31:01'),
(261, 'MX', 'America/Mazatlan', '2022-05-02 18:31:01', '2022-05-02 18:31:01'),
(262, 'MX', 'America/Chihuahua', '2022-05-02 18:31:01', '2022-05-02 18:31:01'),
(263, 'MX', 'America/Ojinaga', '2022-05-02 18:31:01', '2022-05-02 18:31:01'),
(264, 'MX', 'America/Hermosillo', '2022-05-02 18:31:01', '2022-05-02 18:31:01'),
(265, 'MX', 'America/Tijuana', '2022-05-02 18:31:01', '2022-05-02 18:31:01'),
(266, 'MX', 'America/Bahia_Banderas', '2022-05-02 18:31:01', '2022-05-02 18:31:01'),
(267, 'MY', 'Asia/Kuala_Lumpur', '2022-05-02 18:31:01', '2022-05-02 18:31:01'),
(268, 'MY', 'Asia/Kuching', '2022-05-02 18:31:01', '2022-05-02 18:31:01'),
(269, 'MZ', 'Africa/Maputo', '2022-05-02 18:31:01', '2022-05-02 18:31:01'),
(270, 'NA', 'Africa/Windhoek', '2022-05-02 18:31:01', '2022-05-02 18:31:01'),
(271, 'NC', 'Pacific/Noumea', '2022-05-02 18:31:01', '2022-05-02 18:31:01'),
(272, 'NE', 'Africa/Niamey', '2022-05-02 18:31:01', '2022-05-02 18:31:01'),
(273, 'NF', 'Pacific/Norfolk', '2022-05-02 18:31:01', '2022-05-02 18:31:01'),
(274, 'NG', 'Africa/Lagos', '2022-05-02 18:31:01', '2022-05-02 18:31:01'),
(275, 'NI', 'America/Managua', '2022-05-02 18:31:01', '2022-05-02 18:31:01'),
(276, 'NL', 'Europe/Amsterdam', '2022-05-02 18:31:01', '2022-05-02 18:31:01'),
(277, 'NO', 'Europe/Oslo', '2022-05-02 18:31:01', '2022-05-02 18:31:01'),
(278, 'NP', 'Asia/Kathmandu', '2022-05-02 18:31:01', '2022-05-02 18:31:01'),
(279, 'NR', 'Pacific/Nauru', '2022-05-02 18:31:01', '2022-05-02 18:31:01'),
(280, 'NU', 'Pacific/Niue', '2022-05-02 18:31:01', '2022-05-02 18:31:01'),
(281, 'NZ', 'Pacific/Auckland', '2022-05-02 18:31:01', '2022-05-02 18:31:01'),
(282, 'NZ', 'Pacific/Chatham', '2022-05-02 18:31:01', '2022-05-02 18:31:01'),
(283, 'OM', 'Asia/Muscat', '2022-05-02 18:31:01', '2022-05-02 18:31:01'),
(284, 'PA', 'America/Panama', '2022-05-02 18:31:01', '2022-05-02 18:31:01'),
(285, 'PE', 'America/Lima', '2022-05-02 18:31:01', '2022-05-02 18:31:01'),
(286, 'PF', 'Pacific/Tahiti', '2022-05-02 18:31:01', '2022-05-02 18:31:01'),
(287, 'PF', 'Pacific/Marquesas', '2022-05-02 18:31:01', '2022-05-02 18:31:01'),
(288, 'PF', 'Pacific/Gambier', '2022-05-02 18:31:01', '2022-05-02 18:31:01'),
(289, 'PG', 'Pacific/Port_Moresby', '2022-05-02 18:31:01', '2022-05-02 18:31:01'),
(290, 'PG', 'Pacific/Bougainville', '2022-05-02 18:31:01', '2022-05-02 18:31:01'),
(291, 'PH', 'Asia/Manila', '2022-05-02 18:31:01', '2022-05-02 18:31:01'),
(292, 'PK', 'Asia/Karachi', '2022-05-02 18:31:01', '2022-05-02 18:31:01'),
(293, 'PL', 'Europe/Warsaw', '2022-05-02 18:31:01', '2022-05-02 18:31:01'),
(294, 'PM', 'America/Miquelon', '2022-05-02 18:31:01', '2022-05-02 18:31:01'),
(295, 'PN', 'Pacific/Pitcairn', '2022-05-02 18:31:01', '2022-05-02 18:31:01'),
(296, 'PR', 'America/Puerto_Rico', '2022-05-02 18:31:01', '2022-05-02 18:31:01'),
(297, 'PS', 'Asia/Gaza', '2022-05-02 18:31:01', '2022-05-02 18:31:01'),
(298, 'PS', 'Asia/Hebron', '2022-05-02 18:31:01', '2022-05-02 18:31:01'),
(299, 'PT', 'Europe/Lisbon', '2022-05-02 18:31:01', '2022-05-02 18:31:01'),
(300, 'PT', 'Atlantic/Madeira', '2022-05-02 18:31:01', '2022-05-02 18:31:01'),
(301, 'PT', 'Atlantic/Azores', '2022-05-02 18:31:01', '2022-05-02 18:31:01'),
(302, 'PW', 'Pacific/Palau', '2022-05-02 18:31:01', '2022-05-02 18:31:01'),
(303, 'PY', 'America/Asuncion', '2022-05-02 18:31:01', '2022-05-02 18:31:01'),
(304, 'QA', 'Asia/Qatar', '2022-05-02 18:31:01', '2022-05-02 18:31:01'),
(305, 'RE', 'Indian/Reunion', '2022-05-02 18:31:01', '2022-05-02 18:31:01'),
(306, 'RO', 'Europe/Bucharest', '2022-05-02 18:31:01', '2022-05-02 18:31:01'),
(307, 'RS', 'Europe/Belgrade', '2022-05-02 18:31:01', '2022-05-02 18:31:01'),
(308, 'RU', 'Europe/Kaliningrad', '2022-05-02 18:31:01', '2022-05-02 18:31:01'),
(309, 'RU', 'Europe/Moscow', '2022-05-02 18:31:01', '2022-05-02 18:31:01'),
(310, 'RU', 'Europe/Simferopol', '2022-05-02 18:31:01', '2022-05-02 18:31:01'),
(311, 'RU', 'Europe/Volgograd', '2022-05-02 18:31:01', '2022-05-02 18:31:01'),
(312, 'RU', 'Europe/Kirov', '2022-05-02 18:31:01', '2022-05-02 18:31:01'),
(313, 'RU', 'Europe/Astrakhan', '2022-05-02 18:31:01', '2022-05-02 18:31:01'),
(314, 'RU', 'Europe/Saratov', '2022-05-02 18:31:01', '2022-05-02 18:31:01'),
(315, 'RU', 'Europe/Ulyanovsk', '2022-05-02 18:31:01', '2022-05-02 18:31:01'),
(316, 'RU', 'Europe/Samara', '2022-05-02 18:31:01', '2022-05-02 18:31:01'),
(317, 'RU', 'Asia/Yekaterinburg', '2022-05-02 18:31:01', '2022-05-02 18:31:01'),
(318, 'RU', 'Asia/Omsk', '2022-05-02 18:31:01', '2022-05-02 18:31:01'),
(319, 'RU', 'Asia/Novosibirsk', '2022-05-02 18:31:01', '2022-05-02 18:31:01'),
(320, 'RU', 'Asia/Barnaul', '2022-05-02 18:31:01', '2022-05-02 18:31:01'),
(321, 'RU', 'Asia/Tomsk', '2022-05-02 18:31:01', '2022-05-02 18:31:01'),
(322, 'RU', 'Asia/Novokuznetsk', '2022-05-02 18:31:01', '2022-05-02 18:31:01'),
(323, 'RU', 'Asia/Krasnoyarsk', '2022-05-02 18:31:01', '2022-05-02 18:31:01'),
(324, 'RU', 'Asia/Irkutsk', '2022-05-02 18:31:01', '2022-05-02 18:31:01'),
(325, 'RU', 'Asia/Chita', '2022-05-02 18:31:01', '2022-05-02 18:31:01'),
(326, 'RU', 'Asia/Yakutsk', '2022-05-02 18:31:01', '2022-05-02 18:31:01'),
(327, 'RU', 'Asia/Khandyga', '2022-05-02 18:31:01', '2022-05-02 18:31:01'),
(328, 'RU', 'Asia/Vladivostok', '2022-05-02 18:31:01', '2022-05-02 18:31:01'),
(329, 'RU', 'Asia/Ust-Nera', '2022-05-02 18:31:01', '2022-05-02 18:31:01'),
(330, 'RU', 'Asia/Magadan', '2022-05-02 18:31:01', '2022-05-02 18:31:01'),
(331, 'RU', 'Asia/Sakhalin', '2022-05-02 18:31:01', '2022-05-02 18:31:01'),
(332, 'RU', 'Asia/Srednekolymsk', '2022-05-02 18:31:01', '2022-05-02 18:31:01'),
(333, 'RU', 'Asia/Kamchatka', '2022-05-02 18:31:01', '2022-05-02 18:31:01'),
(334, 'RU', 'Asia/Anadyr', '2022-05-02 18:31:01', '2022-05-02 18:31:01'),
(335, 'RW', 'Africa/Kigali', '2022-05-02 18:31:01', '2022-05-02 18:31:01'),
(336, 'SA', 'Asia/Riyadh', '2022-05-02 18:31:01', '2022-05-02 18:31:01'),
(337, 'SB', 'Pacific/Guadalcanal', '2022-05-02 18:31:01', '2022-05-02 18:31:01'),
(338, 'SC', 'Indian/Mahe', '2022-05-02 18:31:01', '2022-05-02 18:31:01'),
(339, 'SD', 'Africa/Khartoum', '2022-05-02 18:31:01', '2022-05-02 18:31:01'),
(340, 'SE', 'Europe/Stockholm', '2022-05-02 18:31:01', '2022-05-02 18:31:01'),
(341, 'SG', 'Asia/Singapore', '2022-05-02 18:31:01', '2022-05-02 18:31:01'),
(342, 'SH', 'Atlantic/St_Helena', '2022-05-02 18:31:01', '2022-05-02 18:31:01'),
(343, 'SI', 'Europe/Ljubljana', '2022-05-02 18:31:01', '2022-05-02 18:31:01'),
(344, 'SJ', 'Arctic/Longyearbyen', '2022-05-02 18:31:01', '2022-05-02 18:31:01'),
(345, 'SK', 'Europe/Bratislava', '2022-05-02 18:31:01', '2022-05-02 18:31:01'),
(346, 'SL', 'Africa/Freetown', '2022-05-02 18:31:01', '2022-05-02 18:31:01'),
(347, 'SM', 'Europe/San_Marino', '2022-05-02 18:31:01', '2022-05-02 18:31:01'),
(348, 'SN', 'Africa/Dakar', '2022-05-02 18:31:01', '2022-05-02 18:31:01'),
(349, 'SO', 'Africa/Mogadishu', '2022-05-02 18:31:01', '2022-05-02 18:31:01'),
(350, 'SR', 'America/Paramaribo', '2022-05-02 18:31:01', '2022-05-02 18:31:01'),
(351, 'SS', 'Africa/Juba', '2022-05-02 18:31:01', '2022-05-02 18:31:01'),
(352, 'ST', 'Africa/Sao_Tome', '2022-05-02 18:31:01', '2022-05-02 18:31:01'),
(353, 'SV', 'America/El_Salvador', '2022-05-02 18:31:01', '2022-05-02 18:31:01'),
(354, 'SX', 'America/Lower_Princes', '2022-05-02 18:31:01', '2022-05-02 18:31:01'),
(355, 'SY', 'Asia/Damascus', '2022-05-02 18:31:01', '2022-05-02 18:31:01'),
(356, 'SZ', 'Africa/Mbabane', '2022-05-02 18:31:01', '2022-05-02 18:31:01'),
(357, 'TC', 'America/Grand_Turk', '2022-05-02 18:31:01', '2022-05-02 18:31:01'),
(358, 'TD', 'Africa/Ndjamena', '2022-05-02 18:31:01', '2022-05-02 18:31:01'),
(359, 'TF', 'Indian/Kerguelen', '2022-05-02 18:31:01', '2022-05-02 18:31:01'),
(360, 'TG', 'Africa/Lome', '2022-05-02 18:31:01', '2022-05-02 18:31:01'),
(361, 'TH', 'Asia/Bangkok', '2022-05-02 18:31:01', '2022-05-02 18:31:01'),
(362, 'TJ', 'Asia/Dushanbe', '2022-05-02 18:31:01', '2022-05-02 18:31:01'),
(363, 'TK', 'Pacific/Fakaofo', '2022-05-02 18:31:01', '2022-05-02 18:31:01'),
(364, 'TL', 'Asia/Dili', '2022-05-02 18:31:01', '2022-05-02 18:31:01'),
(365, 'TM', 'Asia/Ashgabat', '2022-05-02 18:31:01', '2022-05-02 18:31:01'),
(366, 'TN', 'Africa/Tunis', '2022-05-02 18:31:01', '2022-05-02 18:31:01'),
(367, 'TO', 'Pacific/Tongatapu', '2022-05-02 18:31:01', '2022-05-02 18:31:01'),
(368, 'TR', 'Europe/Istanbul', '2022-05-02 18:31:01', '2022-05-02 18:31:01'),
(369, 'TT', 'America/Port_of_Spain', '2022-05-02 18:31:01', '2022-05-02 18:31:01'),
(370, 'TV', 'Pacific/Funafuti', '2022-05-02 18:31:01', '2022-05-02 18:31:01'),
(371, 'TW', 'Asia/Taipei', '2022-05-02 18:31:01', '2022-05-02 18:31:01'),
(372, 'TZ', 'Africa/Dar_es_Salaam', '2022-05-02 18:31:01', '2022-05-02 18:31:01'),
(373, 'UA', 'Europe/Kiev', '2022-05-02 18:31:01', '2022-05-02 18:31:01'),
(374, 'UA', 'Europe/Uzhgorod', '2022-05-02 18:31:01', '2022-05-02 18:31:01'),
(375, 'UA', 'Europe/Zaporozhye', '2022-05-02 18:31:01', '2022-05-02 18:31:01'),
(376, 'UG', 'Africa/Kampala', '2022-05-02 18:31:01', '2022-05-02 18:31:01'),
(377, 'UM', 'Pacific/Midway', '2022-05-02 18:31:01', '2022-05-02 18:31:01'),
(378, 'UM', 'Pacific/Wake', '2022-05-02 18:31:01', '2022-05-02 18:31:01'),
(379, 'US', 'America/New_York', '2022-05-02 18:31:01', '2022-05-02 18:31:01'),
(380, 'US', 'America/Detroit', '2022-05-02 18:31:01', '2022-05-02 18:31:01'),
(381, 'US', 'America/Kentucky/Louisville', '2022-05-02 18:31:01', '2022-05-02 18:31:01'),
(382, 'US', 'America/Kentucky/Monticello', '2022-05-02 18:31:01', '2022-05-02 18:31:01'),
(383, 'US', 'America/Indiana/Indianapolis', '2022-05-02 18:31:01', '2022-05-02 18:31:01'),
(384, 'US', 'America/Indiana/Vincennes', '2022-05-02 18:31:01', '2022-05-02 18:31:01'),
(385, 'US', 'America/Indiana/Winamac', '2022-05-02 18:31:01', '2022-05-02 18:31:01'),
(386, 'US', 'America/Indiana/Marengo', '2022-05-02 18:31:01', '2022-05-02 18:31:01'),
(387, 'US', 'America/Indiana/Petersburg', '2022-05-02 18:31:01', '2022-05-02 18:31:01'),
(388, 'US', 'America/Indiana/Vevay', '2022-05-02 18:31:01', '2022-05-02 18:31:01'),
(389, 'US', 'America/Chicago', '2022-05-02 18:31:01', '2022-05-02 18:31:01'),
(390, 'US', 'America/Indiana/Tell_City', '2022-05-02 18:31:01', '2022-05-02 18:31:01'),
(391, 'US', 'America/Indiana/Knox', '2022-05-02 18:31:01', '2022-05-02 18:31:01'),
(392, 'US', 'America/Menominee', '2022-05-02 18:31:01', '2022-05-02 18:31:01'),
(393, 'US', 'America/North_Dakota/Center', '2022-05-02 18:31:01', '2022-05-02 18:31:01'),
(394, 'US', 'America/North_Dakota/New_Salem', '2022-05-02 18:31:01', '2022-05-02 18:31:01'),
(395, 'US', 'America/North_Dakota/Beulah', '2022-05-02 18:31:01', '2022-05-02 18:31:01'),
(396, 'US', 'America/Denver', '2022-05-02 18:31:01', '2022-05-02 18:31:01'),
(397, 'US', 'America/Boise', '2022-05-02 18:31:01', '2022-05-02 18:31:01'),
(398, 'US', 'America/Phoenix', '2022-05-02 18:31:01', '2022-05-02 18:31:01'),
(399, 'US', 'America/Los_Angeles', '2022-05-02 18:31:01', '2022-05-02 18:31:01'),
(400, 'US', 'America/Anchorage', '2022-05-02 18:31:01', '2022-05-02 18:31:01'),
(401, 'US', 'America/Juneau', '2022-05-02 18:31:01', '2022-05-02 18:31:01'),
(402, 'US', 'America/Sitka', '2022-05-02 18:31:01', '2022-05-02 18:31:01'),
(403, 'US', 'America/Metlakatla', '2022-05-02 18:31:01', '2022-05-02 18:31:01'),
(404, 'US', 'America/Yakutat', '2022-05-02 18:31:01', '2022-05-02 18:31:01'),
(405, 'US', 'America/Nome', '2022-05-02 18:31:01', '2022-05-02 18:31:01'),
(406, 'US', 'America/Adak', '2022-05-02 18:31:01', '2022-05-02 18:31:01'),
(407, 'US', 'Pacific/Honolulu', '2022-05-02 18:31:01', '2022-05-02 18:31:01'),
(408, 'UY', 'America/Montevideo', '2022-05-02 18:31:01', '2022-05-02 18:31:01'),
(409, 'UZ', 'Asia/Samarkand', '2022-05-02 18:31:01', '2022-05-02 18:31:01'),
(410, 'UZ', 'Asia/Tashkent', '2022-05-02 18:31:01', '2022-05-02 18:31:01'),
(411, 'VA', 'Europe/Vatican', '2022-05-02 18:31:01', '2022-05-02 18:31:01'),
(412, 'VC', 'America/St_Vincent', '2022-05-02 18:31:01', '2022-05-02 18:31:01'),
(413, 'VE', 'America/Caracas', '2022-05-02 18:31:01', '2022-05-02 18:31:01'),
(414, 'VG', 'America/Tortola', '2022-05-02 18:31:01', '2022-05-02 18:31:01'),
(415, 'VI', 'America/St_Thomas', '2022-05-02 18:31:01', '2022-05-02 18:31:01'),
(416, 'VN', 'Asia/Ho_Chi_Minh', '2022-05-02 18:31:01', '2022-05-02 18:31:01'),
(417, 'VU', 'Pacific/Efate', '2022-05-02 18:31:01', '2022-05-02 18:31:01'),
(418, 'WF', 'Pacific/Wallis', '2022-05-02 18:31:01', '2022-05-02 18:31:01'),
(419, 'WS', 'Pacific/Apia', '2022-05-02 18:31:01', '2022-05-02 18:31:01'),
(420, 'YE', 'Asia/Aden', '2022-05-02 18:31:01', '2022-05-02 18:31:01'),
(421, 'YT', 'Indian/Mayotte', '2022-05-02 18:31:01', '2022-05-02 18:31:01'),
(422, 'ZA', 'Africa/Johannesburg', '2022-05-02 18:31:01', '2022-05-02 18:31:01'),
(423, 'ZM', 'Africa/Lusaka', '2022-05-02 18:31:01', '2022-05-02 18:31:01'),
(424, 'ZW', 'Africa/Harare', '2022-05-02 18:31:01', '2022-05-02 18:31:01');

-- --------------------------------------------------------

--
-- Structure de la table `sm_to_dos`
--

DROP TABLE IF EXISTS `sm_to_dos`;
CREATE TABLE IF NOT EXISTS `sm_to_dos` (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `todo_title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date` date DEFAULT NULL,
  `complete_status` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT 'P' COMMENT 'C for complete, N for not Complete, P Pending',
  `active_status` tinyint NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_by` int UNSIGNED DEFAULT '1',
  `updated_by` int UNSIGNED DEFAULT '1',
  `school_id` int UNSIGNED DEFAULT '1',
  `academic_id` int UNSIGNED DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `sm_to_dos_school_id_foreign` (`school_id`),
  KEY `sm_to_dos_academic_id_foreign` (`academic_id`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `sm_to_dos`
--

INSERT INTO `sm_to_dos` (`id`, `todo_title`, `date`, `complete_status`, `active_status`, `created_at`, `updated_at`, `created_by`, `updated_by`, `school_id`, `academic_id`) VALUES
(1, 'Réduire le boulot', '2022-06-14', 'C', 1, '2022-06-01 09:51:08', '2022-06-01 09:51:32', 1, 1, 1, 3),
(2, 'travaux pratique', '2022-06-01', 'C', 1, '2022-06-01 10:08:27', '2022-06-01 10:13:19', 1, 1, 1, 3),
(3, 'travaux pratique', '2022-06-01', 'C', 1, '2022-06-01 10:08:35', '2022-06-02 10:33:24', 1, 1, 1, 3),
(4, 'travaux pratique', '2022-06-01', 'C', 1, '2022-06-01 10:08:43', '2022-06-02 10:33:37', 1, 1, 1, 3),
(5, 'contrôle continue', '2022-06-01', 'P', 1, '2022-06-01 10:29:16', '2022-06-01 10:29:16', 1, 1, 1, 3),
(6, 'travail de cours', '2022-02-06', 'C', 1, '2022-06-02 10:21:35', '2022-06-02 10:31:52', 1, 1, 1, 3);

-- --------------------------------------------------------

--
-- Structure de la table `sm_upload_contents`
--

DROP TABLE IF EXISTS `sm_upload_contents`;
CREATE TABLE IF NOT EXISTS `sm_upload_contents` (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `content_title` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content_type` int DEFAULT NULL,
  `available_for_role` int DEFAULT NULL,
  `available_for_class` int DEFAULT NULL,
  `available_for_section` int DEFAULT NULL,
  `upload_date` date DEFAULT NULL,
  `description` varchar(500) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `upload_file` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `active_status` tinyint NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_by` int UNSIGNED DEFAULT '1',
  `updated_by` int UNSIGNED DEFAULT '1',
  `school_id` int UNSIGNED DEFAULT '1',
  `academic_id` int UNSIGNED DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `sm_upload_contents_school_id_foreign` (`school_id`),
  KEY `sm_upload_contents_academic_id_foreign` (`academic_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `sm_upload_homework_contents`
--

DROP TABLE IF EXISTS `sm_upload_homework_contents`;
CREATE TABLE IF NOT EXISTS `sm_upload_homework_contents` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `student_id` int UNSIGNED DEFAULT '1',
  `homework_id` int UNSIGNED DEFAULT '1',
  `description` text COLLATE utf8mb4_unicode_ci,
  `file` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_by` int UNSIGNED DEFAULT '1',
  `updated_by` int UNSIGNED DEFAULT '1',
  `school_id` int UNSIGNED DEFAULT '1',
  `academic_id` int UNSIGNED DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `sm_upload_homework_contents_student_id_foreign` (`student_id`),
  KEY `sm_upload_homework_contents_homework_id_foreign` (`homework_id`),
  KEY `sm_upload_homework_contents_school_id_foreign` (`school_id`),
  KEY `sm_upload_homework_contents_academic_id_foreign` (`academic_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `sm_user_logs`
--

DROP TABLE IF EXISTS `sm_user_logs`;
CREATE TABLE IF NOT EXISTS `sm_user_logs` (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `ip_address` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_agent` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `user_id` int UNSIGNED DEFAULT NULL,
  `role_id` int UNSIGNED DEFAULT NULL,
  `school_id` int UNSIGNED DEFAULT '1',
  `academic_id` int UNSIGNED DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `sm_user_logs_user_id_foreign` (`user_id`),
  KEY `sm_user_logs_role_id_foreign` (`role_id`),
  KEY `sm_user_logs_school_id_foreign` (`school_id`),
  KEY `sm_user_logs_academic_id_foreign` (`academic_id`)
) ENGINE=MyISAM AUTO_INCREMENT=124 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `sm_user_logs`
--

INSERT INTO `sm_user_logs` (`id`, `ip_address`, `user_agent`, `created_at`, `updated_at`, `user_id`, `role_id`, `school_id`, `academic_id`) VALUES
(1, '::1', 'Chrome, Windows', '2022-05-02 19:19:26', '2022-05-02 19:19:26', 1, 1, 1, 1),
(2, '::1', 'Chrome, Windows', '2022-05-02 23:44:12', '2022-05-02 23:44:12', 1, 1, 1, 1),
(3, '::1', 'Chrome, Windows', '2022-05-04 00:47:05', '2022-05-04 00:47:05', 1, 1, 1, 1),
(4, '::1', 'Chrome, Windows', '2022-05-04 08:05:41', '2022-05-04 08:05:41', 1, 1, 1, 1),
(5, '::1', 'Chrome, Windows', '2022-05-04 09:56:25', '2022-05-04 09:56:25', 1, 1, 1, 1),
(6, '::1', 'Chrome, Windows', '2022-05-04 12:14:17', '2022-05-04 12:14:17', 1, 1, 1, 1),
(7, '::1', 'Chrome, Windows', '2022-05-04 14:37:37', '2022-05-04 14:37:37', 1, 1, 1, 1),
(8, '::1', 'Chrome, Windows', '2022-05-05 09:01:22', '2022-05-05 09:01:22', 1, 1, 1, 1),
(9, '::1', 'Chrome, Windows', '2022-05-05 12:24:06', '2022-05-05 12:24:06', 1, 1, 1, 1),
(10, '::1', 'Chrome, Windows', '2022-05-06 07:18:41', '2022-05-06 07:18:41', 1, 1, 1, 1),
(11, '::1', 'Chrome, Windows', '2022-05-09 12:44:38', '2022-05-09 12:44:38', 1, 1, 1, 1),
(12, '::1', 'Edge, Windows', '2022-05-09 12:47:04', '2022-05-09 12:47:04', 1, 1, 1, 1),
(13, '::1', 'Chrome, Windows', '2022-05-09 13:23:30', '2022-05-09 13:23:30', 1, 1, 1, 1),
(14, '::1', 'Chrome, Windows', '2022-05-10 09:09:30', '2022-05-10 09:09:30', 1, 1, 1, 1),
(15, '::1', 'Chrome, Windows', '2022-05-10 14:11:07', '2022-05-10 14:11:07', 1, 1, 1, 1),
(16, '::1', 'Edge, Windows', '2022-05-10 15:35:44', '2022-05-10 15:35:44', 2, 4, 1, 1),
(17, '::1', 'Chrome, Windows', '2022-05-11 07:01:55', '2022-05-11 07:01:55', 1, 1, 1, 1),
(18, '::1', 'Edge, Windows', '2022-05-11 07:44:32', '2022-05-11 07:44:32', 2, 4, 1, 1),
(19, '::1', 'Edge, Windows', '2022-05-11 09:58:32', '2022-05-11 09:58:32', 2, 4, 1, 1),
(20, '::1', 'Edge, Windows', '2022-05-11 10:38:25', '2022-05-11 10:38:25', 2, 4, 1, 1),
(21, '::1', 'Edge, Windows', '2022-05-11 12:58:04', '2022-05-11 12:58:04', 3, 5, 1, 1),
(22, '::1', 'Edge, Windows', '2022-05-11 13:00:58', '2022-05-11 13:00:58', 2, 4, 1, 1),
(23, '::1', 'Chrome, Windows', '2022-05-12 07:41:08', '2022-05-12 07:41:08', 1, 1, 1, 1),
(24, '::1', 'Chrome, Windows', '2022-05-12 10:33:35', '2022-05-12 10:33:35', 1, 1, 1, 1),
(25, '::1', 'Chrome, Windows', '2022-05-12 14:44:48', '2022-05-12 14:44:48', 1, 1, 1, 1),
(26, '::1', 'Chrome, Windows', '2022-05-12 22:54:39', '2022-05-12 22:54:39', 1, 1, 1, 1),
(27, '::1', 'Chrome, Windows', '2022-05-12 23:57:07', '2022-05-12 23:57:07', 1, 1, 1, 1),
(28, '::1', 'Chrome, Windows', '2022-05-13 08:41:50', '2022-05-13 08:41:50', 1, 1, 1, 1),
(29, '::1', 'Edge, Windows', '2022-05-13 10:40:10', '2022-05-13 10:40:10', 4, 4, 1, 1),
(30, '::1', 'Edge, Windows', '2022-05-13 10:55:59', '2022-05-13 10:55:59', 4, 8, 1, 1),
(31, '::1', 'Edge, Windows', '2022-05-13 11:25:15', '2022-05-13 11:25:15', 3, 5, 1, 1),
(32, '::1', 'Edge, Windows', '2022-05-13 11:43:06', '2022-05-13 11:43:06', 5, 2, 1, 1),
(33, '::1', 'Edge, Windows', '2022-05-13 11:47:58', '2022-05-13 11:47:58', 5, 2, 1, 1),
(34, '::1', 'Edge, Windows', '2022-05-13 11:51:35', '2022-05-13 11:51:35', 7, 2, 1, 1),
(35, '::1', 'Edge, Windows', '2022-05-13 12:22:49', '2022-05-13 12:22:49', 6, 3, 1, 1),
(36, '::1', 'Edge, Windows', '2022-05-13 14:05:29', '2022-05-13 14:05:29', 5, 2, 1, 1),
(37, '::1', 'Edge, Windows', '2022-05-13 15:12:07', '2022-05-13 15:12:07', 7, 2, 1, 1),
(38, '::1', 'Chrome, Windows', '2022-05-14 21:38:42', '2022-05-14 21:38:42', 1, 1, 1, 1),
(39, '::1', 'Chrome, Windows', '2022-05-15 20:51:01', '2022-05-15 20:51:01', 1, 1, 1, 1),
(40, '::1', 'Chrome, Windows', '2022-05-15 21:54:37', '2022-05-15 21:54:37', 1, 1, 1, 1),
(41, '::1', 'Chrome, Windows', '2022-05-15 22:32:34', '2022-05-15 22:32:34', 1, 1, 1, 1),
(42, '::1', 'Chrome, Windows', '2022-05-16 07:57:48', '2022-05-16 07:57:48', 1, 1, 1, 1),
(43, '::1', 'Edge, Windows', '2022-05-16 09:04:03', '2022-05-16 09:04:03', 3, 5, 1, 1),
(44, '::1', 'Edge, Windows', '2022-05-16 09:24:17', '2022-05-16 09:24:17', 3, 5, 1, 1),
(45, '::1', 'Edge, Windows', '2022-05-16 09:27:43', '2022-05-16 09:27:43', 2, 4, 1, 1),
(46, '::1', 'Edge, Windows', '2022-05-16 09:55:47', '2022-05-16 09:55:47', 3, 5, 1, 1),
(47, '::1', 'Chrome, Windows', '2022-05-16 13:15:06', '2022-05-16 13:15:06', 1, 1, 1, 1),
(48, '::1', 'Edge, Windows', '2022-05-16 13:18:12', '2022-05-16 13:18:12', 2, 4, 1, 1),
(49, '::1', 'Edge, Windows', '2022-05-16 13:35:39', '2022-05-16 13:35:39', 2, 4, 1, 1),
(50, '::1', 'Edge, Windows', '2022-05-16 13:47:46', '2022-05-16 13:47:46', 3, 5, 1, 1),
(51, '::1', 'Edge, Windows', '2022-05-16 13:48:57', '2022-05-16 13:48:57', 2, 4, 1, 1),
(52, '::1', 'Chrome, Windows', '2022-05-17 07:52:23', '2022-05-17 07:52:23', 1, 1, 1, 1),
(53, '::1', 'Edge, Windows', '2022-05-17 15:05:59', '2022-05-17 15:05:59', 2, 4, 1, 1),
(54, '::1', 'Edge, Windows', '2022-05-17 15:09:26', '2022-05-17 15:09:26', 2, 4, 1, 1),
(55, '::1', 'Edge, Windows', '2022-05-17 15:11:31', '2022-05-17 15:11:31', 6, 3, 1, 1),
(56, '::1', 'Chrome, Windows', '2022-05-19 00:26:20', '2022-05-19 00:26:20', 1, 1, 1, 1),
(57, '::1', 'Chrome, Windows', '2022-05-19 06:01:12', '2022-05-19 06:01:12', 1, 1, 1, 1),
(58, '::1', 'Chrome, Windows', '2022-05-19 19:01:29', '2022-05-19 19:01:29', 1, 1, 1, 1),
(59, '::1', 'Edge, Windows', '2022-05-19 20:25:38', '2022-05-19 20:25:38', 5, 2, 1, 1),
(60, '::1', 'Edge, Windows', '2022-05-19 20:26:32', '2022-05-19 20:26:32', 6, 3, 1, 1),
(61, '::1', 'Edge, Windows', '2022-05-19 20:35:41', '2022-05-19 20:35:41', 5, 2, 1, 1),
(62, '::1', 'Edge, Windows', '2022-05-19 21:12:59', '2022-05-19 21:12:59', 5, 2, 1, 1),
(63, '::1', 'Edge, Windows', '2022-05-20 07:15:31', '2022-05-20 07:15:31', 5, 2, 1, 1),
(64, '::1', 'Chrome, Windows', '2022-05-20 07:22:18', '2022-05-20 07:22:18', 1, 1, 1, 1),
(65, '::1', 'Edge, Windows', '2022-05-20 15:34:55', '2022-05-20 15:34:55', 5, 2, 1, 1),
(66, '::1', 'Chrome, Windows', '2022-05-20 15:36:33', '2022-05-20 15:36:33', 1, 1, 1, 1),
(67, '::1', 'Edge, Windows', '2022-05-20 15:51:51', '2022-05-20 15:51:51', 2, 4, 1, 1),
(68, '::1', 'Edge, Windows', '2022-05-20 16:00:29', '2022-05-20 16:00:29', 5, 2, 1, 1),
(69, '::1', 'Edge, Windows', '2022-05-20 17:40:16', '2022-05-20 17:40:16', 5, 2, 1, 1),
(70, '::1', 'Edge, Windows', '2022-05-20 18:17:46', '2022-05-20 18:17:46', 5, 2, 1, 1),
(71, '::1', 'Edge, Windows', '2022-05-20 18:50:24', '2022-05-20 18:50:24', 2, 4, 1, 1),
(72, '::1', 'Edge, Windows', '2022-05-20 19:52:46', '2022-05-20 19:52:46', 5, 2, 1, 1),
(73, '::1', 'Chrome, Windows', '2022-05-21 17:16:29', '2022-05-21 17:16:29', 1, 1, 1, 1),
(74, '::1', 'Edge, Windows', '2022-05-21 19:56:17', '2022-05-21 19:56:17', 5, 2, 1, 1),
(75, '::1', 'Edge, Windows', '2022-05-21 20:14:27', '2022-05-21 20:14:27', 5, 2, 1, 1),
(76, '::1', 'Edge, Windows', '2022-05-21 20:21:30', '2022-05-21 20:21:30', 5, 2, 1, 1),
(77, '::1', 'Edge, Windows', '2022-05-21 20:27:05', '2022-05-21 20:27:05', 5, 2, 1, 1),
(78, '::1', 'Edge, Windows', '2022-05-21 20:55:52', '2022-05-21 20:55:52', 7, 2, 1, 1),
(79, '::1', 'Chrome, Windows', '2022-05-26 12:06:00', '2022-05-26 12:06:00', 1, 1, 1, 1),
(80, '::1', 'Chrome, Windows', '2022-05-27 15:07:42', '2022-05-27 15:07:42', 1, 1, 1, 1),
(81, '::1', 'Chrome, Windows', '2022-05-27 19:24:30', '2022-05-27 19:24:30', 1, 1, 1, 1),
(82, '::1', 'Edge, Windows', '2022-05-27 21:12:30', '2022-05-27 21:12:30', 4, 8, 1, 1),
(83, '::1', 'Chrome, Windows', '2022-05-29 16:44:14', '2022-05-29 16:44:14', 1, 1, 1, 1),
(84, '::1', 'Chrome, Windows', '2022-05-29 20:26:21', '2022-05-29 20:26:21', 1, 1, 1, 1),
(85, '::1', 'Edge, Windows', '2022-05-31 08:01:17', '2022-05-31 08:01:17', 1, 1, 1, 1),
(86, '::1', 'Chrome, Windows', '2022-05-31 08:14:56', '2022-05-31 08:14:56', 1, 1, 1, 1),
(87, '::1', 'Chrome, Windows', '2022-05-31 15:06:53', '2022-05-31 15:06:53', 1, 1, 1, 1),
(88, '::1', 'Chrome, Windows', '2022-05-31 21:50:10', '2022-05-31 21:50:10', 1, 1, 1, 1),
(89, '::1', 'Chrome, Windows', '2022-06-01 07:18:37', '2022-06-01 07:18:37', 1, 1, 1, 1),
(90, '::1', 'Chrome, Windows', '2022-06-01 19:42:09', '2022-06-01 19:42:09', 1, 1, 1, 1),
(91, '::1', 'Chrome, Windows', '2022-06-02 08:09:34', '2022-06-02 08:09:34', 1, 1, 1, 1),
(92, '::1', 'Chrome, Windows', '2022-06-03 08:23:15', '2022-06-03 08:23:15', 1, 1, 1, 1),
(93, '::1', 'Chrome, Windows', '2022-06-03 19:38:34', '2022-06-03 19:38:34', 1, 1, 1, 1),
(94, '::1', 'Chrome, Windows', '2022-06-03 19:41:10', '2022-06-03 19:41:10', 1, 1, 1, 1),
(95, '::1', 'Chrome, Windows', '2022-06-03 19:42:34', '2022-06-03 19:42:34', 1, 1, 1, 1),
(96, '::1', 'Chrome, Windows', '2022-06-03 21:20:00', '2022-06-03 21:20:00', 1, 1, 1, 1),
(97, '::1', 'Chrome, Windows', '2022-06-04 09:53:42', '2022-06-04 09:53:42', 1, 1, 1, 1),
(98, '::1', 'Chrome, Windows', '2022-06-05 08:26:09', '2022-06-05 08:26:09', 1, 1, 1, 1),
(99, '::1', 'Chrome, Windows', '2022-06-06 08:31:07', '2022-06-06 08:31:07', 1, 1, 1, 1),
(100, '::1', 'Chrome, Windows', '2022-06-06 09:55:37', '2022-06-06 09:55:37', 1, 1, 1, 1),
(101, '::1', 'Chrome, Windows', '2022-06-07 09:21:22', '2022-06-07 09:21:22', 1, 1, 1, 1),
(102, '::1', 'Chrome, Windows', '2022-06-07 13:40:04', '2022-06-07 13:40:04', 1, 1, 1, 1),
(103, '::1', 'Chrome, Windows', '2022-06-08 11:42:28', '2022-06-08 11:42:28', 1, 1, 1, 1),
(104, '::1', 'Chrome, Windows', '2022-06-08 11:51:05', '2022-06-08 11:51:05', 5, 2, 1, 1),
(105, '::1', 'Chrome, Windows', '2022-06-08 12:42:02', '2022-06-08 12:42:02', 1, 1, 1, 1),
(106, '::1', 'Chrome, Windows', '2022-06-09 11:19:42', '2022-06-09 11:19:42', 1, 1, 1, 1),
(107, '::1', 'Chrome, Windows', '2022-06-09 11:35:15', '2022-06-09 11:35:15', 5, 2, 1, 1),
(108, '::1', 'Chrome, Windows', '2022-06-10 13:10:41', '2022-06-10 13:10:41', 1, 1, 1, 1),
(109, '::1', 'Chrome, Windows', '2022-06-11 18:02:11', '2022-06-11 18:02:11', 1, 1, 1, 1),
(110, '::1', 'Chrome, Windows', '2022-06-11 18:24:40', '2022-06-11 18:24:40', 1, 1, 1, 1),
(111, '::1', 'Chrome, Windows', '2022-06-13 07:51:34', '2022-06-13 07:51:34', 1, 1, 1, 1),
(112, '::1', 'Chrome, Windows', '2022-06-13 08:16:27', '2022-06-13 08:16:27', 1, 1, 1, 1),
(113, '::1', 'Chrome, Windows', '2022-06-13 14:16:48', '2022-06-13 14:16:48', 1, 1, 1, 1),
(114, '::1', 'Chrome, Windows', '2022-06-14 01:47:16', '2022-06-14 01:47:16', 1, 1, 1, 1),
(115, '::1', 'Chrome, Windows', '2022-06-14 10:46:16', '2022-06-14 10:46:16', 1, 1, 1, 1),
(116, '::1', 'Chrome, Windows', '2022-06-15 09:33:49', '2022-06-15 09:33:49', 1, 1, 1, 1),
(117, '::1', 'Chrome, Windows', '2022-06-15 12:58:24', '2022-06-15 12:58:24', 1, 1, 1, 1),
(118, '::1', 'Chrome, Windows', '2022-06-18 14:05:44', '2022-06-18 14:05:44', 1, 1, 1, 1),
(119, '::1', 'Chrome, Windows', '2022-06-24 19:00:36', '2022-06-24 19:00:36', 1, 1, 1, 1),
(120, '::1', 'Chrome, Windows', '2022-06-26 11:10:53', '2022-06-26 11:10:53', 1, 1, 1, 1),
(121, '::1', 'Chrome, Windows', '2022-07-04 13:03:26', '2022-07-04 13:03:26', 1, 1, 1, 1),
(122, '::1', 'Chrome, Windows', '2022-07-05 16:24:16', '2022-07-05 16:24:16', 1, 1, 1, 1),
(123, '::1', 'Chrome, Windows', '2022-08-22 15:01:40', '2022-08-22 15:01:40', 1, 1, 1, 1);

-- --------------------------------------------------------

--
-- Structure de la table `sm_vehicles`
--

DROP TABLE IF EXISTS `sm_vehicles`;
CREATE TABLE IF NOT EXISTS `sm_vehicles` (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `vehicle_no` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `vehicle_model` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `made_year` int DEFAULT NULL,
  `note` text COLLATE utf8mb4_unicode_ci,
  `active_status` tinyint NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `driver_id` int UNSIGNED DEFAULT NULL,
  `created_by` int UNSIGNED DEFAULT '1',
  `updated_by` int UNSIGNED DEFAULT '1',
  `school_id` int UNSIGNED DEFAULT '1',
  `academic_id` int UNSIGNED DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `sm_vehicles_school_id_foreign` (`school_id`),
  KEY `sm_vehicles_academic_id_foreign` (`academic_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `sm_visitors`
--

DROP TABLE IF EXISTS `sm_visitors`;
CREATE TABLE IF NOT EXISTS `sm_visitors` (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `visitor_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `no_of_person` int DEFAULT NULL,
  `purpose` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date` date DEFAULT NULL,
  `in_time` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `out_time` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `file` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `active_status` tinyint NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_by` int UNSIGNED DEFAULT '1',
  `updated_by` int UNSIGNED DEFAULT '1',
  `school_id` int UNSIGNED DEFAULT '1',
  `academic_id` int UNSIGNED DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `sm_visitors_school_id_foreign` (`school_id`),
  KEY `sm_visitors_academic_id_foreign` (`academic_id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `sm_visitors`
--

INSERT INTO `sm_visitors` (`id`, `name`, `phone`, `visitor_id`, `no_of_person`, `purpose`, `date`, `in_time`, `out_time`, `file`, `active_status`, `created_at`, `updated_at`, `created_by`, `updated_by`, `school_id`, `academic_id`) VALUES
(1, 'Visite 1', '623789124', '1', 12, 'Visiter l\'administration', '2022-05-17', '8:14 AM', '12:14 AM', '', 1, '2022-05-14 22:14:50', '2022-05-14 22:14:50', 1, 1, 1, 3);

-- --------------------------------------------------------

--
-- Structure de la table `sm_weekends`
--

DROP TABLE IF EXISTS `sm_weekends`;
CREATE TABLE IF NOT EXISTS `sm_weekends` (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order` int DEFAULT NULL,
  `is_weekend` int DEFAULT NULL,
  `active_status` int NOT NULL DEFAULT '1',
  `school_id` int UNSIGNED DEFAULT '1',
  `created_at` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `updated_at` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `academic_id` int UNSIGNED DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `sm_weekends_school_id_foreign` (`school_id`),
  KEY `sm_weekends_academic_id_foreign` (`academic_id`)
) ENGINE=MyISAM AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `sm_weekends`
--

INSERT INTO `sm_weekends` (`id`, `name`, `order`, `is_weekend`, `active_status`, `school_id`, `created_at`, `updated_at`, `academic_id`) VALUES
(1, 'Saturday', 1, 0, 1, 1, '2022-05-02 19:30:28', '2022-05-02 19:30:28', 1),
(2, 'Sunday', 2, 0, 1, 1, '2022-05-02 19:30:28', '2022-05-02 19:30:28', 1),
(3, 'Monday', 3, 0, 1, 1, '2022-05-02 19:30:28', '2022-05-02 19:30:28', 1),
(4, 'Tuesday', 4, 0, 1, 1, '2022-05-02 19:30:28', '2022-05-02 19:30:28', 1),
(5, 'Wednesday', 5, 0, 1, 1, '2022-05-02 19:30:28', '2022-05-02 19:30:28', 1),
(6, 'Thursday', 6, 0, 1, 1, '2022-05-02 19:30:28', '2022-05-02 19:30:28', 1),
(7, 'Friday', 7, 1, 1, 1, '2022-05-02 19:30:28', '2022-05-02 19:30:28', 1),
(8, 'Lundi', 1, 0, 1, 1, '10/03/2022', '2022-06-08 13:54:27', 3),
(9, 'Mardi', 2, 1, 1, 1, '10/03/2022', '2022-05-10 11:32:37', 3),
(10, 'Mercredi', 3, 0, 1, 1, '10/03/2022', NULL, 3),
(11, 'Jeudi', 4, 0, 1, 1, '10/03/2022', NULL, 3),
(12, 'Vendredi', 5, 0, 1, 1, '10/03/2022', NULL, 3),
(13, 'Samedi', 6, 0, 1, 1, '10/03/2022', NULL, 3),
(14, 'Dimanche', 7, 0, 1, 1, '10/03/2022', '2022-05-10 11:31:59', 3),
(15, 'Saturday', 1, 0, 1, 1, '06/02/2022', NULL, 4),
(16, 'Sunday', 2, 0, 1, 1, '06/02/2022', NULL, 4),
(17, 'Monday', 3, 0, 1, 1, '06/02/2022', NULL, 4),
(18, 'Tuesday', 4, 0, 1, 1, '06/02/2022', NULL, 4),
(19, 'Wednesday', 5, 0, 1, 1, '06/02/2022', NULL, 4),
(20, 'Thursday', 6, 0, 1, 1, '06/02/2022', NULL, 4),
(21, 'Friday', 7, 1, 1, 1, '06/02/2022', NULL, 4);

-- --------------------------------------------------------

--
-- Structure de la table `student_attendance_bulks`
--

DROP TABLE IF EXISTS `student_attendance_bulks`;
CREATE TABLE IF NOT EXISTS `student_attendance_bulks` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `attendance_date` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `attendance_type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `note` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `student_id` int DEFAULT NULL,
  `class_id` int DEFAULT NULL,
  `section_id` int DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `student_bulk_temporaries`
--

DROP TABLE IF EXISTS `student_bulk_temporaries`;
CREATE TABLE IF NOT EXISTS `student_bulk_temporaries` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `admission_number` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `roll_no` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `first_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date_of_birth` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `religion` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `gender` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `caste` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mobile` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `admission_date` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `blood_group` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `height` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `weight` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `father_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `father_phone` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `father_occupation` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mother_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mother_phone` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mother_occupation` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `guardian_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `guardian_relation` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `guardian_email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `guardian_phone` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `guardian_occupation` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `guardian_address` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `current_address` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `permanent_address` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bank_account_no` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bank_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `national_identification_no` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `local_identification_no` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `previous_school_details` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `note` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `full_name` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `username` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `password` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `usertype` varchar(210) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `active_status` tinyint NOT NULL DEFAULT '1',
  `random_code` text COLLATE utf8mb4_unicode_ci,
  `notificationToken` text COLLATE utf8mb4_unicode_ci,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_by` int DEFAULT '1',
  `updated_by` int DEFAULT '1',
  `access_status` int DEFAULT '1',
  `school_id` int UNSIGNED DEFAULT '1',
  `role_id` int UNSIGNED DEFAULT NULL,
  `is_administrator` enum('yes','no') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'no',
  `is_registered` tinyint NOT NULL DEFAULT '0',
  `stripe_id` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  `card_brand` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `card_last_four` varchar(4) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `verified` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `trial_ends_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `users_school_id_foreign` (`school_id`),
  KEY `users_role_id_foreign` (`role_id`)
) ENGINE=MyISAM AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `users`
--

INSERT INTO `users` (`id`, `full_name`, `username`, `email`, `password`, `usertype`, `active_status`, `random_code`, `notificationToken`, `remember_token`, `created_at`, `updated_at`, `created_by`, `updated_by`, `access_status`, `school_id`, `role_id`, `is_administrator`, `is_registered`, `stripe_id`, `card_brand`, `card_last_four`, `verified`, `trial_ends_at`) VALUES
(1, 'system administrator', 'adminpanel@gmail.com', 'adminpanel@gmail.com', '$2y$10$SQUYiUD7VPGJyz9SH4T0y.1XHJUryja18hw.p4ukFHRsY.lflQu4G', NULL, 1, 'ZM8dHi0ESL47mkGJnJga4ZKu1CrPj2yF', NULL, NULL, '2022-05-02 06:25:58', '2022-06-12 07:08:03', 1, 1, 1, 1, 1, 'yes', 0, NULL, NULL, NULL, NULL, NULL),
(2, 'EBENEZER MAKA MAKA', 'ebenezer3@gmail.com', 'ebenezer3@gmail.com', '$2y$10$97ntRebgUW4ChkOWu/7R5OCtNr/6NUN8eMSHtibO0XmNMx6qWHXBi', NULL, 1, NULL, NULL, NULL, '2022-05-10 15:26:53', '2022-05-10 15:33:10', 1, 1, 1, 1, 4, 'no', 0, NULL, NULL, NULL, NULL, NULL),
(3, 'SAMUEL EKE', 'SamuelEKE@gmail.com', 'SamuelEKE@gmail.com', '$2y$10$pYnVxkR5PkEDuxa9gGbRwOk2i.Zra4Qg5M0/qWfBOzRMYb9C7XJkW', NULL, 1, NULL, NULL, NULL, '2022-05-11 12:53:25', '2022-05-11 12:57:27', 1, 1, 1, 1, 5, 'no', 0, NULL, NULL, NULL, NULL, NULL),
(4, 'djoyo ', 'djoyo@gmail.com', 'djoyo@gmail.com', '$2y$10$qRAO4Hfpiix063IiNi09F.6qBVmP1V7nsw77bg4lBB.DewekJOx/K', NULL, 1, NULL, NULL, NULL, '2022-05-12 09:05:20', '2022-05-27 21:12:01', 1, 1, 1, 1, 8, 'no', 0, NULL, NULL, NULL, NULL, NULL),
(5, 'ASTRIDE DJOYO SONAGOU', '122', 'djoyoson@gmail.com', '$2y$10$bmuK.buR4l48KpFEIJNC8uBNOjLewH5br744UmR3r91Z399//Jx5K', NULL, 1, NULL, NULL, NULL, '2022-01-01 11:00:00', '2022-05-13 12:30:27', 1, 1, 1, 1, 2, 'no', 0, NULL, NULL, NULL, NULL, NULL),
(6, '', 'Gardien@gmail.com', 'Gardien@gmail.com', '$2y$10$7HSkx3HzYhKA8VnoexryK.HU6B0gTzTMQVil1PR/ezb21iF8uPhqW', NULL, 1, NULL, NULL, NULL, '2022-01-01 11:00:00', '2022-05-13 12:30:27', 1, 1, 1, 1, 3, 'no', 0, NULL, NULL, NULL, NULL, NULL),
(7, 'OKOUMAMA GWETH', '123', 'okoumag@gmail.com', '$2y$10$qLoSMzTGCJgb5PXZnpfPO.rQIDcjtDw/3YT7Bb.3ByidDwYse1ud2', NULL, 1, NULL, NULL, NULL, '2022-01-01 11:00:00', '2022-05-13 12:31:30', 1, 1, 1, 1, 2, 'no', 0, NULL, NULL, NULL, NULL, NULL),
(8, '', 'Gardien0@gmail.com', 'Gardien0@gmail.com', '$2y$10$QSnjXQbkp14fCK.f3qHh4OdYj9QyfjMFZCzSY1CLe7xLMlXsZl9UK', NULL, 1, NULL, NULL, NULL, '2022-01-01 11:00:00', '2022-05-13 12:31:30', 1, 1, 1, 1, 3, 'no', 0, NULL, NULL, NULL, NULL, NULL),
(16, 'Marcel NZOGO', 'Nzogo@gmail.com', 'Nzogo@gmail.com', '$2y$10$BggG.BCY4GYXeqq3WcH/xOA.Ng98NBxHlb7JvDkavC3hjJT1RykuW', NULL, 1, NULL, NULL, NULL, '2022-06-24 19:05:59', '2022-06-24 19:05:59', 1, 1, 1, 1, 4, 'no', 0, NULL, NULL, NULL, NULL, NULL),
(13, 'moi', 'moi@gmail.com', 'moi@gmail.com', '$2y$10$vVFT6cbiSLFK4zm.Yzty6OpGkfGSy3kbwPL6RW/5IYwTkUQKH8ume', NULL, 0, NULL, NULL, NULL, '2022-06-13 07:49:25', '2022-06-13 07:49:25', 1, 1, 0, 1, 4, 'no', 0, NULL, NULL, NULL, NULL, NULL),
(17, 'marthe ', '124', '', '$2y$10$oNX/TpcRyAfcdCiLPZn2I.6G08FMiSRof8KqAK6ZrNPjRch89.E3O', NULL, 1, NULL, NULL, NULL, '2022-01-01 11:00:00', '2022-07-05 17:28:41', 1, 1, 1, 1, 2, 'no', 0, NULL, NULL, NULL, NULL, NULL),
(18, '', 'tuteur@gmail.com', 'tuteur@gmail.com', '$2y$10$gWsJw68nbKLyvqvUXfE6Kue.dDncn.j/glw8/so.CEZ8Pd339HbVK', NULL, 1, NULL, NULL, NULL, '2022-01-01 11:00:00', '2022-07-05 17:28:41', 1, 1, 1, 1, 3, 'no', 0, NULL, NULL, NULL, NULL, NULL);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
