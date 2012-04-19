-- phpMyAdmin SQL Dump
-- version 3.4.5
-- http://www.phpmyadmin.net
--
-- Machine: localhost
-- Genereertijd: 06 mrt 2012 om 15:13
-- Serverversie: 5.5.16
-- PHP-Versie: 5.3.8

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `deb28997n3_mage9`
--

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `adminnotification_inbox`
--

CREATE TABLE IF NOT EXISTS `adminnotification_inbox` (
  `notification_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Notification id',
  `severity` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Problem type',
  `date_added` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Create date',
  `title` varchar(255) NOT NULL COMMENT 'Title',
  `description` text COMMENT 'Description',
  `url` varchar(255) DEFAULT NULL COMMENT 'Url',
  `is_read` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Flag if notification read',
  `is_remove` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Flag if notification might be removed',
  PRIMARY KEY (`notification_id`),
  KEY `IDX_ADMINNOTIFICATION_INBOX_SEVERITY` (`severity`),
  KEY `IDX_ADMINNOTIFICATION_INBOX_IS_READ` (`is_read`),
  KEY `IDX_ADMINNOTIFICATION_INBOX_IS_REMOVE` (`is_remove`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='Adminnotification Inbox' AUTO_INCREMENT=69 ;

--
-- Gegevens worden uitgevoerd voor tabel `adminnotification_inbox`
--

INSERT INTO `adminnotification_inbox` (`notification_id`, `severity`, `date_added`, `title`, `description`, `url`, `is_read`, `is_remove`) VALUES
(1, 4, '2008-07-25 03:24:40', 'Magento 1.1 Production Version Now Available', 'We are thrilled to announce the availability of the production release of Magento 1.1. Read more about the release in the Magento Blog.', 'http://www.magentocommerce.com/blog/comments/magento-11-is-here-1/', 0, 0),
(2, 4, '2008-08-02 03:30:16', 'Updated iPhone Theme is now available', 'Updated iPhone theme for Magento 1.1 is now available on Magento Connect and for upgrade through your Magento Connect Manager.', 'http://www.magentocommerce.com/blog/comments/updated-iphone-theme-for-magento-11-is-now-available/', 0, 0),
(3, 3, '2008-08-02 03:40:27', 'Magento version 1.1.2 is now available', 'Magento version 1.1.2 is now available for download and upgrade.', 'http://www.magentocommerce.com/blog/comments/magento-version-112-is-now-available/', 0, 0),
(4, 3, '2008-08-13 19:51:46', 'Magento version 1.1.3 is now available', 'Magento version 1.1.3 is now available', 'http://www.magentocommerce.com/blog/comments/magento-version-113-is-now-available/', 0, 0),
(5, 1, '2008-09-02 23:10:31', 'Magento Version 1.1.4 Security Update Now Available', 'Magento 1.1.4 Security Update Now Available. If you are using Magento version 1.1.x, we highly recommend upgrading to this version as soon as possible.', 'http://www.magentocommerce.com/blog/comments/magento-version-114-security-update/', 0, 0),
(6, 3, '2008-09-16 00:09:54', 'Magento version 1.1.5 Now Available', 'Magento version 1.1.5 Now Available.\n\nThis release includes many bug fixes, a new category manager and a new skin for the default Magento theme.', 'http://www.magentocommerce.com/blog/comments/magento-version-115-now-available/', 0, 0),
(7, 3, '2008-09-17 22:18:35', 'Magento version 1.1.6 Now Available', 'Magento version 1.1.6 Now Available.\n\nThis version includes bug fixes for Magento 1.1.x that are listed in the release notes section.', 'http://www.magentocommerce.com/blog/comments/magento-version-116-now-available/', 0, 0),
(8, 4, '2008-11-08 03:46:42', 'Reminder: Change Magento`s default phone numbers and callouts before site launch', 'Before launching your Magento store, please remember to change Magento`s default phone numbers that appear in email templates, callouts, templates, etc.', '', 0, 0),
(9, 3, '2008-11-20 05:31:12', 'Magento version 1.1.7 Now Available', 'Magento version 1.1.7 Now Available.\n\nThis version includes over 350 issue resolutions for Magento 1.1.x that are listed in the release notes section, and new functionality that includes:\n\n-Google Website Optimizer integration\n-Google Base integration\n-Scheduled DB logs cleaning option', 'http://www.magentocommerce.com/blog/comments/magento-version-117-now-available/', 0, 0),
(10, 3, '2008-11-27 01:24:50', 'Magento Version 1.1.8 Now Available', 'Magento version 1.1.8 now available.\n\nThis version includes some issue resolutions for Magento 1.1.x that are listed in the release notes section.', 'http://www.magentocommerce.com/blog/comments/magento-version-118-now-available/', 0, 0),
(11, 3, '2008-12-30 11:45:59', 'Magento version 1.2.0 is now available for download and upgrade', 'We are extremely happy to announce the availability of Magento version 1.2.0 for download and upgrade.\n\nThis version includes numerous issue resolutions for Magento version 1.1.x and some highly requested new features such as:\n\n    * Support for Downloadable/Digital Products. \n    * Added Layered Navigation to site search result page.\n    * Improved site search to utilize MySQL fulltext search\n    * Added support for fixed-taxes on product level.\n    * Upgraded Zend Framework to the latest stable version 1.7.2', 'http://www.magentocommerce.com/blog/comments/magento-version-120-is-now-available/', 0, 0),
(12, 2, '2008-12-31 01:59:22', 'Magento version 1.2.0.1 now available', 'Magento version 1.2.0.1 now available.This version includes some issue resolutions for Magento 1.2.x that are listed in the release notes section.', 'http://www.magentocommerce.com/blog/comments/magento-version-1201-available/', 0, 0),
(13, 2, '2009-01-13 00:41:49', 'Magento version 1.2.0.2 now available', 'Magento version 1.2.0.2 is now available for download and upgrade. This version includes an issue resolutions for Magento version 1.2.0.x as listed in the release notes.', 'http://www.magentocommerce.com/blog/comments/magento-version-1202-now-available/', 0, 0),
(14, 3, '2009-01-24 04:25:56', 'Magento version 1.2.0.3 now available', 'Magento version 1.2.0.3 is now available for download and upgrade. This version includes issue resolutions for Magento version 1.2.0.x as listed in the release notes.', 'http://www.magentocommerce.com/blog/comments/magento-version-1203-now-available/', 0, 0),
(15, 3, '2009-02-03 01:57:00', 'Magento version 1.2.1 is now available for download and upgrade', 'We are happy to announce the availability of Magento version 1.2.1 for download and upgrade.\n\nThis version includes some issue resolutions for Magento version 1.2.x. A full list of items included in this release can be found on the release notes page.', 'http://www.magentocommerce.com/blog/comments/magento-version-121-now-available/', 0, 0),
(16, 3, '2009-02-24 04:45:47', 'Magento version 1.2.1.1 now available', 'Magento version 1.2.1.1 now available.This version includes some issue resolutions for Magento 1.2.x that are listed in the release notes section.', 'http://www.magentocommerce.com/blog/comments/magento-version-1211-now-available/', 0, 0),
(17, 3, '2009-02-27 05:39:24', 'CSRF Attack Prevention', 'We have just posted a blog entry about a hypothetical CSRF attack on a Magento admin panel. Please read the post to find out if your Magento installation is at risk at http://www.magentocommerce.com/blog/comments/csrf-vulnerabilities-in-web-application-and-how-to-avoid-them-in-magento/', 'http://www.magentocommerce.com/blog/comments/csrf-vulnerabilities-in-web-application-and-how-to-avoid-them-in-magento/', 0, 0),
(18, 2, '2009-03-04 03:03:58', 'Magento version 1.2.1.2 now available', 'Magento version 1.2.1.2 is now available for download and upgrade.\nThis version includes some updates to improve admin security as described in the release notes page.', 'http://www.magentocommerce.com/blog/comments/magento-version-1212-now-available/', 0, 0),
(19, 3, '2009-03-31 04:22:40', 'Magento version 1.3.0 now available', 'Magento version 1.3.0 is now available for download and upgrade. This version includes numerous issue resolutions for Magento version 1.2.x and new features as described on the release notes page.', 'http://www.magentocommerce.com/blog/comments/magento-version-130-is-now-available/', 0, 0),
(20, 3, '2009-04-18 06:06:02', 'Magento version 1.3.1 now available', 'Magento version 1.3.1 is now available for download and upgrade. This version includes some issue resolutions for Magento version 1.3.x and new features such as Checkout By Amazon and Amazon Flexible Payment. To see a full list of updates please check the release notes page.', 'http://www.magentocommerce.com/blog/comments/magento-version-131-now-available/', 0, 0),
(21, 3, '2009-05-20 00:31:21', 'Magento version 1.3.1.1 now available', 'Magento version 1.3.1.1 is now available for download and upgrade. This version includes some issue resolutions for Magento version 1.3.x and a security update for Magento installations that run on multiple domains or sub-domains. If you are running Magento with multiple domains or sub-domains we highly recommend upgrading to this version.', 'http://www.magentocommerce.com/blog/comments/magento-version-1311-now-available/', 0, 0),
(22, 3, '2009-05-30 00:54:06', 'Magento version 1.3.2 now available', 'This version includes some improvements and issue resolutions for version 1.3.x that are listed on the release notes page. also included is a Beta version of the Compile module.', 'http://www.magentocommerce.com/blog/comments/magento-version-132-now-available/', 0, 0),
(23, 3, '2009-06-01 21:32:52', 'Magento version 1.3.2.1 now available', 'Magento version 1.3.2.1 now available for download and upgrade.\n\nThis release solves an issue for users running Magento with PHP 5.2.0, and changes to index.php to support the new Compiler Module.', 'http://www.magentocommerce.com/blog/comments/magento-version-1321-now-available/', 0, 0),
(24, 3, '2009-07-02 03:21:44', 'Magento version 1.3.2.2 now available', 'Magento version 1.3.2.2 is now available for download and upgrade.\n\nThis release includes issue resolution for Magento version 1.3.x. To see a full list of changes please visit the release notes page http://www.magentocommerce.com/download/release_notes.', 'http://www.magentocommerce.com/blog/comments/magento-version-1322-now-available/', 0, 0),
(25, 3, '2009-07-23 08:48:54', 'Magento version 1.3.2.3 now available', 'Magento version 1.3.2.3 is now available for download and upgrade.\n\nThis release includes issue resolution for Magento version 1.3.x. We recommend to upgrade to this version if PayPal payment modules are in use. To see a full list of changes please visit the release notes page http://www.magentocommerce.com/download/release_notes.', 'http://www.magentocommerce.com/blog/comments/magento-version-1323-now-available/', 0, 0),
(26, 4, '2009-08-28 20:26:28', 'PayPal is updating Payflow Pro and Website Payments Pro (Payflow Edition) UK.', 'If you are using Payflow Pro and/or Website Payments Pro (Payflow Edition) UK.  payment methods, you will need to update the URL‘s in your Magento Administrator Panel in order to process transactions after September 1, 2009. Full details are available here: http://www.magentocommerce.com/wiki/paypal_payflow_changes', 'http://www.magentocommerce.com/wiki/paypal_payflow_changes', 0, 0),
(27, 2, '2009-09-23 22:16:49', 'Magento Version 1.3.2.4 Security Update', 'Magento Version 1.3.2.4 is now available. This version includes a security updates for Magento 1.3.x that solves possible XSS vulnerability issue on customer registration page and is available through SVN, Download Page and through the Magento Connect Manager.', 'http://www.magentocommerce.com/blog/comments/magento-version-1324-security-update/', 0, 0),
(28, 4, '2009-09-25 16:57:54', 'Magento Preview Version 1.4.0.0-alpha2 is now available', 'We are happy to announce the availability of Magento Preview Version 1.4.0.0-alpha2 for download.\nAs this is a preview version it is NOT recommended in any way to be used in a production environment.', 'http://www.magentocommerce.com/blog/comments/magento-preview-version-1400-alpha2-now-available/', 0, 0),
(29, 4, '2009-10-07 02:55:40', 'Magento Preview Version 1.4.0.0-alpha3 is now available', 'We are happy to announce the availability of Magento Preview Version 1.4.0.0-alpha3 for download.\nAs this is a preview version it is NOT recommended in any way to be used in a production environment.', 'http://www.magentocommerce.com/blog/comments/magento-preview-version-1400-alpha3-now-available/', 0, 0),
(30, 4, '2009-12-09 03:30:36', 'Magento Preview Version 1.4.0.0-beta1 is now available', 'We are happy to announce the availability of Magento Preview Version 1.4.0.0-beta1 for download.\nAs this is a preview version it is NOT recommended in any way to be used in a production environment.', 'http://www.magentocommerce.com/blog/comments/magento-preview-version-1400-beta1-now-available/', 0, 0),
(31, 4, '2009-12-31 13:22:12', 'Magento Preview Version 1.4.0.0-rc1 is now available', 'We are happy to announce the availability of Magento Preview Version 1.4.0.0-rc1 for download.\nAs this is a preview version it is NOT recommended in any way to be used in a production environment.', 'http://www.magentocommerce.com/blog/comments/magento-preview-version-1400-rc1-now-available/', 0, 0),
(32, 4, '2010-02-13 07:39:53', 'Magento CE Version 1.4.0.0 Stable is now available', 'We are excited to announce the availability of Magento CE Version 1.4.0.0 Stable for upgrade and download.', 'http://bit.ly/c53rpK', 0, 0),
(33, 3, '2010-02-20 06:39:36', 'Magento CE Version 1.4.0.1 Stable is now available', 'Magento CE 1.4.0.1 Stable is now available for upgrade and download.', 'http://www.magentocommerce.com/blog/comments/magento-ce-version-1401-stable-now-available/', 0, 0),
(34, 4, '2010-04-23 22:09:03', 'Magento Version CE 1.3.3.0 Stable - Now Available With Support for 3-D Secure', 'Based on community requests, we are excited to announce the release of Magento CE 1.3.3.0-Stable with support for 3-D Secure. This release is intended for Magento merchants using version 1.3.x, who want to add support for 3-D Secure.', 'http://www.magentocommerce.com/blog/comments/magento-version-ce-1330-stable-now-available-with-support-for-3-d-secure/', 0, 0),
(35, 4, '2010-05-31 19:20:21', 'Announcing the Launch of Magento Mobile', 'The Magento team is pleased to announce the launch of Magento mobile, a new product that will allow Magento merchants to easily create branded, native mobile storefront applications that are deeply integrated with Magento’s market-leading eCommerce platform. The product includes a new administrative manager, a native iPhone app that is fully customizable, and a service where Magento manages the submission and maintenance process for the iTunes App Store.\n\nLearn more by visiting the Magento mobile product page and sign-up to be the first to launch a native mobile commerce app, fully integrated with Magento.', 'http://www.magentocommerce.com/product/mobile', 0, 0),
(36, 4, '2010-06-10 22:08:08', 'Magento CE Version 1.4.1.0 Stable is now available', 'We are excited to announce the availability of Magento CE Version 1.4.1.0 Stable for upgrade and download. Some of the highlights of this release include: Enhanced PayPal integration (more info to follow), Change of Database structure of the Sales module to no longer use EAV, and much more.', 'http://www.magentocommerce.com/blog/comments/magento-ce-version-1410-stable-now-available/', 0, 0),
(37, 4, '2010-07-26 23:37:34', 'Magento CE Version 1.4.1.1 Stable is now available', 'We are excited to announce the availability of Magento CE Version 1.4.1.1 Stable for download and upgrade.', 'http://www.magentocommerce.com/blog/comments/magento-ce-version-1411-stable-now-available/', 0, 0),
(38, 4, '2010-07-28 07:12:12', 'Magento CE Version 1.4.2.0-beta1 Preview Release Now Available', 'This release gives a preview of the new Magento Connect Manager.', 'http://www.magentocommerce.com/blog/comments/magento-preview-version-1420-beta1-now-available/', 0, 0),
(39, 4, '2010-07-28 22:15:01', 'Magento CE Version 1.4.1.1 Patch Available', 'As some users experienced issues with upgrading to CE 1.4.1.1 through PEAR channels we provided a patch for it that is available on our blog http://www.magentocommerce.com/blog/comments/magento-ce-version-1411-stable-patch/', 'http://www.magentocommerce.com/blog/comments/magento-ce-version-1411-stable-patch/', 0, 0),
(40, 4, '2010-10-12 02:13:25', 'Magento Mobile is now live!', 'Magento Mobile is now live! Signup today to have your own native iPhone mobile-shopping app in iTunes for the holiday season! Learn more at http://www.magentomobile.com/', 'http://www.magentomobile.com/', 0, 0),
(41, 4, '2010-11-09 01:52:06', 'Magento CE Version 1.4.2.0-RC1 Preview Release Now Available', 'We are happy to announce the availability of Magento Preview Version 1.4.2.0-RC1 for download.', 'http://www.magentocommerce.com/blog/comments/magento-preview-version-1420-rc1-now-available/', 0, 0),
(42, 4, '2010-12-03 00:33:00', 'Magento CE Version 1.4.2.0-RC2 Preview Release Now Available', 'We are happy to announce the availability of Magento Preview Version 1.4.2.0-RC2 for download.', 'http://www.magentocommerce.com/blog/comments/magento-preview-version-1420-rc2-now-available/', 0, 0),
(43, 4, '2010-12-09 02:29:55', 'Magento CE Version 1.4.2.0 Stable is now available', 'We are excited to announce the availability of Magento CE Version 1.4.2.0 Stable for download and upgrade.', 'http://www.magentocommerce.com/blog/comments/magento-ce-version-1420-stable-now-available/', 0, 0),
(44, 4, '2010-12-18 03:23:55', 'Magento Preview Version CE 1.5.0.0-alpha1 is now available', 'We are happy to announce the availability of Magento Preview Version CE 1.5.0.0-alpha1 for download.\nAs this is a preview version it is NOT recommended in any way to be used in a production environment.', 'http://www.magentocommerce.com/blog/comments/magento-preview-version-ce-1500-alpha1-now-available/', 0, 0),
(45, 4, '2010-12-30 03:51:08', 'Magento Preview Version CE 1.5.0.0-alpha2 is now available', 'We are happy to announce the availability of Magento Preview Version CE 1.5.0.0-alpha2 for download.\nAs this is a preview version it is NOT recommended in any way to be used in a production environment.', 'http://www.magentocommerce.com/blog/comments/magento-preview-version-ce-1500-alpha2-now-available/', 0, 0),
(46, 4, '2011-01-14 04:35:36', 'Magento Preview Version CE 1.5.0.0-beta1 is now available', 'We are happy to announce the availability of Magento Preview Version CE 1.5.0.0-beta1 for download.\nAs this is a preview version it is NOT recommended in any way to be used in a production environment.', 'http://www.magentocommerce.com/blog/comments/magento-preview-version-ce-1500-beta1-now-available/', 0, 0),
(47, 4, '2011-01-22 01:19:09', 'Magento Preview Version CE 1.5.0.0-beta2 is now available', 'We are happy to announce the availability of Magento Preview Version CE 1.5.0.0-beta2 for download.\nAs this is a preview version it is NOT recommended in any way to be used in a production environment.', 'http://www.magentocommerce.com/blog/comments/magento-preview-version-ce-1500-beta2-now-available/', 0, 0),
(48, 4, '2011-01-25 02:10:33', 'Join us for Magento''s Imagine eCommerce Conference!', 'Magento''s Imagine eCommerce Conference is a must-attend event for anyone who uses the Magento platform or is part of the Magento ecosystem. The conference will bring together over 500 retailers, merchants, developers, partners, eCommerce experts, technologists and marketing pros for a fun and intensive conversation about the future of eCommerce.\n\nThe conference is in Los Angeles and kicks off early Monday evening February 7th through Wednesday, February 9th, 2011.\n\nRegister at http://www.magento.com/imagine. First 20 registrants use discount code IMAGINE3X76 for $300 off. *This discount is sponsored by PayPal and is only valid for new registrations.\n\nHope to see you there!\n\nMagento Team', 'http://www.magento.com/imagine', 0, 0),
(49, 4, '2011-01-28 01:27:57', 'Magento Preview Version CE 1.5.0.0-rc1 is now available', 'We are happy to announce the availability of Magento Preview Version CE 1.5.0.0-rc1 for download.\nAs this is a preview version it is NOT recommended in any way to be used in a production environment.', 'http://www.magentocommerce.com/blog/comments/magento-preview-version-ce-1500-rc1-now-available/', 0, 0),
(50, 4, '2011-02-04 01:56:33', 'Magento Preview Version CE 1.5.0.0-rc2 is now available', 'We are happy to announce the availability of Magento Preview Version CE 1.5.0.0-rc2 for download.\nAs this is a preview version it is NOT recommended in any way to be used in a production environment.', 'http://www.magentocommerce.com/blog/comments/magento-preview-version-ce-1500-rc2-now-available/', 0, 0),
(51, 4, '2011-02-08 23:43:23', 'Magento CE Version 1.5.0.0 Stable is now available', 'We are excited to announce the availability of Magento CE Version 1.5.0.0 Stable for download and upgrade.', 'http://www.magentocommerce.com/blog/comments/magento-community-professional-and-enterprise-editions-releases-now-availab/', 0, 0),
(52, 4, '2011-02-10 03:42:57', 'Magento CE 1.5.0.1 stable Now Available', 'We are excited to announce the availability of Magento CE Version 1.5.0.1 Stable for download and upgrade.', 'http://www.magentocommerce.com/blog/comments/magento-ce-1501-stable-now-available/', 0, 0),
(53, 4, '2011-03-18 23:15:45', 'Magento CE 1.5.1.0-beta1 Now Available', 'We are happy to announce the availability of Magento Preview Version CE 1.5.1.0-beta1 for download and upgrade.', 'http://www.magentocommerce.com/blog/comments/magento-preview-version-ce-1510-beta1-now-available/', 0, 0),
(54, 4, '2011-03-31 20:43:02', 'Magento CE 1.5.1.0-rc1 Now Available', 'We are happy to announce the availability of Magento Preview Version CE 1.5.1.0-rc1 for download and upgrade.', 'http://www.magentocommerce.com/blog/comments/magento-preview-version-ce-1510-rc1-now-available/', 0, 0),
(55, 4, '2011-04-26 21:21:07', 'Magento CE 1.5.1.0-stable Now Available', 'We are excited to announce the availability of Magento CE Version 1.5.1.0 Stable for download and upgrade.', 'http://www.magentocommerce.com/blog/comments/magento-ce-version-1510-stable-now-available/', 0, 0),
(56, 4, '2011-05-26 21:33:23', 'Magento Preview Version CE 1.6.0.0-alpha1 is now available', 'We are happy to announce the availability of Magento Preview Version CE 1.6.0.0-alpha1 for download.\nAs this is a preview version it is NOT recommended in any way to be used in a production environment.', 'http://www.magentocommerce.com/blog/comments/magento-preview-version-ce-1600-alpha1-now-available/', 0, 0),
(57, 4, '2011-06-15 20:12:08', 'Magento Preview Version CE 1.6.0.0-beta1 is now available', 'We are happy to announce the availability of Magento Preview Version CE 1.6.0.0-beta1for download.\nAs this is a preview version it is NOT recommended in any way to be used in a production environment.', 'http://www.magentocommerce.com/blog/comments/magento-preview-version-ce-1600-beta1-now-available/', 0, 0),
(58, 4, '2011-06-30 21:03:58', 'Magento Preview Version CE 1.6.0.0-rc1 is now available', 'We are happy to announce the availability of Magento Preview Version CE 1.6.0.0-rc1 for download.\nAs this is a preview version it is NOT recommended in any way to be used in a production environment.', 'http://www.magentocommerce.com/blog/comments/magento-preview-version-ce-1600-rc1-now-available/', 0, 0),
(59, 4, '2011-07-11 21:07:39', 'Magento Preview Version CE 1.6.0.0-rc2 is now available', 'We are happy to announce the availability of Magento Preview Version CE 1.6.0.0-rc2 for download.\nAs this is a preview version it is NOT recommended in any way to be used in a production environment.', 'http://www.magentocommerce.com/blog/comments/magento-preview-version-ce-1600-rc2-now-available/', 0, 0),
(60, 4, '2011-08-19 19:58:31', 'Magento CE 1.6.0.0-stable Now Available', 'We are excited to announce the availability of Magento CE Version 1.6.0.0 Stable for download and upgrade.', 'http://www.magentocommerce.com/blog/comments/magento-ce-version-1600-stable-now-available/', 0, 0),
(61, 4, '2011-09-17 03:31:26', 'Magento Preview Version CE 1.6.1.0-beta1 is now available', 'We are happy to announce the availability of Magento Preview Version CE 1.6.1.0-beta1 for download.\nAs this is a preview version it is NOT recommended in any way to be used in a production environment.', 'http://www.magentocommerce.com/blog/comments/magento-preview-version-ce-1610-beta1-now-available/', 0, 0),
(62, 4, '2011-09-29 17:44:10', 'Magento Preview Version CE 1.6.1.0-rc1 is now available', 'We are happy to announce the availability of Magento Preview Version CE 1.6.1.0-rc1 for download.\nAs this is a preview version it is NOT recommended in any way to be used in a production environment.', 'http://www.magentocommerce.com/blog/comments/magento-preview-version-ce-1610-rc1-now-available/', 0, 0),
(63, 4, '2011-10-19 19:50:05', 'Magento CE 1.6.1.0-stable Now Available', 'We are excited to announce the availability of Magento CE Version 1.6.1.0 Stable for download and upgrade.', 'http://www.magentocommerce.com/blog/comments/magento-ce-version-1610-stable-now-available/', 0, 0),
(64, 4, '2011-12-30 21:39:35', 'Magento Preview Version CE 1.7.0.0-alpha1 is now available', 'We are happy to announce the availability of Magento Preview Version CE 1.7.0.0-alpha1 for download.\nAs this is a preview version it is NOT recommended in any way to be used in a production environment.', 'http://www.magentocommerce.com/blog/comments/magento-preview-version-ce-1700-alpha1-now-available/', 0, 0),
(65, 4, '2012-01-11 21:24:20', 'Magento CE 1.6.2.0-stable Now Available', 'We are excited to announce the availability of Magento CE Version 1.6.2.0 Stable for download and upgrade.', 'http://www.magentocommerce.com/blog/comments/magento-ce-version-1620-stable-now-available/', 0, 0),
(66, 4, '2012-01-20 20:15:35', 'Magento''s Imagine eCommerce Conference 2012 – Registration Now Open!', 'Registration for the 2012 Imagine eCommerce Conference is officially OPEN! With an expected attendance of over 1000 Magento enthusiasts, this year’s exclusive event is taking place in Las Vegas, April 23rd – 25th at the luxurious M Resort. Join us for an unforgettable experience!', 'http://www.magentocommerce.com/blog/comments/registration-for-imagine-ecommerce-2012-is-live/', 0, 0),
(67, 4, '2012-03-02 23:54:12', 'Magento Preview Version CE 1.7.0.0-beta1 is now available', 'We are happy to announce the availability of Magento Preview Version CE 1.7.0.0-beta1 for download.\nAs this is a preview version it is NOT recommended in any way to be used in a production environment.', 'http://www.magentocommerce.com/blog/comments/magento-preview-version-ce-1700-beta1-now-available/', 0, 0),
(68, 4, '2012-03-02 23:54:12', 'Magento Preview Version CE 1.7.0.0-beta1 is now available', 'We are happy to announce the availability of Magento Preview Version CE 1.7.0.0-beta1 for download.\nAs this is a preview version it is NOT recommended in any way to be used in a production environment.', 'http://www.magentocommerce.com/blog/comments/magento-preview-version-ce-1700-beta1-now-available/', 0, 0);

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `admin_assert`
--

CREATE TABLE IF NOT EXISTS `admin_assert` (
  `assert_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Assert ID',
  `assert_type` varchar(20) NOT NULL DEFAULT '' COMMENT 'Assert Type',
  `assert_data` text COMMENT 'Assert Data',
  PRIMARY KEY (`assert_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Admin Assert Table' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `admin_role`
--

CREATE TABLE IF NOT EXISTS `admin_role` (
  `role_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Role ID',
  `parent_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Parent Role ID',
  `tree_level` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Role Tree Level',
  `sort_order` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Role Sort Order',
  `role_type` varchar(1) NOT NULL DEFAULT '0' COMMENT 'Role Type',
  `user_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'User ID',
  `role_name` varchar(50) NOT NULL DEFAULT '' COMMENT 'Role Name',
  PRIMARY KEY (`role_id`),
  KEY `IDX_ADMIN_ROLE_PARENT_ID_SORT_ORDER` (`parent_id`,`sort_order`),
  KEY `IDX_ADMIN_ROLE_TREE_LEVEL` (`tree_level`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='Admin Role Table' AUTO_INCREMENT=3 ;

--
-- Gegevens worden uitgevoerd voor tabel `admin_role`
--

INSERT INTO `admin_role` (`role_id`, `parent_id`, `tree_level`, `sort_order`, `role_type`, `user_id`, `role_name`) VALUES
(1, 0, 1, 1, 'G', 0, 'Administrators'),
(2, 1, 2, 0, 'U', 1, 'Stan');

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `admin_rule`
--

CREATE TABLE IF NOT EXISTS `admin_rule` (
  `rule_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Rule ID',
  `role_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Role ID',
  `resource_id` varchar(255) NOT NULL DEFAULT '' COMMENT 'Resource ID',
  `privileges` varchar(20) DEFAULT NULL COMMENT 'Privileges',
  `assert_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Assert ID',
  `role_type` varchar(1) DEFAULT NULL COMMENT 'Role Type',
  `permission` varchar(10) DEFAULT NULL COMMENT 'Permission',
  PRIMARY KEY (`rule_id`),
  KEY `IDX_ADMIN_RULE_RESOURCE_ID_ROLE_ID` (`resource_id`,`role_id`),
  KEY `IDX_ADMIN_RULE_ROLE_ID_RESOURCE_ID` (`role_id`,`resource_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='Admin Rule Table' AUTO_INCREMENT=2 ;

--
-- Gegevens worden uitgevoerd voor tabel `admin_rule`
--

INSERT INTO `admin_rule` (`rule_id`, `role_id`, `resource_id`, `privileges`, `assert_id`, `role_type`, `permission`) VALUES
(1, 1, 'all', NULL, 0, 'G', 'allow');

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `admin_user`
--

CREATE TABLE IF NOT EXISTS `admin_user` (
  `user_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'User ID',
  `firstname` varchar(32) DEFAULT NULL COMMENT 'User First Name',
  `lastname` varchar(32) DEFAULT NULL COMMENT 'User Last Name',
  `email` varchar(128) DEFAULT NULL COMMENT 'User Email',
  `username` varchar(40) DEFAULT NULL COMMENT 'User Login',
  `password` varchar(40) DEFAULT NULL COMMENT 'User Password',
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'User Created Time',
  `modified` timestamp NULL DEFAULT NULL COMMENT 'User Modified Time',
  `logdate` timestamp NULL DEFAULT NULL COMMENT 'User Last Login Time',
  `lognum` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'User Login Number',
  `reload_acl_flag` smallint(6) NOT NULL DEFAULT '0' COMMENT 'Reload ACL',
  `is_active` smallint(6) NOT NULL DEFAULT '1' COMMENT 'User Is Active',
  `extra` text COMMENT 'User Extra Data',
  `rp_token` text COMMENT 'Reset Password Link Token',
  `rp_token_created_at` timestamp NULL DEFAULT NULL COMMENT 'Reset Password Link Token Creation Date',
  PRIMARY KEY (`user_id`),
  UNIQUE KEY `UNQ_ADMIN_USER_USERNAME` (`username`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='Admin User Table' AUTO_INCREMENT=2 ;

--
-- Gegevens worden uitgevoerd voor tabel `admin_user`
--

INSERT INTO `admin_user` (`user_id`, `firstname`, `lastname`, `email`, `username`, `password`, `created`, `modified`, `logdate`, `lognum`, `reload_acl_flag`, `is_active`, `extra`, `rp_token`, `rp_token_created_at`) VALUES
(1, 'Stan', 'Melching', '0794792@gmail.com', 'Stan', '1cfee69b80ff7dfebf8b813a88a63e60:qQ', '2012-03-06 15:11:36', '2012-02-28 10:57:25', '2012-03-04 23:32:54', 19, 0, 1, 'a:1:{s:11:"configState";a:41:{s:12:"dev_restrict";s:1:"0";s:9:"dev_debug";s:1:"1";s:12:"dev_template";s:1:"1";s:20:"dev_translate_inline";s:1:"1";s:7:"dev_log";s:1:"0";s:6:"dev_js";s:1:"0";s:7:"dev_css";s:1:"0";s:14:"design_package";s:1:"0";s:12:"design_theme";s:1:"1";s:11:"design_head";s:1:"0";s:13:"design_header";s:1:"0";s:13:"design_footer";s:1:"0";s:16:"design_watermark";s:1:"0";s:17:"design_pagination";s:1:"0";s:16:"wishlist_general";s:1:"1";s:14:"wishlist_email";s:1:"0";s:22:"wishlist_wishlist_link";s:1:"0";s:31:"advanced_modules_disable_output";s:1:"1";s:14:"paypal_account";s:1:"1";s:10:"paypal_api";s:1:"0";s:14:"paypal_express";s:1:"0";s:10:"paypal_wps";s:1:"0";s:10:"paypal_wpp";s:1:"0";s:31:"paypal_paypal_billing_agreement";s:1:"0";s:13:"paypal_wpp_pe";s:1:"0";s:15:"paypal_verisign";s:1:"0";s:17:"paypal_express_pe";s:1:"0";s:25:"paypal_settlement_reports";s:1:"0";s:12:"paypal_style";s:1:"1";s:19:"paypal_payflow_link";s:1:"0";s:17:"paypal_hosted_pro";s:1:"0";s:23:"paypal_payflow_advanced";s:1:"0";s:7:"web_url";s:1:"0";s:7:"web_seo";s:1:"0";s:12:"web_unsecure";s:1:"1";s:10:"web_secure";s:1:"1";s:11:"web_default";s:1:"0";s:9:"web_polls";s:1:"0";s:10:"web_cookie";s:1:"0";s:11:"web_session";s:1:"0";s:24:"web_browser_capabilities";s:1:"0";}}', NULL, NULL);

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `api_assert`
--

CREATE TABLE IF NOT EXISTS `api_assert` (
  `assert_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Assert id',
  `assert_type` varchar(20) DEFAULT NULL COMMENT 'Assert type',
  `assert_data` text COMMENT 'Assert additional data',
  PRIMARY KEY (`assert_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Api ACL Asserts' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `api_role`
--

CREATE TABLE IF NOT EXISTS `api_role` (
  `role_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Role id',
  `parent_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Parent role id',
  `tree_level` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Role level in tree',
  `sort_order` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Sort order to display on admin area',
  `role_type` varchar(1) NOT NULL DEFAULT '0' COMMENT 'Role type',
  `user_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'User id',
  `role_name` varchar(50) DEFAULT NULL COMMENT 'Role name',
  PRIMARY KEY (`role_id`),
  KEY `IDX_API_ROLE_PARENT_ID_SORT_ORDER` (`parent_id`,`sort_order`),
  KEY `IDX_API_ROLE_TREE_LEVEL` (`tree_level`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Api ACL Roles' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `api_rule`
--

CREATE TABLE IF NOT EXISTS `api_rule` (
  `rule_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Api rule Id',
  `role_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Api role Id',
  `resource_id` varchar(255) DEFAULT NULL COMMENT 'Module code',
  `api_privileges` varchar(20) DEFAULT NULL COMMENT 'Privileges',
  `assert_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Assert id',
  `role_type` varchar(1) DEFAULT NULL COMMENT 'Role type',
  `api_permission` varchar(10) DEFAULT NULL COMMENT 'Permission',
  PRIMARY KEY (`rule_id`),
  KEY `IDX_API_RULE_RESOURCE_ID_ROLE_ID` (`resource_id`,`role_id`),
  KEY `IDX_API_RULE_ROLE_ID_RESOURCE_ID` (`role_id`,`resource_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Api ACL Rules' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `api_session`
--

CREATE TABLE IF NOT EXISTS `api_session` (
  `user_id` int(10) unsigned NOT NULL COMMENT 'User id',
  `logdate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Login date',
  `sessid` varchar(40) DEFAULT NULL COMMENT 'Sessioin id',
  KEY `IDX_API_SESSION_USER_ID` (`user_id`),
  KEY `IDX_API_SESSION_SESSID` (`sessid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Api Sessions';

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `api_user`
--

CREATE TABLE IF NOT EXISTS `api_user` (
  `user_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'User id',
  `firstname` varchar(32) DEFAULT NULL COMMENT 'First name',
  `lastname` varchar(32) DEFAULT NULL COMMENT 'Last name',
  `email` varchar(128) DEFAULT NULL COMMENT 'Email',
  `username` varchar(40) DEFAULT NULL COMMENT 'Nickname',
  `api_key` varchar(40) DEFAULT NULL COMMENT 'Api key',
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'User record create date',
  `modified` timestamp NULL DEFAULT NULL COMMENT 'User record modify date',
  `lognum` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Quantity of log ins',
  `reload_acl_flag` smallint(6) NOT NULL DEFAULT '0' COMMENT 'Refresh ACL flag',
  `is_active` smallint(6) NOT NULL DEFAULT '1' COMMENT 'Account status',
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Api Users' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `cataloginventory_stock`
--

CREATE TABLE IF NOT EXISTS `cataloginventory_stock` (
  `stock_id` smallint(5) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Stock Id',
  `stock_name` varchar(255) DEFAULT NULL COMMENT 'Stock Name',
  PRIMARY KEY (`stock_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='Cataloginventory Stock' AUTO_INCREMENT=2 ;

--
-- Gegevens worden uitgevoerd voor tabel `cataloginventory_stock`
--

INSERT INTO `cataloginventory_stock` (`stock_id`, `stock_name`) VALUES
(1, 'Default');

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `cataloginventory_stock_item`
--

CREATE TABLE IF NOT EXISTS `cataloginventory_stock_item` (
  `item_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Item Id',
  `product_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Product Id',
  `stock_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Stock Id',
  `qty` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Qty',
  `min_qty` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Min Qty',
  `use_config_min_qty` smallint(5) unsigned NOT NULL DEFAULT '1' COMMENT 'Use Config Min Qty',
  `is_qty_decimal` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Is Qty Decimal',
  `backorders` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Backorders',
  `use_config_backorders` smallint(5) unsigned NOT NULL DEFAULT '1' COMMENT 'Use Config Backorders',
  `min_sale_qty` decimal(12,4) NOT NULL DEFAULT '1.0000' COMMENT 'Min Sale Qty',
  `use_config_min_sale_qty` smallint(5) unsigned NOT NULL DEFAULT '1' COMMENT 'Use Config Min Sale Qty',
  `max_sale_qty` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Max Sale Qty',
  `use_config_max_sale_qty` smallint(5) unsigned NOT NULL DEFAULT '1' COMMENT 'Use Config Max Sale Qty',
  `is_in_stock` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Is In Stock',
  `low_stock_date` timestamp NULL DEFAULT NULL COMMENT 'Low Stock Date',
  `notify_stock_qty` decimal(12,4) DEFAULT NULL COMMENT 'Notify Stock Qty',
  `use_config_notify_stock_qty` smallint(5) unsigned NOT NULL DEFAULT '1' COMMENT 'Use Config Notify Stock Qty',
  `manage_stock` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Manage Stock',
  `use_config_manage_stock` smallint(5) unsigned NOT NULL DEFAULT '1' COMMENT 'Use Config Manage Stock',
  `stock_status_changed_auto` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Stock Status Changed Automatically',
  `use_config_qty_increments` smallint(5) unsigned NOT NULL DEFAULT '1' COMMENT 'Use Config Qty Increments',
  `qty_increments` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Qty Increments',
  `use_config_enable_qty_inc` smallint(5) unsigned NOT NULL DEFAULT '1' COMMENT 'Use Config Enable Qty Increments',
  `enable_qty_increments` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Enable Qty Increments',
  PRIMARY KEY (`item_id`),
  UNIQUE KEY `UNQ_CATALOGINVENTORY_STOCK_ITEM_PRODUCT_ID_STOCK_ID` (`product_id`,`stock_id`),
  KEY `IDX_CATALOGINVENTORY_STOCK_ITEM_PRODUCT_ID` (`product_id`),
  KEY `IDX_CATALOGINVENTORY_STOCK_ITEM_STOCK_ID` (`stock_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='Cataloginventory Stock Item' AUTO_INCREMENT=5 ;

--
-- Gegevens worden uitgevoerd voor tabel `cataloginventory_stock_item`
--

INSERT INTO `cataloginventory_stock_item` (`item_id`, `product_id`, `stock_id`, `qty`, `min_qty`, `use_config_min_qty`, `is_qty_decimal`, `backorders`, `use_config_backorders`, `min_sale_qty`, `use_config_min_sale_qty`, `max_sale_qty`, `use_config_max_sale_qty`, `is_in_stock`, `low_stock_date`, `notify_stock_qty`, `use_config_notify_stock_qty`, `manage_stock`, `use_config_manage_stock`, `stock_status_changed_auto`, `use_config_qty_increments`, `qty_increments`, `use_config_enable_qty_inc`, `enable_qty_increments`) VALUES
(1, 1, 1, '2.0000', '0.0000', 1, 0, 0, 1, '1.0000', 1, '0.0000', 1, 1, NULL, NULL, 1, 0, 1, 0, 1, '0.0000', 1, 0),
(2, 2, 1, '2.0000', '0.0000', 1, 0, 0, 1, '1.0000', 1, '0.0000', 1, 1, NULL, NULL, 1, 0, 1, 0, 1, '0.0000', 1, 0),
(3, 3, 1, '2.0000', '0.0000', 1, 0, 0, 1, '1.0000', 1, '0.0000', 1, 1, NULL, NULL, 1, 0, 1, 0, 1, '0.0000', 1, 0),
(4, 4, 1, '2.0000', '0.0000', 1, 0, 0, 1, '1.0000', 1, '0.0000', 1, 1, NULL, NULL, 1, 0, 1, 0, 1, '0.0000', 1, 0);

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `cataloginventory_stock_status`
--

CREATE TABLE IF NOT EXISTS `cataloginventory_stock_status` (
  `product_id` int(10) unsigned NOT NULL COMMENT 'Product Id',
  `website_id` smallint(5) unsigned NOT NULL COMMENT 'Website Id',
  `stock_id` smallint(5) unsigned NOT NULL COMMENT 'Stock Id',
  `qty` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Qty',
  `stock_status` smallint(5) unsigned NOT NULL COMMENT 'Stock Status',
  PRIMARY KEY (`product_id`,`website_id`,`stock_id`),
  KEY `IDX_CATALOGINVENTORY_STOCK_STATUS_STOCK_ID` (`stock_id`),
  KEY `IDX_CATALOGINVENTORY_STOCK_STATUS_WEBSITE_ID` (`website_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Cataloginventory Stock Status';

--
-- Gegevens worden uitgevoerd voor tabel `cataloginventory_stock_status`
--

INSERT INTO `cataloginventory_stock_status` (`product_id`, `website_id`, `stock_id`, `qty`, `stock_status`) VALUES
(1, 1, 1, '2.0000', 1),
(2, 1, 1, '2.0000', 1),
(3, 1, 1, '2.0000', 1),
(4, 1, 1, '2.0000', 1);

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `cataloginventory_stock_status_idx`
--

CREATE TABLE IF NOT EXISTS `cataloginventory_stock_status_idx` (
  `product_id` int(10) unsigned NOT NULL COMMENT 'Product Id',
  `website_id` smallint(5) unsigned NOT NULL COMMENT 'Website Id',
  `stock_id` smallint(5) unsigned NOT NULL COMMENT 'Stock Id',
  `qty` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Qty',
  `stock_status` smallint(5) unsigned NOT NULL COMMENT 'Stock Status',
  PRIMARY KEY (`product_id`,`website_id`,`stock_id`),
  KEY `IDX_CATALOGINVENTORY_STOCK_STATUS_IDX_STOCK_ID` (`stock_id`),
  KEY `IDX_CATALOGINVENTORY_STOCK_STATUS_IDX_WEBSITE_ID` (`website_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Cataloginventory Stock Status Indexer Idx';

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `cataloginventory_stock_status_tmp`
--

CREATE TABLE IF NOT EXISTS `cataloginventory_stock_status_tmp` (
  `product_id` int(10) unsigned NOT NULL COMMENT 'Product Id',
  `website_id` smallint(5) unsigned NOT NULL COMMENT 'Website Id',
  `stock_id` smallint(5) unsigned NOT NULL COMMENT 'Stock Id',
  `qty` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Qty',
  `stock_status` smallint(5) unsigned NOT NULL COMMENT 'Stock Status',
  PRIMARY KEY (`product_id`,`website_id`,`stock_id`),
  KEY `IDX_CATALOGINVENTORY_STOCK_STATUS_TMP_STOCK_ID` (`stock_id`),
  KEY `IDX_CATALOGINVENTORY_STOCK_STATUS_TMP_WEBSITE_ID` (`website_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Cataloginventory Stock Status Indexer Tmp';

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `catalogrule`
--

CREATE TABLE IF NOT EXISTS `catalogrule` (
  `rule_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Rule Id',
  `name` varchar(255) DEFAULT NULL COMMENT 'Name',
  `description` text COMMENT 'Description',
  `from_date` date DEFAULT NULL COMMENT 'From Date',
  `to_date` date DEFAULT NULL COMMENT 'To Date',
  `customer_group_ids` text COMMENT 'Customer Group Ids',
  `is_active` smallint(6) NOT NULL DEFAULT '0' COMMENT 'Is Active',
  `conditions_serialized` mediumtext COMMENT 'Conditions Serialized',
  `actions_serialized` mediumtext COMMENT 'Actions Serialized',
  `stop_rules_processing` smallint(6) NOT NULL DEFAULT '1' COMMENT 'Stop Rules Processing',
  `sort_order` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Sort Order',
  `simple_action` varchar(32) DEFAULT NULL COMMENT 'Simple Action',
  `discount_amount` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Discount Amount',
  `website_ids` text COMMENT 'Website Ids',
  `sub_is_enable` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Is Rule Enable For Subitems',
  `sub_simple_action` varchar(32) DEFAULT NULL COMMENT 'Simple Action For Subitems',
  `sub_discount_amount` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Discount Amount For Subitems',
  PRIMARY KEY (`rule_id`),
  KEY `IDX_CATALOGRULE_IS_ACTIVE_SORT_ORDER_TO_DATE_FROM_DATE` (`is_active`,`sort_order`,`to_date`,`from_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='CatalogRule' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `catalogrule_affected_product`
--

CREATE TABLE IF NOT EXISTS `catalogrule_affected_product` (
  `product_id` int(10) unsigned NOT NULL COMMENT 'Product Id',
  PRIMARY KEY (`product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='CatalogRule Affected Product';

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `catalogrule_group_website`
--

CREATE TABLE IF NOT EXISTS `catalogrule_group_website` (
  `rule_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Rule Id',
  `customer_group_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Customer Group Id',
  `website_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Website Id',
  PRIMARY KEY (`rule_id`,`customer_group_id`,`website_id`),
  KEY `IDX_CATALOGRULE_GROUP_WEBSITE_RULE_ID` (`rule_id`),
  KEY `IDX_CATALOGRULE_GROUP_WEBSITE_CUSTOMER_GROUP_ID` (`customer_group_id`),
  KEY `IDX_CATALOGRULE_GROUP_WEBSITE_WEBSITE_ID` (`website_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='CatalogRule Group Website';

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `catalogrule_product`
--

CREATE TABLE IF NOT EXISTS `catalogrule_product` (
  `rule_product_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Rule Product Id',
  `rule_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Rule Id',
  `from_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'From Time',
  `to_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'To time',
  `customer_group_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Customer Group Id',
  `product_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Product Id',
  `action_operator` varchar(10) DEFAULT 'to_fixed' COMMENT 'Action Operator',
  `action_amount` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Action Amount',
  `action_stop` smallint(6) NOT NULL DEFAULT '0' COMMENT 'Action Stop',
  `sort_order` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Sort Order',
  `website_id` smallint(5) unsigned NOT NULL COMMENT 'Website Id',
  PRIMARY KEY (`rule_product_id`),
  UNIQUE KEY `EAA51B56FF092A0DCB795D1CEF812B7B` (`rule_id`,`from_time`,`to_time`,`website_id`,`customer_group_id`,`product_id`,`sort_order`),
  KEY `IDX_CATALOGRULE_PRODUCT_RULE_ID` (`rule_id`),
  KEY `IDX_CATALOGRULE_PRODUCT_CUSTOMER_GROUP_ID` (`customer_group_id`),
  KEY `IDX_CATALOGRULE_PRODUCT_WEBSITE_ID` (`website_id`),
  KEY `IDX_CATALOGRULE_PRODUCT_FROM_TIME` (`from_time`),
  KEY `IDX_CATALOGRULE_PRODUCT_TO_TIME` (`to_time`),
  KEY `IDX_CATALOGRULE_PRODUCT_PRODUCT_ID` (`product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='CatalogRule Product' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `catalogrule_product_price`
--

CREATE TABLE IF NOT EXISTS `catalogrule_product_price` (
  `rule_product_price_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Rule Product PriceId',
  `rule_date` date NOT NULL COMMENT 'Rule Date',
  `customer_group_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Customer Group Id',
  `product_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Product Id',
  `rule_price` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Rule Price',
  `website_id` smallint(5) unsigned NOT NULL COMMENT 'Website Id',
  `latest_start_date` date DEFAULT NULL COMMENT 'Latest StartDate',
  `earliest_end_date` date DEFAULT NULL COMMENT 'Earliest EndDate',
  PRIMARY KEY (`rule_product_price_id`),
  UNIQUE KEY `UNQ_CATRULE_PRD_PRICE_RULE_DATE_WS_ID_CSTR_GROUP_ID_PRD_ID` (`rule_date`,`website_id`,`customer_group_id`,`product_id`),
  KEY `IDX_CATALOGRULE_PRODUCT_PRICE_CUSTOMER_GROUP_ID` (`customer_group_id`),
  KEY `IDX_CATALOGRULE_PRODUCT_PRICE_WEBSITE_ID` (`website_id`),
  KEY `IDX_CATALOGRULE_PRODUCT_PRICE_PRODUCT_ID` (`product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='CatalogRule Product Price' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `catalogsearch_fulltext`
--

CREATE TABLE IF NOT EXISTS `catalogsearch_fulltext` (
  `fulltext_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Entity ID',
  `product_id` int(10) unsigned NOT NULL COMMENT 'Product ID',
  `store_id` smallint(5) unsigned NOT NULL COMMENT 'Store ID',
  `data_index` longtext COMMENT 'Data index',
  PRIMARY KEY (`fulltext_id`),
  UNIQUE KEY `UNQ_CATALOGSEARCH_FULLTEXT_PRODUCT_ID_STORE_ID` (`product_id`,`store_id`),
  FULLTEXT KEY `FTI_CATALOGSEARCH_FULLTEXT_DATA_INDEX` (`data_index`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COMMENT='Catalog search result table' AUTO_INCREMENT=37 ;

--
-- Gegevens worden uitgevoerd voor tabel `catalogsearch_fulltext`
--

INSERT INTO `catalogsearch_fulltext` (`fulltext_id`, `product_id`, `store_id`, `data_index`) VALUES
(36, 1, 1, 'MBS|Enabled|None|ASUS SABERTOOTH X79|Een geweldig snel moederbord.|Een geweldig snel moederbord.|273.95|1'),
(33, 2, 1, 'CLRS|Enabled|None|Cooler Master Silent Pro|Informatie over de Cooler Master Silent Pro.|Informatie over de Cooler Master Silent Pro.|147.9|1'),
(30, 3, 1, 'MNTRS|Enabled|None|EIZO-CG241W-BK 24 Inch|Informatie over de EIZO-CG241W-BK 24 Inch monitor.|Informatie over de EIZO-CG241W-BK 24 Inch monitor.|1380|1'),
(28, 4, 1, 'MDPLYR|Enabled|None|QNAP TS-119P II|Informatie over de QNAP TS-119P II.|Informatie over de QNAP TS-119P II.|147.9|1');

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `catalogsearch_query`
--

CREATE TABLE IF NOT EXISTS `catalogsearch_query` (
  `query_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Query ID',
  `query_text` varchar(255) DEFAULT NULL COMMENT 'Query text',
  `num_results` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Num results',
  `popularity` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Popularity',
  `redirect` varchar(255) DEFAULT NULL COMMENT 'Redirect',
  `synonym_for` varchar(255) DEFAULT NULL COMMENT 'Synonym for',
  `store_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Store ID',
  `display_in_terms` smallint(6) NOT NULL DEFAULT '1' COMMENT 'Display in terms',
  `is_active` smallint(6) DEFAULT '1' COMMENT 'Active status',
  `is_processed` smallint(6) DEFAULT '0' COMMENT 'Processed status',
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Updated at',
  PRIMARY KEY (`query_id`),
  KEY `IDX_CATALOGSEARCH_QUERY_QUERY_TEXT_STORE_ID_POPULARITY` (`query_text`,`store_id`,`popularity`),
  KEY `IDX_CATALOGSEARCH_QUERY_STORE_ID` (`store_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='Catalog search query table' AUTO_INCREMENT=8 ;

--
-- Gegevens worden uitgevoerd voor tabel `catalogsearch_query`
--

INSERT INTO `catalogsearch_query` (`query_id`, `query_text`, `num_results`, `popularity`, `redirect`, `synonym_for`, `store_id`, `display_in_terms`, `is_active`, `is_processed`, `updated_at`) VALUES
(1, 'eizo', 0, 1, NULL, NULL, 1, 1, 1, 0, '2012-02-28 12:12:56'),
(2, 'monitor', 0, 1, NULL, NULL, 1, 1, 1, 0, '2012-02-28 12:12:56'),
(3, 'sd', 0, 1, NULL, NULL, 1, 1, 1, 0, '2012-03-03 14:05:18'),
(4, 'rfer', 0, 1, NULL, NULL, 1, 1, 1, 0, '2012-03-03 14:05:18'),
(5, 'edwd', 0, 1, NULL, NULL, 1, 1, 1, 0, '2012-03-03 14:05:18'),
(6, 'uk', 0, 1, NULL, NULL, 1, 1, 1, 0, '2012-03-03 14:05:18'),
(7, 'dfdf', 0, 1, NULL, NULL, 1, 1, 1, 0, '2012-03-03 14:05:18');

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `catalogsearch_result`
--

CREATE TABLE IF NOT EXISTS `catalogsearch_result` (
  `query_id` int(10) unsigned NOT NULL COMMENT 'Query ID',
  `product_id` int(10) unsigned NOT NULL COMMENT 'Product ID',
  `relevance` decimal(20,4) NOT NULL DEFAULT '0.0000' COMMENT 'Relevance',
  PRIMARY KEY (`query_id`,`product_id`),
  KEY `IDX_CATALOGSEARCH_RESULT_QUERY_ID` (`query_id`),
  KEY `IDX_CATALOGSEARCH_RESULT_PRODUCT_ID` (`product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog search result table';

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `catalog_category_anc_categs_index_idx`
--

CREATE TABLE IF NOT EXISTS `catalog_category_anc_categs_index_idx` (
  `category_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Category ID',
  `path` varchar(255) NOT NULL DEFAULT '' COMMENT 'Path',
  KEY `IDX_CATALOG_CATEGORY_ANC_CATEGS_INDEX_IDX_CATEGORY_ID` (`category_id`),
  KEY `IDX_CATALOG_CATEGORY_ANC_CATEGS_INDEX_IDX_PATH_CATEGORY_ID` (`path`,`category_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Category Anchor Indexer Index Table';

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `catalog_category_anc_categs_index_tmp`
--

CREATE TABLE IF NOT EXISTS `catalog_category_anc_categs_index_tmp` (
  `category_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Category ID',
  `path` varchar(255) NOT NULL DEFAULT '' COMMENT 'Path',
  KEY `IDX_CATALOG_CATEGORY_ANC_CATEGS_INDEX_TMP_CATEGORY_ID` (`category_id`),
  KEY `IDX_CATALOG_CATEGORY_ANC_CATEGS_INDEX_TMP_PATH_CATEGORY_ID` (`path`,`category_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Category Anchor Indexer Temp Table';

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `catalog_category_anc_products_index_idx`
--

CREATE TABLE IF NOT EXISTS `catalog_category_anc_products_index_idx` (
  `category_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Category ID',
  `product_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Product ID',
  `position` int(10) unsigned DEFAULT NULL COMMENT 'Position',
  KEY `IDX_CAT_CTGR_ANC_PRDS_IDX_IDX_CTGR_ID_PRD_ID_POSITION` (`category_id`,`product_id`,`position`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Category Anchor Product Indexer Index Table';

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `catalog_category_anc_products_index_tmp`
--

CREATE TABLE IF NOT EXISTS `catalog_category_anc_products_index_tmp` (
  `category_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Category ID',
  `product_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Product ID',
  `position` int(10) unsigned DEFAULT NULL COMMENT 'Position',
  KEY `IDX_CAT_CTGR_ANC_PRDS_IDX_TMP_CTGR_ID_PRD_ID_POSITION` (`category_id`,`product_id`,`position`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Category Anchor Product Indexer Temp Table';

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `catalog_category_entity`
--

CREATE TABLE IF NOT EXISTS `catalog_category_entity` (
  `entity_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Entity ID',
  `entity_type_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Entity Type ID',
  `attribute_set_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Attriute Set ID',
  `parent_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Parent Category ID',
  `created_at` timestamp NULL DEFAULT NULL COMMENT 'Creation Time',
  `updated_at` timestamp NULL DEFAULT NULL COMMENT 'Update Time',
  `path` varchar(255) NOT NULL COMMENT 'Tree Path',
  `position` int(11) NOT NULL COMMENT 'Position',
  `level` int(11) NOT NULL DEFAULT '0' COMMENT 'Tree Level',
  `children_count` int(11) NOT NULL COMMENT 'Child Count',
  PRIMARY KEY (`entity_id`),
  KEY `IDX_CATALOG_CATEGORY_ENTITY_LEVEL` (`level`),
  KEY `IDX_CATALOG_CATEGORY_ENTITY_PATH_ENTITY_ID` (`path`,`entity_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='Catalog Category Table' AUTO_INCREMENT=38 ;

--
-- Gegevens worden uitgevoerd voor tabel `catalog_category_entity`
--

INSERT INTO `catalog_category_entity` (`entity_id`, `entity_type_id`, `attribute_set_id`, `parent_id`, `created_at`, `updated_at`, `path`, `position`, `level`, `children_count`) VALUES
(1, 3, 0, 0, '2012-02-28 10:55:58', '2012-02-28 10:55:58', '1', 0, 0, 28),
(2, 3, 3, 1, '2012-02-28 10:56:00', '2012-03-01 13:21:00', '1/2', 1, 1, 27),
(5, 3, 3, 2, '2012-03-01 12:33:01', '2012-03-01 12:43:50', '1/2/5', 1, 2, 7),
(6, 3, 3, 5, '2012-03-01 12:39:04', '2012-03-01 12:42:11', '1/2/5/6', 1, 3, 0),
(7, 3, 3, 5, '2012-03-01 12:44:41', '2012-03-01 12:45:01', '1/2/5/7', 2, 3, 0),
(8, 3, 3, 5, '2012-03-01 12:45:56', '2012-03-01 12:45:56', '1/2/5/8', 3, 3, 0),
(9, 3, 3, 5, '2012-03-01 12:47:29', '2012-03-01 12:47:29', '1/2/5/9', 4, 3, 0),
(10, 3, 3, 5, '2012-03-01 12:48:04', '2012-03-01 12:48:16', '1/2/5/10', 5, 3, 0),
(11, 3, 3, 5, '2012-03-01 12:49:04', '2012-03-01 12:49:04', '1/2/5/11', 6, 3, 0),
(12, 3, 3, 5, '2012-03-01 12:53:58', '2012-03-01 14:37:58', '1/2/5/12', 7, 3, 0),
(15, 3, 3, 2, '2012-03-01 13:20:26', '2012-03-01 14:40:59', '1/2/15', 2, 2, 0),
(17, 3, 3, 2, '2012-03-01 13:22:32', '2012-03-01 13:22:32', '1/2/17', 3, 2, 2),
(18, 3, 3, 17, '2012-03-01 13:23:02', '2012-03-01 14:39:10', '1/2/17/18', 1, 3, 0),
(19, 3, 3, 2, '2012-03-01 13:23:54', '2012-03-01 14:40:33', '1/2/19', 4, 2, 0),
(21, 3, 3, 2, '2012-03-01 13:25:31', '2012-03-01 13:25:31', '1/2/21', 5, 2, 3),
(22, 3, 3, 21, '2012-03-01 13:25:52', '2012-03-01 14:41:52', '1/2/21/22', 1, 3, 0),
(23, 3, 3, 2, '2012-03-01 13:26:26', '2012-03-01 13:26:26', '1/2/23', 6, 2, 2),
(24, 3, 3, 23, '2012-03-01 13:26:45', '2012-03-01 14:43:22', '1/2/23/24', 1, 3, 0),
(25, 3, 3, 2, '2012-03-01 13:27:29', '2012-03-01 13:27:29', '1/2/25', 7, 2, 4),
(26, 3, 3, 25, '2012-03-01 13:27:50', '2012-03-01 14:44:24', '1/2/25/26', 1, 3, 0),
(27, 3, 3, 17, '2012-03-01 14:39:33', '2012-03-01 14:39:33', '1/2/17/27', 2, 3, 0),
(28, 3, 3, 21, '2012-03-01 14:42:28', '2012-03-01 14:42:28', '1/2/21/28', 2, 3, 0),
(29, 3, 3, 21, '2012-03-01 14:42:59', '2012-03-01 14:42:59', '1/2/21/29', 3, 3, 0),
(30, 3, 3, 23, '2012-03-01 14:43:41', '2012-03-01 14:43:53', '1/2/23/30', 2, 3, 0),
(31, 3, 3, 25, '2012-03-01 14:44:55', '2012-03-01 14:45:11', '1/2/25/31', 2, 3, 0),
(32, 3, 3, 25, '2012-03-01 14:45:38', '2012-03-01 14:45:44', '1/2/25/32', 3, 3, 0),
(33, 3, 3, 25, '2012-03-01 14:46:19', '2012-03-01 14:46:25', '1/2/25/33', 4, 3, 0),
(36, 3, 3, 2, '2012-03-03 13:37:24', '2012-03-03 15:55:14', '1/2/36', 8, 2, 0),
(37, 3, 3, 2, '2012-03-03 14:47:56', '2012-03-03 14:47:56', '1/2/37', 9, 2, 0);

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `catalog_category_entity_datetime`
--

CREATE TABLE IF NOT EXISTS `catalog_category_entity_datetime` (
  `value_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Value ID',
  `entity_type_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Entity Type ID',
  `attribute_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Attribute ID',
  `store_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Store ID',
  `entity_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Entity ID',
  `value` datetime DEFAULT NULL COMMENT 'Value',
  PRIMARY KEY (`value_id`),
  UNIQUE KEY `UNQ_CAT_CTGR_ENTT_DTIME_ENTT_TYPE_ID_ENTT_ID_ATTR_ID_STORE_ID` (`entity_type_id`,`entity_id`,`attribute_id`,`store_id`),
  KEY `IDX_CATALOG_CATEGORY_ENTITY_DATETIME_ENTITY_ID` (`entity_id`),
  KEY `IDX_CATALOG_CATEGORY_ENTITY_DATETIME_ATTRIBUTE_ID` (`attribute_id`),
  KEY `IDX_CATALOG_CATEGORY_ENTITY_DATETIME_STORE_ID` (`store_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='Catalog Category Datetime Attribute Backend Table' AUTO_INCREMENT=175 ;

--
-- Gegevens worden uitgevoerd voor tabel `catalog_category_entity_datetime`
--

INSERT INTO `catalog_category_entity_datetime` (`value_id`, `entity_type_id`, `attribute_id`, `store_id`, `entity_id`, `value`) VALUES
(5, 3, 53, 0, 2, NULL),
(6, 3, 54, 0, 2, NULL),
(17, 3, 53, 0, 5, NULL),
(18, 3, 54, 0, 5, NULL),
(27, 3, 53, 0, 6, NULL),
(28, 3, 54, 0, 6, NULL),
(45, 3, 53, 0, 7, NULL),
(46, 3, 54, 0, 7, NULL),
(49, 3, 53, 0, 8, NULL),
(50, 3, 54, 0, 8, NULL),
(51, 3, 53, 0, 9, NULL),
(52, 3, 54, 0, 9, NULL),
(53, 3, 53, 0, 10, NULL),
(54, 3, 54, 0, 10, NULL),
(57, 3, 53, 0, 11, NULL),
(58, 3, 54, 0, 11, NULL),
(59, 3, 53, 0, 12, NULL),
(60, 3, 54, 0, 12, NULL),
(75, 3, 53, 0, 15, NULL),
(76, 3, 54, 0, 15, NULL),
(83, 3, 53, 0, 17, NULL),
(84, 3, 54, 0, 17, NULL),
(85, 3, 53, 0, 18, NULL),
(86, 3, 54, 0, 18, NULL),
(87, 3, 53, 0, 19, NULL),
(88, 3, 54, 0, 19, NULL),
(97, 3, 53, 0, 21, NULL),
(98, 3, 54, 0, 21, NULL),
(99, 3, 53, 0, 22, NULL),
(100, 3, 54, 0, 22, NULL),
(101, 3, 53, 0, 23, NULL),
(102, 3, 54, 0, 23, NULL),
(103, 3, 53, 0, 24, NULL),
(104, 3, 54, 0, 24, NULL),
(105, 3, 53, 0, 25, NULL),
(106, 3, 54, 0, 25, NULL),
(107, 3, 53, 0, 26, NULL),
(108, 3, 54, 0, 26, NULL),
(113, 3, 53, 0, 27, NULL),
(114, 3, 54, 0, 27, NULL),
(121, 3, 53, 0, 28, NULL),
(122, 3, 54, 0, 28, NULL),
(123, 3, 53, 0, 29, NULL),
(124, 3, 54, 0, 29, NULL),
(127, 3, 53, 0, 30, NULL),
(128, 3, 54, 0, 30, NULL),
(133, 3, 53, 0, 31, NULL),
(134, 3, 54, 0, 31, NULL),
(137, 3, 53, 0, 32, NULL),
(138, 3, 54, 0, 32, NULL),
(141, 3, 53, 0, 33, NULL),
(142, 3, 54, 0, 33, NULL),
(159, 3, 53, 0, 36, NULL),
(160, 3, 54, 0, 36, NULL),
(167, 3, 53, 0, 37, NULL),
(168, 3, 54, 0, 37, NULL);

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `catalog_category_entity_decimal`
--

CREATE TABLE IF NOT EXISTS `catalog_category_entity_decimal` (
  `value_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Value ID',
  `entity_type_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Entity Type ID',
  `attribute_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Attribute ID',
  `store_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Store ID',
  `entity_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Entity ID',
  `value` decimal(12,4) DEFAULT NULL COMMENT 'Value',
  PRIMARY KEY (`value_id`),
  UNIQUE KEY `UNQ_CAT_CTGR_ENTT_DEC_ENTT_TYPE_ID_ENTT_ID_ATTR_ID_STORE_ID` (`entity_type_id`,`entity_id`,`attribute_id`,`store_id`),
  KEY `IDX_CATALOG_CATEGORY_ENTITY_DECIMAL_ENTITY_ID` (`entity_id`),
  KEY `IDX_CATALOG_CATEGORY_ENTITY_DECIMAL_ATTRIBUTE_ID` (`attribute_id`),
  KEY `IDX_CATALOG_CATEGORY_ENTITY_DECIMAL_STORE_ID` (`store_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Category Decimal Attribute Backend Table' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `catalog_category_entity_int`
--

CREATE TABLE IF NOT EXISTS `catalog_category_entity_int` (
  `value_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Value ID',
  `entity_type_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Entity Type ID',
  `attribute_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Attribute ID',
  `store_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Store ID',
  `entity_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Entity ID',
  `value` int(11) DEFAULT NULL COMMENT 'Value',
  PRIMARY KEY (`value_id`),
  UNIQUE KEY `UNQ_CAT_CTGR_ENTT_INT_ENTT_TYPE_ID_ENTT_ID_ATTR_ID_STORE_ID` (`entity_type_id`,`entity_id`,`attribute_id`,`store_id`),
  KEY `IDX_CATALOG_CATEGORY_ENTITY_INT_ENTITY_ID` (`entity_id`),
  KEY `IDX_CATALOG_CATEGORY_ENTITY_INT_ATTRIBUTE_ID` (`attribute_id`),
  KEY `IDX_CATALOG_CATEGORY_ENTITY_INT_STORE_ID` (`store_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='Catalog Category Integer Attribute Backend Table' AUTO_INCREMENT=330 ;

--
-- Gegevens worden uitgevoerd voor tabel `catalog_category_entity_int`
--

INSERT INTO `catalog_category_entity_int` (`value_id`, `entity_type_id`, `attribute_id`, `store_id`, `entity_id`, `value`) VALUES
(1, 3, 61, 0, 1, 1),
(2, 3, 61, 1, 1, 1),
(3, 3, 36, 0, 2, 1),
(4, 3, 61, 0, 2, 1),
(5, 3, 36, 1, 2, 1),
(6, 3, 61, 1, 2, 1),
(15, 3, 44, 0, 2, NULL),
(16, 3, 45, 0, 2, 1),
(17, 3, 63, 0, 2, 0),
(18, 3, 64, 0, 2, NULL),
(32, 3, 36, 0, 5, 1),
(33, 3, 61, 0, 5, 1),
(34, 3, 44, 0, 5, NULL),
(35, 3, 45, 0, 5, 0),
(36, 3, 62, 0, 5, 0),
(37, 3, 63, 0, 5, 0),
(38, 3, 64, 0, 5, NULL),
(48, 3, 36, 0, 6, 1),
(49, 3, 61, 0, 6, 1),
(50, 3, 44, 0, 6, NULL),
(51, 3, 45, 0, 6, 0),
(52, 3, 62, 0, 6, 0),
(53, 3, 63, 0, 6, 0),
(54, 3, 64, 0, 6, NULL),
(68, 3, 36, 0, 7, 1),
(69, 3, 61, 0, 7, 1),
(70, 3, 44, 0, 7, NULL),
(71, 3, 45, 0, 7, 0),
(72, 3, 62, 0, 7, 0),
(73, 3, 63, 0, 7, 0),
(74, 3, 64, 0, 7, NULL),
(77, 3, 36, 0, 8, 1),
(78, 3, 61, 0, 8, 1),
(79, 3, 44, 0, 8, NULL),
(80, 3, 45, 0, 8, 0),
(81, 3, 62, 0, 8, 0),
(82, 3, 63, 0, 8, 0),
(83, 3, 64, 0, 8, NULL),
(84, 3, 36, 0, 9, 1),
(85, 3, 61, 0, 9, 1),
(86, 3, 44, 0, 9, NULL),
(87, 3, 45, 0, 9, 0),
(88, 3, 62, 0, 9, 0),
(89, 3, 63, 0, 9, 0),
(90, 3, 64, 0, 9, NULL),
(91, 3, 36, 0, 10, 1),
(92, 3, 61, 0, 10, 1),
(93, 3, 44, 0, 10, NULL),
(94, 3, 45, 0, 10, 0),
(95, 3, 62, 0, 10, 0),
(96, 3, 63, 0, 10, 0),
(97, 3, 64, 0, 10, NULL),
(100, 3, 36, 0, 11, 1),
(101, 3, 61, 0, 11, 1),
(102, 3, 44, 0, 11, NULL),
(103, 3, 45, 0, 11, 0),
(104, 3, 62, 0, 11, 0),
(105, 3, 63, 0, 11, 0),
(106, 3, 64, 0, 11, NULL),
(107, 3, 36, 0, 12, 1),
(108, 3, 61, 0, 12, 1),
(109, 3, 44, 0, 12, NULL),
(110, 3, 45, 0, 12, 0),
(111, 3, 62, 0, 12, 0),
(112, 3, 63, 0, 12, 0),
(113, 3, 64, 0, 12, NULL),
(134, 3, 36, 0, 15, 1),
(135, 3, 61, 0, 15, 1),
(136, 3, 44, 0, 15, NULL),
(137, 3, 45, 0, 15, 0),
(138, 3, 62, 0, 15, 0),
(139, 3, 63, 0, 15, 0),
(140, 3, 64, 0, 15, NULL),
(150, 3, 36, 0, 17, 1),
(151, 3, 61, 0, 17, 1),
(152, 3, 44, 0, 17, NULL),
(153, 3, 45, 0, 17, 0),
(154, 3, 62, 0, 17, 0),
(155, 3, 63, 0, 17, 0),
(156, 3, 64, 0, 17, NULL),
(157, 3, 36, 0, 18, 1),
(158, 3, 61, 0, 18, 1),
(159, 3, 44, 0, 18, NULL),
(160, 3, 45, 0, 18, 0),
(161, 3, 62, 0, 18, 0),
(162, 3, 63, 0, 18, 0),
(163, 3, 64, 0, 18, NULL),
(164, 3, 36, 0, 19, 1),
(165, 3, 61, 0, 19, 1),
(166, 3, 44, 0, 19, NULL),
(167, 3, 45, 0, 19, 0),
(168, 3, 62, 0, 19, 0),
(169, 3, 63, 0, 19, 0),
(170, 3, 64, 0, 19, NULL),
(182, 3, 36, 0, 21, 1),
(183, 3, 61, 0, 21, 1),
(184, 3, 44, 0, 21, NULL),
(185, 3, 45, 0, 21, 0),
(186, 3, 62, 0, 21, 0),
(187, 3, 63, 0, 21, 0),
(188, 3, 64, 0, 21, NULL),
(189, 3, 36, 0, 22, 1),
(190, 3, 61, 0, 22, 1),
(191, 3, 44, 0, 22, NULL),
(192, 3, 45, 0, 22, 0),
(193, 3, 62, 0, 22, 0),
(194, 3, 63, 0, 22, 0),
(195, 3, 64, 0, 22, NULL),
(196, 3, 36, 0, 23, 1),
(197, 3, 61, 0, 23, 1),
(198, 3, 44, 0, 23, NULL),
(199, 3, 45, 0, 23, 0),
(200, 3, 62, 0, 23, 0),
(201, 3, 63, 0, 23, 0),
(202, 3, 64, 0, 23, NULL),
(203, 3, 36, 0, 24, 1),
(204, 3, 61, 0, 24, 1),
(205, 3, 44, 0, 24, NULL),
(206, 3, 45, 0, 24, 0),
(207, 3, 62, 0, 24, 0),
(208, 3, 63, 0, 24, 0),
(209, 3, 64, 0, 24, NULL),
(210, 3, 36, 0, 25, 1),
(211, 3, 61, 0, 25, 1),
(212, 3, 44, 0, 25, NULL),
(213, 3, 45, 0, 25, 0),
(214, 3, 62, 0, 25, 0),
(215, 3, 63, 0, 25, 0),
(216, 3, 64, 0, 25, NULL),
(217, 3, 36, 0, 26, 1),
(218, 3, 61, 0, 26, 1),
(219, 3, 44, 0, 26, NULL),
(220, 3, 45, 0, 26, 0),
(221, 3, 62, 0, 26, 0),
(222, 3, 63, 0, 26, 0),
(223, 3, 64, 0, 26, NULL),
(226, 3, 36, 0, 27, 1),
(227, 3, 61, 0, 27, 1),
(228, 3, 44, 0, 27, NULL),
(229, 3, 45, 0, 27, 0),
(230, 3, 62, 0, 27, 0),
(231, 3, 63, 0, 27, 0),
(232, 3, 64, 0, 27, NULL),
(236, 3, 36, 0, 28, 1),
(237, 3, 61, 0, 28, 1),
(238, 3, 44, 0, 28, NULL),
(239, 3, 45, 0, 28, 0),
(240, 3, 62, 0, 28, 0),
(241, 3, 63, 0, 28, 0),
(242, 3, 64, 0, 28, NULL),
(243, 3, 36, 0, 29, 0),
(244, 3, 61, 0, 29, 1),
(245, 3, 44, 0, 29, NULL),
(246, 3, 45, 0, 29, 0),
(247, 3, 62, 0, 29, 0),
(248, 3, 63, 0, 29, 0),
(249, 3, 64, 0, 29, NULL),
(251, 3, 36, 0, 30, 1),
(252, 3, 61, 0, 30, 1),
(253, 3, 44, 0, 30, NULL),
(254, 3, 45, 0, 30, 0),
(255, 3, 62, 0, 30, 0),
(256, 3, 63, 0, 30, 0),
(257, 3, 64, 0, 30, NULL),
(261, 3, 36, 0, 31, 1),
(262, 3, 61, 0, 31, 1),
(263, 3, 44, 0, 31, NULL),
(264, 3, 45, 0, 31, 0),
(265, 3, 62, 0, 31, 0),
(266, 3, 63, 0, 31, 0),
(267, 3, 64, 0, 31, NULL),
(270, 3, 36, 0, 32, 1),
(271, 3, 61, 0, 32, 1),
(272, 3, 44, 0, 32, NULL),
(273, 3, 45, 0, 32, 0),
(274, 3, 62, 0, 32, 0),
(275, 3, 63, 0, 32, 0),
(276, 3, 64, 0, 32, NULL),
(279, 3, 36, 0, 33, 1),
(280, 3, 61, 0, 33, 1),
(281, 3, 44, 0, 33, NULL),
(282, 3, 45, 0, 33, 0),
(283, 3, 62, 0, 33, 0),
(284, 3, 63, 0, 33, 0),
(285, 3, 64, 0, 33, NULL),
(310, 3, 36, 0, 36, 1),
(311, 3, 61, 0, 36, 0),
(312, 3, 44, 0, 36, NULL),
(313, 3, 45, 0, 36, 0),
(314, 3, 62, 0, 36, 0),
(315, 3, 63, 0, 36, 0),
(316, 3, 64, 0, 36, NULL),
(320, 3, 36, 0, 37, 1),
(321, 3, 61, 0, 37, 0),
(322, 3, 44, 0, 37, NULL),
(323, 3, 45, 0, 37, 0),
(324, 3, 62, 0, 37, 0),
(325, 3, 63, 0, 37, 0),
(326, 3, 64, 0, 37, NULL);

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `catalog_category_entity_text`
--

CREATE TABLE IF NOT EXISTS `catalog_category_entity_text` (
  `value_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Value ID',
  `entity_type_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Entity Type ID',
  `attribute_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Attribute ID',
  `store_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Store ID',
  `entity_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Entity ID',
  `value` text COMMENT 'Value',
  PRIMARY KEY (`value_id`),
  UNIQUE KEY `UNQ_CAT_CTGR_ENTT_TEXT_ENTT_TYPE_ID_ENTT_ID_ATTR_ID_STORE_ID` (`entity_type_id`,`entity_id`,`attribute_id`,`store_id`),
  KEY `IDX_CATALOG_CATEGORY_ENTITY_TEXT_ENTITY_ID` (`entity_id`),
  KEY `IDX_CATALOG_CATEGORY_ENTITY_TEXT_ATTRIBUTE_ID` (`attribute_id`),
  KEY `IDX_CATALOG_CATEGORY_ENTITY_TEXT_STORE_ID` (`store_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='Catalog Category Text Attribute Backend Table' AUTO_INCREMENT=427 ;

--
-- Gegevens worden uitgevoerd voor tabel `catalog_category_entity_text`
--

INSERT INTO `catalog_category_entity_text` (`value_id`, `entity_type_id`, `attribute_id`, `store_id`, `entity_id`, `value`) VALUES
(1, 3, 59, 0, 1, NULL),
(2, 3, 59, 1, 1, NULL),
(3, 3, 59, 0, 2, NULL),
(15, 3, 38, 0, 2, 'test'),
(16, 3, 41, 0, 2, 'test'),
(17, 3, 42, 0, 2, NULL),
(18, 3, 56, 0, 2, NULL),
(44, 3, 38, 0, 5, 'test'),
(45, 3, 41, 0, 5, NULL),
(46, 3, 42, 0, 5, NULL),
(47, 3, 56, 0, 5, NULL),
(48, 3, 59, 0, 5, NULL),
(67, 3, 38, 0, 6, NULL),
(68, 3, 41, 0, 6, NULL),
(69, 3, 42, 0, 6, NULL),
(70, 3, 56, 0, 6, NULL),
(71, 3, 59, 0, 6, NULL),
(104, 3, 38, 0, 7, NULL),
(105, 3, 41, 0, 7, NULL),
(106, 3, 42, 0, 7, NULL),
(107, 3, 56, 0, 7, NULL),
(108, 3, 59, 0, 7, NULL),
(114, 3, 38, 0, 8, NULL),
(115, 3, 41, 0, 8, NULL),
(116, 3, 42, 0, 8, NULL),
(117, 3, 56, 0, 8, NULL),
(118, 3, 59, 0, 8, NULL),
(119, 3, 38, 0, 9, NULL),
(120, 3, 41, 0, 9, NULL),
(121, 3, 42, 0, 9, NULL),
(122, 3, 56, 0, 9, NULL),
(123, 3, 59, 0, 9, NULL),
(124, 3, 38, 0, 10, NULL),
(125, 3, 41, 0, 10, NULL),
(126, 3, 42, 0, 10, NULL),
(127, 3, 56, 0, 10, NULL),
(128, 3, 59, 0, 10, NULL),
(134, 3, 38, 0, 11, NULL),
(135, 3, 41, 0, 11, NULL),
(136, 3, 42, 0, 11, NULL),
(137, 3, 56, 0, 11, NULL),
(138, 3, 59, 0, 11, NULL),
(139, 3, 38, 0, 12, NULL),
(140, 3, 41, 0, 12, NULL),
(141, 3, 42, 0, 12, NULL),
(142, 3, 56, 0, 12, NULL),
(143, 3, 59, 0, 12, NULL),
(179, 3, 38, 0, 15, NULL),
(180, 3, 41, 0, 15, NULL),
(181, 3, 42, 0, 15, NULL),
(182, 3, 56, 0, 15, NULL),
(183, 3, 59, 0, 15, NULL),
(197, 3, 38, 0, 17, NULL),
(198, 3, 41, 0, 17, NULL),
(199, 3, 42, 0, 17, NULL),
(200, 3, 56, 0, 17, NULL),
(201, 3, 59, 0, 17, NULL),
(202, 3, 38, 0, 18, NULL),
(203, 3, 41, 0, 18, NULL),
(204, 3, 42, 0, 18, NULL),
(205, 3, 56, 0, 18, NULL),
(206, 3, 59, 0, 18, NULL),
(207, 3, 38, 0, 19, NULL),
(208, 3, 41, 0, 19, NULL),
(209, 3, 42, 0, 19, NULL),
(210, 3, 56, 0, 19, NULL),
(211, 3, 59, 0, 19, NULL),
(232, 3, 38, 0, 21, NULL),
(233, 3, 41, 0, 21, NULL),
(234, 3, 42, 0, 21, NULL),
(235, 3, 56, 0, 21, NULL),
(236, 3, 59, 0, 21, NULL),
(237, 3, 38, 0, 22, NULL),
(238, 3, 41, 0, 22, NULL),
(239, 3, 42, 0, 22, NULL),
(240, 3, 56, 0, 22, NULL),
(241, 3, 59, 0, 22, NULL),
(242, 3, 38, 0, 23, NULL),
(243, 3, 41, 0, 23, NULL),
(244, 3, 42, 0, 23, NULL),
(245, 3, 56, 0, 23, NULL),
(246, 3, 59, 0, 23, NULL),
(247, 3, 38, 0, 24, NULL),
(248, 3, 41, 0, 24, NULL),
(249, 3, 42, 0, 24, NULL),
(250, 3, 56, 0, 24, NULL),
(251, 3, 59, 0, 24, NULL),
(252, 3, 38, 0, 25, NULL),
(253, 3, 41, 0, 25, NULL),
(254, 3, 42, 0, 25, NULL),
(255, 3, 56, 0, 25, NULL),
(256, 3, 59, 0, 25, NULL),
(257, 3, 38, 0, 26, NULL),
(258, 3, 41, 0, 26, NULL),
(259, 3, 42, 0, 26, NULL),
(260, 3, 56, 0, 26, NULL),
(261, 3, 59, 0, 26, NULL),
(272, 3, 38, 0, 27, NULL),
(273, 3, 41, 0, 27, NULL),
(274, 3, 42, 0, 27, NULL),
(275, 3, 56, 0, 27, NULL),
(276, 3, 59, 0, 27, NULL),
(292, 3, 38, 0, 28, NULL),
(293, 3, 41, 0, 28, NULL),
(294, 3, 42, 0, 28, NULL),
(295, 3, 56, 0, 28, NULL),
(296, 3, 59, 0, 28, NULL),
(297, 3, 38, 0, 29, NULL),
(298, 3, 41, 0, 29, NULL),
(299, 3, 42, 0, 29, NULL),
(300, 3, 56, 0, 29, NULL),
(301, 3, 59, 0, 29, NULL),
(307, 3, 38, 0, 30, NULL),
(308, 3, 41, 0, 30, NULL),
(309, 3, 42, 0, 30, NULL),
(310, 3, 56, 0, 30, NULL),
(311, 3, 59, 0, 30, NULL),
(322, 3, 38, 0, 31, NULL),
(323, 3, 41, 0, 31, NULL),
(324, 3, 42, 0, 31, NULL),
(325, 3, 56, 0, 31, NULL),
(326, 3, 59, 0, 31, NULL),
(332, 3, 38, 0, 32, NULL),
(333, 3, 41, 0, 32, NULL),
(334, 3, 42, 0, 32, NULL),
(335, 3, 56, 0, 32, NULL),
(336, 3, 59, 0, 32, NULL),
(342, 3, 38, 0, 33, NULL),
(343, 3, 41, 0, 33, NULL),
(344, 3, 42, 0, 33, NULL),
(345, 3, 56, 0, 33, NULL),
(346, 3, 59, 0, 33, NULL),
(387, 3, 38, 0, 36, NULL),
(388, 3, 41, 0, 36, NULL),
(389, 3, 42, 0, 36, NULL),
(390, 3, 56, 0, 36, NULL),
(391, 3, 59, 0, 36, 'position'),
(407, 3, 38, 0, 37, NULL),
(408, 3, 41, 0, 37, NULL),
(409, 3, 42, 0, 37, NULL),
(410, 3, 56, 0, 37, NULL),
(411, 3, 59, 0, 37, NULL);

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `catalog_category_entity_varchar`
--

CREATE TABLE IF NOT EXISTS `catalog_category_entity_varchar` (
  `value_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Value ID',
  `entity_type_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Entity Type ID',
  `attribute_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Attribute ID',
  `store_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Store ID',
  `entity_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Entity ID',
  `value` varchar(255) DEFAULT NULL COMMENT 'Value',
  PRIMARY KEY (`value_id`),
  UNIQUE KEY `UNQ_CAT_CTGR_ENTT_VCHR_ENTT_TYPE_ID_ENTT_ID_ATTR_ID_STORE_ID` (`entity_type_id`,`entity_id`,`attribute_id`,`store_id`),
  KEY `IDX_CATALOG_CATEGORY_ENTITY_VARCHAR_ENTITY_ID` (`entity_id`),
  KEY `IDX_CATALOG_CATEGORY_ENTITY_VARCHAR_ATTRIBUTE_ID` (`attribute_id`),
  KEY `IDX_CATALOG_CATEGORY_ENTITY_VARCHAR_STORE_ID` (`store_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='Catalog Category Varchar Attribute Backend Table' AUTO_INCREMENT=366 ;

--
-- Gegevens worden uitgevoerd voor tabel `catalog_category_entity_varchar`
--

INSERT INTO `catalog_category_entity_varchar` (`value_id`, `entity_type_id`, `attribute_id`, `store_id`, `entity_id`, `value`) VALUES
(1, 3, 35, 0, 1, 'Root Catalog'),
(2, 3, 35, 1, 1, 'Root Catalog'),
(3, 3, 37, 1, 1, 'root-catalog'),
(4, 3, 35, 0, 2, 'Hoofdmenu'),
(6, 3, 43, 1, 2, 'PRODUCTS'),
(7, 3, 37, 1, 2, 'default-category'),
(22, 3, 40, 0, 2, 'Hoofdmenu'),
(23, 3, 52, 0, 2, 'default/thebis'),
(24, 3, 55, 0, 2, 'two_columns_right'),
(39, 3, 35, 0, 5, 'Componenten'),
(40, 3, 37, 0, 5, 'componenten'),
(41, 3, 40, 0, 5, 'Componenten'),
(42, 3, 43, 0, 5, 'PRODUCTS'),
(43, 3, 52, 0, 5, 'default/thebis'),
(44, 3, 55, 0, 5, 'two_columns_right'),
(46, 3, 51, 1, 5, 'componenten.html'),
(47, 3, 51, 0, 5, 'componenten.html'),
(52, 3, 35, 0, 6, 'Behuizingen'),
(53, 3, 37, 0, 6, 'behuizingen'),
(54, 3, 40, 0, 6, 'Behuizingen'),
(55, 3, 43, 0, 6, 'PRODUCTS'),
(56, 3, 52, 0, 6, 'default/thebis'),
(57, 3, 55, 0, 6, 'two_columns_right'),
(58, 3, 51, 1, 6, 'componenten/behuizingen.html'),
(59, 3, 51, 0, 6, 'componenten/behuizingen.html'),
(72, 3, 35, 0, 7, 'Moederborden'),
(73, 3, 37, 0, 7, 'moederborden'),
(74, 3, 40, 0, 7, 'Moederborden'),
(75, 3, 43, 0, 7, 'PRODUCTS'),
(76, 3, 52, 0, 7, 'default/thebis'),
(77, 3, 55, 0, 7, 'two_columns_right'),
(78, 3, 51, 1, 7, 'componenten/moederborden.html'),
(79, 3, 51, 0, 7, 'componenten/moederborden.html'),
(80, 3, 35, 0, 8, 'Processors'),
(81, 3, 37, 0, 8, 'processors'),
(82, 3, 40, 0, 8, 'Processors'),
(83, 3, 43, 0, 8, 'PRODUCTS'),
(84, 3, 52, 0, 8, 'default/thebis'),
(85, 3, 55, 0, 8, 'two_columns_right'),
(86, 3, 51, 1, 8, 'componenten/processors.html'),
(87, 3, 51, 0, 8, 'componenten/processors.html'),
(88, 3, 35, 0, 9, 'Voedingen'),
(89, 3, 37, 0, 9, 'voedingen'),
(90, 3, 40, 0, 9, 'Voedingen'),
(91, 3, 43, 0, 9, 'PRODUCTS'),
(92, 3, 52, 0, 9, 'default/thebis'),
(93, 3, 55, 0, 9, 'two_columns_right'),
(94, 3, 51, 1, 9, 'componenten/voedingen.html'),
(95, 3, 51, 0, 9, 'componenten/voedingen.html'),
(96, 3, 35, 0, 10, 'Videokaarten'),
(97, 3, 37, 0, 10, 'videokaarten'),
(98, 3, 40, 0, 10, 'Videokaarten'),
(99, 3, 43, 0, 10, 'PRODUCTS'),
(100, 3, 52, 0, 10, 'default/thebis'),
(101, 3, 55, 0, 10, 'two_columns_right'),
(102, 3, 51, 1, 10, 'componenten/videokaarten.html'),
(103, 3, 51, 0, 10, 'componenten/videokaarten.html'),
(104, 3, 35, 0, 11, 'Harde schijven intern'),
(105, 3, 37, 0, 11, 'harde-schijven-intern'),
(106, 3, 40, 0, 11, 'Harde schijven intern'),
(107, 3, 43, 0, 11, 'PRODUCTS'),
(108, 3, 52, 0, 11, 'default/thebis'),
(109, 3, 55, 0, 11, 'two_columns_right'),
(110, 3, 51, 1, 11, 'componenten/harde-schijven-intern.html'),
(111, 3, 51, 0, 11, 'componenten/harde-schijven-intern.html'),
(112, 3, 35, 0, 12, 'System-geheugen'),
(113, 3, 37, 0, 12, 'systeem-geheugen'),
(114, 3, 40, 0, 12, 'System-geheugen'),
(115, 3, 43, 0, 12, 'PRODUCTS'),
(116, 3, 52, 0, 12, 'default/thebis'),
(117, 3, 55, 0, 12, 'two_columns_right'),
(118, 3, 51, 1, 12, 'componenten/systeem-geheugen.html'),
(119, 3, 51, 0, 12, 'componenten/systeem-geheugen.html'),
(138, 3, 35, 0, 15, 'Monitoren'),
(139, 3, 37, 0, 15, 'monitoren'),
(140, 3, 40, 0, 15, 'Monitoren'),
(141, 3, 43, 0, 15, 'PRODUCTS'),
(142, 3, 52, 0, 15, NULL),
(143, 3, 55, 0, 15, NULL),
(144, 3, 51, 1, 15, 'monitoren-1.html'),
(145, 3, 51, 0, 15, 'monitoren-1.html'),
(158, 3, 35, 0, 17, 'Opslag'),
(159, 3, 37, 0, 17, 'opslag'),
(160, 3, 40, 0, 17, 'Opslag'),
(161, 3, 43, 0, 17, 'PRODUCTS'),
(162, 3, 52, 0, 17, 'default/thebis'),
(163, 3, 55, 0, 17, 'two_columns_right'),
(164, 3, 51, 1, 17, 'opslag.html'),
(165, 3, 51, 0, 17, 'opslag.html'),
(166, 3, 35, 0, 18, 'Netwerk / NAS'),
(167, 3, 37, 0, 18, 'subcategorie-1'),
(168, 3, 40, 0, 18, 'Netwerk / NAS'),
(169, 3, 43, 0, 18, 'PRODUCTS'),
(170, 3, 52, 0, 18, 'default/thebis'),
(171, 3, 55, 0, 18, 'two_columns_right'),
(172, 3, 51, 1, 18, 'opslag/subcategorie-1.html'),
(173, 3, 51, 0, 18, 'opslag/subcategorie-1.html'),
(174, 3, 35, 0, 19, 'PC''s & Notebooks'),
(175, 3, 37, 0, 19, 'pc-notebooks'),
(176, 3, 40, 0, 19, 'PC''s & Notebooks'),
(177, 3, 43, 0, 19, 'PRODUCTS'),
(178, 3, 52, 0, 19, 'default/thebis'),
(179, 3, 55, 0, 19, 'two_columns_right'),
(180, 3, 51, 1, 19, 'pc-notebooks.html'),
(181, 3, 51, 0, 19, 'pc-notebooks.html'),
(194, 3, 35, 0, 21, 'Printers'),
(195, 3, 37, 0, 21, 'printers'),
(196, 3, 40, 0, 21, 'Printers'),
(197, 3, 43, 0, 21, 'PRODUCTS'),
(198, 3, 52, 0, 21, 'default/thebis'),
(199, 3, 55, 0, 21, 'two_columns_right'),
(200, 3, 51, 1, 21, 'printers.html'),
(201, 3, 51, 0, 21, 'printers.html'),
(202, 3, 35, 0, 22, 'Laser'),
(203, 3, 37, 0, 22, 'laser'),
(204, 3, 40, 0, 22, 'Laser'),
(205, 3, 43, 0, 22, 'PRODUCTS'),
(206, 3, 52, 0, 22, 'default/thebis'),
(207, 3, 55, 0, 22, 'two_columns_right'),
(208, 3, 51, 1, 22, 'printers/laser.html'),
(209, 3, 51, 0, 22, 'printers/laser.html'),
(210, 3, 35, 0, 23, 'Media'),
(211, 3, 37, 0, 23, 'media'),
(212, 3, 40, 0, 23, 'Media'),
(213, 3, 43, 0, 23, 'PRODUCTS'),
(214, 3, 52, 0, 23, 'default/thebis'),
(215, 3, 55, 0, 23, 'two_columns_right'),
(216, 3, 51, 1, 23, 'media.html'),
(217, 3, 51, 0, 23, 'media.html'),
(218, 3, 35, 0, 24, 'Media players'),
(219, 3, 37, 0, 24, 'media-players'),
(220, 3, 40, 0, 24, 'Media players'),
(221, 3, 43, 0, 24, 'PRODUCTS'),
(222, 3, 52, 0, 24, 'default/thebis'),
(223, 3, 55, 0, 24, 'two_columns_right'),
(224, 3, 51, 1, 24, 'media/media-players.html'),
(225, 3, 51, 0, 24, 'media/media-players.html'),
(226, 3, 35, 0, 25, 'Software'),
(227, 3, 37, 0, 25, 'software'),
(228, 3, 40, 0, 25, 'Software'),
(229, 3, 43, 0, 25, 'PRODUCTS'),
(230, 3, 52, 0, 25, 'default/thebis'),
(231, 3, 55, 0, 25, 'two_columns_right'),
(232, 3, 51, 1, 25, 'software.html'),
(233, 3, 51, 0, 25, 'software.html'),
(234, 3, 35, 0, 26, 'Antivirus/ beveiliging'),
(235, 3, 37, 0, 26, 'antivirus-beveiliging'),
(236, 3, 40, 0, 26, 'Antivirus/ beveiliging'),
(237, 3, 43, 0, 26, 'PRODUCTS'),
(238, 3, 52, 0, 26, 'default/thebis'),
(239, 3, 55, 0, 26, 'two_columns_right'),
(240, 3, 51, 1, 26, 'software/antivirus-beveiliging.html'),
(241, 3, 51, 0, 26, 'software/antivirus-beveiliging.html'),
(246, 3, 35, 0, 27, 'Harde schijven extern'),
(247, 3, 37, 0, 27, 'harde-schijven-extern'),
(248, 3, 40, 0, 27, 'Harde schijven extern'),
(249, 3, 43, 0, 27, 'PRODUCTS'),
(250, 3, 52, 0, 27, 'default/thebis'),
(251, 3, 55, 0, 27, 'two_columns_right'),
(252, 3, 51, 1, 27, 'opslag/harde-schijven-extern.html'),
(253, 3, 51, 0, 27, 'opslag/harde-schijven-extern.html'),
(260, 3, 35, 0, 28, 'All-in-one'),
(261, 3, 37, 0, 28, 'all-in-one'),
(262, 3, 40, 0, 28, 'All-in-one'),
(263, 3, 43, 0, 28, 'PRODUCTS'),
(264, 3, 52, 0, 28, 'default/thebis'),
(265, 3, 55, 0, 28, 'two_columns_right'),
(266, 3, 51, 1, 28, 'printers/all-in-one.html'),
(267, 3, 51, 0, 28, 'printers/all-in-one.html'),
(268, 3, 35, 0, 29, 'Scanner'),
(269, 3, 37, 0, 29, 'scanner'),
(270, 3, 40, 0, 29, 'Scanner'),
(271, 3, 43, 0, 29, 'PRODUCTS'),
(272, 3, 52, 0, 29, 'default/thebis'),
(273, 3, 55, 0, 29, 'two_columns_right'),
(274, 3, 51, 1, 29, 'printers/scanner.html'),
(275, 3, 51, 0, 29, 'printers/scanner.html'),
(279, 3, 35, 0, 30, 'Media recorders'),
(280, 3, 37, 0, 30, 'media-recorders'),
(281, 3, 40, 0, 30, 'Media recorders'),
(282, 3, 43, 0, 30, 'PRODUCTS'),
(283, 3, 52, 0, 30, 'default/thebis'),
(284, 3, 55, 0, 30, 'two_columns_right'),
(285, 3, 51, 1, 30, 'media/media-recorders.html'),
(286, 3, 51, 0, 30, 'media/media-recorders.html'),
(290, 3, 35, 0, 31, 'Besturingssystemen'),
(291, 3, 37, 0, 31, 'besturingssystemen'),
(292, 3, 40, 0, 31, 'Besturingssystemen'),
(293, 3, 43, 0, 31, 'PRODUCTS'),
(294, 3, 52, 0, 31, 'default/thebis'),
(295, 3, 55, 0, 31, 'two_columns_right'),
(296, 3, 51, 1, 31, 'software/besturingssystemen.html'),
(297, 3, 51, 0, 31, 'software/besturingssystemen.html'),
(298, 3, 35, 0, 32, 'Office toepassingen'),
(299, 3, 37, 0, 32, 'office-toepassingen'),
(300, 3, 40, 0, 32, 'Office toepassingen'),
(301, 3, 43, 0, 32, 'PRODUCTS'),
(302, 3, 52, 0, 32, 'default/thebis'),
(303, 3, 55, 0, 32, 'two_columns_right'),
(304, 3, 51, 1, 32, 'software/office-toepassingen.html'),
(305, 3, 51, 0, 32, 'software/office-toepassingen.html'),
(306, 3, 35, 0, 33, 'Foto / video / muziek'),
(307, 3, 37, 0, 33, 'foto-video-muziek'),
(308, 3, 40, 0, 33, 'Foto / video / muziek'),
(309, 3, 43, 0, 33, 'PRODUCTS'),
(310, 3, 52, 0, 33, 'default/thebis'),
(311, 3, 55, 0, 33, 'two_columns_right'),
(312, 3, 51, 1, 33, 'software/foto-video-muziek.html'),
(313, 3, 51, 0, 33, 'software/foto-video-muziek.html'),
(337, 3, 35, 0, 36, 'Toppers_rij_01'),
(338, 3, 37, 0, 36, 'toppers'),
(339, 3, 40, 0, 36, NULL),
(340, 3, 43, 0, 36, 'PRODUCTS_AND_PAGE'),
(341, 3, 52, 0, 36, 'default/thebis'),
(342, 3, 55, 0, 36, 'two_columns_right'),
(346, 3, 51, 1, 36, 'toppers.html'),
(347, 3, 51, 0, 36, 'toppers.html'),
(354, 3, 35, 0, 37, 'Toppers_rij_02'),
(355, 3, 37, 0, 37, 'toppers-rij-02'),
(356, 3, 40, 0, 37, NULL),
(357, 3, 43, 0, 37, 'PRODUCTS'),
(358, 3, 52, 0, 37, NULL),
(359, 3, 55, 0, 37, NULL),
(360, 3, 51, 1, 37, 'toppers-rij-02.html'),
(361, 3, 51, 0, 37, 'toppers-rij-02.html'),
(364, 3, 60, 0, 36, 'position');

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `catalog_category_flat_store_1`
--

CREATE TABLE IF NOT EXISTS `catalog_category_flat_store_1` (
  `entity_id` int(10) unsigned NOT NULL COMMENT 'entity_id',
  `parent_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'parent_id',
  `created_at` timestamp NULL DEFAULT NULL COMMENT 'created_at',
  `updated_at` timestamp NULL DEFAULT NULL COMMENT 'updated_at',
  `path` varchar(255) NOT NULL DEFAULT '' COMMENT 'path',
  `position` int(11) NOT NULL COMMENT 'position',
  `level` int(11) NOT NULL DEFAULT '0' COMMENT 'level',
  `children_count` int(11) NOT NULL COMMENT 'children_count',
  `store_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Store Id',
  `all_children` text COMMENT 'All Children',
  `available_sort_by` text COMMENT 'Available Product Listing Sort By',
  `children` text COMMENT 'Children',
  `custom_apply_to_products` int(11) DEFAULT NULL COMMENT 'Apply To Products',
  `custom_design` varchar(255) DEFAULT NULL COMMENT 'Custom Design',
  `custom_design_from` datetime DEFAULT NULL COMMENT 'Active From',
  `custom_design_to` datetime DEFAULT NULL COMMENT 'Active To',
  `custom_layout_update` text COMMENT 'Custom Layout Update',
  `custom_use_parent_settings` int(11) DEFAULT NULL COMMENT 'Use Parent Category Settings',
  `default_sort_by` varchar(255) DEFAULT NULL COMMENT 'Default Product Listing Sort By',
  `description` text COMMENT 'Description',
  `display_mode` varchar(255) DEFAULT NULL COMMENT 'Display Mode',
  `filter_price_range` int(11) DEFAULT NULL COMMENT 'Layered Navigation Price Step',
  `image` varchar(255) DEFAULT NULL COMMENT 'Image',
  `include_in_menu` int(11) DEFAULT NULL COMMENT 'Include in Navigation Menu',
  `is_active` int(11) DEFAULT NULL COMMENT 'Is Active',
  `is_anchor` int(11) DEFAULT NULL COMMENT 'Is Anchor',
  `landing_page` int(11) DEFAULT NULL COMMENT 'CMS Block',
  `meta_description` text COMMENT 'Meta Description',
  `meta_keywords` text COMMENT 'Meta Keywords',
  `meta_title` varchar(255) DEFAULT NULL COMMENT 'Page Title',
  `name` varchar(255) DEFAULT NULL COMMENT 'Name',
  `page_layout` varchar(255) DEFAULT NULL COMMENT 'Page Layout',
  `path_in_store` text COMMENT 'Path In Store',
  `thumbnail` varchar(255) DEFAULT NULL COMMENT 'Thumbnail Image',
  `url_key` varchar(255) DEFAULT NULL COMMENT 'URL Key',
  `url_path` varchar(255) DEFAULT NULL COMMENT 'Url Path',
  PRIMARY KEY (`entity_id`),
  KEY `IDX_CATALOG_CATEGORY_FLAT_STORE_1_STORE_ID` (`store_id`),
  KEY `IDX_CATALOG_CATEGORY_FLAT_STORE_1_PATH` (`path`),
  KEY `IDX_CATALOG_CATEGORY_FLAT_STORE_1_LEVEL` (`level`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Category Flat (Store 1)';

--
-- Gegevens worden uitgevoerd voor tabel `catalog_category_flat_store_1`
--

INSERT INTO `catalog_category_flat_store_1` (`entity_id`, `parent_id`, `created_at`, `updated_at`, `path`, `position`, `level`, `children_count`, `store_id`, `all_children`, `available_sort_by`, `children`, `custom_apply_to_products`, `custom_design`, `custom_design_from`, `custom_design_to`, `custom_layout_update`, `custom_use_parent_settings`, `default_sort_by`, `description`, `display_mode`, `filter_price_range`, `image`, `include_in_menu`, `is_active`, `is_anchor`, `landing_page`, `meta_description`, `meta_keywords`, `meta_title`, `name`, `page_layout`, `path_in_store`, `thumbnail`, `url_key`, `url_path`) VALUES
(1, 0, '2012-02-28 10:55:58', '2012-02-28 10:55:58', '1', 0, 0, 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'Root Catalog', NULL, NULL, NULL, NULL, NULL),
(2, 1, '2012-02-28 10:56:00', '2012-02-28 10:56:00', '1/2', 1, 1, 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, NULL, NULL, 'Default Category', NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `catalog_category_product`
--

CREATE TABLE IF NOT EXISTS `catalog_category_product` (
  `category_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Category ID',
  `product_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Product ID',
  `position` int(11) NOT NULL DEFAULT '0' COMMENT 'Position',
  PRIMARY KEY (`category_id`,`product_id`),
  KEY `IDX_CATALOG_CATEGORY_PRODUCT_PRODUCT_ID` (`product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Product To Category Linkage Table';

--
-- Gegevens worden uitgevoerd voor tabel `catalog_category_product`
--

INSERT INTO `catalog_category_product` (`category_id`, `product_id`, `position`) VALUES
(5, 1, 1),
(5, 2, 1),
(7, 1, 1),
(9, 2, 1),
(15, 3, 1),
(23, 4, 1),
(24, 4, 1),
(36, 1, 4),
(36, 2, 3),
(36, 3, 2),
(36, 4, 1);

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `catalog_category_product_index`
--

CREATE TABLE IF NOT EXISTS `catalog_category_product_index` (
  `category_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Category ID',
  `product_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Product ID',
  `position` int(11) DEFAULT NULL COMMENT 'Position',
  `is_parent` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Is Parent',
  `store_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Store ID',
  `visibility` smallint(5) unsigned NOT NULL COMMENT 'Visibility',
  PRIMARY KEY (`category_id`,`product_id`,`store_id`),
  KEY `IDX_CAT_CTGR_PRD_IDX_PRD_ID_STORE_ID_CTGR_ID_VISIBILITY` (`product_id`,`store_id`,`category_id`,`visibility`),
  KEY `15D3C269665C74C2219037D534F4B0DC` (`store_id`,`category_id`,`visibility`,`is_parent`,`position`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Category Product Index';

--
-- Gegevens worden uitgevoerd voor tabel `catalog_category_product_index`
--

INSERT INTO `catalog_category_product_index` (`category_id`, `product_id`, `position`, `is_parent`, `store_id`, `visibility`) VALUES
(2, 1, 60001, 0, 1, 4),
(2, 2, 60001, 0, 1, 4),
(2, 4, 80001, 0, 1, 4),
(2, 3, 90001, 0, 1, 4),
(5, 1, 1, 1, 1, 4),
(5, 2, 1, 1, 1, 4),
(7, 1, 1, 1, 1, 4),
(9, 2, 1, 1, 1, 4),
(15, 3, 1, 1, 1, 4),
(23, 4, 1, 1, 1, 4),
(24, 4, 1, 1, 1, 4),
(36, 4, 1, 1, 1, 4),
(36, 3, 2, 1, 1, 4),
(36, 2, 3, 1, 1, 4),
(36, 1, 4, 1, 1, 4);

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `catalog_category_product_index_enbl_idx`
--

CREATE TABLE IF NOT EXISTS `catalog_category_product_index_enbl_idx` (
  `product_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Product ID',
  `visibility` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Visibility',
  KEY `IDX_CAT_CTGR_PRD_IDX_ENBL_IDX_PRD_ID_VISIBILITY` (`product_id`,`visibility`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Category Product Enabled Indexer Index Table';

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `catalog_category_product_index_enbl_tmp`
--

CREATE TABLE IF NOT EXISTS `catalog_category_product_index_enbl_tmp` (
  `product_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Product ID',
  `visibility` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Visibility',
  KEY `IDX_CAT_CTGR_PRD_IDX_ENBL_TMP_PRD_ID_VISIBILITY` (`product_id`,`visibility`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Category Product Enabled Indexer Temp Table';

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `catalog_category_product_index_idx`
--

CREATE TABLE IF NOT EXISTS `catalog_category_product_index_idx` (
  `category_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Category ID',
  `product_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Product ID',
  `position` int(11) NOT NULL DEFAULT '0' COMMENT 'Position',
  `is_parent` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Is Parent',
  `store_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Store ID',
  `visibility` smallint(5) unsigned NOT NULL COMMENT 'Visibility',
  KEY `IDX_CAT_CTGR_PRD_IDX_IDX_PRD_ID_CTGR_ID_STORE_ID` (`product_id`,`category_id`,`store_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Category Product Indexer Index Table';

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `catalog_category_product_index_tmp`
--

CREATE TABLE IF NOT EXISTS `catalog_category_product_index_tmp` (
  `category_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Category ID',
  `product_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Product ID',
  `position` int(11) NOT NULL DEFAULT '0' COMMENT 'Position',
  `is_parent` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Is Parent',
  `store_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Store ID',
  `visibility` smallint(5) unsigned NOT NULL COMMENT 'Visibility',
  KEY `IDX_CAT_CTGR_PRD_IDX_TMP_PRD_ID_CTGR_ID_STORE_ID` (`product_id`,`category_id`,`store_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Category Product Indexer Temp Table';

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `catalog_compare_item`
--

CREATE TABLE IF NOT EXISTS `catalog_compare_item` (
  `catalog_compare_item_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Compare Item ID',
  `visitor_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Visitor ID',
  `customer_id` int(10) unsigned DEFAULT NULL COMMENT 'Customer ID',
  `product_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Product ID',
  `store_id` smallint(5) unsigned DEFAULT NULL COMMENT 'Store ID',
  PRIMARY KEY (`catalog_compare_item_id`),
  KEY `IDX_CATALOG_COMPARE_ITEM_CUSTOMER_ID` (`customer_id`),
  KEY `IDX_CATALOG_COMPARE_ITEM_PRODUCT_ID` (`product_id`),
  KEY `IDX_CATALOG_COMPARE_ITEM_VISITOR_ID_PRODUCT_ID` (`visitor_id`,`product_id`),
  KEY `IDX_CATALOG_COMPARE_ITEM_CUSTOMER_ID_PRODUCT_ID` (`customer_id`,`product_id`),
  KEY `IDX_CATALOG_COMPARE_ITEM_STORE_ID` (`store_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Compare Table' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `catalog_eav_attribute`
--

CREATE TABLE IF NOT EXISTS `catalog_eav_attribute` (
  `attribute_id` smallint(5) unsigned NOT NULL COMMENT 'Attribute ID',
  `frontend_input_renderer` varchar(255) DEFAULT NULL COMMENT 'Frontend Input Renderer',
  `is_global` smallint(5) unsigned NOT NULL DEFAULT '1' COMMENT 'Is Global',
  `is_visible` smallint(5) unsigned NOT NULL DEFAULT '1' COMMENT 'Is Visible',
  `is_searchable` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Is Searchable',
  `is_filterable` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Is Filterable',
  `is_comparable` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Is Comparable',
  `is_visible_on_front` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Is Visible On Front',
  `is_html_allowed_on_front` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Is HTML Allowed On Front',
  `is_used_for_price_rules` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Is Used For Price Rules',
  `is_filterable_in_search` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Is Filterable In Search',
  `used_in_product_listing` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Is Used In Product Listing',
  `used_for_sort_by` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Is Used For Sorting',
  `is_configurable` smallint(5) unsigned NOT NULL DEFAULT '1' COMMENT 'Is Configurable',
  `apply_to` varchar(255) DEFAULT NULL COMMENT 'Apply To',
  `is_visible_in_advanced_search` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Is Visible In Advanced Search',
  `position` int(11) NOT NULL DEFAULT '0' COMMENT 'Position',
  `is_wysiwyg_enabled` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Is WYSIWYG Enabled',
  `is_used_for_promo_rules` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Is Used For Promo Rules',
  PRIMARY KEY (`attribute_id`),
  KEY `IDX_CATALOG_EAV_ATTRIBUTE_USED_FOR_SORT_BY` (`used_for_sort_by`),
  KEY `IDX_CATALOG_EAV_ATTRIBUTE_USED_IN_PRODUCT_LISTING` (`used_in_product_listing`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog EAV Attribute Table';

--
-- Gegevens worden uitgevoerd voor tabel `catalog_eav_attribute`
--

INSERT INTO `catalog_eav_attribute` (`attribute_id`, `frontend_input_renderer`, `is_global`, `is_visible`, `is_searchable`, `is_filterable`, `is_comparable`, `is_visible_on_front`, `is_html_allowed_on_front`, `is_used_for_price_rules`, `is_filterable_in_search`, `used_in_product_listing`, `used_for_sort_by`, `is_configurable`, `apply_to`, `is_visible_in_advanced_search`, `position`, `is_wysiwyg_enabled`, `is_used_for_promo_rules`) VALUES
(35, NULL, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, 0, 0, 0, 0),
(36, NULL, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, 0, 0, 0, 0),
(37, NULL, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, 0, 0, 0, 0),
(38, NULL, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, NULL, 0, 0, 1, 0),
(39, NULL, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, 0, 0, 0, 0),
(40, NULL, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, 0, 0, 0, 0),
(41, NULL, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, 0, 0, 0, 0),
(42, NULL, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, 0, 0, 0, 0),
(43, NULL, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, 0, 0, 0, 0),
(44, NULL, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, 0, 0, 0, 0),
(45, NULL, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, 0, 0, 0, 0),
(46, NULL, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, 0, 0, 0, 0),
(47, NULL, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, 0, 0, 0, 0),
(48, NULL, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, 0, 0, 0, 0),
(49, NULL, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, 0, 0, 0, 0),
(50, NULL, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, 0, 0, 0, 0),
(51, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, 0, 0, 0, 0),
(52, NULL, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, 0, 0, 0, 0),
(53, NULL, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, 0, 0, 0, 0),
(54, NULL, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, 0, 0, 0, 0),
(55, NULL, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, 0, 0, 0, 0),
(56, NULL, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, 0, 0, 0, 0),
(57, NULL, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, 0, 0, 0, 0),
(58, NULL, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, 0, 0, 0, 0),
(59, 'adminhtml/catalog_category_helper_sortby_available', 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, 0, 0, 0, 0),
(60, 'adminhtml/catalog_category_helper_sortby_default', 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, 0, 0, 0, 0),
(61, NULL, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, 0, 0, 0, 0),
(62, NULL, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, 0, 0, 0, 0),
(63, NULL, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, 0, 0, 0, 0),
(64, 'adminhtml/catalog_category_helper_pricestep', 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, 0, 0, 0, 0),
(65, NULL, 0, 1, 1, 0, 0, 0, 0, 0, 0, 1, 1, 1, NULL, 1, 0, 0, 0),
(66, NULL, 0, 1, 1, 0, 1, 0, 1, 0, 0, 0, 0, 1, NULL, 1, 0, 1, 0),
(67, NULL, 0, 1, 1, 0, 1, 0, 1, 0, 0, 1, 0, 1, NULL, 1, 0, 1, 0),
(68, NULL, 1, 1, 1, 0, 1, 0, 0, 0, 0, 0, 0, 1, NULL, 1, 0, 0, 0),
(69, NULL, 2, 1, 1, 1, 0, 0, 0, 0, 0, 1, 1, 1, 'simple,configurable,virtual,bundle,downloadable', 1, 0, 0, 0),
(70, NULL, 2, 1, 0, 0, 0, 0, 0, 0, 0, 1, 0, 1, 'simple,configurable,virtual,bundle,downloadable', 0, 0, 0, 0),
(71, NULL, 2, 1, 0, 0, 0, 0, 0, 0, 0, 1, 0, 1, 'simple,configurable,virtual,bundle,downloadable', 0, 0, 0, 0),
(72, NULL, 2, 1, 0, 0, 0, 0, 0, 0, 0, 1, 0, 1, 'simple,configurable,virtual,bundle,downloadable', 0, 0, 0, 0),
(73, NULL, 2, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 'virtual,downloadable', 0, 0, 0, 0),
(74, NULL, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 'simple,bundle', 0, 0, 0, 0),
(75, NULL, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 1, 'simple', 1, 0, 0, 0),
(76, NULL, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, 0, 0, 0, 0),
(77, NULL, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, 0, 0, 0, 0),
(78, NULL, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, 0, 0, 0, 0),
(79, NULL, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, 0, 0, 0, 0),
(80, NULL, 0, 1, 0, 0, 0, 0, 0, 0, 0, 1, 0, 1, NULL, 0, 0, 0, 0),
(81, NULL, 0, 1, 0, 0, 0, 0, 0, 0, 0, 1, 0, 1, NULL, 0, 0, 0, 0),
(82, NULL, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, 0, 0, 0, 0),
(83, NULL, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, 0, 0, 0, 0),
(84, NULL, 2, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 'simple,configurable,virtual,bundle,downloadable', 0, 0, 0, 0),
(85, NULL, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 1, 'simple', 1, 0, 0, 0),
(86, NULL, 2, 1, 0, 0, 0, 0, 0, 0, 0, 1, 0, 1, NULL, 0, 0, 0, 0),
(87, NULL, 2, 1, 0, 0, 0, 0, 0, 0, 0, 1, 0, 1, NULL, 0, 0, 0, 0),
(88, NULL, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, 0, 0, 0, 0),
(89, NULL, 2, 1, 1, 0, 0, 0, 0, 0, 0, 1, 0, 1, NULL, 0, 0, 0, 0),
(90, NULL, 0, 1, 0, 0, 0, 0, 0, 0, 0, 1, 0, 1, NULL, 0, 0, 0, 0),
(91, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, 0, 0, 0, 0),
(92, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 'simple,configurable,virtual,bundle,downloadable', 0, 0, 0, 0),
(93, NULL, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'simple,virtual', 0, 0, 0, 0),
(94, NULL, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'simple,virtual', 0, 0, 0, 0),
(95, NULL, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, 0, 0, 0, 0),
(96, NULL, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, 0, 0, 0, 0),
(97, NULL, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, 0, 0, 0, 0),
(98, NULL, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, 0, 0, 0, 0),
(99, NULL, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, 0, 0, 0, 0),
(100, NULL, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, 0, 0, 0, 0),
(101, NULL, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, 0, 0, 0, 0),
(102, NULL, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, 0, 0, 0, 0),
(103, NULL, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 1, NULL, 0, 0, 0, 0),
(104, NULL, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, 0, 0, 0, 0),
(105, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, NULL, 0, 0, 0, 0),
(106, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, NULL, 0, 0, 0, 0),
(107, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, NULL, 0, 0, 0, 0),
(108, NULL, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, 0, 0, 0, 0),
(109, NULL, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, 0, 0, 0, 0),
(110, NULL, 2, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'simple,configurable,bundle,grouped', 0, 0, 0, 0),
(111, 'adminhtml/catalog_product_helper_form_msrp_enabled', 2, 1, 0, 0, 0, 0, 0, 0, 0, 1, 0, 1, 'simple,bundle,configurable,virtual,downloadable', 0, 0, 0, 0),
(112, 'adminhtml/catalog_product_helper_form_msrp_price', 2, 1, 0, 0, 0, 0, 0, 0, 0, 1, 0, 1, 'simple,bundle,configurable,virtual,downloadable', 0, 0, 0, 0),
(113, NULL, 2, 1, 0, 0, 0, 0, 0, 0, 0, 1, 0, 1, 'simple,bundle,configurable,virtual,downloadable', 0, 0, 0, 0),
(114, NULL, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, 0, 0),
(115, NULL, 2, 1, 1, 0, 0, 0, 0, 0, 0, 1, 0, 1, 'simple,configurable,virtual,downloadable,bundle', 1, 0, 0, 0),
(116, 'giftmessage/adminhtml_product_helper_form_config', 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, 0, 0),
(117, NULL, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 'bundle', 0, 0, 0, 0),
(118, NULL, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'bundle', 0, 0, 0, 0),
(119, NULL, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 'bundle', 0, 0, 0, 0),
(120, NULL, 1, 1, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 'bundle', 0, 0, 0, 0),
(121, NULL, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 'bundle', 0, 0, 0, 0),
(122, NULL, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 'downloadable', 0, 0, 0, 0),
(123, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'downloadable', 0, 0, 0, 0),
(124, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'downloadable', 0, 0, 0, 0),
(125, NULL, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 'downloadable', 0, 0, 0, 0),
(126, NULL, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, 0, 0, 0, 0);

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `catalog_product_bundle_option`
--

CREATE TABLE IF NOT EXISTS `catalog_product_bundle_option` (
  `option_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Option Id',
  `parent_id` int(10) unsigned NOT NULL COMMENT 'Parent Id',
  `required` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Required',
  `position` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Position',
  `type` varchar(255) DEFAULT NULL COMMENT 'Type',
  PRIMARY KEY (`option_id`),
  KEY `IDX_CATALOG_PRODUCT_BUNDLE_OPTION_PARENT_ID` (`parent_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Product Bundle Option' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `catalog_product_bundle_option_value`
--

CREATE TABLE IF NOT EXISTS `catalog_product_bundle_option_value` (
  `value_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Value Id',
  `option_id` int(10) unsigned NOT NULL COMMENT 'Option Id',
  `store_id` smallint(5) unsigned NOT NULL COMMENT 'Store Id',
  `title` varchar(255) DEFAULT NULL COMMENT 'Title',
  PRIMARY KEY (`value_id`),
  UNIQUE KEY `UNQ_CATALOG_PRODUCT_BUNDLE_OPTION_VALUE_OPTION_ID_STORE_ID` (`option_id`,`store_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Product Bundle Option Value' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `catalog_product_bundle_price_index`
--

CREATE TABLE IF NOT EXISTS `catalog_product_bundle_price_index` (
  `entity_id` int(10) unsigned NOT NULL COMMENT 'Entity Id',
  `website_id` smallint(5) unsigned NOT NULL COMMENT 'Website Id',
  `customer_group_id` smallint(5) unsigned NOT NULL COMMENT 'Customer Group Id',
  `min_price` decimal(12,4) NOT NULL COMMENT 'Min Price',
  `max_price` decimal(12,4) NOT NULL COMMENT 'Max Price',
  PRIMARY KEY (`entity_id`,`website_id`,`customer_group_id`),
  KEY `IDX_CATALOG_PRODUCT_BUNDLE_PRICE_INDEX_WEBSITE_ID` (`website_id`),
  KEY `IDX_CATALOG_PRODUCT_BUNDLE_PRICE_INDEX_CUSTOMER_GROUP_ID` (`customer_group_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Product Bundle Price Index';

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `catalog_product_bundle_selection`
--

CREATE TABLE IF NOT EXISTS `catalog_product_bundle_selection` (
  `selection_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Selection Id',
  `option_id` int(10) unsigned NOT NULL COMMENT 'Option Id',
  `parent_product_id` int(10) unsigned NOT NULL COMMENT 'Parent Product Id',
  `product_id` int(10) unsigned NOT NULL COMMENT 'Product Id',
  `position` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Position',
  `is_default` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Is Default',
  `selection_price_type` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Selection Price Type',
  `selection_price_value` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Selection Price Value',
  `selection_qty` decimal(12,4) DEFAULT NULL COMMENT 'Selection Qty',
  `selection_can_change_qty` smallint(6) NOT NULL DEFAULT '0' COMMENT 'Selection Can Change Qty',
  PRIMARY KEY (`selection_id`),
  KEY `IDX_CATALOG_PRODUCT_BUNDLE_SELECTION_OPTION_ID` (`option_id`),
  KEY `IDX_CATALOG_PRODUCT_BUNDLE_SELECTION_PRODUCT_ID` (`product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Product Bundle Selection' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `catalog_product_bundle_selection_price`
--

CREATE TABLE IF NOT EXISTS `catalog_product_bundle_selection_price` (
  `selection_id` int(10) unsigned NOT NULL COMMENT 'Selection Id',
  `website_id` smallint(5) unsigned NOT NULL COMMENT 'Website Id',
  `selection_price_type` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Selection Price Type',
  `selection_price_value` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Selection Price Value',
  PRIMARY KEY (`selection_id`,`website_id`),
  KEY `IDX_CATALOG_PRODUCT_BUNDLE_SELECTION_PRICE_WEBSITE_ID` (`website_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Product Bundle Selection Price';

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `catalog_product_bundle_stock_index`
--

CREATE TABLE IF NOT EXISTS `catalog_product_bundle_stock_index` (
  `entity_id` int(10) unsigned NOT NULL COMMENT 'Entity Id',
  `website_id` smallint(5) unsigned NOT NULL COMMENT 'Website Id',
  `stock_id` smallint(5) unsigned NOT NULL COMMENT 'Stock Id',
  `option_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Option Id',
  `stock_status` smallint(6) DEFAULT '0' COMMENT 'Stock Status',
  PRIMARY KEY (`entity_id`,`website_id`,`stock_id`,`option_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Product Bundle Stock Index';

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `catalog_product_enabled_index`
--

CREATE TABLE IF NOT EXISTS `catalog_product_enabled_index` (
  `product_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Product ID',
  `store_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Store ID',
  `visibility` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Visibility',
  PRIMARY KEY (`product_id`,`store_id`),
  KEY `IDX_CATALOG_PRODUCT_ENABLED_INDEX_STORE_ID` (`store_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Product Visibility Index Table';

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `catalog_product_entity`
--

CREATE TABLE IF NOT EXISTS `catalog_product_entity` (
  `entity_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Entity ID',
  `entity_type_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Entity Type ID',
  `attribute_set_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Attribute Set ID',
  `type_id` varchar(32) NOT NULL DEFAULT 'simple' COMMENT 'Type ID',
  `sku` varchar(64) DEFAULT NULL COMMENT 'SKU',
  `has_options` smallint(6) NOT NULL DEFAULT '0' COMMENT 'Has Options',
  `required_options` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Required Options',
  `created_at` timestamp NULL DEFAULT NULL COMMENT 'Creation Time',
  `updated_at` timestamp NULL DEFAULT NULL COMMENT 'Update Time',
  PRIMARY KEY (`entity_id`),
  KEY `IDX_CATALOG_PRODUCT_ENTITY_ENTITY_TYPE_ID` (`entity_type_id`),
  KEY `IDX_CATALOG_PRODUCT_ENTITY_ATTRIBUTE_SET_ID` (`attribute_set_id`),
  KEY `IDX_CATALOG_PRODUCT_ENTITY_SKU` (`sku`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='Catalog Product Table' AUTO_INCREMENT=5 ;

--
-- Gegevens worden uitgevoerd voor tabel `catalog_product_entity`
--

INSERT INTO `catalog_product_entity` (`entity_id`, `entity_type_id`, `attribute_set_id`, `type_id`, `sku`, `has_options`, `required_options`, `created_at`, `updated_at`) VALUES
(1, 4, 4, 'simple', 'MBS', 0, 0, '2012-02-28 11:07:46', '2012-03-03 14:15:08'),
(2, 4, 4, 'simple', 'CLRS', 0, 0, '2012-03-01 18:31:47', '2012-03-03 14:13:33'),
(3, 4, 4, 'simple', 'MNTRS', 0, 0, '2012-03-01 18:35:03', '2012-03-03 14:11:32'),
(4, 4, 4, 'simple', 'MDPLYR', 0, 0, '2012-03-01 18:37:15', '2012-03-03 14:08:41');

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `catalog_product_entity_datetime`
--

CREATE TABLE IF NOT EXISTS `catalog_product_entity_datetime` (
  `value_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Value ID',
  `entity_type_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Entity Type ID',
  `attribute_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Attribute ID',
  `store_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Store ID',
  `entity_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Entity ID',
  `value` datetime DEFAULT NULL COMMENT 'Value',
  PRIMARY KEY (`value_id`),
  UNIQUE KEY `UNQ_CAT_PRD_ENTT_DTIME_ENTT_ID_ATTR_ID_STORE_ID` (`entity_id`,`attribute_id`,`store_id`),
  KEY `IDX_CATALOG_PRODUCT_ENTITY_DATETIME_ATTRIBUTE_ID` (`attribute_id`),
  KEY `IDX_CATALOG_PRODUCT_ENTITY_DATETIME_STORE_ID` (`store_id`),
  KEY `IDX_CATALOG_PRODUCT_ENTITY_DATETIME_ENTITY_ID` (`entity_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='Catalog Product Datetime Attribute Backend Table' AUTO_INCREMENT=195 ;

--
-- Gegevens worden uitgevoerd voor tabel `catalog_product_entity_datetime`
--

INSERT INTO `catalog_product_entity_datetime` (`value_id`, `entity_type_id`, `attribute_id`, `store_id`, `entity_id`, `value`) VALUES
(1, 4, 86, 0, 1, '2012-03-01 00:00:00'),
(2, 4, 87, 0, 1, '2012-03-01 00:00:00'),
(3, 4, 71, 0, 1, NULL),
(4, 4, 72, 0, 1, NULL),
(5, 4, 97, 0, 1, NULL),
(6, 4, 98, 0, 1, NULL),
(41, 4, 86, 0, 2, NULL),
(42, 4, 87, 0, 2, NULL),
(43, 4, 71, 0, 2, NULL),
(44, 4, 72, 0, 2, NULL),
(45, 4, 97, 0, 2, NULL),
(46, 4, 98, 0, 2, NULL),
(71, 4, 86, 0, 3, NULL),
(72, 4, 87, 0, 3, NULL),
(73, 4, 71, 0, 3, NULL),
(74, 4, 72, 0, 3, NULL),
(75, 4, 97, 0, 3, NULL),
(76, 4, 98, 0, 3, NULL),
(83, 4, 86, 0, 4, NULL),
(84, 4, 87, 0, 4, NULL),
(85, 4, 71, 0, 4, NULL),
(86, 4, 72, 0, 4, NULL),
(87, 4, 97, 0, 4, NULL),
(88, 4, 98, 0, 4, NULL);

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `catalog_product_entity_decimal`
--

CREATE TABLE IF NOT EXISTS `catalog_product_entity_decimal` (
  `value_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Value ID',
  `entity_type_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Entity Type ID',
  `attribute_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Attribute ID',
  `store_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Store ID',
  `entity_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Entity ID',
  `value` decimal(12,4) DEFAULT NULL COMMENT 'Value',
  PRIMARY KEY (`value_id`),
  UNIQUE KEY `UNQ_CAT_PRD_ENTT_DEC_ENTT_ID_ATTR_ID_STORE_ID` (`entity_id`,`attribute_id`,`store_id`),
  KEY `IDX_CATALOG_PRODUCT_ENTITY_DECIMAL_STORE_ID` (`store_id`),
  KEY `IDX_CATALOG_PRODUCT_ENTITY_DECIMAL_ENTITY_ID` (`entity_id`),
  KEY `IDX_CATALOG_PRODUCT_ENTITY_DECIMAL_ATTRIBUTE_ID` (`attribute_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='Catalog Product Decimal Attribute Backend Table' AUTO_INCREMENT=114 ;

--
-- Gegevens worden uitgevoerd voor tabel `catalog_product_entity_decimal`
--

INSERT INTO `catalog_product_entity_decimal` (`value_id`, `entity_type_id`, `attribute_id`, `store_id`, `entity_id`, `value`) VALUES
(1, 4, 74, 0, 1, '600.0000'),
(2, 4, 69, 0, 1, '273.9500'),
(3, 4, 70, 0, 1, NULL),
(4, 4, 113, 0, 1, NULL),
(30, 4, 74, 0, 2, '2.0000'),
(31, 4, 69, 0, 2, '147.9000'),
(32, 4, 70, 0, 2, NULL),
(33, 4, 113, 0, 2, NULL),
(46, 4, 74, 0, 3, '4.0000'),
(47, 4, 69, 0, 3, '1380.0000'),
(48, 4, 70, 0, 3, NULL),
(49, 4, 113, 0, 3, NULL),
(53, 4, 74, 0, 4, '2.0000'),
(54, 4, 69, 0, 4, '147.9000'),
(55, 4, 70, 0, 4, NULL),
(56, 4, 113, 0, 4, NULL);

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `catalog_product_entity_gallery`
--

CREATE TABLE IF NOT EXISTS `catalog_product_entity_gallery` (
  `value_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Value ID',
  `entity_type_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Entity Type ID',
  `attribute_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Attribute ID',
  `store_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Store ID',
  `entity_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Entity ID',
  `position` int(11) NOT NULL DEFAULT '0' COMMENT 'Position',
  `value` varchar(255) NOT NULL DEFAULT '' COMMENT 'Value',
  PRIMARY KEY (`value_id`),
  UNIQUE KEY `UNQ_CAT_PRD_ENTT_GLR_ENTT_TYPE_ID_ENTT_ID_ATTR_ID_STORE_ID` (`entity_type_id`,`entity_id`,`attribute_id`,`store_id`),
  KEY `IDX_CATALOG_PRODUCT_ENTITY_GALLERY_ENTITY_ID` (`entity_id`),
  KEY `IDX_CATALOG_PRODUCT_ENTITY_GALLERY_ATTRIBUTE_ID` (`attribute_id`),
  KEY `IDX_CATALOG_PRODUCT_ENTITY_GALLERY_STORE_ID` (`store_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Product Gallery Attribute Backend Table' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `catalog_product_entity_int`
--

CREATE TABLE IF NOT EXISTS `catalog_product_entity_int` (
  `value_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Value ID',
  `entity_type_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Entity Type ID',
  `attribute_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Attribute ID',
  `store_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Store ID',
  `entity_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Entity ID',
  `value` int(11) DEFAULT NULL COMMENT 'Value',
  PRIMARY KEY (`value_id`),
  UNIQUE KEY `UNQ_CATALOG_PRODUCT_ENTITY_INT_ENTITY_ID_ATTRIBUTE_ID_STORE_ID` (`entity_id`,`attribute_id`,`store_id`),
  KEY `IDX_CATALOG_PRODUCT_ENTITY_INT_ATTRIBUTE_ID` (`attribute_id`),
  KEY `IDX_CATALOG_PRODUCT_ENTITY_INT_STORE_ID` (`store_id`),
  KEY `IDX_CATALOG_PRODUCT_ENTITY_INT_ENTITY_ID` (`entity_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='Catalog Product Integer Attribute Backend Table' AUTO_INCREMENT=21 ;

--
-- Gegevens worden uitgevoerd voor tabel `catalog_product_entity_int`
--

INSERT INTO `catalog_product_entity_int` (`value_id`, `entity_type_id`, `attribute_id`, `store_id`, `entity_id`, `value`) VALUES
(1, 4, 89, 0, 1, 1),
(2, 4, 95, 0, 1, 4),
(3, 4, 114, 0, 1, 1),
(4, 4, 115, 0, 1, 0),
(5, 4, 93, 0, 1, 0),
(6, 4, 89, 0, 2, 1),
(7, 4, 95, 0, 2, 4),
(8, 4, 114, 0, 2, 1),
(9, 4, 115, 0, 2, 0),
(10, 4, 93, 0, 2, 0),
(11, 4, 89, 0, 3, 1),
(12, 4, 95, 0, 3, 4),
(13, 4, 114, 0, 3, 1),
(14, 4, 115, 0, 3, 0),
(15, 4, 93, 0, 3, 0),
(16, 4, 89, 0, 4, 1),
(17, 4, 95, 0, 4, 4),
(18, 4, 114, 0, 4, 1),
(19, 4, 115, 0, 4, 0),
(20, 4, 93, 0, 4, 0);

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `catalog_product_entity_media_gallery`
--

CREATE TABLE IF NOT EXISTS `catalog_product_entity_media_gallery` (
  `value_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Value ID',
  `attribute_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Attribute ID',
  `entity_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Entity ID',
  `value` varchar(255) DEFAULT NULL COMMENT 'Value',
  PRIMARY KEY (`value_id`),
  KEY `IDX_CATALOG_PRODUCT_ENTITY_MEDIA_GALLERY_ATTRIBUTE_ID` (`attribute_id`),
  KEY `IDX_CATALOG_PRODUCT_ENTITY_MEDIA_GALLERY_ENTITY_ID` (`entity_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='Catalog Product Media Gallery Attribute Backend Table' AUTO_INCREMENT=8 ;

--
-- Gegevens worden uitgevoerd voor tabel `catalog_product_entity_media_gallery`
--

INSERT INTO `catalog_product_entity_media_gallery` (`value_id`, `attribute_id`, `entity_id`, `value`) VALUES
(4, 82, 4, '/q/n/qnapts-119pii.png'),
(5, 82, 3, '/e/i/eizo-cg241w-bk_24inch.png'),
(6, 82, 2, '/c/o/coolermaster_silentpro.png'),
(7, 82, 1, '/a/s/asus_sabertooth_x79.png');

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `catalog_product_entity_media_gallery_value`
--

CREATE TABLE IF NOT EXISTS `catalog_product_entity_media_gallery_value` (
  `value_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Value ID',
  `store_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Store ID',
  `label` varchar(255) DEFAULT NULL COMMENT 'Label',
  `position` int(10) unsigned DEFAULT NULL COMMENT 'Position',
  `disabled` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Is Disabled',
  PRIMARY KEY (`value_id`,`store_id`),
  KEY `IDX_CATALOG_PRODUCT_ENTITY_MEDIA_GALLERY_VALUE_STORE_ID` (`store_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Product Media Gallery Attribute Value Table';

--
-- Gegevens worden uitgevoerd voor tabel `catalog_product_entity_media_gallery_value`
--

INSERT INTO `catalog_product_entity_media_gallery_value` (`value_id`, `store_id`, `label`, `position`, `disabled`) VALUES
(4, 0, NULL, 1, 0),
(5, 0, NULL, 1, 0),
(6, 0, NULL, 1, 0),
(7, 0, NULL, 1, 0);

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `catalog_product_entity_text`
--

CREATE TABLE IF NOT EXISTS `catalog_product_entity_text` (
  `value_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Value ID',
  `entity_type_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Entity Type ID',
  `attribute_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Attribute ID',
  `store_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Store ID',
  `entity_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Entity ID',
  `value` text COMMENT 'Value',
  PRIMARY KEY (`value_id`),
  UNIQUE KEY `UNQ_CATALOG_PRODUCT_ENTITY_TEXT_ENTITY_ID_ATTRIBUTE_ID_STORE_ID` (`entity_id`,`attribute_id`,`store_id`),
  KEY `IDX_CATALOG_PRODUCT_ENTITY_TEXT_ATTRIBUTE_ID` (`attribute_id`),
  KEY `IDX_CATALOG_PRODUCT_ENTITY_TEXT_STORE_ID` (`store_id`),
  KEY `IDX_CATALOG_PRODUCT_ENTITY_TEXT_ENTITY_ID` (`entity_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='Catalog Product Text Attribute Backend Table' AUTO_INCREMENT=83 ;

--
-- Gegevens worden uitgevoerd voor tabel `catalog_product_entity_text`
--

INSERT INTO `catalog_product_entity_text` (`value_id`, `entity_type_id`, `attribute_id`, `store_id`, `entity_id`, `value`) VALUES
(1, 4, 66, 0, 1, 'Een geweldig snel moederbord.'),
(2, 4, 67, 0, 1, 'Een geweldig snel moederbord.'),
(3, 4, 77, 0, 1, NULL),
(4, 4, 99, 0, 1, NULL),
(23, 4, 66, 0, 2, 'Informatie over de Cooler Master Silent Pro.'),
(24, 4, 67, 0, 2, 'Informatie over de Cooler Master Silent Pro.'),
(25, 4, 77, 0, 2, NULL),
(26, 4, 99, 0, 2, NULL),
(35, 4, 66, 0, 3, 'Informatie over de EIZO-CG241W-BK 24 Inch monitor.'),
(36, 4, 67, 0, 3, 'Informatie over de EIZO-CG241W-BK 24 Inch monitor.'),
(37, 4, 77, 0, 3, NULL),
(38, 4, 99, 0, 3, NULL),
(41, 4, 66, 0, 4, 'Informatie over de QNAP TS-119P II.'),
(42, 4, 67, 0, 4, 'Informatie over de QNAP TS-119P II.'),
(43, 4, 77, 0, 4, NULL),
(44, 4, 99, 0, 4, NULL);

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `catalog_product_entity_tier_price`
--

CREATE TABLE IF NOT EXISTS `catalog_product_entity_tier_price` (
  `value_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Value ID',
  `entity_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Entity ID',
  `all_groups` smallint(5) unsigned NOT NULL DEFAULT '1' COMMENT 'Is Applicable To All Customer Groups',
  `customer_group_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Customer Group ID',
  `qty` decimal(12,4) NOT NULL DEFAULT '1.0000' COMMENT 'QTY',
  `value` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Value',
  `website_id` smallint(5) unsigned NOT NULL COMMENT 'Website ID',
  PRIMARY KEY (`value_id`),
  UNIQUE KEY `E8AB433B9ACB00343ABB312AD2FAB087` (`entity_id`,`all_groups`,`customer_group_id`,`qty`,`website_id`),
  KEY `IDX_CATALOG_PRODUCT_ENTITY_TIER_PRICE_ENTITY_ID` (`entity_id`),
  KEY `IDX_CATALOG_PRODUCT_ENTITY_TIER_PRICE_CUSTOMER_GROUP_ID` (`customer_group_id`),
  KEY `IDX_CATALOG_PRODUCT_ENTITY_TIER_PRICE_WEBSITE_ID` (`website_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Product Tier Price Attribute Backend Table' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `catalog_product_entity_varchar`
--

CREATE TABLE IF NOT EXISTS `catalog_product_entity_varchar` (
  `value_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Value ID',
  `entity_type_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Entity Type ID',
  `attribute_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Attribute ID',
  `store_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Store ID',
  `entity_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Entity ID',
  `value` varchar(255) DEFAULT NULL COMMENT 'Value',
  PRIMARY KEY (`value_id`),
  UNIQUE KEY `UNQ_CAT_PRD_ENTT_VCHR_ENTT_ID_ATTR_ID_STORE_ID` (`entity_id`,`attribute_id`,`store_id`),
  KEY `IDX_CATALOG_PRODUCT_ENTITY_VARCHAR_ATTRIBUTE_ID` (`attribute_id`),
  KEY `IDX_CATALOG_PRODUCT_ENTITY_VARCHAR_STORE_ID` (`store_id`),
  KEY `IDX_CATALOG_PRODUCT_ENTITY_VARCHAR_ENTITY_ID` (`entity_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='Catalog Product Varchar Attribute Backend Table' AUTO_INCREMENT=301 ;

--
-- Gegevens worden uitgevoerd voor tabel `catalog_product_entity_varchar`
--

INSERT INTO `catalog_product_entity_varchar` (`value_id`, `entity_type_id`, `attribute_id`, `store_id`, `entity_id`, `value`) VALUES
(1, 4, 65, 0, 1, 'ASUS SABERTOOTH X79'),
(2, 4, 90, 0, 1, 'asussabertoothx79'),
(3, 4, 110, 0, 1, 'NL'),
(4, 4, 111, 0, 1, '2'),
(5, 4, 112, 0, 1, '4'),
(6, 4, 76, 0, 1, NULL),
(7, 4, 78, 0, 1, NULL),
(8, 4, 79, 0, 1, '/a/s/asus_sabertooth_x79.png'),
(9, 4, 80, 0, 1, '/a/s/asus_sabertooth_x79.png'),
(10, 4, 81, 0, 1, '/a/s/asus_sabertooth_x79.png'),
(11, 4, 96, 0, 1, 'default/thebis'),
(12, 4, 100, 0, 1, 'two_columns_right'),
(13, 4, 102, 0, 1, 'container2'),
(14, 4, 116, 0, 1, NULL),
(15, 4, 91, 1, 1, 'asussabertoothx79.html'),
(16, 4, 91, 0, 1, 'asussabertoothx79.html'),
(27, 4, 105, 0, 1, NULL),
(28, 4, 106, 0, 1, NULL),
(29, 4, 107, 0, 1, NULL),
(78, 4, 65, 0, 2, 'Cooler Master Silent Pro'),
(79, 4, 90, 0, 2, 'coolermastersilentpro'),
(80, 4, 110, 0, 2, 'NL'),
(81, 4, 111, 0, 2, '2'),
(82, 4, 112, 0, 2, '4'),
(83, 4, 76, 0, 2, NULL),
(84, 4, 78, 0, 2, NULL),
(85, 4, 79, 0, 2, '/c/o/coolermaster_silentpro.png'),
(86, 4, 80, 0, 2, '/c/o/coolermaster_silentpro.png'),
(87, 4, 81, 0, 2, '/c/o/coolermaster_silentpro.png'),
(88, 4, 96, 0, 2, 'default/thebis'),
(89, 4, 100, 0, 2, 'two_columns_right'),
(90, 4, 102, 0, 2, 'container2'),
(91, 4, 116, 0, 2, NULL),
(92, 4, 91, 1, 2, 'coolermastersilentpro.html'),
(93, 4, 91, 0, 2, 'coolermastersilentpro.html'),
(94, 4, 105, 0, 2, NULL),
(95, 4, 106, 0, 2, NULL),
(96, 4, 107, 0, 2, NULL),
(125, 4, 65, 0, 3, 'EIZO-CG241W-BK 24 Inch'),
(126, 4, 90, 0, 3, 'eizo-cg241w-bk24'),
(127, 4, 110, 0, 3, 'NL'),
(128, 4, 111, 0, 3, '2'),
(129, 4, 112, 0, 3, '4'),
(130, 4, 76, 0, 3, NULL),
(131, 4, 78, 0, 3, NULL),
(132, 4, 79, 0, 3, '/e/i/eizo-cg241w-bk_24inch.png'),
(133, 4, 80, 0, 3, '/e/i/eizo-cg241w-bk_24inch.png'),
(134, 4, 81, 0, 3, '/e/i/eizo-cg241w-bk_24inch.png'),
(135, 4, 96, 0, 3, NULL),
(136, 4, 100, 0, 3, NULL),
(137, 4, 102, 0, 3, 'container2'),
(138, 4, 116, 0, 3, NULL),
(139, 4, 91, 1, 3, 'eizo-cg241w-bk24.html'),
(140, 4, 91, 0, 3, 'eizo-cg241w-bk24.html'),
(146, 4, 65, 0, 4, 'QNAP TS-119P II'),
(147, 4, 90, 0, 4, 'qnapts119pii'),
(148, 4, 110, 0, 4, 'NL'),
(149, 4, 111, 0, 4, '2'),
(150, 4, 112, 0, 4, '4'),
(151, 4, 76, 0, 4, NULL),
(152, 4, 78, 0, 4, NULL),
(153, 4, 79, 0, 4, '/q/n/qnapts-119pii.png'),
(154, 4, 80, 0, 4, '/q/n/qnapts-119pii.png'),
(155, 4, 81, 0, 4, '/q/n/qnapts-119pii.png'),
(156, 4, 96, 0, 4, NULL),
(157, 4, 100, 0, 4, NULL),
(158, 4, 102, 0, 4, 'container2'),
(159, 4, 116, 0, 4, NULL),
(160, 4, 91, 1, 4, 'qnapts119pii.html'),
(161, 4, 91, 0, 4, 'qnapts119pii.html'),
(194, 4, 105, 0, 4, NULL),
(195, 4, 106, 0, 4, NULL),
(196, 4, 107, 0, 4, NULL),
(240, 4, 105, 0, 3, NULL),
(241, 4, 106, 0, 3, NULL),
(242, 4, 107, 0, 3, NULL);

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `catalog_product_flat_1`
--

CREATE TABLE IF NOT EXISTS `catalog_product_flat_1` (
  `entity_id` int(10) unsigned NOT NULL COMMENT 'entity_id',
  `attribute_set_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'attribute_set_id',
  `type_id` varchar(32) NOT NULL DEFAULT 'simple' COMMENT 'type_id',
  `cost` decimal(12,4) DEFAULT NULL COMMENT 'cost',
  `created_at` timestamp NULL DEFAULT NULL COMMENT 'created_at',
  `enable_googlecheckout` smallint(6) DEFAULT NULL COMMENT 'enable_googlecheckout',
  `gift_message_available` smallint(6) DEFAULT NULL COMMENT 'gift_message_available',
  `has_options` smallint(6) NOT NULL DEFAULT '0' COMMENT 'has_options',
  `image_label` varchar(255) DEFAULT NULL COMMENT 'image_label',
  `is_recurring` smallint(6) DEFAULT NULL COMMENT 'is_recurring',
  `links_exist` int(11) DEFAULT NULL COMMENT 'links_exist',
  `links_purchased_separately` int(11) DEFAULT NULL COMMENT 'links_purchased_separately',
  `links_title` varchar(255) DEFAULT NULL COMMENT 'links_title',
  `msrp` decimal(12,4) DEFAULT NULL COMMENT 'msrp',
  `msrp_display_actual_price_type` varchar(255) DEFAULT NULL COMMENT 'msrp_display_actual_price_type',
  `msrp_enabled` smallint(6) DEFAULT NULL COMMENT 'msrp_enabled',
  `name` varchar(255) DEFAULT NULL COMMENT 'name',
  `news_from_date` datetime DEFAULT NULL COMMENT 'news_from_date',
  `news_to_date` datetime DEFAULT NULL COMMENT 'news_to_date',
  `price` decimal(12,4) DEFAULT NULL COMMENT 'price',
  `price_type` int(11) DEFAULT NULL COMMENT 'price_type',
  `price_view` int(11) DEFAULT NULL COMMENT 'price_view',
  `recurring_profile` text COMMENT 'recurring_profile',
  `required_options` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'required_options',
  `shipment_type` int(11) DEFAULT NULL COMMENT 'shipment_type',
  `short_description` text COMMENT 'short_description',
  `sku` varchar(64) DEFAULT NULL COMMENT 'sku',
  `sku_type` int(11) DEFAULT NULL COMMENT 'sku_type',
  `small_image` varchar(255) DEFAULT NULL COMMENT 'small_image',
  `small_image_label` varchar(255) DEFAULT NULL COMMENT 'small_image_label',
  `special_from_date` datetime DEFAULT NULL COMMENT 'special_from_date',
  `special_price` decimal(12,4) DEFAULT NULL COMMENT 'special_price',
  `special_to_date` datetime DEFAULT NULL COMMENT 'special_to_date',
  `tax_class_id` int(10) unsigned DEFAULT NULL COMMENT 'tax_class_id',
  `thumbnail` varchar(255) DEFAULT NULL COMMENT 'thumbnail',
  `thumbnail_label` varchar(255) DEFAULT NULL COMMENT 'thumbnail_label',
  `updated_at` timestamp NULL DEFAULT NULL COMMENT 'updated_at',
  `url_key` varchar(255) DEFAULT NULL COMMENT 'url_key',
  `url_path` varchar(255) DEFAULT NULL COMMENT 'url_path',
  `visibility` smallint(5) unsigned DEFAULT NULL COMMENT 'visibility',
  `weight` decimal(12,4) DEFAULT NULL COMMENT 'weight',
  `weight_type` int(11) DEFAULT NULL COMMENT 'weight_type',
  PRIMARY KEY (`entity_id`),
  KEY `IDX_CATALOG_PRODUCT_FLAT_1_TYPE_ID` (`type_id`),
  KEY `IDX_CATALOG_PRODUCT_FLAT_1_ATTRIBUTE_SET_ID` (`attribute_set_id`),
  KEY `IDX_CATALOG_PRODUCT_FLAT_1_NAME` (`name`),
  KEY `IDX_CATALOG_PRODUCT_FLAT_1_PRICE` (`price`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Product Flat (Store 1)';

--
-- Gegevens worden uitgevoerd voor tabel `catalog_product_flat_1`
--

INSERT INTO `catalog_product_flat_1` (`entity_id`, `attribute_set_id`, `type_id`, `cost`, `created_at`, `enable_googlecheckout`, `gift_message_available`, `has_options`, `image_label`, `is_recurring`, `links_exist`, `links_purchased_separately`, `links_title`, `msrp`, `msrp_display_actual_price_type`, `msrp_enabled`, `name`, `news_from_date`, `news_to_date`, `price`, `price_type`, `price_view`, `recurring_profile`, `required_options`, `shipment_type`, `short_description`, `sku`, `sku_type`, `small_image`, `small_image_label`, `special_from_date`, `special_price`, `special_to_date`, `tax_class_id`, `thumbnail`, `thumbnail_label`, `updated_at`, `url_key`, `url_path`, `visibility`, `weight`, `weight_type`) VALUES
(1, 4, 'simple', NULL, '2012-02-28 11:07:46', 1, NULL, 0, NULL, 0, NULL, NULL, NULL, NULL, '4', 2, 'ASUS SABERTOOTH X79', '2012-03-01 00:00:00', '2012-03-01 00:00:00', '273.9500', NULL, NULL, NULL, 0, NULL, 'Een geweldig snel moederbord.', 'MBS', NULL, '/a/s/asus_sabertooth_x79.png', NULL, NULL, NULL, NULL, 0, '/a/s/asus_sabertooth_x79.png', NULL, '2012-03-03 14:15:08', 'asussabertoothx79', 'asussabertoothx79.html', 4, '600.0000', NULL),
(2, 4, 'simple', NULL, '2012-03-01 18:31:47', 1, NULL, 0, NULL, 0, NULL, NULL, NULL, NULL, '4', 2, 'Cooler Master Silent Pro', NULL, NULL, '147.9000', NULL, NULL, NULL, 0, NULL, 'Informatie over de Cooler Master Silent Pro.', 'CLRS', NULL, '/c/o/coolermaster_silentpro.png', NULL, NULL, NULL, NULL, 0, '/c/o/coolermaster_silentpro.png', NULL, '2012-03-03 14:13:33', 'coolermastersilentpro', 'coolermastersilentpro.html', 4, '2.0000', NULL),
(3, 4, 'simple', NULL, '2012-03-01 18:35:03', 1, NULL, 0, NULL, 0, NULL, NULL, NULL, NULL, '4', 2, 'EIZO-CG241W-BK 24 Inch', NULL, NULL, '1380.0000', NULL, NULL, NULL, 0, NULL, 'Informatie over de EIZO-CG241W-BK 24 Inch monitor.', 'MNTRS', NULL, '/e/i/eizo-cg241w-bk_24inch.png', NULL, NULL, NULL, NULL, 0, '/e/i/eizo-cg241w-bk_24inch.png', NULL, '2012-03-03 14:11:32', 'eizo-cg241w-bk24', 'eizo-cg241w-bk24.html', 4, '4.0000', NULL),
(4, 4, 'simple', NULL, '2012-03-01 18:37:15', 1, NULL, 0, NULL, 0, NULL, NULL, NULL, NULL, '4', 2, 'QNAP TS-119P II', NULL, NULL, '147.9000', NULL, NULL, NULL, 0, NULL, 'Informatie over de QNAP TS-119P II.', 'MDPLYR', NULL, '/q/n/qnapts-119pii.png', NULL, NULL, NULL, NULL, 0, '/q/n/qnapts-119pii.png', NULL, '2012-03-03 14:08:41', 'qnapts119pii', 'qnapts119pii.html', 4, '2.0000', NULL);

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `catalog_product_index_eav`
--

CREATE TABLE IF NOT EXISTS `catalog_product_index_eav` (
  `entity_id` int(10) unsigned NOT NULL COMMENT 'Entity ID',
  `attribute_id` smallint(5) unsigned NOT NULL COMMENT 'Attribute ID',
  `store_id` smallint(5) unsigned NOT NULL COMMENT 'Store ID',
  `value` int(10) unsigned NOT NULL COMMENT 'Value',
  PRIMARY KEY (`entity_id`,`attribute_id`,`store_id`,`value`),
  KEY `IDX_CATALOG_PRODUCT_INDEX_EAV_ENTITY_ID` (`entity_id`),
  KEY `IDX_CATALOG_PRODUCT_INDEX_EAV_ATTRIBUTE_ID` (`attribute_id`),
  KEY `IDX_CATALOG_PRODUCT_INDEX_EAV_STORE_ID` (`store_id`),
  KEY `IDX_CATALOG_PRODUCT_INDEX_EAV_VALUE` (`value`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Product EAV Index Table';

--
-- Gegevens worden uitgevoerd voor tabel `catalog_product_index_eav`
--

INSERT INTO `catalog_product_index_eav` (`entity_id`, `attribute_id`, `store_id`, `value`) VALUES
(1, 115, 1, 0),
(2, 115, 1, 0),
(3, 115, 1, 0),
(4, 115, 1, 0);

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `catalog_product_index_eav_decimal`
--

CREATE TABLE IF NOT EXISTS `catalog_product_index_eav_decimal` (
  `entity_id` int(10) unsigned NOT NULL COMMENT 'Entity ID',
  `attribute_id` smallint(5) unsigned NOT NULL COMMENT 'Attribute ID',
  `store_id` smallint(5) unsigned NOT NULL COMMENT 'Store ID',
  `value` decimal(12,4) NOT NULL COMMENT 'Value',
  PRIMARY KEY (`entity_id`,`attribute_id`,`store_id`),
  KEY `IDX_CATALOG_PRODUCT_INDEX_EAV_DECIMAL_ENTITY_ID` (`entity_id`),
  KEY `IDX_CATALOG_PRODUCT_INDEX_EAV_DECIMAL_ATTRIBUTE_ID` (`attribute_id`),
  KEY `IDX_CATALOG_PRODUCT_INDEX_EAV_DECIMAL_STORE_ID` (`store_id`),
  KEY `IDX_CATALOG_PRODUCT_INDEX_EAV_DECIMAL_VALUE` (`value`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Product EAV Decimal Index Table';

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `catalog_product_index_eav_decimal_idx`
--

CREATE TABLE IF NOT EXISTS `catalog_product_index_eav_decimal_idx` (
  `entity_id` int(10) unsigned NOT NULL COMMENT 'Entity ID',
  `attribute_id` smallint(5) unsigned NOT NULL COMMENT 'Attribute ID',
  `store_id` smallint(5) unsigned NOT NULL COMMENT 'Store ID',
  `value` decimal(12,4) NOT NULL COMMENT 'Value',
  PRIMARY KEY (`entity_id`,`attribute_id`,`store_id`,`value`),
  KEY `IDX_CATALOG_PRODUCT_INDEX_EAV_DECIMAL_IDX_ENTITY_ID` (`entity_id`),
  KEY `IDX_CATALOG_PRODUCT_INDEX_EAV_DECIMAL_IDX_ATTRIBUTE_ID` (`attribute_id`),
  KEY `IDX_CATALOG_PRODUCT_INDEX_EAV_DECIMAL_IDX_STORE_ID` (`store_id`),
  KEY `IDX_CATALOG_PRODUCT_INDEX_EAV_DECIMAL_IDX_VALUE` (`value`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Product EAV Decimal Indexer Index Table';

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `catalog_product_index_eav_decimal_tmp`
--

CREATE TABLE IF NOT EXISTS `catalog_product_index_eav_decimal_tmp` (
  `entity_id` int(10) unsigned NOT NULL COMMENT 'Entity ID',
  `attribute_id` smallint(5) unsigned NOT NULL COMMENT 'Attribute ID',
  `store_id` smallint(5) unsigned NOT NULL COMMENT 'Store ID',
  `value` decimal(12,4) NOT NULL COMMENT 'Value',
  PRIMARY KEY (`entity_id`,`attribute_id`,`store_id`),
  KEY `IDX_CATALOG_PRODUCT_INDEX_EAV_DECIMAL_TMP_ENTITY_ID` (`entity_id`),
  KEY `IDX_CATALOG_PRODUCT_INDEX_EAV_DECIMAL_TMP_ATTRIBUTE_ID` (`attribute_id`),
  KEY `IDX_CATALOG_PRODUCT_INDEX_EAV_DECIMAL_TMP_STORE_ID` (`store_id`),
  KEY `IDX_CATALOG_PRODUCT_INDEX_EAV_DECIMAL_TMP_VALUE` (`value`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Product EAV Decimal Indexer Temp Table';

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `catalog_product_index_eav_idx`
--

CREATE TABLE IF NOT EXISTS `catalog_product_index_eav_idx` (
  `entity_id` int(10) unsigned NOT NULL COMMENT 'Entity ID',
  `attribute_id` smallint(5) unsigned NOT NULL COMMENT 'Attribute ID',
  `store_id` smallint(5) unsigned NOT NULL COMMENT 'Store ID',
  `value` int(10) unsigned NOT NULL COMMENT 'Value',
  PRIMARY KEY (`entity_id`,`attribute_id`,`store_id`,`value`),
  KEY `IDX_CATALOG_PRODUCT_INDEX_EAV_IDX_ENTITY_ID` (`entity_id`),
  KEY `IDX_CATALOG_PRODUCT_INDEX_EAV_IDX_ATTRIBUTE_ID` (`attribute_id`),
  KEY `IDX_CATALOG_PRODUCT_INDEX_EAV_IDX_STORE_ID` (`store_id`),
  KEY `IDX_CATALOG_PRODUCT_INDEX_EAV_IDX_VALUE` (`value`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Product EAV Indexer Index Table';

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `catalog_product_index_eav_tmp`
--

CREATE TABLE IF NOT EXISTS `catalog_product_index_eav_tmp` (
  `entity_id` int(10) unsigned NOT NULL COMMENT 'Entity ID',
  `attribute_id` smallint(5) unsigned NOT NULL COMMENT 'Attribute ID',
  `store_id` smallint(5) unsigned NOT NULL COMMENT 'Store ID',
  `value` int(10) unsigned NOT NULL COMMENT 'Value',
  PRIMARY KEY (`entity_id`,`attribute_id`,`store_id`,`value`),
  KEY `IDX_CATALOG_PRODUCT_INDEX_EAV_TMP_ENTITY_ID` (`entity_id`),
  KEY `IDX_CATALOG_PRODUCT_INDEX_EAV_TMP_ATTRIBUTE_ID` (`attribute_id`),
  KEY `IDX_CATALOG_PRODUCT_INDEX_EAV_TMP_STORE_ID` (`store_id`),
  KEY `IDX_CATALOG_PRODUCT_INDEX_EAV_TMP_VALUE` (`value`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Product EAV Indexer Temp Table';

--
-- Gegevens worden uitgevoerd voor tabel `catalog_product_index_eav_tmp`
--

INSERT INTO `catalog_product_index_eav_tmp` (`entity_id`, `attribute_id`, `store_id`, `value`) VALUES
(1, 115, 1, 0);

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `catalog_product_index_price`
--

CREATE TABLE IF NOT EXISTS `catalog_product_index_price` (
  `entity_id` int(10) unsigned NOT NULL COMMENT 'Entity ID',
  `customer_group_id` smallint(5) unsigned NOT NULL COMMENT 'Customer Group ID',
  `website_id` smallint(5) unsigned NOT NULL COMMENT 'Website ID',
  `tax_class_id` smallint(5) unsigned DEFAULT '0' COMMENT 'Tax Class ID',
  `price` decimal(12,4) DEFAULT NULL COMMENT 'Price',
  `final_price` decimal(12,4) DEFAULT NULL COMMENT 'Final Price',
  `min_price` decimal(12,4) DEFAULT NULL COMMENT 'Min Price',
  `max_price` decimal(12,4) DEFAULT NULL COMMENT 'Max Price',
  `tier_price` decimal(12,4) DEFAULT NULL COMMENT 'Tier Price',
  PRIMARY KEY (`entity_id`,`customer_group_id`,`website_id`),
  KEY `IDX_CATALOG_PRODUCT_INDEX_PRICE_CUSTOMER_GROUP_ID` (`customer_group_id`),
  KEY `IDX_CATALOG_PRODUCT_INDEX_PRICE_WEBSITE_ID` (`website_id`),
  KEY `IDX_CATALOG_PRODUCT_INDEX_PRICE_MIN_PRICE` (`min_price`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Product Price Index Table';

--
-- Gegevens worden uitgevoerd voor tabel `catalog_product_index_price`
--

INSERT INTO `catalog_product_index_price` (`entity_id`, `customer_group_id`, `website_id`, `tax_class_id`, `price`, `final_price`, `min_price`, `max_price`, `tier_price`) VALUES
(1, 0, 1, 0, '273.9500', '273.9500', '273.9500', '273.9500', NULL),
(1, 1, 1, 0, '273.9500', '273.9500', '273.9500', '273.9500', NULL),
(1, 2, 1, 0, '273.9500', '273.9500', '273.9500', '273.9500', NULL),
(1, 3, 1, 0, '273.9500', '273.9500', '273.9500', '273.9500', NULL),
(2, 0, 1, 0, '147.9000', '147.9000', '147.9000', '147.9000', NULL),
(2, 1, 1, 0, '147.9000', '147.9000', '147.9000', '147.9000', NULL),
(2, 2, 1, 0, '147.9000', '147.9000', '147.9000', '147.9000', NULL),
(2, 3, 1, 0, '147.9000', '147.9000', '147.9000', '147.9000', NULL),
(3, 0, 1, 0, '1380.0000', '1380.0000', '1380.0000', '1380.0000', NULL),
(3, 1, 1, 0, '1380.0000', '1380.0000', '1380.0000', '1380.0000', NULL),
(3, 2, 1, 0, '1380.0000', '1380.0000', '1380.0000', '1380.0000', NULL),
(3, 3, 1, 0, '1380.0000', '1380.0000', '1380.0000', '1380.0000', NULL),
(4, 0, 1, 0, '147.9000', '147.9000', '147.9000', '147.9000', NULL),
(4, 1, 1, 0, '147.9000', '147.9000', '147.9000', '147.9000', NULL),
(4, 2, 1, 0, '147.9000', '147.9000', '147.9000', '147.9000', NULL),
(4, 3, 1, 0, '147.9000', '147.9000', '147.9000', '147.9000', NULL);

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `catalog_product_index_price_bundle_idx`
--

CREATE TABLE IF NOT EXISTS `catalog_product_index_price_bundle_idx` (
  `entity_id` int(10) unsigned NOT NULL COMMENT 'Entity Id',
  `customer_group_id` smallint(5) unsigned NOT NULL COMMENT 'Customer Group Id',
  `website_id` smallint(5) unsigned NOT NULL COMMENT 'Website Id',
  `tax_class_id` smallint(5) unsigned DEFAULT '0' COMMENT 'Tax Class Id',
  `price_type` smallint(5) unsigned NOT NULL COMMENT 'Price Type',
  `special_price` decimal(12,4) DEFAULT NULL COMMENT 'Special Price',
  `tier_percent` decimal(12,4) DEFAULT NULL COMMENT 'Tier Percent',
  `orig_price` decimal(12,4) DEFAULT NULL COMMENT 'Orig Price',
  `price` decimal(12,4) DEFAULT NULL COMMENT 'Price',
  `min_price` decimal(12,4) DEFAULT NULL COMMENT 'Min Price',
  `max_price` decimal(12,4) DEFAULT NULL COMMENT 'Max Price',
  `tier_price` decimal(12,4) DEFAULT NULL COMMENT 'Tier Price',
  `base_tier` decimal(12,4) DEFAULT NULL COMMENT 'Base Tier',
  PRIMARY KEY (`entity_id`,`customer_group_id`,`website_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Product Index Price Bundle Idx';

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `catalog_product_index_price_bundle_opt_idx`
--

CREATE TABLE IF NOT EXISTS `catalog_product_index_price_bundle_opt_idx` (
  `entity_id` int(10) unsigned NOT NULL COMMENT 'Entity Id',
  `customer_group_id` smallint(5) unsigned NOT NULL COMMENT 'Customer Group Id',
  `website_id` smallint(5) unsigned NOT NULL COMMENT 'Website Id',
  `option_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Option Id',
  `min_price` decimal(12,4) DEFAULT NULL COMMENT 'Min Price',
  `alt_price` decimal(12,4) DEFAULT NULL COMMENT 'Alt Price',
  `max_price` decimal(12,4) DEFAULT NULL COMMENT 'Max Price',
  `tier_price` decimal(12,4) DEFAULT NULL COMMENT 'Tier Price',
  `alt_tier_price` decimal(12,4) DEFAULT NULL COMMENT 'Alt Tier Price',
  PRIMARY KEY (`entity_id`,`customer_group_id`,`website_id`,`option_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Product Index Price Bundle Opt Idx';

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `catalog_product_index_price_bundle_opt_tmp`
--

CREATE TABLE IF NOT EXISTS `catalog_product_index_price_bundle_opt_tmp` (
  `entity_id` int(10) unsigned NOT NULL COMMENT 'Entity Id',
  `customer_group_id` smallint(5) unsigned NOT NULL COMMENT 'Customer Group Id',
  `website_id` smallint(5) unsigned NOT NULL COMMENT 'Website Id',
  `option_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Option Id',
  `min_price` decimal(12,4) DEFAULT NULL COMMENT 'Min Price',
  `alt_price` decimal(12,4) DEFAULT NULL COMMENT 'Alt Price',
  `max_price` decimal(12,4) DEFAULT NULL COMMENT 'Max Price',
  `tier_price` decimal(12,4) DEFAULT NULL COMMENT 'Tier Price',
  `alt_tier_price` decimal(12,4) DEFAULT NULL COMMENT 'Alt Tier Price',
  PRIMARY KEY (`entity_id`,`customer_group_id`,`website_id`,`option_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Product Index Price Bundle Opt Tmp';

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `catalog_product_index_price_bundle_sel_idx`
--

CREATE TABLE IF NOT EXISTS `catalog_product_index_price_bundle_sel_idx` (
  `entity_id` int(10) unsigned NOT NULL COMMENT 'Entity Id',
  `customer_group_id` smallint(5) unsigned NOT NULL COMMENT 'Customer Group Id',
  `website_id` smallint(5) unsigned NOT NULL COMMENT 'Website Id',
  `option_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Option Id',
  `selection_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Selection Id',
  `group_type` smallint(5) unsigned DEFAULT '0' COMMENT 'Group Type',
  `is_required` smallint(5) unsigned DEFAULT '0' COMMENT 'Is Required',
  `price` decimal(12,4) DEFAULT NULL COMMENT 'Price',
  `tier_price` decimal(12,4) DEFAULT NULL COMMENT 'Tier Price',
  PRIMARY KEY (`entity_id`,`customer_group_id`,`website_id`,`option_id`,`selection_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Product Index Price Bundle Sel Idx';

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `catalog_product_index_price_bundle_sel_tmp`
--

CREATE TABLE IF NOT EXISTS `catalog_product_index_price_bundle_sel_tmp` (
  `entity_id` int(10) unsigned NOT NULL COMMENT 'Entity Id',
  `customer_group_id` smallint(5) unsigned NOT NULL COMMENT 'Customer Group Id',
  `website_id` smallint(5) unsigned NOT NULL COMMENT 'Website Id',
  `option_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Option Id',
  `selection_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Selection Id',
  `group_type` smallint(5) unsigned DEFAULT '0' COMMENT 'Group Type',
  `is_required` smallint(5) unsigned DEFAULT '0' COMMENT 'Is Required',
  `price` decimal(12,4) DEFAULT NULL COMMENT 'Price',
  `tier_price` decimal(12,4) DEFAULT NULL COMMENT 'Tier Price',
  PRIMARY KEY (`entity_id`,`customer_group_id`,`website_id`,`option_id`,`selection_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Product Index Price Bundle Sel Tmp';

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `catalog_product_index_price_bundle_tmp`
--

CREATE TABLE IF NOT EXISTS `catalog_product_index_price_bundle_tmp` (
  `entity_id` int(10) unsigned NOT NULL COMMENT 'Entity Id',
  `customer_group_id` smallint(5) unsigned NOT NULL COMMENT 'Customer Group Id',
  `website_id` smallint(5) unsigned NOT NULL COMMENT 'Website Id',
  `tax_class_id` smallint(5) unsigned DEFAULT '0' COMMENT 'Tax Class Id',
  `price_type` smallint(5) unsigned NOT NULL COMMENT 'Price Type',
  `special_price` decimal(12,4) DEFAULT NULL COMMENT 'Special Price',
  `tier_percent` decimal(12,4) DEFAULT NULL COMMENT 'Tier Percent',
  `orig_price` decimal(12,4) DEFAULT NULL COMMENT 'Orig Price',
  `price` decimal(12,4) DEFAULT NULL COMMENT 'Price',
  `min_price` decimal(12,4) DEFAULT NULL COMMENT 'Min Price',
  `max_price` decimal(12,4) DEFAULT NULL COMMENT 'Max Price',
  `tier_price` decimal(12,4) DEFAULT NULL COMMENT 'Tier Price',
  `base_tier` decimal(12,4) DEFAULT NULL COMMENT 'Base Tier',
  PRIMARY KEY (`entity_id`,`customer_group_id`,`website_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Product Index Price Bundle Tmp';

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `catalog_product_index_price_cfg_opt_agr_idx`
--

CREATE TABLE IF NOT EXISTS `catalog_product_index_price_cfg_opt_agr_idx` (
  `parent_id` int(10) unsigned NOT NULL COMMENT 'Parent ID',
  `child_id` int(10) unsigned NOT NULL COMMENT 'Child ID',
  `customer_group_id` smallint(5) unsigned NOT NULL COMMENT 'Customer Group ID',
  `website_id` smallint(5) unsigned NOT NULL COMMENT 'Website ID',
  `price` decimal(12,4) DEFAULT NULL COMMENT 'Price',
  `tier_price` decimal(12,4) DEFAULT NULL COMMENT 'Tier Price',
  PRIMARY KEY (`parent_id`,`child_id`,`customer_group_id`,`website_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Product Price Indexer Config Option Aggregate Index Table';

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `catalog_product_index_price_cfg_opt_agr_tmp`
--

CREATE TABLE IF NOT EXISTS `catalog_product_index_price_cfg_opt_agr_tmp` (
  `parent_id` int(10) unsigned NOT NULL COMMENT 'Parent ID',
  `child_id` int(10) unsigned NOT NULL COMMENT 'Child ID',
  `customer_group_id` smallint(5) unsigned NOT NULL COMMENT 'Customer Group ID',
  `website_id` smallint(5) unsigned NOT NULL COMMENT 'Website ID',
  `price` decimal(12,4) DEFAULT NULL COMMENT 'Price',
  `tier_price` decimal(12,4) DEFAULT NULL COMMENT 'Tier Price',
  PRIMARY KEY (`parent_id`,`child_id`,`customer_group_id`,`website_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Product Price Indexer Config Option Aggregate Temp Table';

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `catalog_product_index_price_cfg_opt_idx`
--

CREATE TABLE IF NOT EXISTS `catalog_product_index_price_cfg_opt_idx` (
  `entity_id` int(10) unsigned NOT NULL COMMENT 'Entity ID',
  `customer_group_id` smallint(5) unsigned NOT NULL COMMENT 'Customer Group ID',
  `website_id` smallint(5) unsigned NOT NULL COMMENT 'Website ID',
  `min_price` decimal(12,4) DEFAULT NULL COMMENT 'Min Price',
  `max_price` decimal(12,4) DEFAULT NULL COMMENT 'Max Price',
  `tier_price` decimal(12,4) DEFAULT NULL COMMENT 'Tier Price',
  PRIMARY KEY (`entity_id`,`customer_group_id`,`website_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Product Price Indexer Config Option Index Table';

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `catalog_product_index_price_cfg_opt_tmp`
--

CREATE TABLE IF NOT EXISTS `catalog_product_index_price_cfg_opt_tmp` (
  `entity_id` int(10) unsigned NOT NULL COMMENT 'Entity ID',
  `customer_group_id` smallint(5) unsigned NOT NULL COMMENT 'Customer Group ID',
  `website_id` smallint(5) unsigned NOT NULL COMMENT 'Website ID',
  `min_price` decimal(12,4) DEFAULT NULL COMMENT 'Min Price',
  `max_price` decimal(12,4) DEFAULT NULL COMMENT 'Max Price',
  `tier_price` decimal(12,4) DEFAULT NULL COMMENT 'Tier Price',
  PRIMARY KEY (`entity_id`,`customer_group_id`,`website_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Product Price Indexer Config Option Temp Table';

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `catalog_product_index_price_downlod_idx`
--

CREATE TABLE IF NOT EXISTS `catalog_product_index_price_downlod_idx` (
  `entity_id` int(10) unsigned NOT NULL COMMENT 'Entity ID',
  `customer_group_id` smallint(5) unsigned NOT NULL COMMENT 'Customer Group ID',
  `website_id` smallint(5) unsigned NOT NULL COMMENT 'Website ID',
  `min_price` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Minimum price',
  `max_price` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Maximum price',
  PRIMARY KEY (`entity_id`,`customer_group_id`,`website_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Indexer Table for price of downloadable products';

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `catalog_product_index_price_downlod_tmp`
--

CREATE TABLE IF NOT EXISTS `catalog_product_index_price_downlod_tmp` (
  `entity_id` int(10) unsigned NOT NULL COMMENT 'Entity ID',
  `customer_group_id` smallint(5) unsigned NOT NULL COMMENT 'Customer Group ID',
  `website_id` smallint(5) unsigned NOT NULL COMMENT 'Website ID',
  `min_price` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Minimum price',
  `max_price` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Maximum price',
  PRIMARY KEY (`entity_id`,`customer_group_id`,`website_id`)
) ENGINE=MEMORY DEFAULT CHARSET=utf8 COMMENT='Temporary Indexer Table for price of downloadable products';

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `catalog_product_index_price_final_idx`
--

CREATE TABLE IF NOT EXISTS `catalog_product_index_price_final_idx` (
  `entity_id` int(10) unsigned NOT NULL COMMENT 'Entity ID',
  `customer_group_id` smallint(5) unsigned NOT NULL COMMENT 'Customer Group ID',
  `website_id` smallint(5) unsigned NOT NULL COMMENT 'Website ID',
  `tax_class_id` smallint(5) unsigned DEFAULT '0' COMMENT 'Tax Class ID',
  `orig_price` decimal(12,4) DEFAULT NULL COMMENT 'Original Price',
  `price` decimal(12,4) DEFAULT NULL COMMENT 'Price',
  `min_price` decimal(12,4) DEFAULT NULL COMMENT 'Min Price',
  `max_price` decimal(12,4) DEFAULT NULL COMMENT 'Max Price',
  `tier_price` decimal(12,4) DEFAULT NULL COMMENT 'Tier Price',
  `base_tier` decimal(12,4) DEFAULT NULL COMMENT 'Base Tier',
  PRIMARY KEY (`entity_id`,`customer_group_id`,`website_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Product Price Indexer Final Index Table';

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `catalog_product_index_price_final_tmp`
--

CREATE TABLE IF NOT EXISTS `catalog_product_index_price_final_tmp` (
  `entity_id` int(10) unsigned NOT NULL COMMENT 'Entity ID',
  `customer_group_id` smallint(5) unsigned NOT NULL COMMENT 'Customer Group ID',
  `website_id` smallint(5) unsigned NOT NULL COMMENT 'Website ID',
  `tax_class_id` smallint(5) unsigned DEFAULT '0' COMMENT 'Tax Class ID',
  `orig_price` decimal(12,4) DEFAULT NULL COMMENT 'Original Price',
  `price` decimal(12,4) DEFAULT NULL COMMENT 'Price',
  `min_price` decimal(12,4) DEFAULT NULL COMMENT 'Min Price',
  `max_price` decimal(12,4) DEFAULT NULL COMMENT 'Max Price',
  `tier_price` decimal(12,4) DEFAULT NULL COMMENT 'Tier Price',
  `base_tier` decimal(12,4) DEFAULT NULL COMMENT 'Base Tier',
  PRIMARY KEY (`entity_id`,`customer_group_id`,`website_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Product Price Indexer Final Temp Table';

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `catalog_product_index_price_idx`
--

CREATE TABLE IF NOT EXISTS `catalog_product_index_price_idx` (
  `entity_id` int(10) unsigned NOT NULL COMMENT 'Entity ID',
  `customer_group_id` smallint(5) unsigned NOT NULL COMMENT 'Customer Group ID',
  `website_id` smallint(5) unsigned NOT NULL COMMENT 'Website ID',
  `tax_class_id` smallint(5) unsigned DEFAULT '0' COMMENT 'Tax Class ID',
  `price` decimal(12,4) DEFAULT NULL COMMENT 'Price',
  `final_price` decimal(12,4) DEFAULT NULL COMMENT 'Final Price',
  `min_price` decimal(12,4) DEFAULT NULL COMMENT 'Min Price',
  `max_price` decimal(12,4) DEFAULT NULL COMMENT 'Max Price',
  `tier_price` decimal(12,4) DEFAULT NULL COMMENT 'Tier Price',
  PRIMARY KEY (`entity_id`,`customer_group_id`,`website_id`),
  KEY `IDX_CATALOG_PRODUCT_INDEX_PRICE_IDX_CUSTOMER_GROUP_ID` (`customer_group_id`),
  KEY `IDX_CATALOG_PRODUCT_INDEX_PRICE_IDX_WEBSITE_ID` (`website_id`),
  KEY `IDX_CATALOG_PRODUCT_INDEX_PRICE_IDX_MIN_PRICE` (`min_price`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Product Price Indexer Index Table';

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `catalog_product_index_price_opt_agr_idx`
--

CREATE TABLE IF NOT EXISTS `catalog_product_index_price_opt_agr_idx` (
  `entity_id` int(10) unsigned NOT NULL COMMENT 'Entity ID',
  `customer_group_id` smallint(5) unsigned NOT NULL COMMENT 'Customer Group ID',
  `website_id` smallint(5) unsigned NOT NULL COMMENT 'Website ID',
  `option_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Option ID',
  `min_price` decimal(12,4) DEFAULT NULL COMMENT 'Min Price',
  `max_price` decimal(12,4) DEFAULT NULL COMMENT 'Max Price',
  `tier_price` decimal(12,4) DEFAULT NULL COMMENT 'Tier Price',
  PRIMARY KEY (`entity_id`,`customer_group_id`,`website_id`,`option_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Product Price Indexer Option Aggregate Index Table';

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `catalog_product_index_price_opt_agr_tmp`
--

CREATE TABLE IF NOT EXISTS `catalog_product_index_price_opt_agr_tmp` (
  `entity_id` int(10) unsigned NOT NULL COMMENT 'Entity ID',
  `customer_group_id` smallint(5) unsigned NOT NULL COMMENT 'Customer Group ID',
  `website_id` smallint(5) unsigned NOT NULL COMMENT 'Website ID',
  `option_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Option ID',
  `min_price` decimal(12,4) DEFAULT NULL COMMENT 'Min Price',
  `max_price` decimal(12,4) DEFAULT NULL COMMENT 'Max Price',
  `tier_price` decimal(12,4) DEFAULT NULL COMMENT 'Tier Price',
  PRIMARY KEY (`entity_id`,`customer_group_id`,`website_id`,`option_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Product Price Indexer Option Aggregate Temp Table';

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `catalog_product_index_price_opt_idx`
--

CREATE TABLE IF NOT EXISTS `catalog_product_index_price_opt_idx` (
  `entity_id` int(10) unsigned NOT NULL COMMENT 'Entity ID',
  `customer_group_id` smallint(5) unsigned NOT NULL COMMENT 'Customer Group ID',
  `website_id` smallint(5) unsigned NOT NULL COMMENT 'Website ID',
  `min_price` decimal(12,4) DEFAULT NULL COMMENT 'Min Price',
  `max_price` decimal(12,4) DEFAULT NULL COMMENT 'Max Price',
  `tier_price` decimal(12,4) DEFAULT NULL COMMENT 'Tier Price',
  PRIMARY KEY (`entity_id`,`customer_group_id`,`website_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Product Price Indexer Option Index Table';

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `catalog_product_index_price_opt_tmp`
--

CREATE TABLE IF NOT EXISTS `catalog_product_index_price_opt_tmp` (
  `entity_id` int(10) unsigned NOT NULL COMMENT 'Entity ID',
  `customer_group_id` smallint(5) unsigned NOT NULL COMMENT 'Customer Group ID',
  `website_id` smallint(5) unsigned NOT NULL COMMENT 'Website ID',
  `min_price` decimal(12,4) DEFAULT NULL COMMENT 'Min Price',
  `max_price` decimal(12,4) DEFAULT NULL COMMENT 'Max Price',
  `tier_price` decimal(12,4) DEFAULT NULL COMMENT 'Tier Price',
  PRIMARY KEY (`entity_id`,`customer_group_id`,`website_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Product Price Indexer Option Temp Table';

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `catalog_product_index_price_tmp`
--

CREATE TABLE IF NOT EXISTS `catalog_product_index_price_tmp` (
  `entity_id` int(10) unsigned NOT NULL COMMENT 'Entity ID',
  `customer_group_id` smallint(5) unsigned NOT NULL COMMENT 'Customer Group ID',
  `website_id` smallint(5) unsigned NOT NULL COMMENT 'Website ID',
  `tax_class_id` smallint(5) unsigned DEFAULT '0' COMMENT 'Tax Class ID',
  `price` decimal(12,4) DEFAULT NULL COMMENT 'Price',
  `final_price` decimal(12,4) DEFAULT NULL COMMENT 'Final Price',
  `min_price` decimal(12,4) DEFAULT NULL COMMENT 'Min Price',
  `max_price` decimal(12,4) DEFAULT NULL COMMENT 'Max Price',
  `tier_price` decimal(12,4) DEFAULT NULL COMMENT 'Tier Price',
  PRIMARY KEY (`entity_id`,`customer_group_id`,`website_id`),
  KEY `IDX_CATALOG_PRODUCT_INDEX_PRICE_TMP_CUSTOMER_GROUP_ID` (`customer_group_id`),
  KEY `IDX_CATALOG_PRODUCT_INDEX_PRICE_TMP_WEBSITE_ID` (`website_id`),
  KEY `IDX_CATALOG_PRODUCT_INDEX_PRICE_TMP_MIN_PRICE` (`min_price`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Product Price Indexer Temp Table';

--
-- Gegevens worden uitgevoerd voor tabel `catalog_product_index_price_tmp`
--

INSERT INTO `catalog_product_index_price_tmp` (`entity_id`, `customer_group_id`, `website_id`, `tax_class_id`, `price`, `final_price`, `min_price`, `max_price`, `tier_price`) VALUES
(1, 0, 1, 0, '273.9500', '273.9500', '273.9500', '273.9500', NULL),
(1, 1, 1, 0, '273.9500', '273.9500', '273.9500', '273.9500', NULL),
(1, 2, 1, 0, '273.9500', '273.9500', '273.9500', '273.9500', NULL),
(1, 3, 1, 0, '273.9500', '273.9500', '273.9500', '273.9500', NULL);

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `catalog_product_index_tier_price`
--

CREATE TABLE IF NOT EXISTS `catalog_product_index_tier_price` (
  `entity_id` int(10) unsigned NOT NULL COMMENT 'Entity ID',
  `customer_group_id` smallint(5) unsigned NOT NULL COMMENT 'Customer Group ID',
  `website_id` smallint(5) unsigned NOT NULL COMMENT 'Website ID',
  `min_price` decimal(12,4) DEFAULT NULL COMMENT 'Min Price',
  PRIMARY KEY (`entity_id`,`customer_group_id`,`website_id`),
  KEY `IDX_CATALOG_PRODUCT_INDEX_TIER_PRICE_CUSTOMER_GROUP_ID` (`customer_group_id`),
  KEY `IDX_CATALOG_PRODUCT_INDEX_TIER_PRICE_WEBSITE_ID` (`website_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Product Tier Price Index Table';

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `catalog_product_index_website`
--

CREATE TABLE IF NOT EXISTS `catalog_product_index_website` (
  `website_id` smallint(5) unsigned NOT NULL COMMENT 'Website ID',
  `website_date` date DEFAULT NULL COMMENT 'Website Date',
  `rate` float DEFAULT '1' COMMENT 'Rate',
  PRIMARY KEY (`website_id`),
  KEY `IDX_CATALOG_PRODUCT_INDEX_WEBSITE_WEBSITE_DATE` (`website_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Product Website Index Table';

--
-- Gegevens worden uitgevoerd voor tabel `catalog_product_index_website`
--

INSERT INTO `catalog_product_index_website` (`website_id`, `website_date`, `rate`) VALUES
(1, '2012-03-03', 1);

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `catalog_product_link`
--

CREATE TABLE IF NOT EXISTS `catalog_product_link` (
  `link_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Link ID',
  `product_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Product ID',
  `linked_product_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Linked Product ID',
  `link_type_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Link Type ID',
  PRIMARY KEY (`link_id`),
  UNIQUE KEY `UNQ_CAT_PRD_LNK_LNK_TYPE_ID_PRD_ID_LNKED_PRD_ID` (`link_type_id`,`product_id`,`linked_product_id`),
  KEY `IDX_CATALOG_PRODUCT_LINK_PRODUCT_ID` (`product_id`),
  KEY `IDX_CATALOG_PRODUCT_LINK_LINKED_PRODUCT_ID` (`linked_product_id`),
  KEY `IDX_CATALOG_PRODUCT_LINK_LINK_TYPE_ID` (`link_type_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Product To Product Linkage Table' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `catalog_product_link_attribute`
--

CREATE TABLE IF NOT EXISTS `catalog_product_link_attribute` (
  `product_link_attribute_id` smallint(5) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Product Link Attribute ID',
  `link_type_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Link Type ID',
  `product_link_attribute_code` varchar(32) NOT NULL DEFAULT '' COMMENT 'Product Link Attribute Code',
  `data_type` varchar(32) NOT NULL DEFAULT '' COMMENT 'Data Type',
  PRIMARY KEY (`product_link_attribute_id`),
  KEY `IDX_CATALOG_PRODUCT_LINK_ATTRIBUTE_LINK_TYPE_ID` (`link_type_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='Catalog Product Link Attribute Table' AUTO_INCREMENT=6 ;

--
-- Gegevens worden uitgevoerd voor tabel `catalog_product_link_attribute`
--

INSERT INTO `catalog_product_link_attribute` (`product_link_attribute_id`, `link_type_id`, `product_link_attribute_code`, `data_type`) VALUES
(1, 1, 'position', 'int'),
(2, 3, 'position', 'int'),
(3, 3, 'qty', 'decimal'),
(4, 4, 'position', 'int'),
(5, 5, 'position', 'int');

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `catalog_product_link_attribute_decimal`
--

CREATE TABLE IF NOT EXISTS `catalog_product_link_attribute_decimal` (
  `value_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Value ID',
  `product_link_attribute_id` smallint(5) unsigned DEFAULT NULL COMMENT 'Product Link Attribute ID',
  `link_id` int(10) unsigned NOT NULL COMMENT 'Link ID',
  `value` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Value',
  PRIMARY KEY (`value_id`),
  UNIQUE KEY `UNQ_CAT_PRD_LNK_ATTR_DEC_PRD_LNK_ATTR_ID_LNK_ID` (`product_link_attribute_id`,`link_id`),
  KEY `IDX_CAT_PRD_LNK_ATTR_DEC_PRD_LNK_ATTR_ID` (`product_link_attribute_id`),
  KEY `IDX_CATALOG_PRODUCT_LINK_ATTRIBUTE_DECIMAL_LINK_ID` (`link_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Product Link Decimal Attribute Table' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `catalog_product_link_attribute_int`
--

CREATE TABLE IF NOT EXISTS `catalog_product_link_attribute_int` (
  `value_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Value ID',
  `product_link_attribute_id` smallint(5) unsigned DEFAULT NULL COMMENT 'Product Link Attribute ID',
  `link_id` int(10) unsigned NOT NULL COMMENT 'Link ID',
  `value` int(11) NOT NULL DEFAULT '0' COMMENT 'Value',
  PRIMARY KEY (`value_id`),
  UNIQUE KEY `UNQ_CAT_PRD_LNK_ATTR_INT_PRD_LNK_ATTR_ID_LNK_ID` (`product_link_attribute_id`,`link_id`),
  KEY `IDX_CATALOG_PRODUCT_LINK_ATTRIBUTE_INT_PRODUCT_LINK_ATTRIBUTE_ID` (`product_link_attribute_id`),
  KEY `IDX_CATALOG_PRODUCT_LINK_ATTRIBUTE_INT_LINK_ID` (`link_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Product Link Integer Attribute Table' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `catalog_product_link_attribute_varchar`
--

CREATE TABLE IF NOT EXISTS `catalog_product_link_attribute_varchar` (
  `value_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Value ID',
  `product_link_attribute_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Product Link Attribute ID',
  `link_id` int(10) unsigned NOT NULL COMMENT 'Link ID',
  `value` varchar(255) DEFAULT NULL COMMENT 'Value',
  PRIMARY KEY (`value_id`),
  UNIQUE KEY `UNQ_CAT_PRD_LNK_ATTR_VCHR_PRD_LNK_ATTR_ID_LNK_ID` (`product_link_attribute_id`,`link_id`),
  KEY `IDX_CAT_PRD_LNK_ATTR_VCHR_PRD_LNK_ATTR_ID` (`product_link_attribute_id`),
  KEY `IDX_CATALOG_PRODUCT_LINK_ATTRIBUTE_VARCHAR_LINK_ID` (`link_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Product Link Varchar Attribute Table' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `catalog_product_link_type`
--

CREATE TABLE IF NOT EXISTS `catalog_product_link_type` (
  `link_type_id` smallint(5) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Link Type ID',
  `code` varchar(32) NOT NULL DEFAULT '' COMMENT 'Code',
  PRIMARY KEY (`link_type_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='Catalog Product Link Type Table' AUTO_INCREMENT=6 ;

--
-- Gegevens worden uitgevoerd voor tabel `catalog_product_link_type`
--

INSERT INTO `catalog_product_link_type` (`link_type_id`, `code`) VALUES
(1, 'relation'),
(3, 'super'),
(4, 'up_sell'),
(5, 'cross_sell');

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `catalog_product_option`
--

CREATE TABLE IF NOT EXISTS `catalog_product_option` (
  `option_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Option ID',
  `product_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Product ID',
  `type` varchar(50) NOT NULL DEFAULT '' COMMENT 'Type',
  `is_require` smallint(6) NOT NULL DEFAULT '1' COMMENT 'Is Required',
  `sku` varchar(64) DEFAULT NULL COMMENT 'SKU',
  `max_characters` int(10) unsigned DEFAULT NULL COMMENT 'Max Characters',
  `file_extension` varchar(50) DEFAULT NULL COMMENT 'File Extension',
  `image_size_x` smallint(5) unsigned DEFAULT NULL COMMENT 'Image Size X',
  `image_size_y` smallint(5) unsigned DEFAULT NULL COMMENT 'Image Size Y',
  `sort_order` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Sort Order',
  PRIMARY KEY (`option_id`),
  KEY `IDX_CATALOG_PRODUCT_OPTION_PRODUCT_ID` (`product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Product Option Table' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `catalog_product_option_price`
--

CREATE TABLE IF NOT EXISTS `catalog_product_option_price` (
  `option_price_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Option Price ID',
  `option_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Option ID',
  `store_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Store ID',
  `price` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Price',
  `price_type` varchar(7) NOT NULL DEFAULT 'fixed' COMMENT 'Price Type',
  PRIMARY KEY (`option_price_id`),
  UNIQUE KEY `UNQ_CATALOG_PRODUCT_OPTION_PRICE_OPTION_ID_STORE_ID` (`option_id`,`store_id`),
  KEY `IDX_CATALOG_PRODUCT_OPTION_PRICE_OPTION_ID` (`option_id`),
  KEY `IDX_CATALOG_PRODUCT_OPTION_PRICE_STORE_ID` (`store_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Product Option Price Table' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `catalog_product_option_title`
--

CREATE TABLE IF NOT EXISTS `catalog_product_option_title` (
  `option_title_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Option Title ID',
  `option_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Option ID',
  `store_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Store ID',
  `title` varchar(255) NOT NULL DEFAULT '' COMMENT 'Title',
  PRIMARY KEY (`option_title_id`),
  UNIQUE KEY `UNQ_CATALOG_PRODUCT_OPTION_TITLE_OPTION_ID_STORE_ID` (`option_id`,`store_id`),
  KEY `IDX_CATALOG_PRODUCT_OPTION_TITLE_OPTION_ID` (`option_id`),
  KEY `IDX_CATALOG_PRODUCT_OPTION_TITLE_STORE_ID` (`store_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Product Option Title Table' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `catalog_product_option_type_price`
--

CREATE TABLE IF NOT EXISTS `catalog_product_option_type_price` (
  `option_type_price_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Option Type Price ID',
  `option_type_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Option Type ID',
  `store_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Store ID',
  `price` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Price',
  `price_type` varchar(7) NOT NULL DEFAULT 'fixed' COMMENT 'Price Type',
  PRIMARY KEY (`option_type_price_id`),
  UNIQUE KEY `UNQ_CATALOG_PRODUCT_OPTION_TYPE_PRICE_OPTION_TYPE_ID_STORE_ID` (`option_type_id`,`store_id`),
  KEY `IDX_CATALOG_PRODUCT_OPTION_TYPE_PRICE_OPTION_TYPE_ID` (`option_type_id`),
  KEY `IDX_CATALOG_PRODUCT_OPTION_TYPE_PRICE_STORE_ID` (`store_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Product Option Type Price Table' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `catalog_product_option_type_title`
--

CREATE TABLE IF NOT EXISTS `catalog_product_option_type_title` (
  `option_type_title_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Option Type Title ID',
  `option_type_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Option Type ID',
  `store_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Store ID',
  `title` varchar(255) NOT NULL DEFAULT '' COMMENT 'Title',
  PRIMARY KEY (`option_type_title_id`),
  UNIQUE KEY `UNQ_CATALOG_PRODUCT_OPTION_TYPE_TITLE_OPTION_TYPE_ID_STORE_ID` (`option_type_id`,`store_id`),
  KEY `IDX_CATALOG_PRODUCT_OPTION_TYPE_TITLE_OPTION_TYPE_ID` (`option_type_id`),
  KEY `IDX_CATALOG_PRODUCT_OPTION_TYPE_TITLE_STORE_ID` (`store_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Product Option Type Title Table' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `catalog_product_option_type_value`
--

CREATE TABLE IF NOT EXISTS `catalog_product_option_type_value` (
  `option_type_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Option Type ID',
  `option_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Option ID',
  `sku` varchar(64) DEFAULT NULL COMMENT 'SKU',
  `sort_order` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Sort Order',
  PRIMARY KEY (`option_type_id`),
  KEY `IDX_CATALOG_PRODUCT_OPTION_TYPE_VALUE_OPTION_ID` (`option_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Product Option Type Value Table' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `catalog_product_relation`
--

CREATE TABLE IF NOT EXISTS `catalog_product_relation` (
  `parent_id` int(10) unsigned NOT NULL COMMENT 'Parent ID',
  `child_id` int(10) unsigned NOT NULL COMMENT 'Child ID',
  PRIMARY KEY (`parent_id`,`child_id`),
  KEY `IDX_CATALOG_PRODUCT_RELATION_CHILD_ID` (`child_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Product Relation Table';

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `catalog_product_super_attribute`
--

CREATE TABLE IF NOT EXISTS `catalog_product_super_attribute` (
  `product_super_attribute_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Product Super Attribute ID',
  `product_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Product ID',
  `attribute_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Attribute ID',
  `position` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Position',
  PRIMARY KEY (`product_super_attribute_id`),
  UNIQUE KEY `UNQ_CATALOG_PRODUCT_SUPER_ATTRIBUTE_PRODUCT_ID_ATTRIBUTE_ID` (`product_id`,`attribute_id`),
  KEY `IDX_CATALOG_PRODUCT_SUPER_ATTRIBUTE_PRODUCT_ID` (`product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Product Super Attribute Table' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `catalog_product_super_attribute_label`
--

CREATE TABLE IF NOT EXISTS `catalog_product_super_attribute_label` (
  `value_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Value ID',
  `product_super_attribute_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Product Super Attribute ID',
  `store_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Store ID',
  `use_default` smallint(5) unsigned DEFAULT '0' COMMENT 'Use Default Value',
  `value` varchar(255) DEFAULT NULL COMMENT 'Value',
  PRIMARY KEY (`value_id`),
  UNIQUE KEY `UNQ_CAT_PRD_SPR_ATTR_LBL_PRD_SPR_ATTR_ID_STORE_ID` (`product_super_attribute_id`,`store_id`),
  KEY `IDX_CAT_PRD_SPR_ATTR_LBL_PRD_SPR_ATTR_ID` (`product_super_attribute_id`),
  KEY `IDX_CATALOG_PRODUCT_SUPER_ATTRIBUTE_LABEL_STORE_ID` (`store_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Product Super Attribute Label Table' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `catalog_product_super_attribute_pricing`
--

CREATE TABLE IF NOT EXISTS `catalog_product_super_attribute_pricing` (
  `value_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Value ID',
  `product_super_attribute_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Product Super Attribute ID',
  `value_index` varchar(255) NOT NULL DEFAULT '' COMMENT 'Value Index',
  `is_percent` smallint(5) unsigned DEFAULT '0' COMMENT 'Is Percent',
  `pricing_value` decimal(12,4) DEFAULT NULL COMMENT 'Pricing Value',
  `website_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Website ID',
  PRIMARY KEY (`value_id`),
  UNIQUE KEY `UNQ_CAT_PRD_SPR_ATTR_PRICING_PRD_SPR_ATTR_ID_VAL_IDX_WS_ID` (`product_super_attribute_id`,`value_index`,`website_id`),
  KEY `IDX_CAT_PRD_SPR_ATTR_PRICING_PRD_SPR_ATTR_ID` (`product_super_attribute_id`),
  KEY `IDX_CATALOG_PRODUCT_SUPER_ATTRIBUTE_PRICING_WEBSITE_ID` (`website_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Product Super Attribute Pricing Table' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `catalog_product_super_link`
--

CREATE TABLE IF NOT EXISTS `catalog_product_super_link` (
  `link_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Link ID',
  `product_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Product ID',
  `parent_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Parent ID',
  PRIMARY KEY (`link_id`),
  UNIQUE KEY `UNQ_CATALOG_PRODUCT_SUPER_LINK_PRODUCT_ID_PARENT_ID` (`product_id`,`parent_id`),
  KEY `IDX_CATALOG_PRODUCT_SUPER_LINK_PARENT_ID` (`parent_id`),
  KEY `IDX_CATALOG_PRODUCT_SUPER_LINK_PRODUCT_ID` (`product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Product Super Link Table' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `catalog_product_website`
--

CREATE TABLE IF NOT EXISTS `catalog_product_website` (
  `product_id` int(10) unsigned NOT NULL COMMENT 'Product ID',
  `website_id` smallint(5) unsigned NOT NULL COMMENT 'Website ID',
  PRIMARY KEY (`product_id`,`website_id`),
  KEY `IDX_CATALOG_PRODUCT_WEBSITE_WEBSITE_ID` (`website_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Product To Website Linkage Table';

--
-- Gegevens worden uitgevoerd voor tabel `catalog_product_website`
--

INSERT INTO `catalog_product_website` (`product_id`, `website_id`) VALUES
(1, 1),
(2, 1),
(3, 1),
(4, 1);

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `checkout_agreement`
--

CREATE TABLE IF NOT EXISTS `checkout_agreement` (
  `agreement_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Agreement Id',
  `name` varchar(255) DEFAULT NULL COMMENT 'Name',
  `content` text COMMENT 'Content',
  `content_height` varchar(25) DEFAULT NULL COMMENT 'Content Height',
  `checkbox_text` text COMMENT 'Checkbox Text',
  `is_active` smallint(6) NOT NULL DEFAULT '0' COMMENT 'Is Active',
  `is_html` smallint(6) NOT NULL DEFAULT '0' COMMENT 'Is Html',
  PRIMARY KEY (`agreement_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Checkout Agreement' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `checkout_agreement_store`
--

CREATE TABLE IF NOT EXISTS `checkout_agreement_store` (
  `agreement_id` int(10) unsigned NOT NULL COMMENT 'Agreement Id',
  `store_id` smallint(5) unsigned NOT NULL COMMENT 'Store Id',
  PRIMARY KEY (`agreement_id`,`store_id`),
  KEY `FK_CHECKOUT_AGREEMENT_STORE_STORE_ID_CORE_STORE_STORE_ID` (`store_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Checkout Agreement Store';

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `cms_block`
--

CREATE TABLE IF NOT EXISTS `cms_block` (
  `block_id` smallint(6) NOT NULL AUTO_INCREMENT COMMENT 'Block ID',
  `title` varchar(255) NOT NULL COMMENT 'Block Title',
  `identifier` varchar(255) NOT NULL COMMENT 'Block String Identifier',
  `content` mediumtext COMMENT 'Block Content',
  `creation_time` timestamp NULL DEFAULT NULL COMMENT 'Block Creation Time',
  `update_time` timestamp NULL DEFAULT NULL COMMENT 'Block Modification Time',
  `is_active` smallint(6) NOT NULL DEFAULT '1' COMMENT 'Is Block Active',
  PRIMARY KEY (`block_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='CMS Block Table' AUTO_INCREMENT=4 ;

--
-- Gegevens worden uitgevoerd voor tabel `cms_block`
--

INSERT INTO `cms_block` (`block_id`, `title`, `identifier`, `content`, `creation_time`, `update_time`, `is_active`) VALUES
(1, 'Footer Links', 'footer_links', '<ul>\r\n<li><a href="{{store direct_url="about-magento-demo-store"}}">About Us</a></li>\r\n<li class="last"><a href="{{store direct_url="customer-service"}}">Customer Service</a></li>\r\n</ul>', '2012-02-28 10:55:41', '2012-02-28 10:55:41', 1),
(2, 'Toppers_row2', 'static_block_02', '<p>{{block type="catalog/product_list" category_id="37" template="catalog/product/list.phtml"}}</p>', '2012-03-03 14:41:24', '2012-03-03 14:48:35', 1),
(3, 'Toppers_row1', 'static_block', '<p>{{block type="catalog/product_list" category_id="36" template="catalog/product/list.phtml"}}</p>', '2012-03-03 14:44:06', '2012-03-03 14:45:30', 1);

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `cms_block_store`
--

CREATE TABLE IF NOT EXISTS `cms_block_store` (
  `block_id` smallint(6) NOT NULL COMMENT 'Block ID',
  `store_id` smallint(5) unsigned NOT NULL COMMENT 'Store ID',
  PRIMARY KEY (`block_id`,`store_id`),
  KEY `IDX_CMS_BLOCK_STORE_STORE_ID` (`store_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='CMS Block To Store Linkage Table';

--
-- Gegevens worden uitgevoerd voor tabel `cms_block_store`
--

INSERT INTO `cms_block_store` (`block_id`, `store_id`) VALUES
(1, 0),
(2, 1),
(3, 1);

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `cms_page`
--

CREATE TABLE IF NOT EXISTS `cms_page` (
  `page_id` smallint(6) NOT NULL AUTO_INCREMENT COMMENT 'Page ID',
  `title` varchar(255) DEFAULT NULL COMMENT 'Page Title',
  `root_template` varchar(255) DEFAULT NULL COMMENT 'Page Template',
  `meta_keywords` text COMMENT 'Page Meta Keywords',
  `meta_description` text COMMENT 'Page Meta Description',
  `identifier` varchar(100) NOT NULL DEFAULT '' COMMENT 'Page String Identifier',
  `content_heading` varchar(255) DEFAULT NULL COMMENT 'Page Content Heading',
  `content` mediumtext COMMENT 'Page Content',
  `creation_time` timestamp NULL DEFAULT NULL COMMENT 'Page Creation Time',
  `update_time` timestamp NULL DEFAULT NULL COMMENT 'Page Modification Time',
  `is_active` smallint(6) NOT NULL DEFAULT '1' COMMENT 'Is Page Active',
  `sort_order` smallint(6) NOT NULL DEFAULT '0' COMMENT 'Page Sort Order',
  `layout_update_xml` text COMMENT 'Page Layout Update Content',
  `custom_theme` varchar(100) DEFAULT NULL COMMENT 'Page Custom Theme',
  `custom_root_template` varchar(255) DEFAULT NULL COMMENT 'Page Custom Template',
  `custom_layout_update_xml` text COMMENT 'Page Custom Layout Update Content',
  `custom_theme_from` date DEFAULT NULL COMMENT 'Page Custom Theme Active From Date',
  `custom_theme_to` date DEFAULT NULL COMMENT 'Page Custom Theme Active To Date',
  PRIMARY KEY (`page_id`),
  KEY `IDX_CMS_PAGE_IDENTIFIER` (`identifier`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='CMS Page Table' AUTO_INCREMENT=7 ;

--
-- Gegevens worden uitgevoerd voor tabel `cms_page`
--

INSERT INTO `cms_page` (`page_id`, `title`, `root_template`, `meta_keywords`, `meta_description`, `identifier`, `content_heading`, `content`, `creation_time`, `update_time`, `is_active`, `sort_order`, `layout_update_xml`, `custom_theme`, `custom_root_template`, `custom_layout_update_xml`, `custom_theme_from`, `custom_theme_to`) VALUES
(1, '404 Not Found 1', 'two_columns_right', 'Page keywords', 'Page description', 'no-route', NULL, '<div class="page-title"><h1>Whoops, our bad...</h1></div>\r\n<dl>\r\n<dt>The page you requested was not found, and we have a fine guess why.</dt>\r\n<dd>\r\n<ul class="disc">\r\n<li>If you typed the URL directly, please make sure the spelling is correct.</li>\r\n<li>If you clicked on a link to get here, the link is outdated.</li>\r\n</ul></dd>\r\n</dl>\r\n<dl>\r\n<dt>What can you do?</dt>\r\n<dd>Have no fear, help is near! There are many ways you can get back on track with Magento Store.</dd>\r\n<dd>\r\n<ul class="disc">\r\n<li><a href="#" onclick="history.go(-1); return false;">Go back</a> to the previous page.</li>\r\n<li>Use the search bar at the top of the page to search for your products.</li>\r\n<li>Follow these links to get you back on track!<br /><a href="{{store url=""}}">Store Home</a> <span class="separator">|</span> <a href="{{store url="customer/account"}}">My Account</a></li></ul></dd></dl>\r\n', '2012-02-28 10:55:42', '2012-02-28 10:55:42', 1, 0, NULL, NULL, NULL, NULL, NULL, NULL),
(2, 'Home page', 'two_columns_right', NULL, NULL, 'home', NULL, '&nbsp;', '2012-02-28 10:55:42', '2012-03-03 14:44:41', 1, 0, '<!--<reference name="content">\r\n        <block type="catalog/product_new" name="home.catalog.product.new" alias="product_new" template="catalog/product/new.phtml" after="cms_page">\r\n            <action method="addPriceBlockType">\r\n                <type>bundle</type>\r\n                <block>bundle/catalog_product_price</block>\r\n                <template>bundle/catalog/product/price.phtml</template>\r\n            </action>\r\n        </block>\r\n        <block type="reports/product_viewed" name="home.reports.product.viewed" alias="product_viewed" template="reports/home_product_viewed.phtml" after="product_new">\r\n            <action method="addPriceBlockType">\r\n                <type>bundle</type>\r\n                <block>bundle/catalog_product_price</block>\r\n                <template>bundle/catalog/product/price.phtml</template>\r\n            </action>\r\n        </block>\r\n        <block type="reports/product_compared" name="home.reports.product.compared" template="reports/home_product_compared.phtml" after="product_viewed">\r\n            <action method="addPriceBlockType">\r\n                <type>bundle</type>\r\n                <block>bundle/catalog_product_price</block>\r\n                <template>bundle/catalog/product/price.phtml</template>\r\n            </action>\r\n        </block>\r\n    </reference>\r\n    <reference name="right">\r\n        <action method="unsetChild"><alias>right.reports.product.viewed</alias></action>\r\n        <action method="unsetChild"><alias>right.reports.product.compared</alias></action>\r\n    </reference>-->', NULL, NULL, NULL, NULL, NULL),
(3, 'About Us', 'two_columns_right', NULL, NULL, 'about-magento-demo-store', NULL, '<div class="page-title">\r\n<h1>About Magento Store</h1>\r\n</div>\r\n<div class="col3-set">\r\n<div class="col-1"><p><a href="http://www.varien.com/"><img src="{{skin url=''images/media/about_us_img.jpg''}}" title="Varien" alt="Varien" /></a></p><p style="line-height:1.2em;"><small>Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Morbi luctus. Duis lobortis. Nulla nec velit. Mauris pulvinar erat non massa. Suspendisse tortor turpis, porta nec, tempus vitae, iaculis semper, pede.</small></p>\r\n<p style="color:#888; font:1.2em/1.4em georgia, serif;">Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Morbi luctus. Duis lobortis. Nulla nec velit. Mauris pulvinar erat non massa. Suspendisse tortor turpis, porta nec, tempus vitae, iaculis semper, pede. Cras vel libero id lectus rhoncus porta.</p></div>\r\n<div class="col-2">\r\n<p><strong style="color:#de036f;">Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Morbi luctus. Duis lobortis. Nulla nec velit.</strong></p>\r\n<p>Vivamus tortor nisl, lobortis in, faucibus et, tempus at, dui. Nunc risus. Proin scelerisque augue. Nam ullamcorper. Phasellus id massa. Pellentesque nisl. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Nunc augue. Aenean sed justo non leo vehicula laoreet. Praesent ipsum libero, auctor ac, tempus nec, tempor nec, justo. </p>\r\n<p>Maecenas ullamcorper, odio vel tempus egestas, dui orci faucibus orci, sit amet aliquet lectus dolor et quam. Pellentesque consequat luctus purus. Nunc et risus. Etiam a nibh. Phasellus dignissim metus eget nisi. Vestibulum sapien dolor, aliquet nec, porta ac, malesuada a, libero. Praesent feugiat purus eget est. Nulla facilisi. Vestibulum tincidunt sapien eu velit. Mauris purus. Maecenas eget mauris eu orci accumsan feugiat. Pellentesque eget velit. Nunc tincidunt.</p></div>\r\n<div class="col-3">\r\n<p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Morbi luctus. Duis lobortis. Nulla nec velit. Mauris pulvinar erat non massa. Suspendisse tortor turpis, porta nec, tempus vitae, iaculis semper, pede. Cras vel libero id lectus rhoncus porta. Suspendisse convallis felis ac enim. Vivamus tortor nisl, lobortis in, faucibus et, tempus at, dui. Nunc risus. Proin scelerisque augue. Nam ullamcorper </p>\r\n<p><strong style="color:#de036f;">Maecenas ullamcorper, odio vel tempus egestas, dui orci faucibus orci, sit amet aliquet lectus dolor et quam. Pellentesque consequat luctus purus.</strong></p>\r\n<p>Nunc et risus. Etiam a nibh. Phasellus dignissim metus eget nisi.</p>\r\n<div class="divider"></div>\r\n<p>To all of you, from all of us at Magento Store - Thank you and Happy eCommerce!</p>\r\n<p style="line-height:1.2em;"><strong style="font:italic 2em Georgia, serif;">John Doe</strong><br /><small>Some important guy</small></p></div>\r\n</div>', '2012-02-28 10:55:42', '2012-02-28 10:55:42', 1, 0, NULL, NULL, NULL, NULL, NULL, NULL),
(4, 'Customer Service', 'three_columns', NULL, NULL, 'customer-service', NULL, '<div class="page-title">\r\n<h1>Customer Service</h1>\r\n</div>\r\n<ul class="disc">\r\n<li><a href="#answer1">Shipping &amp; Delivery</a></li>\r\n<li><a href="#answer2">Privacy &amp; Security</a></li>\r\n<li><a href="#answer3">Returns &amp; Replacements</a></li>\r\n<li><a href="#answer4">Ordering</a></li>\r\n<li><a href="#answer5">Payment, Pricing &amp; Promotions</a></li>\r\n<li><a href="#answer6">Viewing Orders</a></li>\r\n<li><a href="#answer7">Updating Account Information</a></li>\r\n</ul>\r\n<dl>\r\n<dt id="answer1">Shipping &amp; Delivery</dt>\r\n<dd>Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Morbi luctus. Duis lobortis. Nulla nec velit. Mauris pulvinar erat non massa. Suspendisse tortor turpis, porta nec, tempus vitae, iaculis semper, pede. Cras vel libero id lectus rhoncus porta. Suspendisse convallis felis ac enim. Vivamus tortor nisl, lobortis in, faucibus et, tempus at, dui. Nunc risus. Proin scelerisque augue. Nam ullamcorper. Phasellus id massa. Pellentesque nisl. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Nunc augue. Aenean sed justo non leo vehicula laoreet. Praesent ipsum libero, auctor ac, tempus nec, tempor nec, justo.</dd>\r\n<dt id="answer2">Privacy &amp; Security</dt>\r\n<dd>Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Morbi luctus. Duis lobortis. Nulla nec velit. Mauris pulvinar erat non massa. Suspendisse tortor turpis, porta nec, tempus vitae, iaculis semper, pede. Cras vel libero id lectus rhoncus porta. Suspendisse convallis felis ac enim. Vivamus tortor nisl, lobortis in, faucibus et, tempus at, dui. Nunc risus. Proin scelerisque augue. Nam ullamcorper. Phasellus id massa. Pellentesque nisl. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Nunc augue. Aenean sed justo non leo vehicula laoreet. Praesent ipsum libero, auctor ac, tempus nec, tempor nec, justo.</dd>\r\n<dt id="answer3">Returns &amp; Replacements</dt>\r\n<dd>Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Morbi luctus. Duis lobortis. Nulla nec velit. Mauris pulvinar erat non massa. Suspendisse tortor turpis, porta nec, tempus vitae, iaculis semper, pede. Cras vel libero id lectus rhoncus porta. Suspendisse convallis felis ac enim. Vivamus tortor nisl, lobortis in, faucibus et, tempus at, dui. Nunc risus. Proin scelerisque augue. Nam ullamcorper. Phasellus id massa. Pellentesque nisl. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Nunc augue. Aenean sed justo non leo vehicula laoreet. Praesent ipsum libero, auctor ac, tempus nec, tempor nec, justo.</dd>\r\n<dt id="answer4">Ordering</dt>\r\n<dd>Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Morbi luctus. Duis lobortis. Nulla nec velit. Mauris pulvinar erat non massa. Suspendisse tortor turpis, porta nec, tempus vitae, iaculis semper, pede. Cras vel libero id lectus rhoncus porta. Suspendisse convallis felis ac enim. Vivamus tortor nisl, lobortis in, faucibus et, tempus at, dui. Nunc risus. Proin scelerisque augue. Nam ullamcorper. Phasellus id massa. Pellentesque nisl. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Nunc augue. Aenean sed justo non leo vehicula laoreet. Praesent ipsum libero, auctor ac, tempus nec, tempor nec, justo.</dd>\r\n<dt id="answer5">Payment, Pricing &amp; Promotions</dt>\r\n<dd>Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Morbi luctus. Duis lobortis. Nulla nec velit. Mauris pulvinar erat non massa. Suspendisse tortor turpis, porta nec, tempus vitae, iaculis semper, pede. Cras vel libero id lectus rhoncus porta. Suspendisse convallis felis ac enim. Vivamus tortor nisl, lobortis in, faucibus et, tempus at, dui. Nunc risus. Proin scelerisque augue. Nam ullamcorper. Phasellus id massa. Pellentesque nisl. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Nunc augue. Aenean sed justo non leo vehicula laoreet. Praesent ipsum libero, auctor ac, tempus nec, tempor nec, justo.</dd>\r\n<dt id="answer6">Viewing Orders</dt>\r\n<dd>Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Morbi luctus. Duis lobortis. Nulla nec velit. Mauris pulvinar erat non massa. Suspendisse tortor turpis, porta nec, tempus vitae, iaculis semper, pede. Cras vel libero id lectus rhoncus porta. Suspendisse convallis felis ac enim. Vivamus tortor nisl, lobortis in, faucibus et, tempus at, dui. Nunc risus. Proin scelerisque augue. Nam ullamcorper. Phasellus id massa. Pellentesque nisl. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Nunc augue. Aenean sed justo non leo vehicula laoreet. Praesent ipsum libero, auctor ac, tempus nec, tempor nec, justo.</dd>\r\n<dt id="answer7">Updating Account Information</dt>\r\n<dd>Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Morbi luctus. Duis lobortis. Nulla nec velit. Mauris pulvinar erat non massa. Suspendisse tortor turpis, porta nec, tempus vitae, iaculis semper, pede. Cras vel libero id lectus rhoncus porta. Suspendisse convallis felis ac enim. Vivamus tortor nisl, lobortis in, faucibus et, tempus at, dui. Nunc risus. Proin scelerisque augue. Nam ullamcorper. Phasellus id massa. Pellentesque nisl. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Nunc augue. Aenean sed justo non leo vehicula laoreet. Praesent ipsum libero, auctor ac, tempus nec, tempor nec, justo.</dd>\r\n</dl>', '2012-02-28 10:55:42', '2012-02-28 10:55:42', 1, 0, NULL, NULL, NULL, NULL, NULL, NULL),
(5, 'Enable Cookies', 'one_column', NULL, NULL, 'enable-cookies', NULL, '<div class="std">\r\n    <ul class="messages">\r\n        <li class="notice-msg">\r\n            <ul>\r\n                <li>Please enable cookies in your web browser to continue.</li>\r\n            </ul>\r\n        </li>\r\n    </ul>\r\n    <div class="page-title">\r\n        <h1><a name="top"></a>What are Cookies?</h1>\r\n    </div>\r\n    <p>Cookies are short pieces of data that are sent to your computer when you visit a website. On later visits, this data is then returned to that website. Cookies allow us to recognize you automatically whenever you visit our site so that we can personalize your experience and provide you with better service. We also use cookies (and similar browser data, such as Flash cookies) for fraud prevention and other purposes. If your web browser is set to refuse cookies from our website, you will not be able to complete a purchase or take advantage of certain features of our website, such as storing items in your Shopping Cart or receiving personalized recommendations. As a result, we strongly encourage you to configure your web browser to accept cookies from our website.</p>\r\n    <h2 class="subtitle">Enabling Cookies</h2>\r\n    <ul class="disc">\r\n        <li><a href="#ie7">Internet Explorer 7.x</a></li>\r\n        <li><a href="#ie6">Internet Explorer 6.x</a></li>\r\n        <li><a href="#firefox">Mozilla/Firefox</a></li>\r\n        <li><a href="#opera">Opera 7.x</a></li>\r\n    </ul>\r\n    <h3><a name="ie7"></a>Internet Explorer 7.x</h3>\r\n    <ol>\r\n        <li>\r\n            <p>Start Internet Explorer</p>\r\n        </li>\r\n        <li>\r\n            <p>Under the <strong>Tools</strong> menu, click <strong>Internet Options</strong></p>\r\n            <p><img src="{{skin url="images/cookies/ie7-1.gif"}}" alt="" /></p>\r\n        </li>\r\n        <li>\r\n            <p>Click the <strong>Privacy</strong> tab</p>\r\n            <p><img src="{{skin url="images/cookies/ie7-2.gif"}}" alt="" /></p>\r\n        </li>\r\n        <li>\r\n            <p>Click the <strong>Advanced</strong> button</p>\r\n            <p><img src="{{skin url="images/cookies/ie7-3.gif"}}" alt="" /></p>\r\n        </li>\r\n        <li>\r\n            <p>Put a check mark in the box for <strong>Override Automatic Cookie Handling</strong>, put another check mark in the <strong>Always accept session cookies </strong>box</p>\r\n            <p><img src="{{skin url="images/cookies/ie7-4.gif"}}" alt="" /></p>\r\n        </li>\r\n        <li>\r\n            <p>Click <strong>OK</strong></p>\r\n            <p><img src="{{skin url="images/cookies/ie7-5.gif"}}" alt="" /></p>\r\n        </li>\r\n        <li>\r\n            <p>Click <strong>OK</strong></p>\r\n            <p><img src="{{skin url="images/cookies/ie7-6.gif"}}" alt="" /></p>\r\n        </li>\r\n        <li>\r\n            <p>Restart Internet Explore</p>\r\n        </li>\r\n    </ol>\r\n    <p class="a-top"><a href="#top">Back to Top</a></p>\r\n    <h3><a name="ie6"></a>Internet Explorer 6.x</h3>\r\n    <ol>\r\n        <li>\r\n            <p>Select <strong>Internet Options</strong> from the Tools menu</p>\r\n            <p><img src="{{skin url="images/cookies/ie6-1.gif"}}" alt="" /></p>\r\n        </li>\r\n        <li>\r\n            <p>Click on the <strong>Privacy</strong> tab</p>\r\n        </li>\r\n        <li>\r\n            <p>Click the <strong>Default</strong> button (or manually slide the bar down to <strong>Medium</strong>) under <strong>Settings</strong>. Click <strong>OK</strong></p>\r\n            <p><img src="{{skin url="images/cookies/ie6-2.gif"}}" alt="" /></p>\r\n        </li>\r\n    </ol>\r\n    <p class="a-top"><a href="#top">Back to Top</a></p>\r\n    <h3><a name="firefox"></a>Mozilla/Firefox</h3>\r\n    <ol>\r\n        <li>\r\n            <p>Click on the <strong>Tools</strong>-menu in Mozilla</p>\r\n        </li>\r\n        <li>\r\n            <p>Click on the <strong>Options...</strong> item in the menu - a new window open</p>\r\n        </li>\r\n        <li>\r\n            <p>Click on the <strong>Privacy</strong> selection in the left part of the window. (See image below)</p>\r\n            <p><img src="{{skin url="images/cookies/firefox.png"}}" alt="" /></p>\r\n        </li>\r\n        <li>\r\n            <p>Expand the <strong>Cookies</strong> section</p>\r\n        </li>\r\n        <li>\r\n            <p>Check the <strong>Enable cookies</strong> and <strong>Accept cookies normally</strong> checkboxes</p>\r\n        </li>\r\n        <li>\r\n            <p>Save changes by clicking <strong>Ok</strong>.</p>\r\n        </li>\r\n    </ol>\r\n    <p class="a-top"><a href="#top">Back to Top</a></p>\r\n    <h3><a name="opera"></a>Opera 7.x</h3>\r\n    <ol>\r\n        <li>\r\n            <p>Click on the <strong>Tools</strong> menu in Opera</p>\r\n        </li>\r\n        <li>\r\n            <p>Click on the <strong>Preferences...</strong> item in the menu - a new window open</p>\r\n        </li>\r\n        <li>\r\n            <p>Click on the <strong>Privacy</strong> selection near the bottom left of the window. (See image below)</p>\r\n            <p><img src="{{skin url="images/cookies/opera.png"}}" alt="" /></p>\r\n        </li>\r\n        <li>\r\n            <p>The <strong>Enable cookies</strong> checkbox must be checked, and <strong>Accept all cookies</strong> should be selected in the &quot;<strong>Normal cookies</strong>&quot; drop-down</p>\r\n        </li>\r\n        <li>\r\n            <p>Save changes by clicking <strong>Ok</strong></p>\r\n        </li>\r\n    </ol>\r\n    <p class="a-top"><a href="#top">Back to Top</a></p>\r\n</div>\r\n', '2012-02-28 10:55:42', '2012-02-28 10:55:42', 1, 0, NULL, NULL, NULL, NULL, NULL, NULL),
(6, 'Test1', 'two_columns_right', NULL, NULL, 'test1.html', NULL, '<p>Test content</p>', '2012-03-01 12:14:39', '2012-03-01 12:15:02', 1, 0, NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `cms_page_store`
--

CREATE TABLE IF NOT EXISTS `cms_page_store` (
  `page_id` smallint(6) NOT NULL COMMENT 'Page ID',
  `store_id` smallint(5) unsigned NOT NULL COMMENT 'Store ID',
  PRIMARY KEY (`page_id`,`store_id`),
  KEY `IDX_CMS_PAGE_STORE_STORE_ID` (`store_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='CMS Page To Store Linkage Table';

--
-- Gegevens worden uitgevoerd voor tabel `cms_page_store`
--

INSERT INTO `cms_page_store` (`page_id`, `store_id`) VALUES
(1, 0),
(3, 0),
(4, 0),
(5, 0),
(2, 1),
(6, 1);

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `core_cache`
--

CREATE TABLE IF NOT EXISTS `core_cache` (
  `id` varchar(200) NOT NULL COMMENT 'Cache Id',
  `data` mediumblob COMMENT 'Cache Data',
  `create_time` int(11) DEFAULT NULL COMMENT 'Cache Creation Time',
  `update_time` int(11) DEFAULT NULL COMMENT 'Time of Cache Updating',
  `expire_time` int(11) DEFAULT NULL COMMENT 'Cache Expiration Time',
  PRIMARY KEY (`id`),
  KEY `IDX_CORE_CACHE_EXPIRE_TIME` (`expire_time`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Caches';

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `core_cache_option`
--

CREATE TABLE IF NOT EXISTS `core_cache_option` (
  `code` varchar(32) NOT NULL COMMENT 'Code',
  `value` smallint(6) DEFAULT NULL COMMENT 'Value',
  PRIMARY KEY (`code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Cache Options';

--
-- Gegevens worden uitgevoerd voor tabel `core_cache_option`
--

INSERT INTO `core_cache_option` (`code`, `value`) VALUES
('block_html', 0),
('collections', 0),
('config', 0),
('config_api', 0),
('eav', 0),
('layout', 0),
('translate', 0);

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `core_cache_tag`
--

CREATE TABLE IF NOT EXISTS `core_cache_tag` (
  `tag` varchar(100) NOT NULL COMMENT 'Tag',
  `cache_id` varchar(200) NOT NULL COMMENT 'Cache Id',
  PRIMARY KEY (`tag`,`cache_id`),
  KEY `IDX_CORE_CACHE_TAG_CACHE_ID` (`cache_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Tag Caches';

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `core_config_data`
--

CREATE TABLE IF NOT EXISTS `core_config_data` (
  `config_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Config Id',
  `scope` varchar(8) NOT NULL DEFAULT 'default' COMMENT 'Config Scope',
  `scope_id` int(11) NOT NULL DEFAULT '0' COMMENT 'Config Scope Id',
  `path` varchar(255) NOT NULL DEFAULT 'general' COMMENT 'Config Path',
  `value` text COMMENT 'Config Value',
  PRIMARY KEY (`config_id`),
  UNIQUE KEY `UNQ_CORE_CONFIG_DATA_SCOPE_SCOPE_ID_PATH` (`scope`,`scope_id`,`path`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='Config Data' AUTO_INCREMENT=97 ;

--
-- Gegevens worden uitgevoerd voor tabel `core_config_data`
--

INSERT INTO `core_config_data` (`config_id`, `scope`, `scope_id`, `path`, `value`) VALUES
(1, 'default', 0, 'catalog/category/root_id', '2'),
(2, 'default', 0, 'admin/dashboard/enable_charts', '1'),
(3, 'default', 0, 'web/unsecure/base_url', 'http://www.yiore.com/projecten/thebis/'),
(4, 'default', 0, 'web/secure/base_url', 'http://www.yiore.com/projecten/thebis/'),
(5, 'default', 0, 'general/locale/code', 'nl_NL'),
(6, 'default', 0, 'general/locale/timezone', 'Europe/London'),
(7, 'default', 0, 'currency/options/base', 'EUR'),
(8, 'default', 0, 'currency/options/default', 'EUR'),
(9, 'default', 0, 'currency/options/allow', 'EUR'),
(18, 'websites', 1, 'dev/debug/template_hints', '0'),
(19, 'websites', 1, 'dev/debug/template_hints_blocks', '0'),
(20, 'default', 0, 'design/package/name', 'default'),
(21, 'default', 0, 'design/package/ua_regexp', 'a:0:{}'),
(22, 'default', 0, 'design/theme/locale', NULL),
(23, 'default', 0, 'design/theme/template', NULL),
(24, 'default', 0, 'design/theme/template_ua_regexp', 'a:0:{}'),
(25, 'default', 0, 'design/theme/skin', NULL),
(26, 'default', 0, 'design/theme/skin_ua_regexp', 'a:0:{}'),
(27, 'default', 0, 'design/theme/layout', NULL),
(28, 'default', 0, 'design/theme/layout_ua_regexp', 'a:0:{}'),
(29, 'default', 0, 'design/theme/default', NULL),
(30, 'default', 0, 'design/theme/default_ua_regexp', 'a:0:{}'),
(31, 'default', 0, 'design/head/default_title', 'Magento Commerce'),
(32, 'default', 0, 'design/head/title_prefix', NULL),
(33, 'default', 0, 'design/head/title_suffix', NULL),
(34, 'default', 0, 'design/head/default_description', 'Default Description'),
(35, 'default', 0, 'design/head/default_keywords', 'Magento, Varien, E-commerce'),
(36, 'default', 0, 'design/head/default_robots', 'INDEX,FOLLOW'),
(37, 'default', 0, 'design/head/includes', NULL),
(38, 'default', 0, 'design/head/demonotice', '0'),
(39, 'default', 0, 'design/header/logo_src', 'images/logo.gif'),
(40, 'default', 0, 'design/header/logo_alt', 'Magento Commerce'),
(41, 'default', 0, 'design/header/welcome', 'Default welcome msg!'),
(42, 'default', 0, 'design/footer/copyright', '&copy; 2008 Magento Demo Store. All Rights Reserved.'),
(43, 'default', 0, 'design/footer/absolute_footer', NULL),
(44, 'default', 0, 'design/watermark/image_size', NULL),
(45, 'default', 0, 'design/watermark/image_imageOpacity', NULL),
(46, 'default', 0, 'design/watermark/image_position', 'stretch'),
(47, 'default', 0, 'design/watermark/small_image_size', NULL),
(48, 'default', 0, 'design/watermark/small_image_imageOpacity', NULL),
(49, 'default', 0, 'design/watermark/small_image_position', 'stretch'),
(50, 'default', 0, 'design/watermark/thumbnail_size', NULL),
(51, 'default', 0, 'design/watermark/thumbnail_imageOpacity', NULL),
(52, 'default', 0, 'design/watermark/thumbnail_position', 'stretch'),
(53, 'default', 0, 'design/pagination/pagination_frame', '5'),
(54, 'default', 0, 'design/pagination/pagination_frame_skip', NULL),
(55, 'default', 0, 'design/pagination/anchor_text_for_previous', NULL),
(56, 'default', 0, 'design/pagination/anchor_text_for_next', NULL),
(57, 'websites', 1, 'wishlist/general/active', '0'),
(58, 'websites', 1, 'dev/translate_inline/active', '0'),
(59, 'websites', 1, 'advanced/modules_disable_output/Mage_Newsletter', '1'),
(60, 'websites', 1, 'advanced/modules_disable_output/Mage_Poll', '1'),
(61, 'websites', 1, 'payment/paypal_express/active', '0'),
(62, 'websites', 1, 'payment/paypal_standard/active', '0'),
(63, 'websites', 1, 'payment/paypaluk_express/active', '0'),
(64, 'websites', 1, 'paypal/style/logo', NULL),
(65, 'default', 0, 'web/url/use_store', '0'),
(66, 'default', 0, 'web/url/redirect_to_base', '1'),
(67, 'default', 0, 'web/seo/use_rewrites', '0'),
(68, 'default', 0, 'web/unsecure/base_link_url', '{{unsecure_base_url}}'),
(69, 'default', 0, 'web/unsecure/base_skin_url', '{{unsecure_base_url}}skin/'),
(70, 'default', 0, 'web/unsecure/base_media_url', '{{unsecure_base_url}}media/'),
(71, 'default', 0, 'web/unsecure/base_js_url', '{{unsecure_base_url}}js/'),
(72, 'default', 0, 'web/secure/base_link_url', '{{secure_base_url}}'),
(73, 'default', 0, 'web/secure/base_skin_url', '{{secure_base_url}}skin/'),
(74, 'default', 0, 'web/secure/base_media_url', '{{secure_base_url}}media/'),
(75, 'default', 0, 'web/secure/base_js_url', '{{secure_base_url}}js/'),
(76, 'default', 0, 'web/secure/use_in_frontend', '0'),
(77, 'default', 0, 'web/secure/use_in_adminhtml', '0'),
(78, 'default', 0, 'web/secure/offloader_header', 'SSL_OFFLOADED'),
(79, 'default', 0, 'web/default/front', 'cms'),
(80, 'default', 0, 'web/default/cms_home_page', 'home'),
(81, 'default', 0, 'web/default/no_route', 'cms/index/noRoute'),
(82, 'default', 0, 'web/default/cms_no_route', 'no-route'),
(83, 'default', 0, 'web/default/cms_no_cookies', 'enable-cookies'),
(84, 'default', 0, 'web/default/show_cms_breadcrumbs', '1'),
(85, 'default', 0, 'web/polls/poll_check_by_ip', '0'),
(86, 'default', 0, 'web/cookie/cookie_lifetime', '3600'),
(87, 'default', 0, 'web/cookie/cookie_path', NULL),
(88, 'default', 0, 'web/cookie/cookie_domain', NULL),
(89, 'default', 0, 'web/cookie/cookie_httponly', '1'),
(90, 'default', 0, 'web/session/use_remote_addr', '0'),
(91, 'default', 0, 'web/session/use_http_via', '0'),
(92, 'default', 0, 'web/session/use_http_x_forwarded_for', '0'),
(93, 'default', 0, 'web/session/use_http_user_agent', '0'),
(94, 'default', 0, 'web/session/use_frontend_sid', '1'),
(95, 'default', 0, 'web/browser_capabilities/cookies', '1'),
(96, 'default', 0, 'web/browser_capabilities/javascript', '1');

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `core_email_template`
--

CREATE TABLE IF NOT EXISTS `core_email_template` (
  `template_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Template Id',
  `template_code` varchar(150) NOT NULL COMMENT 'Template Name',
  `template_text` text NOT NULL COMMENT 'Template Content',
  `template_styles` text COMMENT 'Templste Styles',
  `template_type` int(10) unsigned DEFAULT NULL COMMENT 'Template Type',
  `template_subject` varchar(200) NOT NULL COMMENT 'Template Subject',
  `template_sender_name` varchar(200) DEFAULT NULL COMMENT 'Template Sender Name',
  `template_sender_email` varchar(200) DEFAULT NULL COMMENT 'Template Sender Email',
  `added_at` timestamp NULL DEFAULT NULL COMMENT 'Date of Template Creation',
  `modified_at` timestamp NULL DEFAULT NULL COMMENT 'Date of Template Modification',
  `orig_template_code` varchar(200) DEFAULT NULL COMMENT 'Original Template Code',
  `orig_template_variables` text COMMENT 'Original Template Variables',
  PRIMARY KEY (`template_id`),
  UNIQUE KEY `UNQ_CORE_EMAIL_TEMPLATE_TEMPLATE_CODE` (`template_code`),
  KEY `IDX_CORE_EMAIL_TEMPLATE_ADDED_AT` (`added_at`),
  KEY `IDX_CORE_EMAIL_TEMPLATE_MODIFIED_AT` (`modified_at`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Email Templates' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `core_flag`
--

CREATE TABLE IF NOT EXISTS `core_flag` (
  `flag_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Flag Id',
  `flag_code` varchar(255) NOT NULL COMMENT 'Flag Code',
  `state` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Flag State',
  `flag_data` text COMMENT 'Flag Data',
  `last_update` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Date of Last Flag Update',
  PRIMARY KEY (`flag_id`),
  KEY `IDX_CORE_FLAG_LAST_UPDATE` (`last_update`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='Flag' AUTO_INCREMENT=3 ;

--
-- Gegevens worden uitgevoerd voor tabel `core_flag`
--

INSERT INTO `core_flag` (`flag_id`, `flag_code`, `state`, `flag_data`, `last_update`) VALUES
(1, 'admin_notification_survey', 0, 'a:1:{s:13:"survey_viewed";b:1;}', '2012-02-28 10:57:27'),
(2, 'catalog_product_flat', 0, 'a:1:{s:8:"is_built";b:1;}', '2012-02-28 10:59:06');

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `core_layout_link`
--

CREATE TABLE IF NOT EXISTS `core_layout_link` (
  `layout_link_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Link Id',
  `store_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Store Id',
  `area` varchar(64) DEFAULT NULL COMMENT 'Area',
  `package` varchar(64) DEFAULT NULL COMMENT 'Package',
  `theme` varchar(64) DEFAULT NULL COMMENT 'Theme',
  `layout_update_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Layout Update Id',
  PRIMARY KEY (`layout_link_id`),
  UNIQUE KEY `UNQ_CORE_LAYOUT_LINK_STORE_ID_PACKAGE_THEME_LAYOUT_UPDATE_ID` (`store_id`,`package`,`theme`,`layout_update_id`),
  KEY `IDX_CORE_LAYOUT_LINK_LAYOUT_UPDATE_ID` (`layout_update_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Layout Link' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `core_layout_update`
--

CREATE TABLE IF NOT EXISTS `core_layout_update` (
  `layout_update_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Layout Update Id',
  `handle` varchar(255) DEFAULT NULL COMMENT 'Handle',
  `xml` text COMMENT 'Xml',
  `sort_order` smallint(6) NOT NULL DEFAULT '0' COMMENT 'Sort Order',
  PRIMARY KEY (`layout_update_id`),
  KEY `IDX_CORE_LAYOUT_UPDATE_HANDLE` (`handle`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Layout Updates' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `core_resource`
--

CREATE TABLE IF NOT EXISTS `core_resource` (
  `code` varchar(50) NOT NULL COMMENT 'Resource Code',
  `version` varchar(50) DEFAULT NULL COMMENT 'Resource Version',
  `data_version` varchar(50) DEFAULT NULL COMMENT 'Data Version',
  PRIMARY KEY (`code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Resources';

--
-- Gegevens worden uitgevoerd voor tabel `core_resource`
--

INSERT INTO `core_resource` (`code`, `version`, `data_version`) VALUES
('adminnotification_setup', '1.6.0.0', '1.6.0.0'),
('admin_setup', '1.6.1.0', '1.6.1.0'),
('api_setup', '1.6.0.0', '1.6.0.0'),
('backup_setup', '1.6.0.0', '1.6.0.0'),
('bundle_setup', '1.6.0.0', '1.6.0.0'),
('catalogindex_setup', '1.6.0.0', '1.6.0.0'),
('cataloginventory_setup', '1.6.0.0', '1.6.0.0'),
('catalogrule_setup', '1.6.0.1', '1.6.0.1'),
('catalogsearch_setup', '1.6.0.0', '1.6.0.0'),
('catalog_setup', '1.6.0.0.8', '1.6.0.0.8'),
('checkout_setup', '1.6.0.0', '1.6.0.0'),
('cms_setup', '1.6.0.0', '1.6.0.0'),
('compiler_setup', '1.6.0.0', '1.6.0.0'),
('contacts_setup', '1.6.0.0', '1.6.0.0'),
('core_setup', '1.6.0.2', '1.6.0.2'),
('cron_setup', '1.6.0.0', '1.6.0.0'),
('customer_setup', '1.6.1.0', '1.6.1.0'),
('dataflow_setup', '1.6.0.0', '1.6.0.0'),
('directory_setup', '1.6.0.0', '1.6.0.0'),
('downloadable_setup', '1.6.0.0.1', '1.6.0.0.1'),
('easyexploded_setup', '0.1.0', '0.1.0'),
('eav_setup', '1.6.0.0', '1.6.0.0'),
('giftmessage_setup', '1.6.0.0', '1.6.0.0'),
('googlecheckout_setup', '1.6.0.1', '1.6.0.1'),
('importexport_setup', '1.6.0.2', '1.6.0.2'),
('index_setup', '1.6.0.0', '1.6.0.0'),
('jqueryall_setup', '1.0', '1.0'),
('log_setup', '1.6.0.0', '1.6.0.0'),
('moneybookers_setup', '1.6.0.0', '1.6.0.0'),
('navadmin_setup', '0.1.0', '0.1.0'),
('newsletter_setup', '1.6.0.0', '1.6.0.0'),
('paygate_setup', '1.6.0.0', '1.6.0.0'),
('payment_setup', '1.6.0.0', '1.6.0.0'),
('paypaluk_setup', '1.6.0.0', '1.6.0.0'),
('paypal_setup', '1.6.0.2', '1.6.0.2'),
('persistent_setup', '1.0.0.0', '1.0.0.0'),
('poll_setup', '1.6.0.0', '1.6.0.0'),
('productalert_setup', '1.6.0.0', '1.6.0.0'),
('rating_setup', '1.6.0.0', '1.6.0.0'),
('reports_setup', '1.6.0.0', '1.6.0.0'),
('review_setup', '1.6.0.0', '1.6.0.0'),
('salesrule_setup', '1.6.0.1', '1.6.0.1'),
('sales_setup', '1.6.0.4', '1.6.0.4'),
('sendfriend_setup', '1.6.0.0', '1.6.0.0'),
('shipping_setup', '1.6.0.0', '1.6.0.0'),
('sitemap_setup', '1.6.0.0', '1.6.0.0'),
('tag_setup', '1.6.0.0', '1.6.0.0'),
('tax_setup', '1.6.0.3', '1.6.0.3'),
('usa_setup', '1.6.0.1', '1.6.0.1'),
('weee_setup', '1.6.0.0', '1.6.0.0'),
('widget_setup', '1.6.0.0', '1.6.0.0'),
('wishlist_setup', '1.6.0.0', '1.6.0.0'),
('xmlconnect_setup', '1.6.0.0', '1.6.0.0');

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `core_session`
--

CREATE TABLE IF NOT EXISTS `core_session` (
  `session_id` varchar(255) NOT NULL COMMENT 'Session Id',
  `session_expires` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Date of Session Expiration',
  `session_data` mediumblob NOT NULL COMMENT 'Session Data',
  PRIMARY KEY (`session_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Database Sessions Storage';

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `core_store`
--

CREATE TABLE IF NOT EXISTS `core_store` (
  `store_id` smallint(5) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Store Id',
  `code` varchar(32) DEFAULT NULL COMMENT 'Code',
  `website_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Website Id',
  `group_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Group Id',
  `name` varchar(255) NOT NULL COMMENT 'Store Name',
  `sort_order` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Store Sort Order',
  `is_active` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Store Activity',
  PRIMARY KEY (`store_id`),
  UNIQUE KEY `UNQ_CORE_STORE_CODE` (`code`),
  KEY `IDX_CORE_STORE_WEBSITE_ID` (`website_id`),
  KEY `IDX_CORE_STORE_IS_ACTIVE_SORT_ORDER` (`is_active`,`sort_order`),
  KEY `IDX_CORE_STORE_GROUP_ID` (`group_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='Stores' AUTO_INCREMENT=2 ;

--
-- Gegevens worden uitgevoerd voor tabel `core_store`
--

INSERT INTO `core_store` (`store_id`, `code`, `website_id`, `group_id`, `name`, `sort_order`, `is_active`) VALUES
(0, 'admin', 0, 0, 'Admin', 0, 1),
(1, 'default', 1, 1, 'Default Store View', 0, 1);

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `core_store_group`
--

CREATE TABLE IF NOT EXISTS `core_store_group` (
  `group_id` smallint(5) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Group Id',
  `website_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Website Id',
  `name` varchar(255) NOT NULL COMMENT 'Store Group Name',
  `root_category_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Root Category Id',
  `default_store_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Default Store Id',
  PRIMARY KEY (`group_id`),
  KEY `IDX_CORE_STORE_GROUP_WEBSITE_ID` (`website_id`),
  KEY `IDX_CORE_STORE_GROUP_DEFAULT_STORE_ID` (`default_store_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='Store Groups' AUTO_INCREMENT=2 ;

--
-- Gegevens worden uitgevoerd voor tabel `core_store_group`
--

INSERT INTO `core_store_group` (`group_id`, `website_id`, `name`, `root_category_id`, `default_store_id`) VALUES
(0, 0, 'Default', 0, 0),
(1, 1, 'Main Website Store', 2, 1);

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `core_translate`
--

CREATE TABLE IF NOT EXISTS `core_translate` (
  `key_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Key Id of Translation',
  `string` varchar(255) NOT NULL DEFAULT 'Translate String' COMMENT 'Translation String',
  `store_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Store Id',
  `translate` varchar(255) DEFAULT NULL COMMENT 'Translate',
  `locale` varchar(20) NOT NULL DEFAULT 'en_US' COMMENT 'Locale',
  PRIMARY KEY (`key_id`),
  UNIQUE KEY `UNQ_CORE_TRANSLATE_STORE_ID_LOCALE_STRING` (`store_id`,`locale`,`string`),
  KEY `IDX_CORE_TRANSLATE_STORE_ID` (`store_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='Translations' AUTO_INCREMENT=14 ;

--
-- Gegevens worden uitgevoerd voor tabel `core_translate`
--

INSERT INTO `core_translate` (`key_id`, `string`, `store_id`, `translate`, `locale`) VALUES
(1, 'Mage_Checkout::My Cart', 0, 'Mijn winkelwagen', 'nl_NL'),
(2, 'Mage_Customer::My Account', 0, 'Mijn account', 'nl_NL'),
(3, 'Mage_Checkout::Checkout', 0, 'Afrekenen', 'nl_NL'),
(6, 'Mage_Customer::Log In', 0, 'Log In', 'nl_NL'),
(7, 'Mage_Checkout::You have no items in your shopping cart.', 0, 'U heeft niets in uw winkelwagen', 'nl_NL'),
(8, 'Mage_Core::Search', 0, 'Zoeken', 'nl_NL'),
(9, 'Mage_Checkout::There is <a href="%s">1 item</a> in your cart.', 0, 'Er zit <a href="%s">1 product</a> in uw winkelwagen.', 'nl_NL'),
(10, 'Mage_Checkout::There are <a href="%s">%s items</a> in your cart.', 0, 'U heeft <a href="%s">%s producten</a> in uw winkelwagen.', 'nl_NL'),
(11, 'Mage_Checkout::My Cart (%s items)', 0, 'Mijn winkelwagen (%s)', 'nl_NL'),
(12, 'Mage_Checkout::My Cart (%s item)', 0, 'Mijn winkelwagen (%s)', 'nl_NL'),
(13, 'Mage_Customer::Log Out', 0, 'Log uit', 'nl_NL');

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `core_url_rewrite`
--

CREATE TABLE IF NOT EXISTS `core_url_rewrite` (
  `url_rewrite_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Rewrite Id',
  `store_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Store Id',
  `id_path` varchar(255) DEFAULT NULL COMMENT 'Id Path',
  `request_path` varchar(255) DEFAULT NULL COMMENT 'Request Path',
  `target_path` varchar(255) DEFAULT NULL COMMENT 'Target Path',
  `is_system` smallint(5) unsigned DEFAULT '1' COMMENT 'Defines is Rewrite System',
  `options` varchar(255) DEFAULT NULL COMMENT 'Options',
  `description` varchar(255) DEFAULT NULL COMMENT 'Deascription',
  `category_id` int(10) unsigned DEFAULT NULL COMMENT 'Category Id',
  `product_id` int(10) unsigned DEFAULT NULL COMMENT 'Product Id',
  PRIMARY KEY (`url_rewrite_id`),
  UNIQUE KEY `UNQ_CORE_URL_REWRITE_REQUEST_PATH_STORE_ID` (`request_path`,`store_id`),
  UNIQUE KEY `UNQ_CORE_URL_REWRITE_ID_PATH_IS_SYSTEM_STORE_ID` (`id_path`,`is_system`,`store_id`),
  KEY `IDX_CORE_URL_REWRITE_TARGET_PATH_STORE_ID` (`target_path`,`store_id`),
  KEY `IDX_CORE_URL_REWRITE_ID_PATH` (`id_path`),
  KEY `IDX_CORE_URL_REWRITE_STORE_ID` (`store_id`),
  KEY `FK_CORE_URL_REWRITE_CTGR_ID_CAT_CTGR_ENTT_ENTT_ID` (`category_id`),
  KEY `FK_CORE_URL_REWRITE_PRODUCT_ID_CATALOG_CATEGORY_ENTITY_ENTITY_ID` (`product_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='Url Rewrites' AUTO_INCREMENT=53 ;

--
-- Gegevens worden uitgevoerd voor tabel `core_url_rewrite`
--

INSERT INTO `core_url_rewrite` (`url_rewrite_id`, `store_id`, `id_path`, `request_path`, `target_path`, `is_system`, `options`, `description`, `category_id`, `product_id`) VALUES
(1, 1, 'product/1', 'asussabertoothx79.html', 'catalog/product/view/id/1', 1, NULL, NULL, NULL, 1),
(2, 1, 'category/5', 'componenten.html', 'catalog/category/view/id/5', 1, NULL, NULL, 5, NULL),
(3, 1, 'category/6', 'componenten/behuizingen.html', 'catalog/category/view/id/6', 1, NULL, NULL, 6, NULL),
(4, 1, '84504200_1330609250', 'monitoren.html', 'componenten.html', 0, 'RP', NULL, 5, NULL),
(5, 1, '87345000_1330609250', 'monitoren/kleine-monitoren.html', 'componenten/behuizingen.html', 0, 'RP', NULL, 6, NULL),
(6, 1, '61746500_1330609332', 'componenten/kleine-monitoren.html', 'componenten/behuizingen.html', 0, 'RP', NULL, 6, NULL),
(7, 1, 'category/7', 'componenten/moederborden.html', 'catalog/category/view/id/7', 1, NULL, NULL, 7, NULL),
(8, 1, 'category/8', 'componenten/processors.html', 'catalog/category/view/id/8', 1, NULL, NULL, 8, NULL),
(9, 1, 'category/9', 'componenten/voedingen.html', 'catalog/category/view/id/9', 1, NULL, NULL, 9, NULL),
(10, 1, 'category/10', 'componenten/videokaarten.html', 'catalog/category/view/id/10', 1, NULL, NULL, 10, NULL),
(11, 1, 'category/11', 'componenten/harde-schijven-intern.html', 'catalog/category/view/id/11', 1, NULL, NULL, 11, NULL),
(12, 1, 'category/12', 'componenten/systeem-geheugen.html', 'catalog/category/view/id/12', 1, NULL, NULL, 12, NULL),
(13, 1, 'category/15', 'monitoren-1.html', 'catalog/category/view/id/15', 1, NULL, NULL, 15, NULL),
(15, 1, 'category/17', 'opslag.html', 'catalog/category/view/id/17', 1, NULL, NULL, 17, NULL),
(16, 1, 'category/18', 'opslag/subcategorie-1.html', 'catalog/category/view/id/18', 1, NULL, NULL, 18, NULL),
(17, 1, 'category/19', 'pc-notebooks.html', 'catalog/category/view/id/19', 1, NULL, NULL, 19, NULL),
(19, 1, 'category/21', 'printers.html', 'catalog/category/view/id/21', 1, NULL, NULL, 21, NULL),
(20, 1, 'category/22', 'printers/laser.html', 'catalog/category/view/id/22', 1, NULL, NULL, 22, NULL),
(21, 1, 'category/23', 'media.html', 'catalog/category/view/id/23', 1, NULL, NULL, 23, NULL),
(22, 1, 'category/24', 'media/media-players.html', 'catalog/category/view/id/24', 1, NULL, NULL, 24, NULL),
(23, 1, 'category/25', 'software.html', 'catalog/category/view/id/25', 1, NULL, NULL, 25, NULL),
(24, 1, 'category/26', 'software/antivirus-beveiliging.html', 'catalog/category/view/id/26', 1, NULL, NULL, 26, NULL),
(25, 1, 'category/27', 'opslag/harde-schijven-extern.html', 'catalog/category/view/id/27', 1, NULL, NULL, 27, NULL),
(26, 1, '65316400_1330616434', 'pc-s-notebooks.html', 'pc-notebooks.html', 0, 'RP', NULL, 19, NULL),
(27, 1, '45670100_1330616513', 'printers/subcategorie-1.html', 'printers/laser.html', 0, 'RP', NULL, 22, NULL),
(28, 1, 'category/28', 'printers/all-in-one.html', 'catalog/category/view/id/28', 1, NULL, NULL, 28, NULL),
(29, 1, 'category/29', 'printers/scanner.html', 'catalog/category/view/id/29', 1, NULL, NULL, 29, NULL),
(30, 1, '16400700_1330616603', 'media/subcategorie-1.html', 'media/media-players.html', 0, 'RP', NULL, 24, NULL),
(31, 1, 'category/30', 'media/media-recorders.html', 'catalog/category/view/id/30', 1, NULL, NULL, 30, NULL),
(32, 1, '30496800_1330616665', 'software/subcategorie-1.html', 'software/antivirus-beveiliging.html', 0, 'RP', NULL, 26, NULL),
(33, 1, 'category/31', 'software/besturingssystemen.html', 'catalog/category/view/id/31', 1, NULL, NULL, 31, NULL),
(34, 1, 'category/32', 'software/office-toepassingen.html', 'catalog/category/view/id/32', 1, NULL, NULL, 32, NULL),
(35, 1, 'category/33', 'software/foto-video-muziek.html', 'catalog/category/view/id/33', 1, NULL, NULL, 33, NULL),
(36, 1, '62507000_1330629937', 'eizo-monitor.html', 'asussabertoothx79.html', 0, 'RP', NULL, NULL, 1),
(37, 1, 'product/1/5', 'componenten/asussabertoothx79.html', 'catalog/product/view/id/1/category/5', 1, NULL, NULL, 5, 1),
(38, 1, 'product/1/7', 'componenten/moederborden/asussabertoothx79.html', 'catalog/product/view/id/1/category/7', 1, NULL, NULL, 7, 1),
(39, 1, 'product/2', 'coolermastersilentpro.html', 'catalog/product/view/id/2', 1, NULL, NULL, NULL, 2),
(40, 1, 'product/2/5', 'componenten/coolermastersilentpro.html', 'catalog/product/view/id/2/category/5', 1, NULL, NULL, 5, 2),
(41, 1, 'product/2/9', 'componenten/voedingen/coolermastersilentpro.html', 'catalog/product/view/id/2/category/9', 1, NULL, NULL, 9, 2),
(42, 1, 'product/3', 'eizo-cg241w-bk24.html', 'catalog/product/view/id/3', 1, NULL, NULL, NULL, 3),
(43, 1, 'product/3/15', 'monitoren-1/eizo-cg241w-bk24.html', 'catalog/product/view/id/3/category/15', 1, NULL, NULL, 15, 3),
(44, 1, 'product/4', 'qnapts119pii.html', 'catalog/product/view/id/4', 1, NULL, NULL, NULL, 4),
(45, 1, 'product/4/23', 'media/qnapts119pii.html', 'catalog/product/view/id/4/category/23', 1, NULL, NULL, 23, 4),
(46, 1, 'product/4/24', 'media/media-players/qnapts119pii.html', 'catalog/product/view/id/4/category/24', 1, NULL, NULL, 24, 4),
(47, 1, 'category/36', 'toppers.html', 'catalog/category/view/id/36', 1, NULL, NULL, 36, NULL),
(48, 1, 'product/1/36', 'toppers/asussabertoothx79.html', 'catalog/product/view/id/1/category/36', 1, NULL, NULL, 36, 1),
(49, 1, 'product/2/36', 'toppers/coolermastersilentpro.html', 'catalog/product/view/id/2/category/36', 1, NULL, NULL, 36, 2),
(50, 1, 'product/3/36', 'toppers/eizo-cg241w-bk24.html', 'catalog/product/view/id/3/category/36', 1, NULL, NULL, 36, 3),
(51, 1, 'product/4/36', 'toppers/qnapts119pii.html', 'catalog/product/view/id/4/category/36', 1, NULL, NULL, 36, 4),
(52, 1, 'category/37', 'toppers-rij-02.html', 'catalog/category/view/id/37', 1, NULL, NULL, 37, NULL);

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `core_variable`
--

CREATE TABLE IF NOT EXISTS `core_variable` (
  `variable_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Variable Id',
  `code` varchar(255) DEFAULT NULL COMMENT 'Variable Code',
  `name` varchar(255) DEFAULT NULL COMMENT 'Variable Name',
  PRIMARY KEY (`variable_id`),
  UNIQUE KEY `UNQ_CORE_VARIABLE_CODE` (`code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Variables' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `core_variable_value`
--

CREATE TABLE IF NOT EXISTS `core_variable_value` (
  `value_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Variable Value Id',
  `variable_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Variable Id',
  `store_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Store Id',
  `plain_value` text COMMENT 'Plain Text Value',
  `html_value` text COMMENT 'Html Value',
  PRIMARY KEY (`value_id`),
  UNIQUE KEY `UNQ_CORE_VARIABLE_VALUE_VARIABLE_ID_STORE_ID` (`variable_id`,`store_id`),
  KEY `IDX_CORE_VARIABLE_VALUE_VARIABLE_ID` (`variable_id`),
  KEY `IDX_CORE_VARIABLE_VALUE_STORE_ID` (`store_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Variable Value' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `core_website`
--

CREATE TABLE IF NOT EXISTS `core_website` (
  `website_id` smallint(5) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Website Id',
  `code` varchar(32) DEFAULT NULL COMMENT 'Code',
  `name` varchar(64) DEFAULT NULL COMMENT 'Website Name',
  `sort_order` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Sort Order',
  `default_group_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Default Group Id',
  `is_default` smallint(5) unsigned DEFAULT '0' COMMENT 'Defines Is Website Default',
  PRIMARY KEY (`website_id`),
  UNIQUE KEY `UNQ_CORE_WEBSITE_CODE` (`code`),
  KEY `IDX_CORE_WEBSITE_SORT_ORDER` (`sort_order`),
  KEY `IDX_CORE_WEBSITE_DEFAULT_GROUP_ID` (`default_group_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='Websites' AUTO_INCREMENT=2 ;

--
-- Gegevens worden uitgevoerd voor tabel `core_website`
--

INSERT INTO `core_website` (`website_id`, `code`, `name`, `sort_order`, `default_group_id`, `is_default`) VALUES
(0, 'admin', 'Admin', 0, 0, 0),
(1, 'base', 'Main Website', 0, 1, 1);

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `coupon_aggregated`
--

CREATE TABLE IF NOT EXISTS `coupon_aggregated` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Id',
  `period` date NOT NULL COMMENT 'Period',
  `store_id` smallint(5) unsigned DEFAULT NULL COMMENT 'Store Id',
  `order_status` varchar(50) DEFAULT NULL COMMENT 'Order Status',
  `coupon_code` varchar(50) DEFAULT NULL COMMENT 'Coupon Code',
  `coupon_uses` int(11) NOT NULL DEFAULT '0' COMMENT 'Coupon Uses',
  `subtotal_amount` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Subtotal Amount',
  `discount_amount` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Discount Amount',
  `total_amount` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Total Amount',
  `subtotal_amount_actual` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Subtotal Amount Actual',
  `discount_amount_actual` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Discount Amount Actual',
  `total_amount_actual` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Total Amount Actual',
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNQ_COUPON_AGGREGATED_PERIOD_STORE_ID_ORDER_STATUS_COUPON_CODE` (`period`,`store_id`,`order_status`,`coupon_code`),
  KEY `IDX_COUPON_AGGREGATED_STORE_ID` (`store_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Coupon Aggregated' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `coupon_aggregated_order`
--

CREATE TABLE IF NOT EXISTS `coupon_aggregated_order` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Id',
  `period` date NOT NULL COMMENT 'Period',
  `store_id` smallint(5) unsigned DEFAULT NULL COMMENT 'Store Id',
  `order_status` varchar(50) DEFAULT NULL COMMENT 'Order Status',
  `coupon_code` varchar(50) DEFAULT NULL COMMENT 'Coupon Code',
  `coupon_uses` int(11) NOT NULL DEFAULT '0' COMMENT 'Coupon Uses',
  `subtotal_amount` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Subtotal Amount',
  `discount_amount` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Discount Amount',
  `total_amount` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Total Amount',
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNQ_COUPON_AGGRED_ORDER_PERIOD_STORE_ID_ORDER_STS_COUPON_CODE` (`period`,`store_id`,`order_status`,`coupon_code`),
  KEY `IDX_COUPON_AGGREGATED_ORDER_STORE_ID` (`store_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Coupon Aggregated Order' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `coupon_aggregated_updated`
--

CREATE TABLE IF NOT EXISTS `coupon_aggregated_updated` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Id',
  `period` date NOT NULL COMMENT 'Period',
  `store_id` smallint(5) unsigned DEFAULT NULL COMMENT 'Store Id',
  `order_status` varchar(50) DEFAULT NULL COMMENT 'Order Status',
  `coupon_code` varchar(50) DEFAULT NULL COMMENT 'Coupon Code',
  `coupon_uses` int(11) NOT NULL DEFAULT '0' COMMENT 'Coupon Uses',
  `subtotal_amount` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Subtotal Amount',
  `discount_amount` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Discount Amount',
  `total_amount` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Total Amount',
  `subtotal_amount_actual` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Subtotal Amount Actual',
  `discount_amount_actual` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Discount Amount Actual',
  `total_amount_actual` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Total Amount Actual',
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNQ_COUPON_AGGRED_UPDATED_PERIOD_STORE_ID_ORDER_STS_COUPON_CODE` (`period`,`store_id`,`order_status`,`coupon_code`),
  KEY `IDX_COUPON_AGGREGATED_UPDATED_STORE_ID` (`store_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Coupon Aggregated Updated' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `cron_schedule`
--

CREATE TABLE IF NOT EXISTS `cron_schedule` (
  `schedule_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Schedule Id',
  `job_code` varchar(255) NOT NULL DEFAULT '0' COMMENT 'Job Code',
  `status` varchar(7) NOT NULL DEFAULT 'pending' COMMENT 'Status',
  `messages` text COMMENT 'Messages',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Created At',
  `scheduled_at` timestamp NULL DEFAULT NULL COMMENT 'Scheduled At',
  `executed_at` timestamp NULL DEFAULT NULL COMMENT 'Executed At',
  `finished_at` timestamp NULL DEFAULT NULL COMMENT 'Finished At',
  PRIMARY KEY (`schedule_id`),
  KEY `IDX_CRON_SCHEDULE_JOB_CODE` (`job_code`),
  KEY `IDX_CRON_SCHEDULE_SCHEDULED_AT_STATUS` (`scheduled_at`,`status`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Cron Schedule' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `customer_address_entity`
--

CREATE TABLE IF NOT EXISTS `customer_address_entity` (
  `entity_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Entity Id',
  `entity_type_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Entity Type Id',
  `attribute_set_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Attribute Set Id',
  `increment_id` varchar(50) DEFAULT NULL COMMENT 'Increment Id',
  `parent_id` int(10) unsigned DEFAULT NULL COMMENT 'Parent Id',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Created At',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'Updated At',
  `is_active` smallint(5) unsigned NOT NULL DEFAULT '1' COMMENT 'Is Active',
  PRIMARY KEY (`entity_id`),
  KEY `IDX_CUSTOMER_ADDRESS_ENTITY_PARENT_ID` (`parent_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Customer Address Entity' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `customer_address_entity_datetime`
--

CREATE TABLE IF NOT EXISTS `customer_address_entity_datetime` (
  `value_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Value Id',
  `entity_type_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Entity Type Id',
  `attribute_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Attribute Id',
  `entity_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Entity Id',
  `value` datetime NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'Value',
  PRIMARY KEY (`value_id`),
  UNIQUE KEY `UNQ_CUSTOMER_ADDRESS_ENTITY_DATETIME_ENTITY_ID_ATTRIBUTE_ID` (`entity_id`,`attribute_id`),
  KEY `IDX_CUSTOMER_ADDRESS_ENTITY_DATETIME_ENTITY_TYPE_ID` (`entity_type_id`),
  KEY `IDX_CUSTOMER_ADDRESS_ENTITY_DATETIME_ATTRIBUTE_ID` (`attribute_id`),
  KEY `IDX_CUSTOMER_ADDRESS_ENTITY_DATETIME_ENTITY_ID` (`entity_id`),
  KEY `IDX_CSTR_ADDR_ENTT_DTIME_ENTT_ID_ATTR_ID_VAL` (`entity_id`,`attribute_id`,`value`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Customer Address Entity Datetime' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `customer_address_entity_decimal`
--

CREATE TABLE IF NOT EXISTS `customer_address_entity_decimal` (
  `value_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Value Id',
  `entity_type_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Entity Type Id',
  `attribute_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Attribute Id',
  `entity_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Entity Id',
  `value` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Value',
  PRIMARY KEY (`value_id`),
  UNIQUE KEY `UNQ_CUSTOMER_ADDRESS_ENTITY_DECIMAL_ENTITY_ID_ATTRIBUTE_ID` (`entity_id`,`attribute_id`),
  KEY `IDX_CUSTOMER_ADDRESS_ENTITY_DECIMAL_ENTITY_TYPE_ID` (`entity_type_id`),
  KEY `IDX_CUSTOMER_ADDRESS_ENTITY_DECIMAL_ATTRIBUTE_ID` (`attribute_id`),
  KEY `IDX_CUSTOMER_ADDRESS_ENTITY_DECIMAL_ENTITY_ID` (`entity_id`),
  KEY `IDX_CUSTOMER_ADDRESS_ENTITY_DECIMAL_ENTITY_ID_ATTRIBUTE_ID_VALUE` (`entity_id`,`attribute_id`,`value`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Customer Address Entity Decimal' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `customer_address_entity_int`
--

CREATE TABLE IF NOT EXISTS `customer_address_entity_int` (
  `value_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Value Id',
  `entity_type_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Entity Type Id',
  `attribute_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Attribute Id',
  `entity_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Entity Id',
  `value` int(11) NOT NULL DEFAULT '0' COMMENT 'Value',
  PRIMARY KEY (`value_id`),
  UNIQUE KEY `UNQ_CUSTOMER_ADDRESS_ENTITY_INT_ENTITY_ID_ATTRIBUTE_ID` (`entity_id`,`attribute_id`),
  KEY `IDX_CUSTOMER_ADDRESS_ENTITY_INT_ENTITY_TYPE_ID` (`entity_type_id`),
  KEY `IDX_CUSTOMER_ADDRESS_ENTITY_INT_ATTRIBUTE_ID` (`attribute_id`),
  KEY `IDX_CUSTOMER_ADDRESS_ENTITY_INT_ENTITY_ID` (`entity_id`),
  KEY `IDX_CUSTOMER_ADDRESS_ENTITY_INT_ENTITY_ID_ATTRIBUTE_ID_VALUE` (`entity_id`,`attribute_id`,`value`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Customer Address Entity Int' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `customer_address_entity_text`
--

CREATE TABLE IF NOT EXISTS `customer_address_entity_text` (
  `value_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Value Id',
  `entity_type_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Entity Type Id',
  `attribute_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Attribute Id',
  `entity_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Entity Id',
  `value` text NOT NULL COMMENT 'Value',
  PRIMARY KEY (`value_id`),
  UNIQUE KEY `UNQ_CUSTOMER_ADDRESS_ENTITY_TEXT_ENTITY_ID_ATTRIBUTE_ID` (`entity_id`,`attribute_id`),
  KEY `IDX_CUSTOMER_ADDRESS_ENTITY_TEXT_ENTITY_TYPE_ID` (`entity_type_id`),
  KEY `IDX_CUSTOMER_ADDRESS_ENTITY_TEXT_ATTRIBUTE_ID` (`attribute_id`),
  KEY `IDX_CUSTOMER_ADDRESS_ENTITY_TEXT_ENTITY_ID` (`entity_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Customer Address Entity Text' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `customer_address_entity_varchar`
--

CREATE TABLE IF NOT EXISTS `customer_address_entity_varchar` (
  `value_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Value Id',
  `entity_type_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Entity Type Id',
  `attribute_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Attribute Id',
  `entity_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Entity Id',
  `value` varchar(255) DEFAULT NULL COMMENT 'Value',
  PRIMARY KEY (`value_id`),
  UNIQUE KEY `UNQ_CUSTOMER_ADDRESS_ENTITY_VARCHAR_ENTITY_ID_ATTRIBUTE_ID` (`entity_id`,`attribute_id`),
  KEY `IDX_CUSTOMER_ADDRESS_ENTITY_VARCHAR_ENTITY_TYPE_ID` (`entity_type_id`),
  KEY `IDX_CUSTOMER_ADDRESS_ENTITY_VARCHAR_ATTRIBUTE_ID` (`attribute_id`),
  KEY `IDX_CUSTOMER_ADDRESS_ENTITY_VARCHAR_ENTITY_ID` (`entity_id`),
  KEY `IDX_CUSTOMER_ADDRESS_ENTITY_VARCHAR_ENTITY_ID_ATTRIBUTE_ID_VALUE` (`entity_id`,`attribute_id`,`value`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Customer Address Entity Varchar' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `customer_eav_attribute`
--

CREATE TABLE IF NOT EXISTS `customer_eav_attribute` (
  `attribute_id` smallint(5) unsigned NOT NULL COMMENT 'Attribute Id',
  `is_visible` smallint(5) unsigned NOT NULL DEFAULT '1' COMMENT 'Is Visible',
  `input_filter` varchar(255) DEFAULT NULL COMMENT 'Input Filter',
  `multiline_count` smallint(5) unsigned NOT NULL DEFAULT '1' COMMENT 'Multiline Count',
  `validate_rules` text COMMENT 'Validate Rules',
  `is_system` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Is System',
  `sort_order` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Sort Order',
  `data_model` varchar(255) DEFAULT NULL COMMENT 'Data Model',
  PRIMARY KEY (`attribute_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Customer Eav Attribute';

--
-- Gegevens worden uitgevoerd voor tabel `customer_eav_attribute`
--

INSERT INTO `customer_eav_attribute` (`attribute_id`, `is_visible`, `input_filter`, `multiline_count`, `validate_rules`, `is_system`, `sort_order`, `data_model`) VALUES
(1, 1, NULL, 0, NULL, 1, 10, NULL),
(2, 0, NULL, 0, NULL, 1, 0, NULL),
(3, 1, NULL, 0, NULL, 1, 20, NULL),
(4, 0, NULL, 0, NULL, 0, 30, NULL),
(5, 1, NULL, 0, 'a:2:{s:15:"max_text_length";i:255;s:15:"min_text_length";i:1;}', 1, 40, NULL),
(6, 0, NULL, 0, NULL, 0, 50, NULL),
(7, 1, NULL, 0, 'a:2:{s:15:"max_text_length";i:255;s:15:"min_text_length";i:1;}', 1, 60, NULL),
(8, 0, NULL, 0, NULL, 0, 70, NULL),
(9, 1, NULL, 0, 'a:1:{s:16:"input_validation";s:5:"email";}', 1, 80, NULL),
(10, 1, NULL, 0, NULL, 1, 25, NULL),
(11, 0, 'date', 0, 'a:1:{s:16:"input_validation";s:4:"date";}', 0, 90, NULL),
(12, 0, NULL, 0, NULL, 1, 0, NULL),
(13, 0, NULL, 0, NULL, 1, 0, NULL),
(14, 0, NULL, 0, NULL, 1, 0, NULL),
(15, 0, NULL, 0, 'a:1:{s:15:"max_text_length";i:255;}', 0, 100, NULL),
(16, 0, NULL, 0, NULL, 1, 0, NULL),
(17, 0, NULL, 0, NULL, 0, 0, NULL),
(18, 0, NULL, 0, 'a:0:{}', 0, 110, NULL),
(19, 0, NULL, 0, NULL, 0, 10, NULL),
(20, 1, NULL, 0, 'a:2:{s:15:"max_text_length";i:255;s:15:"min_text_length";i:1;}', 1, 20, NULL),
(21, 0, NULL, 0, NULL, 0, 30, NULL),
(22, 1, NULL, 0, 'a:2:{s:15:"max_text_length";i:255;s:15:"min_text_length";i:1;}', 1, 40, NULL),
(23, 0, NULL, 0, NULL, 0, 50, NULL),
(24, 1, NULL, 0, 'a:2:{s:15:"max_text_length";i:255;s:15:"min_text_length";i:1;}', 1, 60, NULL),
(25, 1, NULL, 2, 'a:2:{s:15:"max_text_length";i:255;s:15:"min_text_length";i:1;}', 1, 70, NULL),
(26, 1, NULL, 0, 'a:2:{s:15:"max_text_length";i:255;s:15:"min_text_length";i:1;}', 1, 80, NULL),
(27, 1, NULL, 0, NULL, 1, 90, NULL),
(28, 1, NULL, 0, NULL, 1, 100, NULL),
(29, 1, NULL, 0, NULL, 1, 100, NULL),
(30, 1, NULL, 0, 'a:0:{}', 1, 110, 'customer/attribute_data_postcode'),
(31, 1, NULL, 0, 'a:2:{s:15:"max_text_length";i:255;s:15:"min_text_length";i:1;}', 1, 120, NULL),
(32, 1, NULL, 0, 'a:2:{s:15:"max_text_length";i:255;s:15:"min_text_length";i:1;}', 1, 130, NULL),
(33, 0, NULL, 0, NULL, 1, 0, NULL),
(34, 0, NULL, 0, 'a:1:{s:16:"input_validation";s:4:"date";}', 1, 0, NULL);

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `customer_eav_attribute_website`
--

CREATE TABLE IF NOT EXISTS `customer_eav_attribute_website` (
  `attribute_id` smallint(5) unsigned NOT NULL COMMENT 'Attribute Id',
  `website_id` smallint(5) unsigned NOT NULL COMMENT 'Website Id',
  `is_visible` smallint(5) unsigned DEFAULT NULL COMMENT 'Is Visible',
  `is_required` smallint(5) unsigned DEFAULT NULL COMMENT 'Is Required',
  `default_value` text COMMENT 'Default Value',
  `multiline_count` smallint(5) unsigned DEFAULT NULL COMMENT 'Multiline Count',
  PRIMARY KEY (`attribute_id`,`website_id`),
  KEY `IDX_CUSTOMER_EAV_ATTRIBUTE_WEBSITE_WEBSITE_ID` (`website_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Customer Eav Attribute Website';

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `customer_entity`
--

CREATE TABLE IF NOT EXISTS `customer_entity` (
  `entity_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Entity Id',
  `entity_type_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Entity Type Id',
  `attribute_set_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Attribute Set Id',
  `website_id` smallint(5) unsigned DEFAULT NULL COMMENT 'Website Id',
  `email` varchar(255) DEFAULT NULL COMMENT 'Email',
  `group_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Group Id',
  `increment_id` varchar(50) DEFAULT NULL COMMENT 'Increment Id',
  `store_id` smallint(5) unsigned DEFAULT '0' COMMENT 'Store Id',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Created At',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'Updated At',
  `is_active` smallint(5) unsigned NOT NULL DEFAULT '1' COMMENT 'Is Active',
  PRIMARY KEY (`entity_id`),
  KEY `IDX_CUSTOMER_ENTITY_STORE_ID` (`store_id`),
  KEY `IDX_CUSTOMER_ENTITY_ENTITY_TYPE_ID` (`entity_type_id`),
  KEY `IDX_CUSTOMER_ENTITY_EMAIL_WEBSITE_ID` (`email`,`website_id`),
  KEY `IDX_CUSTOMER_ENTITY_WEBSITE_ID` (`website_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='Customer Entity' AUTO_INCREMENT=2 ;

--
-- Gegevens worden uitgevoerd voor tabel `customer_entity`
--

INSERT INTO `customer_entity` (`entity_id`, `entity_type_id`, `attribute_set_id`, `website_id`, `email`, `group_id`, `increment_id`, `store_id`, `created_at`, `updated_at`, `is_active`) VALUES
(1, 1, 0, 1, 'stan_mel@hotmail.com', 1, NULL, 0, '2012-02-28 11:19:10', '2012-02-28 11:19:10', 1);

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `customer_entity_datetime`
--

CREATE TABLE IF NOT EXISTS `customer_entity_datetime` (
  `value_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Value Id',
  `entity_type_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Entity Type Id',
  `attribute_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Attribute Id',
  `entity_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Entity Id',
  `value` datetime NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'Value',
  PRIMARY KEY (`value_id`),
  UNIQUE KEY `UNQ_CUSTOMER_ENTITY_DATETIME_ENTITY_ID_ATTRIBUTE_ID` (`entity_id`,`attribute_id`),
  KEY `IDX_CUSTOMER_ENTITY_DATETIME_ENTITY_TYPE_ID` (`entity_type_id`),
  KEY `IDX_CUSTOMER_ENTITY_DATETIME_ATTRIBUTE_ID` (`attribute_id`),
  KEY `IDX_CUSTOMER_ENTITY_DATETIME_ENTITY_ID` (`entity_id`),
  KEY `IDX_CUSTOMER_ENTITY_DATETIME_ENTITY_ID_ATTRIBUTE_ID_VALUE` (`entity_id`,`attribute_id`,`value`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Customer Entity Datetime' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `customer_entity_decimal`
--

CREATE TABLE IF NOT EXISTS `customer_entity_decimal` (
  `value_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Value Id',
  `entity_type_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Entity Type Id',
  `attribute_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Attribute Id',
  `entity_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Entity Id',
  `value` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Value',
  PRIMARY KEY (`value_id`),
  UNIQUE KEY `UNQ_CUSTOMER_ENTITY_DECIMAL_ENTITY_ID_ATTRIBUTE_ID` (`entity_id`,`attribute_id`),
  KEY `IDX_CUSTOMER_ENTITY_DECIMAL_ENTITY_TYPE_ID` (`entity_type_id`),
  KEY `IDX_CUSTOMER_ENTITY_DECIMAL_ATTRIBUTE_ID` (`attribute_id`),
  KEY `IDX_CUSTOMER_ENTITY_DECIMAL_ENTITY_ID` (`entity_id`),
  KEY `IDX_CUSTOMER_ENTITY_DECIMAL_ENTITY_ID_ATTRIBUTE_ID_VALUE` (`entity_id`,`attribute_id`,`value`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Customer Entity Decimal' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `customer_entity_int`
--

CREATE TABLE IF NOT EXISTS `customer_entity_int` (
  `value_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Value Id',
  `entity_type_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Entity Type Id',
  `attribute_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Attribute Id',
  `entity_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Entity Id',
  `value` int(11) NOT NULL DEFAULT '0' COMMENT 'Value',
  PRIMARY KEY (`value_id`),
  UNIQUE KEY `UNQ_CUSTOMER_ENTITY_INT_ENTITY_ID_ATTRIBUTE_ID` (`entity_id`,`attribute_id`),
  KEY `IDX_CUSTOMER_ENTITY_INT_ENTITY_TYPE_ID` (`entity_type_id`),
  KEY `IDX_CUSTOMER_ENTITY_INT_ATTRIBUTE_ID` (`attribute_id`),
  KEY `IDX_CUSTOMER_ENTITY_INT_ENTITY_ID` (`entity_id`),
  KEY `IDX_CUSTOMER_ENTITY_INT_ENTITY_ID_ATTRIBUTE_ID_VALUE` (`entity_id`,`attribute_id`,`value`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='Customer Entity Int' AUTO_INCREMENT=2 ;

--
-- Gegevens worden uitgevoerd voor tabel `customer_entity_int`
--

INSERT INTO `customer_entity_int` (`value_id`, `entity_type_id`, `attribute_id`, `entity_id`, `value`) VALUES
(1, 1, 18, 1, 1);

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `customer_entity_text`
--

CREATE TABLE IF NOT EXISTS `customer_entity_text` (
  `value_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Value Id',
  `entity_type_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Entity Type Id',
  `attribute_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Attribute Id',
  `entity_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Entity Id',
  `value` text NOT NULL COMMENT 'Value',
  PRIMARY KEY (`value_id`),
  UNIQUE KEY `UNQ_CUSTOMER_ENTITY_TEXT_ENTITY_ID_ATTRIBUTE_ID` (`entity_id`,`attribute_id`),
  KEY `IDX_CUSTOMER_ENTITY_TEXT_ENTITY_TYPE_ID` (`entity_type_id`),
  KEY `IDX_CUSTOMER_ENTITY_TEXT_ATTRIBUTE_ID` (`attribute_id`),
  KEY `IDX_CUSTOMER_ENTITY_TEXT_ENTITY_ID` (`entity_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Customer Entity Text' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `customer_entity_varchar`
--

CREATE TABLE IF NOT EXISTS `customer_entity_varchar` (
  `value_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Value Id',
  `entity_type_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Entity Type Id',
  `attribute_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Attribute Id',
  `entity_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Entity Id',
  `value` varchar(255) DEFAULT NULL COMMENT 'Value',
  PRIMARY KEY (`value_id`),
  UNIQUE KEY `UNQ_CUSTOMER_ENTITY_VARCHAR_ENTITY_ID_ATTRIBUTE_ID` (`entity_id`,`attribute_id`),
  KEY `IDX_CUSTOMER_ENTITY_VARCHAR_ENTITY_TYPE_ID` (`entity_type_id`),
  KEY `IDX_CUSTOMER_ENTITY_VARCHAR_ATTRIBUTE_ID` (`attribute_id`),
  KEY `IDX_CUSTOMER_ENTITY_VARCHAR_ENTITY_ID` (`entity_id`),
  KEY `IDX_CUSTOMER_ENTITY_VARCHAR_ENTITY_ID_ATTRIBUTE_ID_VALUE` (`entity_id`,`attribute_id`,`value`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='Customer Entity Varchar' AUTO_INCREMENT=9 ;

--
-- Gegevens worden uitgevoerd voor tabel `customer_entity_varchar`
--

INSERT INTO `customer_entity_varchar` (`value_id`, `entity_type_id`, `attribute_id`, `entity_id`, `value`) VALUES
(1, 1, 4, 1, NULL),
(2, 1, 5, 1, 'Stan'),
(3, 1, 6, 1, NULL),
(4, 1, 7, 1, 'Mel'),
(5, 1, 8, 1, NULL),
(6, 1, 15, 1, NULL),
(7, 1, 12, 1, 'd543639e177b33e50d00b11283b5c081:c6'),
(8, 1, 3, 1, 'Admin');

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `customer_form_attribute`
--

CREATE TABLE IF NOT EXISTS `customer_form_attribute` (
  `form_code` varchar(32) NOT NULL COMMENT 'Form Code',
  `attribute_id` smallint(5) unsigned NOT NULL COMMENT 'Attribute Id',
  PRIMARY KEY (`form_code`,`attribute_id`),
  KEY `IDX_CUSTOMER_FORM_ATTRIBUTE_ATTRIBUTE_ID` (`attribute_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Customer Form Attribute';

--
-- Gegevens worden uitgevoerd voor tabel `customer_form_attribute`
--

INSERT INTO `customer_form_attribute` (`form_code`, `attribute_id`) VALUES
('adminhtml_customer', 1),
('adminhtml_customer', 3),
('adminhtml_customer', 4),
('checkout_register', 4),
('customer_account_create', 4),
('customer_account_edit', 4),
('adminhtml_customer', 5),
('checkout_register', 5),
('customer_account_create', 5),
('customer_account_edit', 5),
('adminhtml_customer', 6),
('checkout_register', 6),
('customer_account_create', 6),
('customer_account_edit', 6),
('adminhtml_customer', 7),
('checkout_register', 7),
('customer_account_create', 7),
('customer_account_edit', 7),
('adminhtml_customer', 8),
('checkout_register', 8),
('customer_account_create', 8),
('customer_account_edit', 8),
('adminhtml_checkout', 9),
('adminhtml_customer', 9),
('checkout_register', 9),
('customer_account_create', 9),
('customer_account_edit', 9),
('adminhtml_checkout', 10),
('adminhtml_customer', 10),
('adminhtml_checkout', 11),
('adminhtml_customer', 11),
('checkout_register', 11),
('customer_account_create', 11),
('customer_account_edit', 11),
('adminhtml_checkout', 15),
('adminhtml_customer', 15),
('checkout_register', 15),
('customer_account_create', 15),
('customer_account_edit', 15),
('adminhtml_customer', 17),
('checkout_register', 17),
('customer_account_create', 17),
('customer_account_edit', 17),
('adminhtml_checkout', 18),
('adminhtml_customer', 18),
('checkout_register', 18),
('customer_account_create', 18),
('customer_account_edit', 18),
('adminhtml_customer_address', 19),
('customer_address_edit', 19),
('customer_register_address', 19),
('adminhtml_customer_address', 20),
('customer_address_edit', 20),
('customer_register_address', 20),
('adminhtml_customer_address', 21),
('customer_address_edit', 21),
('customer_register_address', 21),
('adminhtml_customer_address', 22),
('customer_address_edit', 22),
('customer_register_address', 22),
('adminhtml_customer_address', 23),
('customer_address_edit', 23),
('customer_register_address', 23),
('adminhtml_customer_address', 24),
('customer_address_edit', 24),
('customer_register_address', 24),
('adminhtml_customer_address', 25),
('customer_address_edit', 25),
('customer_register_address', 25),
('adminhtml_customer_address', 26),
('customer_address_edit', 26),
('customer_register_address', 26),
('adminhtml_customer_address', 27),
('customer_address_edit', 27),
('customer_register_address', 27),
('adminhtml_customer_address', 28),
('customer_address_edit', 28),
('customer_register_address', 28),
('adminhtml_customer_address', 29),
('customer_address_edit', 29),
('customer_register_address', 29),
('adminhtml_customer_address', 30),
('customer_address_edit', 30),
('customer_register_address', 30),
('adminhtml_customer_address', 31),
('customer_address_edit', 31),
('customer_register_address', 31),
('adminhtml_customer_address', 32),
('customer_address_edit', 32),
('customer_register_address', 32);

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `customer_group`
--

CREATE TABLE IF NOT EXISTS `customer_group` (
  `customer_group_id` smallint(5) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Customer Group Id',
  `customer_group_code` varchar(32) NOT NULL COMMENT 'Customer Group Code',
  `tax_class_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Tax Class Id',
  PRIMARY KEY (`customer_group_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='Customer Group' AUTO_INCREMENT=4 ;

--
-- Gegevens worden uitgevoerd voor tabel `customer_group`
--

INSERT INTO `customer_group` (`customer_group_id`, `customer_group_code`, `tax_class_id`) VALUES
(0, 'NOT LOGGED IN', 3),
(1, 'General', 3),
(2, 'Wholesale', 3),
(3, 'Retailer', 3);

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `dataflow_batch`
--

CREATE TABLE IF NOT EXISTS `dataflow_batch` (
  `batch_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Batch Id',
  `profile_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Profile ID',
  `store_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Store Id',
  `adapter` varchar(128) DEFAULT NULL COMMENT 'Adapter',
  `params` text COMMENT 'Parameters',
  `created_at` timestamp NULL DEFAULT NULL COMMENT 'Created At',
  PRIMARY KEY (`batch_id`),
  KEY `IDX_DATAFLOW_BATCH_PROFILE_ID` (`profile_id`),
  KEY `IDX_DATAFLOW_BATCH_STORE_ID` (`store_id`),
  KEY `IDX_DATAFLOW_BATCH_CREATED_AT` (`created_at`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Dataflow Batch' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `dataflow_batch_export`
--

CREATE TABLE IF NOT EXISTS `dataflow_batch_export` (
  `batch_export_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Batch Export Id',
  `batch_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Batch Id',
  `batch_data` longtext COMMENT 'Batch Data',
  `status` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Status',
  PRIMARY KEY (`batch_export_id`),
  KEY `IDX_DATAFLOW_BATCH_EXPORT_BATCH_ID` (`batch_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Dataflow Batch Export' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `dataflow_batch_import`
--

CREATE TABLE IF NOT EXISTS `dataflow_batch_import` (
  `batch_import_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Batch Import Id',
  `batch_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Batch Id',
  `batch_data` longtext COMMENT 'Batch Data',
  `status` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Status',
  PRIMARY KEY (`batch_import_id`),
  KEY `IDX_DATAFLOW_BATCH_IMPORT_BATCH_ID` (`batch_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Dataflow Batch Import' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `dataflow_import_data`
--

CREATE TABLE IF NOT EXISTS `dataflow_import_data` (
  `import_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Import Id',
  `session_id` int(11) DEFAULT NULL COMMENT 'Session Id',
  `serial_number` int(11) NOT NULL DEFAULT '0' COMMENT 'Serial Number',
  `value` text COMMENT 'Value',
  `status` int(11) NOT NULL DEFAULT '0' COMMENT 'Status',
  PRIMARY KEY (`import_id`),
  KEY `IDX_DATAFLOW_IMPORT_DATA_SESSION_ID` (`session_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Dataflow Import Data' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `dataflow_profile`
--

CREATE TABLE IF NOT EXISTS `dataflow_profile` (
  `profile_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Profile Id',
  `name` varchar(255) DEFAULT NULL COMMENT 'Name',
  `created_at` timestamp NULL DEFAULT NULL COMMENT 'Created At',
  `updated_at` timestamp NULL DEFAULT NULL COMMENT 'Updated At',
  `actions_xml` text COMMENT 'Actions Xml',
  `gui_data` text COMMENT 'Gui Data',
  `direction` varchar(6) DEFAULT NULL COMMENT 'Direction',
  `entity_type` varchar(64) DEFAULT NULL COMMENT 'Entity Type',
  `store_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Store Id',
  `data_transfer` varchar(11) DEFAULT NULL COMMENT 'Data Transfer',
  PRIMARY KEY (`profile_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='Dataflow Profile' AUTO_INCREMENT=7 ;

--
-- Gegevens worden uitgevoerd voor tabel `dataflow_profile`
--

INSERT INTO `dataflow_profile` (`profile_id`, `name`, `created_at`, `updated_at`, `actions_xml`, `gui_data`, `direction`, `entity_type`, `store_id`, `data_transfer`) VALUES
(1, 'Export All Products', '2012-02-28 10:55:41', '2012-02-28 10:55:41', '<action type="catalog/convert_adapter_product" method="load">\\r\\n    <var name="store"><![CDATA[0]]></var>\\r\\n</action>\\r\\n\\r\\n<action type="catalog/convert_parser_product" method="unparse">\\r\\n    <var name="store"><![CDATA[0]]></var>\\r\\n</action>\\r\\n\\r\\n<action type="dataflow/convert_mapper_column" method="map">\\r\\n</action>\\r\\n\\r\\n<action type="dataflow/convert_parser_csv" method="unparse">\\r\\n    <var name="delimiter"><![CDATA[,]]></var>\\r\\n    <var name="enclose"><![CDATA["]]></var>\\r\\n    <var name="fieldnames">true</var>\\r\\n</action>\\r\\n\\r\\n<action type="dataflow/convert_adapter_io" method="save">\\r\\n    <var name="type">file</var>\\r\\n    <var name="path">var/export</var>\\r\\n    <var name="filename"><![CDATA[export_all_products.csv]]></var>\\r\\n</action>\\r\\n\\r\\n', 'a:5:{s:4:"file";a:7:{s:4:"type";s:4:"file";s:8:"filename";s:23:"export_all_products.csv";s:4:"path";s:10:"var/export";s:4:"host";s:0:"";s:4:"user";s:0:"";s:8:"password";s:0:"";s:7:"passive";s:0:"";}s:5:"parse";a:5:{s:4:"type";s:3:"csv";s:12:"single_sheet";s:0:"";s:9:"delimiter";s:1:",";s:7:"enclose";s:1:""";s:10:"fieldnames";s:4:"true";}s:3:"map";a:3:{s:14:"only_specified";s:0:"";s:7:"product";a:2:{s:2:"db";a:0:{}s:4:"file";a:0:{}}s:8:"customer";a:2:{s:2:"db";a:0:{}s:4:"file";a:0:{}}}s:7:"product";a:1:{s:6:"filter";a:8:{s:4:"name";s:0:"";s:3:"sku";s:0:"";s:4:"type";s:1:"0";s:13:"attribute_set";s:0:"";s:5:"price";a:2:{s:4:"from";s:0:"";s:2:"to";s:0:"";}s:3:"qty";a:2:{s:4:"from";s:0:"";s:2:"to";s:0:"";}s:10:"visibility";s:1:"0";s:6:"status";s:1:"0";}}s:8:"customer";a:1:{s:6:"filter";a:10:{s:9:"firstname";s:0:"";s:8:"lastname";s:0:"";s:5:"email";s:0:"";s:5:"group";s:1:"0";s:10:"adressType";s:15:"default_billing";s:9:"telephone";s:0:"";s:8:"postcode";s:0:"";s:7:"country";s:0:"";s:6:"region";s:0:"";s:10:"created_at";a:2:{s:4:"from";s:0:"";s:2:"to";s:0:"";}}}}', 'export', 'product', 0, 'file'),
(2, 'Export Product Stocks', '2012-02-28 10:55:41', '2012-02-28 10:55:41', '<action type="catalog/convert_adapter_product" method="load">\\r\\n    <var name="store"><![CDATA[0]]></var>\\r\\n</action>\\r\\n\\r\\n<action type="catalog/convert_parser_product" method="unparse">\\r\\n    <var name="store"><![CDATA[0]]></var>\\r\\n</action>\\r\\n\\r\\n<action type="dataflow/convert_mapper_column" method="map">\\r\\n</action>\\r\\n\\r\\n<action type="dataflow/convert_parser_csv" method="unparse">\\r\\n    <var name="delimiter"><![CDATA[,]]></var>\\r\\n    <var name="enclose"><![CDATA["]]></var>\\r\\n    <var name="fieldnames">true</var>\\r\\n</action>\\r\\n\\r\\n<action type="dataflow/convert_adapter_io" method="save">\\r\\n    <var name="type">file</var>\\r\\n    <var name="path">var/export</var>\\r\\n    <var name="filename"><![CDATA[export_all_products.csv]]></var>\\r\\n</action>\\r\\n\\r\\n', 'a:5:{s:4:"file";a:7:{s:4:"type";s:4:"file";s:8:"filename";s:25:"export_product_stocks.csv";s:4:"path";s:10:"var/export";s:4:"host";s:0:"";s:4:"user";s:0:"";s:8:"password";s:0:"";s:7:"passive";s:0:"";}s:5:"parse";a:5:{s:4:"type";s:3:"csv";s:12:"single_sheet";s:0:"";s:9:"delimiter";s:1:",";s:7:"enclose";s:1:""";s:10:"fieldnames";s:4:"true";}s:3:"map";a:3:{s:14:"only_specified";s:4:"true";s:7:"product";a:2:{s:2:"db";a:4:{i:1;s:5:"store";i:2;s:3:"sku";i:3;s:3:"qty";i:4;s:11:"is_in_stock";}s:4:"file";a:4:{i:1;s:5:"store";i:2;s:3:"sku";i:3;s:3:"qty";i:4;s:11:"is_in_stock";}}s:8:"customer";a:2:{s:2:"db";a:0:{}s:4:"file";a:0:{}}}s:7:"product";a:1:{s:6:"filter";a:8:{s:4:"name";s:0:"";s:3:"sku";s:0:"";s:4:"type";s:1:"0";s:13:"attribute_set";s:0:"";s:5:"price";a:2:{s:4:"from";s:0:"";s:2:"to";s:0:"";}s:3:"qty";a:2:{s:4:"from";s:0:"";s:2:"to";s:0:"";}s:10:"visibility";s:1:"0";s:6:"status";s:1:"0";}}s:8:"customer";a:1:{s:6:"filter";a:10:{s:9:"firstname";s:0:"";s:8:"lastname";s:0:"";s:5:"email";s:0:"";s:5:"group";s:1:"0";s:10:"adressType";s:15:"default_billing";s:9:"telephone";s:0:"";s:8:"postcode";s:0:"";s:7:"country";s:0:"";s:6:"region";s:0:"";s:10:"created_at";a:2:{s:4:"from";s:0:"";s:2:"to";s:0:"";}}}}', 'export', 'product', 0, 'file'),
(3, 'Import All Products', '2012-02-28 10:55:41', '2012-02-28 10:55:41', '<action type="dataflow/convert_parser_csv" method="parse">\\r\\n    <var name="delimiter"><![CDATA[,]]></var>\\r\\n    <var name="enclose"><![CDATA["]]></var>\\r\\n    <var name="fieldnames">true</var>\\r\\n    <var name="store"><![CDATA[0]]></var>\\r\\n    <var name="adapter">catalog/convert_adapter_product</var>\\r\\n    <var name="method">parse</var>\\r\\n</action>', 'a:5:{s:4:"file";a:7:{s:4:"type";s:4:"file";s:8:"filename";s:23:"export_all_products.csv";s:4:"path";s:10:"var/export";s:4:"host";s:0:"";s:4:"user";s:0:"";s:8:"password";s:0:"";s:7:"passive";s:0:"";}s:5:"parse";a:5:{s:4:"type";s:3:"csv";s:12:"single_sheet";s:0:"";s:9:"delimiter";s:1:",";s:7:"enclose";s:1:""";s:10:"fieldnames";s:4:"true";}s:3:"map";a:3:{s:14:"only_specified";s:0:"";s:7:"product";a:2:{s:2:"db";a:0:{}s:4:"file";a:0:{}}s:8:"customer";a:2:{s:2:"db";a:0:{}s:4:"file";a:0:{}}}s:7:"product";a:1:{s:6:"filter";a:8:{s:4:"name";s:0:"";s:3:"sku";s:0:"";s:4:"type";s:1:"0";s:13:"attribute_set";s:0:"";s:5:"price";a:2:{s:4:"from";s:0:"";s:2:"to";s:0:"";}s:3:"qty";a:2:{s:4:"from";s:0:"";s:2:"to";s:0:"";}s:10:"visibility";s:1:"0";s:6:"status";s:1:"0";}}s:8:"customer";a:1:{s:6:"filter";a:10:{s:9:"firstname";s:0:"";s:8:"lastname";s:0:"";s:5:"email";s:0:"";s:5:"group";s:1:"0";s:10:"adressType";s:15:"default_billing";s:9:"telephone";s:0:"";s:8:"postcode";s:0:"";s:7:"country";s:0:"";s:6:"region";s:0:"";s:10:"created_at";a:2:{s:4:"from";s:0:"";s:2:"to";s:0:"";}}}}', 'import', 'product', 0, 'interactive'),
(4, 'Import Product Stocks', '2012-02-28 10:55:41', '2012-02-28 10:55:41', '<action type="dataflow/convert_parser_csv" method="parse">\\r\\n    <var name="delimiter"><![CDATA[,]]></var>\\r\\n    <var name="enclose"><![CDATA["]]></var>\\r\\n    <var name="fieldnames">true</var>\\r\\n    <var name="store"><![CDATA[0]]></var>\\r\\n    <var name="adapter">catalog/convert_adapter_product</var>\\r\\n    <var name="method">parse</var>\\r\\n</action>', 'a:5:{s:4:"file";a:7:{s:4:"type";s:4:"file";s:8:"filename";s:18:"export_product.csv";s:4:"path";s:10:"var/export";s:4:"host";s:0:"";s:4:"user";s:0:"";s:8:"password";s:0:"";s:7:"passive";s:0:"";}s:5:"parse";a:5:{s:4:"type";s:3:"csv";s:12:"single_sheet";s:0:"";s:9:"delimiter";s:1:",";s:7:"enclose";s:1:""";s:10:"fieldnames";s:4:"true";}s:3:"map";a:3:{s:14:"only_specified";s:0:"";s:7:"product";a:2:{s:2:"db";a:0:{}s:4:"file";a:0:{}}s:8:"customer";a:2:{s:2:"db";a:0:{}s:4:"file";a:0:{}}}s:7:"product";a:1:{s:6:"filter";a:8:{s:4:"name";s:0:"";s:3:"sku";s:0:"";s:4:"type";s:1:"0";s:13:"attribute_set";s:0:"";s:5:"price";a:2:{s:4:"from";s:0:"";s:2:"to";s:0:"";}s:3:"qty";a:2:{s:4:"from";s:0:"";s:2:"to";s:0:"";}s:10:"visibility";s:1:"0";s:6:"status";s:1:"0";}}s:8:"customer";a:1:{s:6:"filter";a:10:{s:9:"firstname";s:0:"";s:8:"lastname";s:0:"";s:5:"email";s:0:"";s:5:"group";s:1:"0";s:10:"adressType";s:15:"default_billing";s:9:"telephone";s:0:"";s:8:"postcode";s:0:"";s:7:"country";s:0:"";s:6:"region";s:0:"";s:10:"created_at";a:2:{s:4:"from";s:0:"";s:2:"to";s:0:"";}}}}', 'import', 'product', 0, 'interactive'),
(5, 'Export Customers', '2012-02-28 10:55:41', '2012-02-28 10:55:41', '<action type="customer/convert_adapter_customer" method="load">\\r\\n    <var name="store"><![CDATA[0]]></var>\\r\\n    <var name="filter/adressType"><![CDATA[default_billing]]></var>\\r\\n</action>\\r\\n\\r\\n<action type="customer/convert_parser_customer" method="unparse">\\r\\n    <var name="store"><![CDATA[0]]></var>\\r\\n</action>\\r\\n\\r\\n<action type="dataflow/convert_mapper_column" method="map">\\r\\n</action>\\r\\n\\r\\n<action type="dataflow/convert_parser_csv" method="unparse">\\r\\n    <var name="delimiter"><![CDATA[,]]></var>\\r\\n    <var name="enclose"><![CDATA["]]></var>\\r\\n    <var name="fieldnames">true</var>\\r\\n</action>\\r\\n\\r\\n<action type="dataflow/convert_adapter_io" method="save">\\r\\n    <var name="type">file</var>\\r\\n    <var name="path">var/export</var>\\r\\n    <var name="filename"><![CDATA[export_customers.csv]]></var>\\r\\n</action>\\r\\n\\r\\n', 'a:5:{s:4:"file";a:7:{s:4:"type";s:4:"file";s:8:"filename";s:20:"export_customers.csv";s:4:"path";s:10:"var/export";s:4:"host";s:0:"";s:4:"user";s:0:"";s:8:"password";s:0:"";s:7:"passive";s:0:"";}s:5:"parse";a:5:{s:4:"type";s:3:"csv";s:12:"single_sheet";s:0:"";s:9:"delimiter";s:1:",";s:7:"enclose";s:1:""";s:10:"fieldnames";s:4:"true";}s:3:"map";a:3:{s:14:"only_specified";s:0:"";s:7:"product";a:2:{s:2:"db";a:0:{}s:4:"file";a:0:{}}s:8:"customer";a:2:{s:2:"db";a:0:{}s:4:"file";a:0:{}}}s:7:"product";a:1:{s:6:"filter";a:8:{s:4:"name";s:0:"";s:3:"sku";s:0:"";s:4:"type";s:1:"0";s:13:"attribute_set";s:0:"";s:5:"price";a:2:{s:4:"from";s:0:"";s:2:"to";s:0:"";}s:3:"qty";a:2:{s:4:"from";s:0:"";s:2:"to";s:0:"";}s:10:"visibility";s:1:"0";s:6:"status";s:1:"0";}}s:8:"customer";a:1:{s:6:"filter";a:10:{s:9:"firstname";s:0:"";s:8:"lastname";s:0:"";s:5:"email";s:0:"";s:5:"group";s:1:"0";s:10:"adressType";s:15:"default_billing";s:9:"telephone";s:0:"";s:8:"postcode";s:0:"";s:7:"country";s:0:"";s:6:"region";s:0:"";s:10:"created_at";a:2:{s:4:"from";s:0:"";s:2:"to";s:0:"";}}}}', 'export', 'customer', 0, 'file'),
(6, 'Import Customers', '2012-02-28 10:55:41', '2012-02-28 10:55:41', '<action type="dataflow/convert_parser_csv" method="parse">\\r\\n    <var name="delimiter"><![CDATA[,]]></var>\\r\\n    <var name="enclose"><![CDATA["]]></var>\\r\\n    <var name="fieldnames">true</var>\\r\\n    <var name="store"><![CDATA[0]]></var>\\r\\n    <var name="adapter">customer/convert_adapter_customer</var>\\r\\n    <var name="method">parse</var>\\r\\n</action>', 'a:5:{s:4:"file";a:7:{s:4:"type";s:4:"file";s:8:"filename";s:19:"export_customer.csv";s:4:"path";s:10:"var/export";s:4:"host";s:0:"";s:4:"user";s:0:"";s:8:"password";s:0:"";s:7:"passive";s:0:"";}s:5:"parse";a:5:{s:4:"type";s:3:"csv";s:12:"single_sheet";s:0:"";s:9:"delimiter";s:1:",";s:7:"enclose";s:1:""";s:10:"fieldnames";s:4:"true";}s:3:"map";a:3:{s:14:"only_specified";s:0:"";s:7:"product";a:2:{s:2:"db";a:0:{}s:4:"file";a:0:{}}s:8:"customer";a:2:{s:2:"db";a:0:{}s:4:"file";a:0:{}}}s:7:"product";a:1:{s:6:"filter";a:8:{s:4:"name";s:0:"";s:3:"sku";s:0:"";s:4:"type";s:1:"0";s:13:"attribute_set";s:0:"";s:5:"price";a:2:{s:4:"from";s:0:"";s:2:"to";s:0:"";}s:3:"qty";a:2:{s:4:"from";s:0:"";s:2:"to";s:0:"";}s:10:"visibility";s:1:"0";s:6:"status";s:1:"0";}}s:8:"customer";a:1:{s:6:"filter";a:10:{s:9:"firstname";s:0:"";s:8:"lastname";s:0:"";s:5:"email";s:0:"";s:5:"group";s:1:"0";s:10:"adressType";s:15:"default_billing";s:9:"telephone";s:0:"";s:8:"postcode";s:0:"";s:7:"country";s:0:"";s:6:"region";s:0:"";s:10:"created_at";a:2:{s:4:"from";s:0:"";s:2:"to";s:0:"";}}}}', 'import', 'customer', 0, 'interactive');

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `dataflow_profile_history`
--

CREATE TABLE IF NOT EXISTS `dataflow_profile_history` (
  `history_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'History Id',
  `profile_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Profile Id',
  `action_code` varchar(64) DEFAULT NULL COMMENT 'Action Code',
  `user_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'User Id',
  `performed_at` timestamp NULL DEFAULT NULL COMMENT 'Performed At',
  PRIMARY KEY (`history_id`),
  KEY `IDX_DATAFLOW_PROFILE_HISTORY_PROFILE_ID` (`profile_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='Dataflow Profile History' AUTO_INCREMENT=7 ;

--
-- Gegevens worden uitgevoerd voor tabel `dataflow_profile_history`
--

INSERT INTO `dataflow_profile_history` (`history_id`, `profile_id`, `action_code`, `user_id`, `performed_at`) VALUES
(1, 1, 'create', 0, '2012-02-28 10:55:41'),
(2, 2, 'create', 0, '2012-02-28 10:55:41'),
(3, 3, 'create', 0, '2012-02-28 10:55:41'),
(4, 4, 'create', 0, '2012-02-28 10:55:41'),
(5, 5, 'create', 0, '2012-02-28 10:55:41'),
(6, 6, 'create', 0, '2012-02-28 10:55:41');

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `dataflow_session`
--

CREATE TABLE IF NOT EXISTS `dataflow_session` (
  `session_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Session Id',
  `user_id` int(11) NOT NULL COMMENT 'User Id',
  `created_date` timestamp NULL DEFAULT NULL COMMENT 'Created Date',
  `file` varchar(255) DEFAULT NULL COMMENT 'File',
  `type` varchar(32) DEFAULT NULL COMMENT 'Type',
  `direction` varchar(32) DEFAULT NULL COMMENT 'Direction',
  `comment` varchar(255) DEFAULT NULL COMMENT 'Comment',
  PRIMARY KEY (`session_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Dataflow Session' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `design_change`
--

CREATE TABLE IF NOT EXISTS `design_change` (
  `design_change_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Design Change Id',
  `store_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Store Id',
  `design` varchar(255) DEFAULT NULL COMMENT 'Design',
  `date_from` date DEFAULT NULL COMMENT 'First Date of Design Activity',
  `date_to` date DEFAULT NULL COMMENT 'Last Date of Design Activity',
  PRIMARY KEY (`design_change_id`),
  KEY `IDX_DESIGN_CHANGE_STORE_ID` (`store_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='Design Changes' AUTO_INCREMENT=2 ;

--
-- Gegevens worden uitgevoerd voor tabel `design_change`
--

INSERT INTO `design_change` (`design_change_id`, `store_id`, `design`, `date_from`, `date_to`) VALUES
(1, 1, 'default/thebis', NULL, NULL);

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `directory_country`
--

CREATE TABLE IF NOT EXISTS `directory_country` (
  `country_id` varchar(2) NOT NULL DEFAULT '' COMMENT 'Country Id in ISO-2',
  `iso2_code` varchar(2) NOT NULL DEFAULT '' COMMENT 'Country ISO-2 format',
  `iso3_code` varchar(3) NOT NULL DEFAULT '' COMMENT 'Country ISO-3',
  PRIMARY KEY (`country_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Directory Country';

--
-- Gegevens worden uitgevoerd voor tabel `directory_country`
--

INSERT INTO `directory_country` (`country_id`, `iso2_code`, `iso3_code`) VALUES
('AD', 'AD', 'AND'),
('AE', 'AE', 'ARE'),
('AF', 'AF', 'AFG'),
('AG', 'AG', 'ATG'),
('AI', 'AI', 'AIA'),
('AL', 'AL', 'ALB'),
('AM', 'AM', 'ARM'),
('AN', 'AN', 'ANT'),
('AO', 'AO', 'AGO'),
('AQ', 'AQ', 'ATA'),
('AR', 'AR', 'ARG'),
('AS', 'AS', 'ASM'),
('AT', 'AT', 'AUT'),
('AU', 'AU', 'AUS'),
('AW', 'AW', 'ABW'),
('AX', 'AX', 'ALA'),
('AZ', 'AZ', 'AZE'),
('BA', 'BA', 'BIH'),
('BB', 'BB', 'BRB'),
('BD', 'BD', 'BGD'),
('BE', 'BE', 'BEL'),
('BF', 'BF', 'BFA'),
('BG', 'BG', 'BGR'),
('BH', 'BH', 'BHR'),
('BI', 'BI', 'BDI'),
('BJ', 'BJ', 'BEN'),
('BL', 'BL', 'BLM'),
('BM', 'BM', 'BMU'),
('BN', 'BN', 'BRN'),
('BO', 'BO', 'BOL'),
('BR', 'BR', 'BRA'),
('BS', 'BS', 'BHS'),
('BT', 'BT', 'BTN'),
('BV', 'BV', 'BVT'),
('BW', 'BW', 'BWA'),
('BY', 'BY', 'BLR'),
('BZ', 'BZ', 'BLZ'),
('CA', 'CA', 'CAN'),
('CC', 'CC', 'CCK'),
('CD', 'CD', 'COD'),
('CF', 'CF', 'CAF'),
('CG', 'CG', 'COG'),
('CH', 'CH', 'CHE'),
('CI', 'CI', 'CIV'),
('CK', 'CK', 'COK'),
('CL', 'CL', 'CHL'),
('CM', 'CM', 'CMR'),
('CN', 'CN', 'CHN'),
('CO', 'CO', 'COL'),
('CR', 'CR', 'CRI'),
('CU', 'CU', 'CUB'),
('CV', 'CV', 'CPV'),
('CX', 'CX', 'CXR'),
('CY', 'CY', 'CYP'),
('CZ', 'CZ', 'CZE'),
('DE', 'DE', 'DEU'),
('DJ', 'DJ', 'DJI'),
('DK', 'DK', 'DNK'),
('DM', 'DM', 'DMA'),
('DO', 'DO', 'DOM'),
('DZ', 'DZ', 'DZA'),
('EC', 'EC', 'ECU'),
('EE', 'EE', 'EST'),
('EG', 'EG', 'EGY'),
('EH', 'EH', 'ESH'),
('ER', 'ER', 'ERI'),
('ES', 'ES', 'ESP'),
('ET', 'ET', 'ETH'),
('FI', 'FI', 'FIN'),
('FJ', 'FJ', 'FJI'),
('FK', 'FK', 'FLK'),
('FM', 'FM', 'FSM'),
('FO', 'FO', 'FRO'),
('FR', 'FR', 'FRA'),
('GA', 'GA', 'GAB'),
('GB', 'GB', 'GBR'),
('GD', 'GD', 'GRD'),
('GE', 'GE', 'GEO'),
('GF', 'GF', 'GUF'),
('GG', 'GG', 'GGY'),
('GH', 'GH', 'GHA'),
('GI', 'GI', 'GIB'),
('GL', 'GL', 'GRL'),
('GM', 'GM', 'GMB'),
('GN', 'GN', 'GIN'),
('GP', 'GP', 'GLP'),
('GQ', 'GQ', 'GNQ'),
('GR', 'GR', 'GRC'),
('GS', 'GS', 'SGS'),
('GT', 'GT', 'GTM'),
('GU', 'GU', 'GUM'),
('GW', 'GW', 'GNB'),
('GY', 'GY', 'GUY'),
('HK', 'HK', 'HKG'),
('HM', 'HM', 'HMD'),
('HN', 'HN', 'HND'),
('HR', 'HR', 'HRV'),
('HT', 'HT', 'HTI'),
('HU', 'HU', 'HUN'),
('ID', 'ID', 'IDN'),
('IE', 'IE', 'IRL'),
('IL', 'IL', 'ISR'),
('IM', 'IM', 'IMN'),
('IN', 'IN', 'IND'),
('IO', 'IO', 'IOT'),
('IQ', 'IQ', 'IRQ'),
('IR', 'IR', 'IRN'),
('IS', 'IS', 'ISL'),
('IT', 'IT', 'ITA'),
('JE', 'JE', 'JEY'),
('JM', 'JM', 'JAM'),
('JO', 'JO', 'JOR'),
('JP', 'JP', 'JPN'),
('KE', 'KE', 'KEN'),
('KG', 'KG', 'KGZ'),
('KH', 'KH', 'KHM'),
('KI', 'KI', 'KIR'),
('KM', 'KM', 'COM'),
('KN', 'KN', 'KNA'),
('KP', 'KP', 'PRK'),
('KR', 'KR', 'KOR'),
('KW', 'KW', 'KWT'),
('KY', 'KY', 'CYM'),
('KZ', 'KZ', 'KAZ'),
('LA', 'LA', 'LAO'),
('LB', 'LB', 'LBN'),
('LC', 'LC', 'LCA'),
('LI', 'LI', 'LIE'),
('LK', 'LK', 'LKA'),
('LR', 'LR', 'LBR'),
('LS', 'LS', 'LSO'),
('LT', 'LT', 'LTU'),
('LU', 'LU', 'LUX'),
('LV', 'LV', 'LVA'),
('LY', 'LY', 'LBY'),
('MA', 'MA', 'MAR'),
('MC', 'MC', 'MCO'),
('MD', 'MD', 'MDA'),
('ME', 'ME', 'MNE'),
('MF', 'MF', 'MAF'),
('MG', 'MG', 'MDG'),
('MH', 'MH', 'MHL'),
('MK', 'MK', 'MKD'),
('ML', 'ML', 'MLI'),
('MM', 'MM', 'MMR'),
('MN', 'MN', 'MNG'),
('MO', 'MO', 'MAC'),
('MP', 'MP', 'MNP'),
('MQ', 'MQ', 'MTQ'),
('MR', 'MR', 'MRT'),
('MS', 'MS', 'MSR'),
('MT', 'MT', 'MLT'),
('MU', 'MU', 'MUS'),
('MV', 'MV', 'MDV'),
('MW', 'MW', 'MWI'),
('MX', 'MX', 'MEX'),
('MY', 'MY', 'MYS'),
('MZ', 'MZ', 'MOZ'),
('NA', 'NA', 'NAM'),
('NC', 'NC', 'NCL'),
('NE', 'NE', 'NER'),
('NF', 'NF', 'NFK'),
('NG', 'NG', 'NGA'),
('NI', 'NI', 'NIC'),
('NL', 'NL', 'NLD'),
('NO', 'NO', 'NOR'),
('NP', 'NP', 'NPL'),
('NR', 'NR', 'NRU'),
('NU', 'NU', 'NIU'),
('NZ', 'NZ', 'NZL'),
('OM', 'OM', 'OMN'),
('PA', 'PA', 'PAN'),
('PE', 'PE', 'PER'),
('PF', 'PF', 'PYF'),
('PG', 'PG', 'PNG'),
('PH', 'PH', 'PHL'),
('PK', 'PK', 'PAK'),
('PL', 'PL', 'POL'),
('PM', 'PM', 'SPM'),
('PN', 'PN', 'PCN'),
('PR', 'PR', 'PRI'),
('PS', 'PS', 'PSE'),
('PT', 'PT', 'PRT'),
('PW', 'PW', 'PLW'),
('PY', 'PY', 'PRY'),
('QA', 'QA', 'QAT'),
('RE', 'RE', 'REU'),
('RO', 'RO', 'ROU'),
('RS', 'RS', 'SRB'),
('RU', 'RU', 'RUS'),
('RW', 'RW', 'RWA'),
('SA', 'SA', 'SAU'),
('SB', 'SB', 'SLB'),
('SC', 'SC', 'SYC'),
('SD', 'SD', 'SDN'),
('SE', 'SE', 'SWE'),
('SG', 'SG', 'SGP'),
('SH', 'SH', 'SHN'),
('SI', 'SI', 'SVN'),
('SJ', 'SJ', 'SJM'),
('SK', 'SK', 'SVK'),
('SL', 'SL', 'SLE'),
('SM', 'SM', 'SMR'),
('SN', 'SN', 'SEN'),
('SO', 'SO', 'SOM'),
('SR', 'SR', 'SUR'),
('ST', 'ST', 'STP'),
('SV', 'SV', 'SLV'),
('SY', 'SY', 'SYR'),
('SZ', 'SZ', 'SWZ'),
('TC', 'TC', 'TCA'),
('TD', 'TD', 'TCD'),
('TF', 'TF', 'ATF'),
('TG', 'TG', 'TGO'),
('TH', 'TH', 'THA'),
('TJ', 'TJ', 'TJK'),
('TK', 'TK', 'TKL'),
('TL', 'TL', 'TLS'),
('TM', 'TM', 'TKM'),
('TN', 'TN', 'TUN'),
('TO', 'TO', 'TON'),
('TR', 'TR', 'TUR'),
('TT', 'TT', 'TTO'),
('TV', 'TV', 'TUV'),
('TW', 'TW', 'TWN'),
('TZ', 'TZ', 'TZA'),
('UA', 'UA', 'UKR'),
('UG', 'UG', 'UGA'),
('UM', 'UM', 'UMI'),
('US', 'US', 'USA'),
('UY', 'UY', 'URY'),
('UZ', 'UZ', 'UZB'),
('VA', 'VA', 'VAT'),
('VC', 'VC', 'VCT'),
('VE', 'VE', 'VEN'),
('VG', 'VG', 'VGB'),
('VI', 'VI', 'VIR'),
('VN', 'VN', 'VNM'),
('VU', 'VU', 'VUT'),
('WF', 'WF', 'WLF'),
('WS', 'WS', 'WSM'),
('YE', 'YE', 'YEM'),
('YT', 'YT', 'MYT'),
('ZA', 'ZA', 'ZAF'),
('ZM', 'ZM', 'ZMB'),
('ZW', 'ZW', 'ZWE');

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `directory_country_format`
--

CREATE TABLE IF NOT EXISTS `directory_country_format` (
  `country_format_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Country Format Id',
  `country_id` varchar(2) NOT NULL DEFAULT '' COMMENT 'Country Id in ISO-2',
  `type` varchar(30) NOT NULL DEFAULT '' COMMENT 'Country Format Type',
  `format` text NOT NULL COMMENT 'Country Format',
  PRIMARY KEY (`country_format_id`),
  UNIQUE KEY `UNQ_DIRECTORY_COUNTRY_FORMAT_COUNTRY_ID_TYPE` (`country_id`,`type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Directory Country Format' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `directory_country_region`
--

CREATE TABLE IF NOT EXISTS `directory_country_region` (
  `region_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Region Id',
  `country_id` varchar(4) NOT NULL DEFAULT '0' COMMENT 'Country Id in ISO-2',
  `code` varchar(32) NOT NULL DEFAULT '' COMMENT 'Region code',
  `default_name` varchar(255) DEFAULT NULL COMMENT 'Region Name',
  PRIMARY KEY (`region_id`),
  KEY `IDX_DIRECTORY_COUNTRY_REGION_COUNTRY_ID` (`country_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='Directory Country Region' AUTO_INCREMENT=485 ;

--
-- Gegevens worden uitgevoerd voor tabel `directory_country_region`
--

INSERT INTO `directory_country_region` (`region_id`, `country_id`, `code`, `default_name`) VALUES
(1, 'US', 'AL', 'Alabama'),
(2, 'US', 'AK', 'Alaska'),
(3, 'US', 'AS', 'American Samoa'),
(4, 'US', 'AZ', 'Arizona'),
(5, 'US', 'AR', 'Arkansas'),
(6, 'US', 'AF', 'Armed Forces Africa'),
(7, 'US', 'AA', 'Armed Forces Americas'),
(8, 'US', 'AC', 'Armed Forces Canada'),
(9, 'US', 'AE', 'Armed Forces Europe'),
(10, 'US', 'AM', 'Armed Forces Middle East'),
(11, 'US', 'AP', 'Armed Forces Pacific'),
(12, 'US', 'CA', 'California'),
(13, 'US', 'CO', 'Colorado'),
(14, 'US', 'CT', 'Connecticut'),
(15, 'US', 'DE', 'Delaware'),
(16, 'US', 'DC', 'District of Columbia'),
(17, 'US', 'FM', 'Federated States Of Micronesia'),
(18, 'US', 'FL', 'Florida'),
(19, 'US', 'GA', 'Georgia'),
(20, 'US', 'GU', 'Guam'),
(21, 'US', 'HI', 'Hawaii'),
(22, 'US', 'ID', 'Idaho'),
(23, 'US', 'IL', 'Illinois'),
(24, 'US', 'IN', 'Indiana'),
(25, 'US', 'IA', 'Iowa'),
(26, 'US', 'KS', 'Kansas'),
(27, 'US', 'KY', 'Kentucky'),
(28, 'US', 'LA', 'Louisiana'),
(29, 'US', 'ME', 'Maine'),
(30, 'US', 'MH', 'Marshall Islands'),
(31, 'US', 'MD', 'Maryland'),
(32, 'US', 'MA', 'Massachusetts'),
(33, 'US', 'MI', 'Michigan'),
(34, 'US', 'MN', 'Minnesota'),
(35, 'US', 'MS', 'Mississippi'),
(36, 'US', 'MO', 'Missouri'),
(37, 'US', 'MT', 'Montana'),
(38, 'US', 'NE', 'Nebraska'),
(39, 'US', 'NV', 'Nevada'),
(40, 'US', 'NH', 'New Hampshire'),
(41, 'US', 'NJ', 'New Jersey'),
(42, 'US', 'NM', 'New Mexico'),
(43, 'US', 'NY', 'New York'),
(44, 'US', 'NC', 'North Carolina'),
(45, 'US', 'ND', 'North Dakota'),
(46, 'US', 'MP', 'Northern Mariana Islands'),
(47, 'US', 'OH', 'Ohio'),
(48, 'US', 'OK', 'Oklahoma'),
(49, 'US', 'OR', 'Oregon'),
(50, 'US', 'PW', 'Palau'),
(51, 'US', 'PA', 'Pennsylvania'),
(52, 'US', 'PR', 'Puerto Rico'),
(53, 'US', 'RI', 'Rhode Island'),
(54, 'US', 'SC', 'South Carolina'),
(55, 'US', 'SD', 'South Dakota'),
(56, 'US', 'TN', 'Tennessee'),
(57, 'US', 'TX', 'Texas'),
(58, 'US', 'UT', 'Utah'),
(59, 'US', 'VT', 'Vermont'),
(60, 'US', 'VI', 'Virgin Islands'),
(61, 'US', 'VA', 'Virginia'),
(62, 'US', 'WA', 'Washington'),
(63, 'US', 'WV', 'West Virginia'),
(64, 'US', 'WI', 'Wisconsin'),
(65, 'US', 'WY', 'Wyoming'),
(66, 'CA', 'AB', 'Alberta'),
(67, 'CA', 'BC', 'British Columbia'),
(68, 'CA', 'MB', 'Manitoba'),
(69, 'CA', 'NL', 'Newfoundland and Labrador'),
(70, 'CA', 'NB', 'New Brunswick'),
(71, 'CA', 'NS', 'Nova Scotia'),
(72, 'CA', 'NT', 'Northwest Territories'),
(73, 'CA', 'NU', 'Nunavut'),
(74, 'CA', 'ON', 'Ontario'),
(75, 'CA', 'PE', 'Prince Edward Island'),
(76, 'CA', 'QC', 'Quebec'),
(77, 'CA', 'SK', 'Saskatchewan'),
(78, 'CA', 'YT', 'Yukon Territory'),
(79, 'DE', 'NDS', 'Niedersachsen'),
(80, 'DE', 'BAW', 'Baden-Württemberg'),
(81, 'DE', 'BAY', 'Bayern'),
(82, 'DE', 'BER', 'Berlin'),
(83, 'DE', 'BRG', 'Brandenburg'),
(84, 'DE', 'BRE', 'Bremen'),
(85, 'DE', 'HAM', 'Hamburg'),
(86, 'DE', 'HES', 'Hessen'),
(87, 'DE', 'MEC', 'Mecklenburg-Vorpommern'),
(88, 'DE', 'NRW', 'Nordrhein-Westfalen'),
(89, 'DE', 'RHE', 'Rheinland-Pfalz'),
(90, 'DE', 'SAR', 'Saarland'),
(91, 'DE', 'SAS', 'Sachsen'),
(92, 'DE', 'SAC', 'Sachsen-Anhalt'),
(93, 'DE', 'SCN', 'Schleswig-Holstein'),
(94, 'DE', 'THE', 'Thüringen'),
(95, 'AT', 'WI', 'Wien'),
(96, 'AT', 'NO', 'Niederösterreich'),
(97, 'AT', 'OO', 'Oberösterreich'),
(98, 'AT', 'SB', 'Salzburg'),
(99, 'AT', 'KN', 'Kärnten'),
(100, 'AT', 'ST', 'Steiermark'),
(101, 'AT', 'TI', 'Tirol'),
(102, 'AT', 'BL', 'Burgenland'),
(103, 'AT', 'VB', 'Voralberg'),
(104, 'CH', 'AG', 'Aargau'),
(105, 'CH', 'AI', 'Appenzell Innerrhoden'),
(106, 'CH', 'AR', 'Appenzell Ausserrhoden'),
(107, 'CH', 'BE', 'Bern'),
(108, 'CH', 'BL', 'Basel-Landschaft'),
(109, 'CH', 'BS', 'Basel-Stadt'),
(110, 'CH', 'FR', 'Freiburg'),
(111, 'CH', 'GE', 'Genf'),
(112, 'CH', 'GL', 'Glarus'),
(113, 'CH', 'GR', 'Graubünden'),
(114, 'CH', 'JU', 'Jura'),
(115, 'CH', 'LU', 'Luzern'),
(116, 'CH', 'NE', 'Neuenburg'),
(117, 'CH', 'NW', 'Nidwalden'),
(118, 'CH', 'OW', 'Obwalden'),
(119, 'CH', 'SG', 'St. Gallen'),
(120, 'CH', 'SH', 'Schaffhausen'),
(121, 'CH', 'SO', 'Solothurn'),
(122, 'CH', 'SZ', 'Schwyz'),
(123, 'CH', 'TG', 'Thurgau'),
(124, 'CH', 'TI', 'Tessin'),
(125, 'CH', 'UR', 'Uri'),
(126, 'CH', 'VD', 'Waadt'),
(127, 'CH', 'VS', 'Wallis'),
(128, 'CH', 'ZG', 'Zug'),
(129, 'CH', 'ZH', 'Zürich'),
(130, 'ES', 'A Coruсa', 'A Coruña'),
(131, 'ES', 'Alava', 'Alava'),
(132, 'ES', 'Albacete', 'Albacete'),
(133, 'ES', 'Alicante', 'Alicante'),
(134, 'ES', 'Almeria', 'Almeria'),
(135, 'ES', 'Asturias', 'Asturias'),
(136, 'ES', 'Avila', 'Avila'),
(137, 'ES', 'Badajoz', 'Badajoz'),
(138, 'ES', 'Baleares', 'Baleares'),
(139, 'ES', 'Barcelona', 'Barcelona'),
(140, 'ES', 'Burgos', 'Burgos'),
(141, 'ES', 'Caceres', 'Caceres'),
(142, 'ES', 'Cadiz', 'Cadiz'),
(143, 'ES', 'Cantabria', 'Cantabria'),
(144, 'ES', 'Castellon', 'Castellon'),
(145, 'ES', 'Ceuta', 'Ceuta'),
(146, 'ES', 'Ciudad Real', 'Ciudad Real'),
(147, 'ES', 'Cordoba', 'Cordoba'),
(148, 'ES', 'Cuenca', 'Cuenca'),
(149, 'ES', 'Girona', 'Girona'),
(150, 'ES', 'Granada', 'Granada'),
(151, 'ES', 'Guadalajara', 'Guadalajara'),
(152, 'ES', 'Guipuzcoa', 'Guipuzcoa'),
(153, 'ES', 'Huelva', 'Huelva'),
(154, 'ES', 'Huesca', 'Huesca'),
(155, 'ES', 'Jaen', 'Jaen'),
(156, 'ES', 'La Rioja', 'La Rioja'),
(157, 'ES', 'Las Palmas', 'Las Palmas'),
(158, 'ES', 'Leon', 'Leon'),
(159, 'ES', 'Lleida', 'Lleida'),
(160, 'ES', 'Lugo', 'Lugo'),
(161, 'ES', 'Madrid', 'Madrid'),
(162, 'ES', 'Malaga', 'Malaga'),
(163, 'ES', 'Melilla', 'Melilla'),
(164, 'ES', 'Murcia', 'Murcia'),
(165, 'ES', 'Navarra', 'Navarra'),
(166, 'ES', 'Ourense', 'Ourense'),
(167, 'ES', 'Palencia', 'Palencia'),
(168, 'ES', 'Pontevedra', 'Pontevedra'),
(169, 'ES', 'Salamanca', 'Salamanca'),
(170, 'ES', 'Santa Cruz de Tenerife', 'Santa Cruz de Tenerife'),
(171, 'ES', 'Segovia', 'Segovia'),
(172, 'ES', 'Sevilla', 'Sevilla'),
(173, 'ES', 'Soria', 'Soria'),
(174, 'ES', 'Tarragona', 'Tarragona'),
(175, 'ES', 'Teruel', 'Teruel'),
(176, 'ES', 'Toledo', 'Toledo'),
(177, 'ES', 'Valencia', 'Valencia'),
(178, 'ES', 'Valladolid', 'Valladolid'),
(179, 'ES', 'Vizcaya', 'Vizcaya'),
(180, 'ES', 'Zamora', 'Zamora'),
(181, 'ES', 'Zaragoza', 'Zaragoza'),
(182, 'FR', '1', 'Ain'),
(183, 'FR', '2', 'Aisne'),
(184, 'FR', '3', 'Allier'),
(185, 'FR', '4', 'Alpes-de-Haute-Provence'),
(186, 'FR', '5', 'Hautes-Alpes'),
(187, 'FR', '6', 'Alpes-Maritimes'),
(188, 'FR', '7', 'Ardèche'),
(189, 'FR', '8', 'Ardennes'),
(190, 'FR', '9', 'Ariège'),
(191, 'FR', '10', 'Aube'),
(192, 'FR', '11', 'Aude'),
(193, 'FR', '12', 'Aveyron'),
(194, 'FR', '13', 'Bouches-du-Rhône'),
(195, 'FR', '14', 'Calvados'),
(196, 'FR', '15', 'Cantal'),
(197, 'FR', '16', 'Charente'),
(198, 'FR', '17', 'Charente-Maritime'),
(199, 'FR', '18', 'Cher'),
(200, 'FR', '19', 'Corrèze'),
(201, 'FR', '2A', 'Corse-du-Sud'),
(202, 'FR', '2B', 'Haute-Corse'),
(203, 'FR', '21', 'Côte-d''Or'),
(204, 'FR', '22', 'Côtes-d''Armor'),
(205, 'FR', '23', 'Creuse'),
(206, 'FR', '24', 'Dordogne'),
(207, 'FR', '25', 'Doubs'),
(208, 'FR', '26', 'Drôme'),
(209, 'FR', '27', 'Eure'),
(210, 'FR', '28', 'Eure-et-Loir'),
(211, 'FR', '29', 'Finistère'),
(212, 'FR', '30', 'Gard'),
(213, 'FR', '31', 'Haute-Garonne'),
(214, 'FR', '32', 'Gers'),
(215, 'FR', '33', 'Gironde'),
(216, 'FR', '34', 'Hérault'),
(217, 'FR', '35', 'Ille-et-Vilaine'),
(218, 'FR', '36', 'Indre'),
(219, 'FR', '37', 'Indre-et-Loire'),
(220, 'FR', '38', 'Isère'),
(221, 'FR', '39', 'Jura'),
(222, 'FR', '40', 'Landes'),
(223, 'FR', '41', 'Loir-et-Cher'),
(224, 'FR', '42', 'Loire'),
(225, 'FR', '43', 'Haute-Loire'),
(226, 'FR', '44', 'Loire-Atlantique'),
(227, 'FR', '45', 'Loiret'),
(228, 'FR', '46', 'Lot'),
(229, 'FR', '47', 'Lot-et-Garonne'),
(230, 'FR', '48', 'Lozère'),
(231, 'FR', '49', 'Maine-et-Loire'),
(232, 'FR', '50', 'Manche'),
(233, 'FR', '51', 'Marne'),
(234, 'FR', '52', 'Haute-Marne'),
(235, 'FR', '53', 'Mayenne'),
(236, 'FR', '54', 'Meurthe-et-Moselle'),
(237, 'FR', '55', 'Meuse'),
(238, 'FR', '56', 'Morbihan'),
(239, 'FR', '57', 'Moselle'),
(240, 'FR', '58', 'Nièvre'),
(241, 'FR', '59', 'Nord'),
(242, 'FR', '60', 'Oise'),
(243, 'FR', '61', 'Orne'),
(244, 'FR', '62', 'Pas-de-Calais'),
(245, 'FR', '63', 'Puy-de-Dôme'),
(246, 'FR', '64', 'Pyrénées-Atlantiques'),
(247, 'FR', '65', 'Hautes-Pyrénées'),
(248, 'FR', '66', 'Pyrénées-Orientales'),
(249, 'FR', '67', 'Bas-Rhin'),
(250, 'FR', '68', 'Haut-Rhin'),
(251, 'FR', '69', 'Rhône'),
(252, 'FR', '70', 'Haute-Saône'),
(253, 'FR', '71', 'Saône-et-Loire'),
(254, 'FR', '72', 'Sarthe'),
(255, 'FR', '73', 'Savoie'),
(256, 'FR', '74', 'Haute-Savoie'),
(257, 'FR', '75', 'Paris'),
(258, 'FR', '76', 'Seine-Maritime'),
(259, 'FR', '77', 'Seine-et-Marne'),
(260, 'FR', '78', 'Yvelines'),
(261, 'FR', '79', 'Deux-Sèvres'),
(262, 'FR', '80', 'Somme'),
(263, 'FR', '81', 'Tarn'),
(264, 'FR', '82', 'Tarn-et-Garonne'),
(265, 'FR', '83', 'Var'),
(266, 'FR', '84', 'Vaucluse'),
(267, 'FR', '85', 'Vendée'),
(268, 'FR', '86', 'Vienne'),
(269, 'FR', '87', 'Haute-Vienne'),
(270, 'FR', '88', 'Vosges'),
(271, 'FR', '89', 'Yonne'),
(272, 'FR', '90', 'Territoire-de-Belfort'),
(273, 'FR', '91', 'Essonne'),
(274, 'FR', '92', 'Hauts-de-Seine'),
(275, 'FR', '93', 'Seine-Saint-Denis'),
(276, 'FR', '94', 'Val-de-Marne'),
(277, 'FR', '95', 'Val-d''Oise'),
(278, 'RO', 'AB', 'Alba'),
(279, 'RO', 'AR', 'Arad'),
(280, 'RO', 'AG', 'Argeş'),
(281, 'RO', 'BC', 'Bacău'),
(282, 'RO', 'BH', 'Bihor'),
(283, 'RO', 'BN', 'Bistriţa-Năsăud'),
(284, 'RO', 'BT', 'Botoşani'),
(285, 'RO', 'BV', 'Braşov'),
(286, 'RO', 'BR', 'Brăila'),
(287, 'RO', 'B', 'Bucureşti'),
(288, 'RO', 'BZ', 'Buzău'),
(289, 'RO', 'CS', 'Caraş-Severin'),
(290, 'RO', 'CL', 'Călăraşi'),
(291, 'RO', 'CJ', 'Cluj'),
(292, 'RO', 'CT', 'Constanţa'),
(293, 'RO', 'CV', 'Covasna'),
(294, 'RO', 'DB', 'Dâmboviţa'),
(295, 'RO', 'DJ', 'Dolj'),
(296, 'RO', 'GL', 'Galaţi'),
(297, 'RO', 'GR', 'Giurgiu'),
(298, 'RO', 'GJ', 'Gorj'),
(299, 'RO', 'HR', 'Harghita'),
(300, 'RO', 'HD', 'Hunedoara'),
(301, 'RO', 'IL', 'Ialomiţa'),
(302, 'RO', 'IS', 'Iaşi'),
(303, 'RO', 'IF', 'Ilfov'),
(304, 'RO', 'MM', 'Maramureş'),
(305, 'RO', 'MH', 'Mehedinţi'),
(306, 'RO', 'MS', 'Mureş'),
(307, 'RO', 'NT', 'Neamţ'),
(308, 'RO', 'OT', 'Olt'),
(309, 'RO', 'PH', 'Prahova'),
(310, 'RO', 'SM', 'Satu-Mare'),
(311, 'RO', 'SJ', 'Sălaj'),
(312, 'RO', 'SB', 'Sibiu'),
(313, 'RO', 'SV', 'Suceava'),
(314, 'RO', 'TR', 'Teleorman'),
(315, 'RO', 'TM', 'Timiş'),
(316, 'RO', 'TL', 'Tulcea'),
(317, 'RO', 'VS', 'Vaslui'),
(318, 'RO', 'VL', 'Vâlcea'),
(319, 'RO', 'VN', 'Vrancea'),
(320, 'FI', 'Lappi', 'Lappi'),
(321, 'FI', 'Pohjois-Pohjanmaa', 'Pohjois-Pohjanmaa'),
(322, 'FI', 'Kainuu', 'Kainuu'),
(323, 'FI', 'Pohjois-Karjala', 'Pohjois-Karjala'),
(324, 'FI', 'Pohjois-Savo', 'Pohjois-Savo'),
(325, 'FI', 'Etelä-Savo', 'Etelä-Savo'),
(326, 'FI', 'Etelä-Pohjanmaa', 'Etelä-Pohjanmaa'),
(327, 'FI', 'Pohjanmaa', 'Pohjanmaa'),
(328, 'FI', 'Pirkanmaa', 'Pirkanmaa'),
(329, 'FI', 'Satakunta', 'Satakunta'),
(330, 'FI', 'Keski-Pohjanmaa', 'Keski-Pohjanmaa'),
(331, 'FI', 'Keski-Suomi', 'Keski-Suomi'),
(332, 'FI', 'Varsinais-Suomi', 'Varsinais-Suomi'),
(333, 'FI', 'Etelä-Karjala', 'Etelä-Karjala'),
(334, 'FI', 'Päijät-Häme', 'Päijät-Häme'),
(335, 'FI', 'Kanta-Häme', 'Kanta-Häme'),
(336, 'FI', 'Uusimaa', 'Uusimaa'),
(337, 'FI', 'Itä-Uusimaa', 'Itä-Uusimaa'),
(338, 'FI', 'Kymenlaakso', 'Kymenlaakso'),
(339, 'FI', 'Ahvenanmaa', 'Ahvenanmaa'),
(340, 'EE', 'EE-37', 'Harjumaa'),
(341, 'EE', 'EE-39', 'Hiiumaa'),
(342, 'EE', 'EE-44', 'Ida-Virumaa'),
(343, 'EE', 'EE-49', 'Jõgevamaa'),
(344, 'EE', 'EE-51', 'Järvamaa'),
(345, 'EE', 'EE-57', 'Läänemaa'),
(346, 'EE', 'EE-59', 'Lääne-Virumaa'),
(347, 'EE', 'EE-65', 'Põlvamaa'),
(348, 'EE', 'EE-67', 'Pärnumaa'),
(349, 'EE', 'EE-70', 'Raplamaa'),
(350, 'EE', 'EE-74', 'Saaremaa'),
(351, 'EE', 'EE-78', 'Tartumaa'),
(352, 'EE', 'EE-82', 'Valgamaa'),
(353, 'EE', 'EE-84', 'Viljandimaa'),
(354, 'EE', 'EE-86', 'Võrumaa'),
(355, 'LV', 'LV-DGV', 'Daugavpils'),
(356, 'LV', 'LV-JEL', 'Jelgava'),
(357, 'LV', 'Jēkabpils', 'Jēkabpils'),
(358, 'LV', 'LV-JUR', 'Jūrmala'),
(359, 'LV', 'LV-LPX', 'Liepāja'),
(360, 'LV', 'LV-LE', 'Liepājas novads'),
(361, 'LV', 'LV-REZ', 'Rēzekne'),
(362, 'LV', 'LV-RIX', 'Rīga'),
(363, 'LV', 'LV-RI', 'Rīgas novads'),
(364, 'LV', 'Valmiera', 'Valmiera'),
(365, 'LV', 'LV-VEN', 'Ventspils'),
(366, 'LV', 'Aglonas novads', 'Aglonas novads'),
(367, 'LV', 'LV-AI', 'Aizkraukles novads'),
(368, 'LV', 'Aizputes novads', 'Aizputes novads'),
(369, 'LV', 'Aknīstes novads', 'Aknīstes novads'),
(370, 'LV', 'Alojas novads', 'Alojas novads'),
(371, 'LV', 'Alsungas novads', 'Alsungas novads'),
(372, 'LV', 'LV-AL', 'Alūksnes novads'),
(373, 'LV', 'Amatas novads', 'Amatas novads'),
(374, 'LV', 'Apes novads', 'Apes novads'),
(375, 'LV', 'Auces novads', 'Auces novads'),
(376, 'LV', 'Babītes novads', 'Babītes novads'),
(377, 'LV', 'Baldones novads', 'Baldones novads'),
(378, 'LV', 'Baltinavas novads', 'Baltinavas novads'),
(379, 'LV', 'LV-BL', 'Balvu novads'),
(380, 'LV', 'LV-BU', 'Bauskas novads'),
(381, 'LV', 'Beverīnas novads', 'Beverīnas novads'),
(382, 'LV', 'Brocēnu novads', 'Brocēnu novads'),
(383, 'LV', 'Burtnieku novads', 'Burtnieku novads'),
(384, 'LV', 'Carnikavas novads', 'Carnikavas novads'),
(385, 'LV', 'Cesvaines novads', 'Cesvaines novads'),
(386, 'LV', 'Ciblas novads', 'Ciblas novads'),
(387, 'LV', 'LV-CE', 'Cēsu novads'),
(388, 'LV', 'Dagdas novads', 'Dagdas novads'),
(389, 'LV', 'LV-DA', 'Daugavpils novads'),
(390, 'LV', 'LV-DO', 'Dobeles novads'),
(391, 'LV', 'Dundagas novads', 'Dundagas novads'),
(392, 'LV', 'Durbes novads', 'Durbes novads'),
(393, 'LV', 'Engures novads', 'Engures novads'),
(394, 'LV', 'Garkalnes novads', 'Garkalnes novads'),
(395, 'LV', 'Grobiņas novads', 'Grobiņas novads'),
(396, 'LV', 'LV-GU', 'Gulbenes novads'),
(397, 'LV', 'Iecavas novads', 'Iecavas novads'),
(398, 'LV', 'Ikšķiles novads', 'Ikšķiles novads'),
(399, 'LV', 'Ilūkstes novads', 'Ilūkstes novads'),
(400, 'LV', 'Inčukalna novads', 'Inčukalna novads'),
(401, 'LV', 'Jaunjelgavas novads', 'Jaunjelgavas novads'),
(402, 'LV', 'Jaunpiebalgas novads', 'Jaunpiebalgas novads'),
(403, 'LV', 'Jaunpils novads', 'Jaunpils novads'),
(404, 'LV', 'LV-JL', 'Jelgavas novads'),
(405, 'LV', 'LV-JK', 'Jēkabpils novads'),
(406, 'LV', 'Kandavas novads', 'Kandavas novads'),
(407, 'LV', 'Kokneses novads', 'Kokneses novads'),
(408, 'LV', 'Krimuldas novads', 'Krimuldas novads'),
(409, 'LV', 'Krustpils novads', 'Krustpils novads'),
(410, 'LV', 'LV-KR', 'Krāslavas novads'),
(411, 'LV', 'LV-KU', 'Kuldīgas novads'),
(412, 'LV', 'Kārsavas novads', 'Kārsavas novads'),
(413, 'LV', 'Lielvārdes novads', 'Lielvārdes novads'),
(414, 'LV', 'LV-LM', 'Limbažu novads'),
(415, 'LV', 'Lubānas novads', 'Lubānas novads'),
(416, 'LV', 'LV-LU', 'Ludzas novads'),
(417, 'LV', 'Līgatnes novads', 'Līgatnes novads'),
(418, 'LV', 'Līvānu novads', 'Līvānu novads'),
(419, 'LV', 'LV-MA', 'Madonas novads'),
(420, 'LV', 'Mazsalacas novads', 'Mazsalacas novads'),
(421, 'LV', 'Mālpils novads', 'Mālpils novads'),
(422, 'LV', 'Mārupes novads', 'Mārupes novads'),
(423, 'LV', 'Naukšēnu novads', 'Naukšēnu novads'),
(424, 'LV', 'Neretas novads', 'Neretas novads'),
(425, 'LV', 'Nīcas novads', 'Nīcas novads'),
(426, 'LV', 'LV-OG', 'Ogres novads'),
(427, 'LV', 'Olaines novads', 'Olaines novads'),
(428, 'LV', 'Ozolnieku novads', 'Ozolnieku novads'),
(429, 'LV', 'LV-PR', 'Preiļu novads'),
(430, 'LV', 'Priekules novads', 'Priekules novads'),
(431, 'LV', 'Priekuļu novads', 'Priekuļu novads'),
(432, 'LV', 'Pārgaujas novads', 'Pārgaujas novads'),
(433, 'LV', 'Pāvilostas novads', 'Pāvilostas novads'),
(434, 'LV', 'Pļaviņu novads', 'Pļaviņu novads'),
(435, 'LV', 'Raunas novads', 'Raunas novads'),
(436, 'LV', 'Riebiņu novads', 'Riebiņu novads'),
(437, 'LV', 'Rojas novads', 'Rojas novads'),
(438, 'LV', 'Ropažu novads', 'Ropažu novads'),
(439, 'LV', 'Rucavas novads', 'Rucavas novads'),
(440, 'LV', 'Rugāju novads', 'Rugāju novads'),
(441, 'LV', 'Rundāles novads', 'Rundāles novads'),
(442, 'LV', 'LV-RE', 'Rēzeknes novads'),
(443, 'LV', 'Rūjienas novads', 'Rūjienas novads'),
(444, 'LV', 'Salacgrīvas novads', 'Salacgrīvas novads'),
(445, 'LV', 'Salas novads', 'Salas novads'),
(446, 'LV', 'Salaspils novads', 'Salaspils novads'),
(447, 'LV', 'LV-SA', 'Saldus novads'),
(448, 'LV', 'Saulkrastu novads', 'Saulkrastu novads'),
(449, 'LV', 'Siguldas novads', 'Siguldas novads'),
(450, 'LV', 'Skrundas novads', 'Skrundas novads'),
(451, 'LV', 'Skrīveru novads', 'Skrīveru novads'),
(452, 'LV', 'Smiltenes novads', 'Smiltenes novads'),
(453, 'LV', 'Stopiņu novads', 'Stopiņu novads'),
(454, 'LV', 'Strenču novads', 'Strenču novads'),
(455, 'LV', 'Sējas novads', 'Sējas novads'),
(456, 'LV', 'LV-TA', 'Talsu novads'),
(457, 'LV', 'LV-TU', 'Tukuma novads'),
(458, 'LV', 'Tērvetes novads', 'Tērvetes novads'),
(459, 'LV', 'Vaiņodes novads', 'Vaiņodes novads'),
(460, 'LV', 'LV-VK', 'Valkas novads'),
(461, 'LV', 'LV-VM', 'Valmieras novads'),
(462, 'LV', 'Varakļānu novads', 'Varakļānu novads'),
(463, 'LV', 'Vecpiebalgas novads', 'Vecpiebalgas novads'),
(464, 'LV', 'Vecumnieku novads', 'Vecumnieku novads'),
(465, 'LV', 'LV-VE', 'Ventspils novads'),
(466, 'LV', 'Viesītes novads', 'Viesītes novads'),
(467, 'LV', 'Viļakas novads', 'Viļakas novads'),
(468, 'LV', 'Viļānu novads', 'Viļānu novads'),
(469, 'LV', 'Vārkavas novads', 'Vārkavas novads'),
(470, 'LV', 'Zilupes novads', 'Zilupes novads'),
(471, 'LV', 'Ādažu novads', 'Ādažu novads'),
(472, 'LV', 'Ērgļu novads', 'Ērgļu novads'),
(473, 'LV', 'Ķeguma novads', 'Ķeguma novads'),
(474, 'LV', 'Ķekavas novads', 'Ķekavas novads'),
(475, 'LT', 'LT-AL', 'Alytaus Apskritis'),
(476, 'LT', 'LT-KU', 'Kauno Apskritis'),
(477, 'LT', 'LT-KL', 'Klaipėdos Apskritis'),
(478, 'LT', 'LT-MR', 'Marijampolės Apskritis'),
(479, 'LT', 'LT-PN', 'Panevėžio Apskritis'),
(480, 'LT', 'LT-SA', 'Šiaulių Apskritis'),
(481, 'LT', 'LT-TA', 'Tauragės Apskritis'),
(482, 'LT', 'LT-TE', 'Telšių Apskritis'),
(483, 'LT', 'LT-UT', 'Utenos Apskritis'),
(484, 'LT', 'LT-VL', 'Vilniaus Apskritis');

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `directory_country_region_name`
--

CREATE TABLE IF NOT EXISTS `directory_country_region_name` (
  `locale` varchar(8) NOT NULL DEFAULT '' COMMENT 'Locale',
  `region_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Region Id',
  `name` varchar(255) NOT NULL DEFAULT '' COMMENT 'Region Name',
  PRIMARY KEY (`locale`,`region_id`),
  KEY `IDX_DIRECTORY_COUNTRY_REGION_NAME_REGION_ID` (`region_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Directory Country Region Name';

--
-- Gegevens worden uitgevoerd voor tabel `directory_country_region_name`
--

INSERT INTO `directory_country_region_name` (`locale`, `region_id`, `name`) VALUES
('en_US', 1, 'Alabama'),
('en_US', 2, 'Alaska'),
('en_US', 3, 'American Samoa'),
('en_US', 4, 'Arizona'),
('en_US', 5, 'Arkansas'),
('en_US', 6, 'Armed Forces Africa'),
('en_US', 7, 'Armed Forces Americas'),
('en_US', 8, 'Armed Forces Canada'),
('en_US', 9, 'Armed Forces Europe'),
('en_US', 10, 'Armed Forces Middle East'),
('en_US', 11, 'Armed Forces Pacific'),
('en_US', 12, 'California'),
('en_US', 13, 'Colorado'),
('en_US', 14, 'Connecticut'),
('en_US', 15, 'Delaware'),
('en_US', 16, 'District of Columbia'),
('en_US', 17, 'Federated States Of Micronesia'),
('en_US', 18, 'Florida'),
('en_US', 19, 'Georgia'),
('en_US', 20, 'Guam'),
('en_US', 21, 'Hawaii'),
('en_US', 22, 'Idaho'),
('en_US', 23, 'Illinois'),
('en_US', 24, 'Indiana'),
('en_US', 25, 'Iowa'),
('en_US', 26, 'Kansas'),
('en_US', 27, 'Kentucky'),
('en_US', 28, 'Louisiana'),
('en_US', 29, 'Maine'),
('en_US', 30, 'Marshall Islands'),
('en_US', 31, 'Maryland'),
('en_US', 32, 'Massachusetts'),
('en_US', 33, 'Michigan'),
('en_US', 34, 'Minnesota'),
('en_US', 35, 'Mississippi'),
('en_US', 36, 'Missouri'),
('en_US', 37, 'Montana'),
('en_US', 38, 'Nebraska'),
('en_US', 39, 'Nevada'),
('en_US', 40, 'New Hampshire'),
('en_US', 41, 'New Jersey'),
('en_US', 42, 'New Mexico'),
('en_US', 43, 'New York'),
('en_US', 44, 'North Carolina'),
('en_US', 45, 'North Dakota'),
('en_US', 46, 'Northern Mariana Islands'),
('en_US', 47, 'Ohio'),
('en_US', 48, 'Oklahoma'),
('en_US', 49, 'Oregon'),
('en_US', 50, 'Palau'),
('en_US', 51, 'Pennsylvania'),
('en_US', 52, 'Puerto Rico'),
('en_US', 53, 'Rhode Island'),
('en_US', 54, 'South Carolina'),
('en_US', 55, 'South Dakota'),
('en_US', 56, 'Tennessee'),
('en_US', 57, 'Texas'),
('en_US', 58, 'Utah'),
('en_US', 59, 'Vermont'),
('en_US', 60, 'Virgin Islands'),
('en_US', 61, 'Virginia'),
('en_US', 62, 'Washington'),
('en_US', 63, 'West Virginia'),
('en_US', 64, 'Wisconsin'),
('en_US', 65, 'Wyoming'),
('en_US', 66, 'Alberta'),
('en_US', 67, 'British Columbia'),
('en_US', 68, 'Manitoba'),
('en_US', 69, 'Newfoundland and Labrador'),
('en_US', 70, 'New Brunswick'),
('en_US', 71, 'Nova Scotia'),
('en_US', 72, 'Northwest Territories'),
('en_US', 73, 'Nunavut'),
('en_US', 74, 'Ontario'),
('en_US', 75, 'Prince Edward Island'),
('en_US', 76, 'Quebec'),
('en_US', 77, 'Saskatchewan'),
('en_US', 78, 'Yukon Territory'),
('en_US', 79, 'Niedersachsen'),
('en_US', 80, 'Baden-Württemberg'),
('en_US', 81, 'Bayern'),
('en_US', 82, 'Berlin'),
('en_US', 83, 'Brandenburg'),
('en_US', 84, 'Bremen'),
('en_US', 85, 'Hamburg'),
('en_US', 86, 'Hessen'),
('en_US', 87, 'Mecklenburg-Vorpommern'),
('en_US', 88, 'Nordrhein-Westfalen'),
('en_US', 89, 'Rheinland-Pfalz'),
('en_US', 90, 'Saarland'),
('en_US', 91, 'Sachsen'),
('en_US', 92, 'Sachsen-Anhalt'),
('en_US', 93, 'Schleswig-Holstein'),
('en_US', 94, 'Thüringen'),
('en_US', 95, 'Wien'),
('en_US', 96, 'Niederösterreich'),
('en_US', 97, 'Oberösterreich'),
('en_US', 98, 'Salzburg'),
('en_US', 99, 'Kärnten'),
('en_US', 100, 'Steiermark'),
('en_US', 101, 'Tirol'),
('en_US', 102, 'Burgenland'),
('en_US', 103, 'Voralberg'),
('en_US', 104, 'Aargau'),
('en_US', 105, 'Appenzell Innerrhoden'),
('en_US', 106, 'Appenzell Ausserrhoden'),
('en_US', 107, 'Bern'),
('en_US', 108, 'Basel-Landschaft'),
('en_US', 109, 'Basel-Stadt'),
('en_US', 110, 'Freiburg'),
('en_US', 111, 'Genf'),
('en_US', 112, 'Glarus'),
('en_US', 113, 'Graubünden'),
('en_US', 114, 'Jura'),
('en_US', 115, 'Luzern'),
('en_US', 116, 'Neuenburg'),
('en_US', 117, 'Nidwalden'),
('en_US', 118, 'Obwalden'),
('en_US', 119, 'St. Gallen'),
('en_US', 120, 'Schaffhausen'),
('en_US', 121, 'Solothurn'),
('en_US', 122, 'Schwyz'),
('en_US', 123, 'Thurgau'),
('en_US', 124, 'Tessin'),
('en_US', 125, 'Uri'),
('en_US', 126, 'Waadt'),
('en_US', 127, 'Wallis'),
('en_US', 128, 'Zug'),
('en_US', 129, 'Zürich'),
('en_US', 130, 'A Coruña'),
('en_US', 131, 'Alava'),
('en_US', 132, 'Albacete'),
('en_US', 133, 'Alicante'),
('en_US', 134, 'Almeria'),
('en_US', 135, 'Asturias'),
('en_US', 136, 'Avila'),
('en_US', 137, 'Badajoz'),
('en_US', 138, 'Baleares'),
('en_US', 139, 'Barcelona'),
('en_US', 140, 'Burgos'),
('en_US', 141, 'Caceres'),
('en_US', 142, 'Cadiz'),
('en_US', 143, 'Cantabria'),
('en_US', 144, 'Castellon'),
('en_US', 145, 'Ceuta'),
('en_US', 146, 'Ciudad Real'),
('en_US', 147, 'Cordoba'),
('en_US', 148, 'Cuenca'),
('en_US', 149, 'Girona'),
('en_US', 150, 'Granada'),
('en_US', 151, 'Guadalajara'),
('en_US', 152, 'Guipuzcoa'),
('en_US', 153, 'Huelva'),
('en_US', 154, 'Huesca'),
('en_US', 155, 'Jaen'),
('en_US', 156, 'La Rioja'),
('en_US', 157, 'Las Palmas'),
('en_US', 158, 'Leon'),
('en_US', 159, 'Lleida'),
('en_US', 160, 'Lugo'),
('en_US', 161, 'Madrid'),
('en_US', 162, 'Malaga'),
('en_US', 163, 'Melilla'),
('en_US', 164, 'Murcia'),
('en_US', 165, 'Navarra'),
('en_US', 166, 'Ourense'),
('en_US', 167, 'Palencia'),
('en_US', 168, 'Pontevedra'),
('en_US', 169, 'Salamanca'),
('en_US', 170, 'Santa Cruz de Tenerife'),
('en_US', 171, 'Segovia'),
('en_US', 172, 'Sevilla'),
('en_US', 173, 'Soria'),
('en_US', 174, 'Tarragona'),
('en_US', 175, 'Teruel'),
('en_US', 176, 'Toledo'),
('en_US', 177, 'Valencia'),
('en_US', 178, 'Valladolid'),
('en_US', 179, 'Vizcaya'),
('en_US', 180, 'Zamora'),
('en_US', 181, 'Zaragoza'),
('en_US', 182, 'Ain'),
('en_US', 183, 'Aisne'),
('en_US', 184, 'Allier'),
('en_US', 185, 'Alpes-de-Haute-Provence'),
('en_US', 186, 'Hautes-Alpes'),
('en_US', 187, 'Alpes-Maritimes'),
('en_US', 188, 'Ardèche'),
('en_US', 189, 'Ardennes'),
('en_US', 190, 'Ariège'),
('en_US', 191, 'Aube'),
('en_US', 192, 'Aude'),
('en_US', 193, 'Aveyron'),
('en_US', 194, 'Bouches-du-Rhône'),
('en_US', 195, 'Calvados'),
('en_US', 196, 'Cantal'),
('en_US', 197, 'Charente'),
('en_US', 198, 'Charente-Maritime'),
('en_US', 199, 'Cher'),
('en_US', 200, 'Corrèze'),
('en_US', 201, 'Corse-du-Sud'),
('en_US', 202, 'Haute-Corse'),
('en_US', 203, 'Côte-d''Or'),
('en_US', 204, 'Côtes-d''Armor'),
('en_US', 205, 'Creuse'),
('en_US', 206, 'Dordogne'),
('en_US', 207, 'Doubs'),
('en_US', 208, 'Drôme'),
('en_US', 209, 'Eure'),
('en_US', 210, 'Eure-et-Loir'),
('en_US', 211, 'Finistère'),
('en_US', 212, 'Gard'),
('en_US', 213, 'Haute-Garonne'),
('en_US', 214, 'Gers'),
('en_US', 215, 'Gironde'),
('en_US', 216, 'Hérault'),
('en_US', 217, 'Ille-et-Vilaine'),
('en_US', 218, 'Indre'),
('en_US', 219, 'Indre-et-Loire'),
('en_US', 220, 'Isère'),
('en_US', 221, 'Jura'),
('en_US', 222, 'Landes'),
('en_US', 223, 'Loir-et-Cher'),
('en_US', 224, 'Loire'),
('en_US', 225, 'Haute-Loire'),
('en_US', 226, 'Loire-Atlantique'),
('en_US', 227, 'Loiret'),
('en_US', 228, 'Lot'),
('en_US', 229, 'Lot-et-Garonne'),
('en_US', 230, 'Lozère'),
('en_US', 231, 'Maine-et-Loire'),
('en_US', 232, 'Manche'),
('en_US', 233, 'Marne'),
('en_US', 234, 'Haute-Marne'),
('en_US', 235, 'Mayenne'),
('en_US', 236, 'Meurthe-et-Moselle'),
('en_US', 237, 'Meuse'),
('en_US', 238, 'Morbihan'),
('en_US', 239, 'Moselle'),
('en_US', 240, 'Nièvre'),
('en_US', 241, 'Nord'),
('en_US', 242, 'Oise'),
('en_US', 243, 'Orne'),
('en_US', 244, 'Pas-de-Calais'),
('en_US', 245, 'Puy-de-Dôme'),
('en_US', 246, 'Pyrénées-Atlantiques'),
('en_US', 247, 'Hautes-Pyrénées'),
('en_US', 248, 'Pyrénées-Orientales'),
('en_US', 249, 'Bas-Rhin'),
('en_US', 250, 'Haut-Rhin'),
('en_US', 251, 'Rhône'),
('en_US', 252, 'Haute-Saône'),
('en_US', 253, 'Saône-et-Loire'),
('en_US', 254, 'Sarthe'),
('en_US', 255, 'Savoie'),
('en_US', 256, 'Haute-Savoie'),
('en_US', 257, 'Paris'),
('en_US', 258, 'Seine-Maritime'),
('en_US', 259, 'Seine-et-Marne'),
('en_US', 260, 'Yvelines'),
('en_US', 261, 'Deux-Sèvres'),
('en_US', 262, 'Somme'),
('en_US', 263, 'Tarn'),
('en_US', 264, 'Tarn-et-Garonne'),
('en_US', 265, 'Var'),
('en_US', 266, 'Vaucluse'),
('en_US', 267, 'Vendée'),
('en_US', 268, 'Vienne'),
('en_US', 269, 'Haute-Vienne'),
('en_US', 270, 'Vosges'),
('en_US', 271, 'Yonne'),
('en_US', 272, 'Territoire-de-Belfort'),
('en_US', 273, 'Essonne'),
('en_US', 274, 'Hauts-de-Seine'),
('en_US', 275, 'Seine-Saint-Denis'),
('en_US', 276, 'Val-de-Marne'),
('en_US', 277, 'Val-d''Oise'),
('en_US', 278, 'Alba'),
('en_US', 279, 'Arad'),
('en_US', 280, 'Argeş'),
('en_US', 281, 'Bacău'),
('en_US', 282, 'Bihor'),
('en_US', 283, 'Bistriţa-Năsăud'),
('en_US', 284, 'Botoşani'),
('en_US', 285, 'Braşov'),
('en_US', 286, 'Brăila'),
('en_US', 287, 'Bucureşti'),
('en_US', 288, 'Buzău'),
('en_US', 289, 'Caraş-Severin'),
('en_US', 290, 'Călăraşi'),
('en_US', 291, 'Cluj'),
('en_US', 292, 'Constanţa'),
('en_US', 293, 'Covasna'),
('en_US', 294, 'Dâmboviţa'),
('en_US', 295, 'Dolj'),
('en_US', 296, 'Galaţi'),
('en_US', 297, 'Giurgiu'),
('en_US', 298, 'Gorj'),
('en_US', 299, 'Harghita'),
('en_US', 300, 'Hunedoara'),
('en_US', 301, 'Ialomiţa'),
('en_US', 302, 'Iaşi'),
('en_US', 303, 'Ilfov'),
('en_US', 304, 'Maramureş'),
('en_US', 305, 'Mehedinţi'),
('en_US', 306, 'Mureş'),
('en_US', 307, 'Neamţ'),
('en_US', 308, 'Olt'),
('en_US', 309, 'Prahova'),
('en_US', 310, 'Satu-Mare'),
('en_US', 311, 'Sălaj'),
('en_US', 312, 'Sibiu'),
('en_US', 313, 'Suceava'),
('en_US', 314, 'Teleorman'),
('en_US', 315, 'Timiş'),
('en_US', 316, 'Tulcea'),
('en_US', 317, 'Vaslui'),
('en_US', 318, 'Vâlcea'),
('en_US', 319, 'Vrancea'),
('en_US', 320, 'Lappi'),
('en_US', 321, 'Pohjois-Pohjanmaa'),
('en_US', 322, 'Kainuu'),
('en_US', 323, 'Pohjois-Karjala'),
('en_US', 324, 'Pohjois-Savo'),
('en_US', 325, 'Etelä-Savo'),
('en_US', 326, 'Etelä-Pohjanmaa'),
('en_US', 327, 'Pohjanmaa'),
('en_US', 328, 'Pirkanmaa'),
('en_US', 329, 'Satakunta'),
('en_US', 330, 'Keski-Pohjanmaa'),
('en_US', 331, 'Keski-Suomi'),
('en_US', 332, 'Varsinais-Suomi'),
('en_US', 333, 'Etelä-Karjala'),
('en_US', 334, 'Päijät-Häme'),
('en_US', 335, 'Kanta-Häme'),
('en_US', 336, 'Uusimaa'),
('en_US', 337, 'Itä-Uusimaa'),
('en_US', 338, 'Kymenlaakso'),
('en_US', 339, 'Ahvenanmaa'),
('en_US', 340, 'Harjumaa'),
('en_US', 341, 'Hiiumaa'),
('en_US', 342, 'Ida-Virumaa'),
('en_US', 343, 'Jõgevamaa'),
('en_US', 344, 'Järvamaa'),
('en_US', 345, 'Läänemaa'),
('en_US', 346, 'Lääne-Virumaa'),
('en_US', 347, 'Põlvamaa'),
('en_US', 348, 'Pärnumaa'),
('en_US', 349, 'Raplamaa'),
('en_US', 350, 'Saaremaa'),
('en_US', 351, 'Tartumaa'),
('en_US', 352, 'Valgamaa'),
('en_US', 353, 'Viljandimaa'),
('en_US', 354, 'Võrumaa'),
('en_US', 355, 'Daugavpils'),
('en_US', 356, 'Jelgava'),
('en_US', 357, 'Jēkabpils'),
('en_US', 358, 'Jūrmala'),
('en_US', 359, 'Liepāja'),
('en_US', 360, 'Liepājas novads'),
('en_US', 361, 'Rēzekne'),
('en_US', 362, 'Rīga'),
('en_US', 363, 'Rīgas novads'),
('en_US', 364, 'Valmiera'),
('en_US', 365, 'Ventspils'),
('en_US', 366, 'Aglonas novads'),
('en_US', 367, 'Aizkraukles novads'),
('en_US', 368, 'Aizputes novads'),
('en_US', 369, 'Aknīstes novads'),
('en_US', 370, 'Alojas novads'),
('en_US', 371, 'Alsungas novads'),
('en_US', 372, 'Alūksnes novads'),
('en_US', 373, 'Amatas novads'),
('en_US', 374, 'Apes novads'),
('en_US', 375, 'Auces novads'),
('en_US', 376, 'Babītes novads'),
('en_US', 377, 'Baldones novads'),
('en_US', 378, 'Baltinavas novads'),
('en_US', 379, 'Balvu novads'),
('en_US', 380, 'Bauskas novads'),
('en_US', 381, 'Beverīnas novads'),
('en_US', 382, 'Brocēnu novads'),
('en_US', 383, 'Burtnieku novads'),
('en_US', 384, 'Carnikavas novads'),
('en_US', 385, 'Cesvaines novads'),
('en_US', 386, 'Ciblas novads'),
('en_US', 387, 'Cēsu novads'),
('en_US', 388, 'Dagdas novads'),
('en_US', 389, 'Daugavpils novads'),
('en_US', 390, 'Dobeles novads'),
('en_US', 391, 'Dundagas novads'),
('en_US', 392, 'Durbes novads'),
('en_US', 393, 'Engures novads'),
('en_US', 394, 'Garkalnes novads'),
('en_US', 395, 'Grobiņas novads'),
('en_US', 396, 'Gulbenes novads'),
('en_US', 397, 'Iecavas novads'),
('en_US', 398, 'Ikšķiles novads'),
('en_US', 399, 'Ilūkstes novads'),
('en_US', 400, 'Inčukalna novads'),
('en_US', 401, 'Jaunjelgavas novads'),
('en_US', 402, 'Jaunpiebalgas novads'),
('en_US', 403, 'Jaunpils novads'),
('en_US', 404, 'Jelgavas novads'),
('en_US', 405, 'Jēkabpils novads'),
('en_US', 406, 'Kandavas novads'),
('en_US', 407, 'Kokneses novads'),
('en_US', 408, 'Krimuldas novads'),
('en_US', 409, 'Krustpils novads'),
('en_US', 410, 'Krāslavas novads'),
('en_US', 411, 'Kuldīgas novads'),
('en_US', 412, 'Kārsavas novads'),
('en_US', 413, 'Lielvārdes novads'),
('en_US', 414, 'Limbažu novads'),
('en_US', 415, 'Lubānas novads'),
('en_US', 416, 'Ludzas novads'),
('en_US', 417, 'Līgatnes novads'),
('en_US', 418, 'Līvānu novads'),
('en_US', 419, 'Madonas novads'),
('en_US', 420, 'Mazsalacas novads'),
('en_US', 421, 'Mālpils novads'),
('en_US', 422, 'Mārupes novads'),
('en_US', 423, 'Naukšēnu novads'),
('en_US', 424, 'Neretas novads'),
('en_US', 425, 'Nīcas novads'),
('en_US', 426, 'Ogres novads'),
('en_US', 427, 'Olaines novads'),
('en_US', 428, 'Ozolnieku novads'),
('en_US', 429, 'Preiļu novads'),
('en_US', 430, 'Priekules novads'),
('en_US', 431, 'Priekuļu novads'),
('en_US', 432, 'Pārgaujas novads'),
('en_US', 433, 'Pāvilostas novads'),
('en_US', 434, 'Pļaviņu novads'),
('en_US', 435, 'Raunas novads'),
('en_US', 436, 'Riebiņu novads'),
('en_US', 437, 'Rojas novads'),
('en_US', 438, 'Ropažu novads'),
('en_US', 439, 'Rucavas novads'),
('en_US', 440, 'Rugāju novads'),
('en_US', 441, 'Rundāles novads'),
('en_US', 442, 'Rēzeknes novads'),
('en_US', 443, 'Rūjienas novads'),
('en_US', 444, 'Salacgrīvas novads'),
('en_US', 445, 'Salas novads'),
('en_US', 446, 'Salaspils novads'),
('en_US', 447, 'Saldus novads'),
('en_US', 448, 'Saulkrastu novads'),
('en_US', 449, 'Siguldas novads'),
('en_US', 450, 'Skrundas novads'),
('en_US', 451, 'Skrīveru novads'),
('en_US', 452, 'Smiltenes novads'),
('en_US', 453, 'Stopiņu novads'),
('en_US', 454, 'Strenču novads'),
('en_US', 455, 'Sējas novads'),
('en_US', 456, 'Talsu novads'),
('en_US', 457, 'Tukuma novads'),
('en_US', 458, 'Tērvetes novads'),
('en_US', 459, 'Vaiņodes novads'),
('en_US', 460, 'Valkas novads'),
('en_US', 461, 'Valmieras novads'),
('en_US', 462, 'Varakļānu novads'),
('en_US', 463, 'Vecpiebalgas novads'),
('en_US', 464, 'Vecumnieku novads'),
('en_US', 465, 'Ventspils novads'),
('en_US', 466, 'Viesītes novads'),
('en_US', 467, 'Viļakas novads'),
('en_US', 468, 'Viļānu novads'),
('en_US', 469, 'Vārkavas novads'),
('en_US', 470, 'Zilupes novads'),
('en_US', 471, 'Ādažu novads'),
('en_US', 472, 'Ērgļu novads'),
('en_US', 473, 'Ķeguma novads'),
('en_US', 474, 'Ķekavas novads'),
('en_US', 475, 'Alytaus Apskritis'),
('en_US', 476, 'Kauno Apskritis'),
('en_US', 477, 'Klaipėdos Apskritis'),
('en_US', 478, 'Marijampolės Apskritis'),
('en_US', 479, 'Panevėžio Apskritis'),
('en_US', 480, 'Šiaulių Apskritis'),
('en_US', 481, 'Tauragės Apskritis'),
('en_US', 482, 'Telšių Apskritis'),
('en_US', 483, 'Utenos Apskritis'),
('en_US', 484, 'Vilniaus Apskritis');

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `directory_currency_rate`
--

CREATE TABLE IF NOT EXISTS `directory_currency_rate` (
  `currency_from` varchar(3) NOT NULL DEFAULT '' COMMENT 'Currency Code Convert From',
  `currency_to` varchar(3) NOT NULL DEFAULT '' COMMENT 'Currency Code Convert To',
  `rate` decimal(24,12) NOT NULL DEFAULT '0.000000000000' COMMENT 'Currency Conversion Rate',
  PRIMARY KEY (`currency_from`,`currency_to`),
  KEY `IDX_DIRECTORY_CURRENCY_RATE_CURRENCY_TO` (`currency_to`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Directory Currency Rate';

--
-- Gegevens worden uitgevoerd voor tabel `directory_currency_rate`
--

INSERT INTO `directory_currency_rate` (`currency_from`, `currency_to`, `rate`) VALUES
('EUR', 'EUR', '1.000000000000'),
('EUR', 'USD', '1.415000000000'),
('USD', 'EUR', '0.706700000000'),
('USD', 'USD', '1.000000000000');

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `downloadable_link`
--

CREATE TABLE IF NOT EXISTS `downloadable_link` (
  `link_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Link ID',
  `product_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Product ID',
  `sort_order` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Sort order',
  `number_of_downloads` int(11) DEFAULT NULL COMMENT 'Number of downloads',
  `is_shareable` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Shareable flag',
  `link_url` varchar(255) DEFAULT NULL COMMENT 'Link Url',
  `link_file` varchar(255) DEFAULT NULL COMMENT 'Link File',
  `link_type` varchar(20) DEFAULT NULL COMMENT 'Link Type',
  `sample_url` varchar(255) DEFAULT NULL COMMENT 'Sample Url',
  `sample_file` varchar(255) DEFAULT NULL COMMENT 'Sample File',
  `sample_type` varchar(20) DEFAULT NULL COMMENT 'Sample Type',
  PRIMARY KEY (`link_id`),
  KEY `IDX_DOWNLOADABLE_LINK_PRODUCT_ID` (`product_id`),
  KEY `IDX_DOWNLOADABLE_LINK_PRODUCT_ID_SORT_ORDER` (`product_id`,`sort_order`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Downloadable Link Table' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `downloadable_link_price`
--

CREATE TABLE IF NOT EXISTS `downloadable_link_price` (
  `price_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Price ID',
  `link_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Link ID',
  `website_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Website ID',
  `price` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Price',
  PRIMARY KEY (`price_id`),
  KEY `IDX_DOWNLOADABLE_LINK_PRICE_LINK_ID` (`link_id`),
  KEY `IDX_DOWNLOADABLE_LINK_PRICE_WEBSITE_ID` (`website_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Downloadable Link Price Table' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `downloadable_link_purchased`
--

CREATE TABLE IF NOT EXISTS `downloadable_link_purchased` (
  `purchased_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Purchased ID',
  `order_id` int(10) unsigned DEFAULT '0' COMMENT 'Order ID',
  `order_increment_id` varchar(50) DEFAULT NULL COMMENT 'Order Increment ID',
  `order_item_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Order Item ID',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Date of creation',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'Date of modification',
  `customer_id` int(10) unsigned DEFAULT '0' COMMENT 'Customer ID',
  `product_name` varchar(255) DEFAULT NULL COMMENT 'Product name',
  `product_sku` varchar(255) DEFAULT NULL COMMENT 'Product sku',
  `link_section_title` varchar(255) DEFAULT NULL COMMENT 'Link_section_title',
  PRIMARY KEY (`purchased_id`),
  KEY `IDX_DOWNLOADABLE_LINK_PURCHASED_ORDER_ID` (`order_id`),
  KEY `IDX_DOWNLOADABLE_LINK_PURCHASED_ORDER_ITEM_ID` (`order_item_id`),
  KEY `IDX_DOWNLOADABLE_LINK_PURCHASED_CUSTOMER_ID` (`customer_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Downloadable Link Purchased Table' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `downloadable_link_purchased_item`
--

CREATE TABLE IF NOT EXISTS `downloadable_link_purchased_item` (
  `item_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Item ID',
  `purchased_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Purchased ID',
  `order_item_id` int(10) unsigned DEFAULT '0' COMMENT 'Order Item ID',
  `product_id` int(10) unsigned DEFAULT '0' COMMENT 'Product ID',
  `link_hash` varchar(255) DEFAULT NULL COMMENT 'Link hash',
  `number_of_downloads_bought` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Number of downloads bought',
  `number_of_downloads_used` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Number of downloads used',
  `link_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Link ID',
  `link_title` varchar(255) DEFAULT NULL COMMENT 'Link Title',
  `is_shareable` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Shareable Flag',
  `link_url` varchar(255) DEFAULT NULL COMMENT 'Link Url',
  `link_file` varchar(255) DEFAULT NULL COMMENT 'Link File',
  `link_type` varchar(255) DEFAULT NULL COMMENT 'Link Type',
  `status` varchar(50) DEFAULT NULL COMMENT 'Status',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Creation Time',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'Update Time',
  PRIMARY KEY (`item_id`),
  KEY `IDX_DOWNLOADABLE_LINK_PURCHASED_ITEM_LINK_HASH` (`link_hash`),
  KEY `IDX_DOWNLOADABLE_LINK_PURCHASED_ITEM_ORDER_ITEM_ID` (`order_item_id`),
  KEY `IDX_DOWNLOADABLE_LINK_PURCHASED_ITEM_PURCHASED_ID` (`purchased_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Downloadable Link Purchased Item Table' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `downloadable_link_title`
--

CREATE TABLE IF NOT EXISTS `downloadable_link_title` (
  `title_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Title ID',
  `link_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Link ID',
  `store_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Store ID',
  `title` varchar(255) DEFAULT NULL COMMENT 'Title',
  PRIMARY KEY (`title_id`),
  UNIQUE KEY `UNQ_DOWNLOADABLE_LINK_TITLE_LINK_ID_STORE_ID` (`link_id`,`store_id`),
  KEY `IDX_DOWNLOADABLE_LINK_TITLE_LINK_ID` (`link_id`),
  KEY `IDX_DOWNLOADABLE_LINK_TITLE_STORE_ID` (`store_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Link Title Table' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `downloadable_sample`
--

CREATE TABLE IF NOT EXISTS `downloadable_sample` (
  `sample_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Sample ID',
  `product_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Product ID',
  `sample_url` varchar(255) DEFAULT NULL COMMENT 'Sample URL',
  `sample_file` varchar(255) DEFAULT NULL COMMENT 'Sample file',
  `sample_type` varchar(20) DEFAULT NULL COMMENT 'Sample Type',
  `sort_order` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Sort Order',
  PRIMARY KEY (`sample_id`),
  KEY `IDX_DOWNLOADABLE_SAMPLE_PRODUCT_ID` (`product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Downloadable Sample Table' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `downloadable_sample_title`
--

CREATE TABLE IF NOT EXISTS `downloadable_sample_title` (
  `title_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Title ID',
  `sample_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Sample ID',
  `store_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Store ID',
  `title` varchar(255) DEFAULT NULL COMMENT 'Title',
  PRIMARY KEY (`title_id`),
  UNIQUE KEY `UNQ_DOWNLOADABLE_SAMPLE_TITLE_SAMPLE_ID_STORE_ID` (`sample_id`,`store_id`),
  KEY `IDX_DOWNLOADABLE_SAMPLE_TITLE_SAMPLE_ID` (`sample_id`),
  KEY `IDX_DOWNLOADABLE_SAMPLE_TITLE_STORE_ID` (`store_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Downloadable Sample Title Table' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `easyexploded`
--

CREATE TABLE IF NOT EXISTS `easyexploded` (
  `easyexploded_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL DEFAULT '',
  `filename` varchar(255) NOT NULL DEFAULT '',
  `content` text NOT NULL,
  `status` smallint(6) NOT NULL DEFAULT '0',
  `created_time` datetime DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  PRIMARY KEY (`easyexploded_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `eav_attribute`
--

CREATE TABLE IF NOT EXISTS `eav_attribute` (
  `attribute_id` smallint(5) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Attribute Id',
  `entity_type_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Entity Type Id',
  `attribute_code` varchar(255) NOT NULL DEFAULT '' COMMENT 'Attribute Code',
  `attribute_model` varchar(255) DEFAULT NULL COMMENT 'Attribute Model',
  `backend_model` varchar(255) DEFAULT NULL COMMENT 'Backend Model',
  `backend_type` varchar(8) NOT NULL DEFAULT 'static' COMMENT 'Backend Type',
  `backend_table` varchar(255) DEFAULT NULL COMMENT 'Backend Table',
  `frontend_model` varchar(255) DEFAULT NULL COMMENT 'Frontend Model',
  `frontend_input` varchar(50) DEFAULT NULL COMMENT 'Frontend Input',
  `frontend_label` varchar(255) DEFAULT NULL COMMENT 'Frontend Label',
  `frontend_class` varchar(255) DEFAULT NULL COMMENT 'Frontend Class',
  `source_model` varchar(255) DEFAULT NULL COMMENT 'Source Model',
  `is_required` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Defines Is Required',
  `is_user_defined` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Defines Is User Defined',
  `default_value` text COMMENT 'Default Value',
  `is_unique` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Defines Is Unique',
  `note` varchar(255) DEFAULT NULL COMMENT 'Note',
  PRIMARY KEY (`attribute_id`),
  UNIQUE KEY `UNQ_EAV_ATTRIBUTE_ENTITY_TYPE_ID_ATTRIBUTE_CODE` (`entity_type_id`,`attribute_code`),
  KEY `IDX_EAV_ATTRIBUTE_ENTITY_TYPE_ID` (`entity_type_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='Eav Attribute' AUTO_INCREMENT=127 ;

--
-- Gegevens worden uitgevoerd voor tabel `eav_attribute`
--

INSERT INTO `eav_attribute` (`attribute_id`, `entity_type_id`, `attribute_code`, `attribute_model`, `backend_model`, `backend_type`, `backend_table`, `frontend_model`, `frontend_input`, `frontend_label`, `frontend_class`, `source_model`, `is_required`, `is_user_defined`, `default_value`, `is_unique`, `note`) VALUES
(1, 1, 'website_id', NULL, 'customer/customer_attribute_backend_website', 'static', NULL, NULL, 'select', 'Associate to Website', NULL, 'customer/customer_attribute_source_website', 1, 0, NULL, 0, NULL),
(2, 1, 'store_id', NULL, 'customer/customer_attribute_backend_store', 'static', NULL, NULL, 'select', 'Create In', NULL, 'customer/customer_attribute_source_store', 1, 0, NULL, 0, NULL),
(3, 1, 'created_in', NULL, NULL, 'varchar', NULL, NULL, 'text', 'Created From', NULL, NULL, 0, 0, NULL, 0, NULL),
(4, 1, 'prefix', NULL, NULL, 'varchar', NULL, NULL, 'text', 'Prefix', NULL, NULL, 0, 0, NULL, 0, NULL),
(5, 1, 'firstname', NULL, NULL, 'varchar', NULL, NULL, 'text', 'First Name', NULL, NULL, 1, 0, NULL, 0, NULL),
(6, 1, 'middlename', NULL, NULL, 'varchar', NULL, NULL, 'text', 'Middle Name/Initial', NULL, NULL, 0, 0, NULL, 0, NULL),
(7, 1, 'lastname', NULL, NULL, 'varchar', NULL, NULL, 'text', 'Last Name', NULL, NULL, 1, 0, NULL, 0, NULL),
(8, 1, 'suffix', NULL, NULL, 'varchar', NULL, NULL, 'text', 'Suffix', NULL, NULL, 0, 0, NULL, 0, NULL),
(9, 1, 'email', NULL, NULL, 'static', NULL, NULL, 'text', 'Email', NULL, NULL, 1, 0, NULL, 0, NULL),
(10, 1, 'group_id', NULL, NULL, 'static', NULL, NULL, 'select', 'Group', NULL, 'customer/customer_attribute_source_group', 1, 0, NULL, 0, NULL),
(11, 1, 'dob', NULL, 'eav/entity_attribute_backend_datetime', 'datetime', NULL, 'eav/entity_attribute_frontend_datetime', 'date', 'Date Of Birth', NULL, NULL, 0, 0, NULL, 0, NULL),
(12, 1, 'password_hash', NULL, 'customer/customer_attribute_backend_password', 'varchar', NULL, NULL, 'hidden', NULL, NULL, NULL, 0, 0, NULL, 0, NULL),
(13, 1, 'default_billing', NULL, 'customer/customer_attribute_backend_billing', 'int', NULL, NULL, 'text', 'Default Billing Address', NULL, NULL, 0, 0, NULL, 0, NULL),
(14, 1, 'default_shipping', NULL, 'customer/customer_attribute_backend_shipping', 'int', NULL, NULL, 'text', 'Default Shipping Address', NULL, NULL, 0, 0, NULL, 0, NULL),
(15, 1, 'taxvat', NULL, NULL, 'varchar', NULL, NULL, 'text', 'Tax/VAT Number', NULL, NULL, 0, 0, NULL, 0, NULL),
(16, 1, 'confirmation', NULL, NULL, 'varchar', NULL, NULL, 'text', 'Is Confirmed', NULL, NULL, 0, 0, NULL, 0, NULL),
(17, 1, 'created_at', NULL, NULL, 'static', NULL, NULL, 'date', 'Created At', NULL, NULL, 0, 0, NULL, 0, NULL),
(18, 1, 'gender', NULL, NULL, 'int', NULL, NULL, 'select', 'Gender', NULL, 'eav/entity_attribute_source_table', 0, 0, NULL, 0, NULL),
(19, 2, 'prefix', NULL, NULL, 'varchar', NULL, NULL, 'text', 'Prefix', NULL, NULL, 0, 0, NULL, 0, NULL),
(20, 2, 'firstname', NULL, NULL, 'varchar', NULL, NULL, 'text', 'First Name', NULL, NULL, 1, 0, NULL, 0, NULL),
(21, 2, 'middlename', NULL, NULL, 'varchar', NULL, NULL, 'text', 'Middle Name/Initial', NULL, NULL, 0, 0, NULL, 0, NULL),
(22, 2, 'lastname', NULL, NULL, 'varchar', NULL, NULL, 'text', 'Last Name', NULL, NULL, 1, 0, NULL, 0, NULL),
(23, 2, 'suffix', NULL, NULL, 'varchar', NULL, NULL, 'text', 'Suffix', NULL, NULL, 0, 0, NULL, 0, NULL),
(24, 2, 'company', NULL, NULL, 'varchar', NULL, NULL, 'text', 'Company', NULL, NULL, 0, 0, NULL, 0, NULL),
(25, 2, 'street', NULL, 'customer/entity_address_attribute_backend_street', 'text', NULL, NULL, 'multiline', 'Street Address', NULL, NULL, 1, 0, NULL, 0, NULL),
(26, 2, 'city', NULL, NULL, 'varchar', NULL, NULL, 'text', 'City', NULL, NULL, 1, 0, NULL, 0, NULL),
(27, 2, 'country_id', NULL, NULL, 'varchar', NULL, NULL, 'select', 'Country', NULL, 'customer/entity_address_attribute_source_country', 1, 0, NULL, 0, NULL),
(28, 2, 'region', NULL, 'customer/entity_address_attribute_backend_region', 'varchar', NULL, NULL, 'text', 'State/Province', NULL, NULL, 0, 0, NULL, 0, NULL),
(29, 2, 'region_id', NULL, NULL, 'int', NULL, NULL, 'hidden', 'State/Province', NULL, 'customer/entity_address_attribute_source_region', 0, 0, NULL, 0, NULL),
(30, 2, 'postcode', NULL, NULL, 'varchar', NULL, NULL, 'text', 'Zip/Postal Code', NULL, NULL, 1, 0, NULL, 0, NULL),
(31, 2, 'telephone', NULL, NULL, 'varchar', NULL, NULL, 'text', 'Telephone', NULL, NULL, 1, 0, NULL, 0, NULL),
(32, 2, 'fax', NULL, NULL, 'varchar', NULL, NULL, 'text', 'Fax', NULL, NULL, 0, 0, NULL, 0, NULL),
(33, 1, 'rp_token', NULL, NULL, 'varchar', NULL, NULL, 'hidden', NULL, NULL, NULL, 0, 0, NULL, 0, NULL),
(34, 1, 'rp_token_created_at', NULL, NULL, 'datetime', NULL, NULL, 'date', NULL, NULL, NULL, 0, 0, NULL, 0, NULL),
(35, 3, 'name', NULL, NULL, 'varchar', NULL, NULL, 'text', 'Name', NULL, NULL, 1, 0, NULL, 0, NULL),
(36, 3, 'is_active', NULL, NULL, 'int', NULL, NULL, 'select', 'Is Active', NULL, 'eav/entity_attribute_source_boolean', 1, 0, NULL, 0, NULL),
(37, 3, 'url_key', NULL, 'catalog/category_attribute_backend_urlkey', 'varchar', NULL, NULL, 'text', 'URL Key', NULL, NULL, 0, 0, NULL, 0, NULL),
(38, 3, 'description', NULL, NULL, 'text', NULL, NULL, 'textarea', 'Description', NULL, NULL, 0, 0, NULL, 0, NULL),
(39, 3, 'image', NULL, 'catalog/category_attribute_backend_image', 'varchar', NULL, NULL, 'image', 'Image', NULL, NULL, 0, 0, NULL, 0, NULL),
(40, 3, 'meta_title', NULL, NULL, 'varchar', NULL, NULL, 'text', 'Page Title', NULL, NULL, 0, 0, NULL, 0, NULL),
(41, 3, 'meta_keywords', NULL, NULL, 'text', NULL, NULL, 'textarea', 'Meta Keywords', NULL, NULL, 0, 0, NULL, 0, NULL),
(42, 3, 'meta_description', NULL, NULL, 'text', NULL, NULL, 'textarea', 'Meta Description', NULL, NULL, 0, 0, NULL, 0, NULL),
(43, 3, 'display_mode', NULL, NULL, 'varchar', NULL, NULL, 'select', 'Display Mode', NULL, 'catalog/category_attribute_source_mode', 0, 0, NULL, 0, NULL),
(44, 3, 'landing_page', NULL, NULL, 'int', NULL, NULL, 'select', 'CMS Block', NULL, 'catalog/category_attribute_source_page', 0, 0, NULL, 0, NULL),
(45, 3, 'is_anchor', NULL, NULL, 'int', NULL, NULL, 'select', 'Is Anchor', NULL, 'eav/entity_attribute_source_boolean', 0, 0, NULL, 0, NULL),
(46, 3, 'path', NULL, NULL, 'static', NULL, NULL, 'text', 'Path', NULL, NULL, 0, 0, NULL, 0, NULL),
(47, 3, 'position', NULL, NULL, 'static', NULL, NULL, 'text', 'Position', NULL, NULL, 0, 0, NULL, 0, NULL),
(48, 3, 'all_children', NULL, NULL, 'text', NULL, NULL, 'text', NULL, NULL, NULL, 0, 0, NULL, 0, NULL),
(49, 3, 'path_in_store', NULL, NULL, 'text', NULL, NULL, 'text', NULL, NULL, NULL, 0, 0, NULL, 0, NULL),
(50, 3, 'children', NULL, NULL, 'text', NULL, NULL, 'text', NULL, NULL, NULL, 0, 0, NULL, 0, NULL),
(51, 3, 'url_path', NULL, NULL, 'varchar', NULL, NULL, 'text', NULL, NULL, NULL, 0, 0, NULL, 0, NULL),
(52, 3, 'custom_design', NULL, NULL, 'varchar', NULL, NULL, 'select', 'Custom Design', NULL, 'core/design_source_design', 0, 0, NULL, 0, NULL),
(53, 3, 'custom_design_from', NULL, 'eav/entity_attribute_backend_datetime', 'datetime', NULL, NULL, 'date', 'Active From', NULL, NULL, 0, 0, NULL, 0, NULL),
(54, 3, 'custom_design_to', NULL, 'eav/entity_attribute_backend_datetime', 'datetime', NULL, NULL, 'date', 'Active To', NULL, NULL, 0, 0, NULL, 0, NULL),
(55, 3, 'page_layout', NULL, NULL, 'varchar', NULL, NULL, 'select', 'Page Layout', NULL, 'catalog/category_attribute_source_layout', 0, 0, NULL, 0, NULL),
(56, 3, 'custom_layout_update', NULL, 'catalog/attribute_backend_customlayoutupdate', 'text', NULL, NULL, 'textarea', 'Custom Layout Update', NULL, NULL, 0, 0, NULL, 0, NULL),
(57, 3, 'level', NULL, NULL, 'static', NULL, NULL, 'text', 'Level', NULL, NULL, 0, 0, NULL, 0, NULL),
(58, 3, 'children_count', NULL, NULL, 'static', NULL, NULL, 'text', 'Children Count', NULL, NULL, 0, 0, NULL, 0, NULL),
(59, 3, 'available_sort_by', NULL, 'catalog/category_attribute_backend_sortby', 'text', NULL, NULL, 'multiselect', 'Available Product Listing Sort By', NULL, 'catalog/category_attribute_source_sortby', 1, 0, NULL, 0, NULL),
(60, 3, 'default_sort_by', NULL, 'catalog/category_attribute_backend_sortby', 'varchar', NULL, NULL, 'select', 'Default Product Listing Sort By', NULL, 'catalog/category_attribute_source_sortby', 1, 0, NULL, 0, NULL),
(61, 3, 'include_in_menu', NULL, NULL, 'int', NULL, NULL, 'select', 'Include in Navigation Menu', NULL, 'eav/entity_attribute_source_boolean', 1, 0, '1', 0, NULL),
(62, 3, 'custom_use_parent_settings', NULL, NULL, 'int', NULL, NULL, 'select', 'Use Parent Category Settings', NULL, 'eav/entity_attribute_source_boolean', 0, 0, NULL, 0, NULL),
(63, 3, 'custom_apply_to_products', NULL, NULL, 'int', NULL, NULL, 'select', 'Apply To Products', NULL, 'eav/entity_attribute_source_boolean', 0, 0, NULL, 0, NULL),
(64, 3, 'filter_price_range', NULL, NULL, 'int', NULL, NULL, 'text', 'Layered Navigation Price Step', NULL, NULL, 0, 0, NULL, 0, NULL),
(65, 4, 'name', NULL, NULL, 'varchar', NULL, NULL, 'text', 'Name', NULL, NULL, 1, 0, NULL, 0, NULL),
(66, 4, 'description', NULL, NULL, 'text', NULL, NULL, 'textarea', 'Description', NULL, NULL, 1, 0, NULL, 0, NULL),
(67, 4, 'short_description', NULL, NULL, 'text', NULL, NULL, 'textarea', 'Short Description', NULL, NULL, 1, 0, NULL, 0, NULL),
(68, 4, 'sku', NULL, 'catalog/product_attribute_backend_sku', 'static', NULL, NULL, 'text', 'SKU', NULL, NULL, 1, 0, NULL, 1, NULL),
(69, 4, 'price', NULL, 'catalog/product_attribute_backend_price', 'decimal', NULL, NULL, 'price', 'Price', NULL, NULL, 1, 0, NULL, 0, NULL),
(70, 4, 'special_price', NULL, 'catalog/product_attribute_backend_price', 'decimal', NULL, NULL, 'price', 'Special Price', NULL, NULL, 0, 0, NULL, 0, NULL),
(71, 4, 'special_from_date', NULL, 'catalog/product_attribute_backend_startdate', 'datetime', NULL, NULL, 'date', 'Special Price From Date', NULL, NULL, 0, 0, NULL, 0, NULL),
(72, 4, 'special_to_date', NULL, 'eav/entity_attribute_backend_datetime', 'datetime', NULL, NULL, 'date', 'Special Price To Date', NULL, NULL, 0, 0, NULL, 0, NULL),
(73, 4, 'cost', NULL, 'catalog/product_attribute_backend_price', 'decimal', NULL, NULL, 'price', 'Cost', NULL, NULL, 0, 1, NULL, 0, NULL),
(74, 4, 'weight', NULL, NULL, 'decimal', NULL, NULL, 'text', 'Weight', NULL, NULL, 1, 0, NULL, 0, NULL),
(75, 4, 'manufacturer', NULL, NULL, 'int', NULL, NULL, 'select', 'Manufacturer', NULL, NULL, 0, 1, NULL, 0, NULL),
(76, 4, 'meta_title', NULL, NULL, 'varchar', NULL, NULL, 'text', 'Meta Title', NULL, NULL, 0, 0, NULL, 0, NULL),
(77, 4, 'meta_keyword', NULL, NULL, 'text', NULL, NULL, 'textarea', 'Meta Keywords', NULL, NULL, 0, 0, NULL, 0, NULL),
(78, 4, 'meta_description', NULL, NULL, 'varchar', NULL, NULL, 'textarea', 'Meta Description', NULL, NULL, 0, 0, NULL, 0, 'Maximum 255 chars'),
(79, 4, 'image', NULL, NULL, 'varchar', NULL, 'catalog/product_attribute_frontend_image', 'media_image', 'Base Image', NULL, NULL, 0, 0, NULL, 0, NULL),
(80, 4, 'small_image', NULL, NULL, 'varchar', NULL, 'catalog/product_attribute_frontend_image', 'media_image', 'Small Image', NULL, NULL, 0, 0, NULL, 0, NULL),
(81, 4, 'thumbnail', NULL, NULL, 'varchar', NULL, 'catalog/product_attribute_frontend_image', 'media_image', 'Thumbnail', NULL, NULL, 0, 0, NULL, 0, NULL),
(82, 4, 'media_gallery', NULL, 'catalog/product_attribute_backend_media', 'varchar', NULL, NULL, 'gallery', 'Media Gallery', NULL, NULL, 0, 0, NULL, 0, NULL),
(83, 4, 'old_id', NULL, NULL, 'int', NULL, NULL, 'text', NULL, NULL, NULL, 0, 0, NULL, 0, NULL),
(84, 4, 'tier_price', NULL, 'catalog/product_attribute_backend_tierprice', 'decimal', NULL, NULL, 'text', 'Tier Price', NULL, NULL, 0, 0, NULL, 0, NULL),
(85, 4, 'color', NULL, NULL, 'int', NULL, NULL, 'select', 'Color', NULL, NULL, 0, 1, NULL, 0, NULL),
(86, 4, 'news_from_date', NULL, 'eav/entity_attribute_backend_datetime', 'datetime', NULL, NULL, 'date', 'Set Product as New from Date', NULL, NULL, 0, 0, NULL, 0, NULL),
(87, 4, 'news_to_date', NULL, 'eav/entity_attribute_backend_datetime', 'datetime', NULL, NULL, 'date', 'Set Product as New to Date', NULL, NULL, 0, 0, NULL, 0, NULL),
(88, 4, 'gallery', NULL, NULL, 'varchar', NULL, NULL, 'gallery', 'Image Gallery', NULL, NULL, 0, 0, NULL, 0, NULL),
(89, 4, 'status', NULL, NULL, 'int', NULL, NULL, 'select', 'Status', NULL, 'catalog/product_status', 1, 0, NULL, 0, NULL),
(90, 4, 'url_key', NULL, 'catalog/product_attribute_backend_urlkey', 'varchar', NULL, NULL, 'text', 'URL Key', NULL, NULL, 0, 0, NULL, 0, NULL),
(91, 4, 'url_path', NULL, NULL, 'varchar', NULL, NULL, 'text', NULL, NULL, NULL, 0, 0, NULL, 0, NULL),
(92, 4, 'minimal_price', NULL, NULL, 'decimal', NULL, NULL, 'price', 'Minimal Price', NULL, NULL, 0, 0, NULL, 0, NULL),
(93, 4, 'is_recurring', NULL, NULL, 'int', NULL, NULL, 'select', 'Enable Recurring Profile', NULL, 'eav/entity_attribute_source_boolean', 0, 0, NULL, 0, 'Products with recurring profile participate in catalog as nominal items.'),
(94, 4, 'recurring_profile', NULL, 'catalog/product_attribute_backend_recurring', 'text', NULL, NULL, 'text', 'Recurring Payment Profile', NULL, NULL, 0, 0, NULL, 0, NULL),
(95, 4, 'visibility', NULL, NULL, 'int', NULL, NULL, 'select', 'Visibility', NULL, 'catalog/product_visibility', 1, 0, '4', 0, NULL),
(96, 4, 'custom_design', NULL, NULL, 'varchar', NULL, NULL, 'select', 'Custom Design', NULL, 'core/design_source_design', 0, 0, NULL, 0, NULL),
(97, 4, 'custom_design_from', NULL, 'eav/entity_attribute_backend_datetime', 'datetime', NULL, NULL, 'date', 'Active From', NULL, NULL, 0, 0, NULL, 0, NULL),
(98, 4, 'custom_design_to', NULL, 'eav/entity_attribute_backend_datetime', 'datetime', NULL, NULL, 'date', 'Active To', NULL, NULL, 0, 0, NULL, 0, NULL),
(99, 4, 'custom_layout_update', NULL, 'catalog/attribute_backend_customlayoutupdate', 'text', NULL, NULL, 'textarea', 'Custom Layout Update', NULL, NULL, 0, 0, NULL, 0, NULL),
(100, 4, 'page_layout', NULL, NULL, 'varchar', NULL, NULL, 'select', 'Page Layout', NULL, 'catalog/product_attribute_source_layout', 0, 0, NULL, 0, NULL),
(101, 4, 'category_ids', NULL, NULL, 'static', NULL, NULL, 'text', NULL, NULL, NULL, 0, 0, NULL, 0, NULL),
(102, 4, 'options_container', NULL, NULL, 'varchar', NULL, NULL, 'select', 'Display Product Options In', NULL, 'catalog/entity_product_attribute_design_options_container', 0, 0, 'container2', 0, NULL),
(103, 4, 'required_options', NULL, NULL, 'static', NULL, NULL, 'text', NULL, NULL, NULL, 0, 0, NULL, 0, NULL),
(104, 4, 'has_options', NULL, NULL, 'static', NULL, NULL, 'text', NULL, NULL, NULL, 0, 0, NULL, 0, NULL),
(105, 4, 'image_label', NULL, NULL, 'varchar', NULL, NULL, 'text', 'Image Label', NULL, NULL, 0, 0, NULL, 0, NULL),
(106, 4, 'small_image_label', NULL, NULL, 'varchar', NULL, NULL, 'text', 'Small Image Label', NULL, NULL, 0, 0, NULL, 0, NULL),
(107, 4, 'thumbnail_label', NULL, NULL, 'varchar', NULL, NULL, 'text', 'Thumbnail Label', NULL, NULL, 0, 0, NULL, 0, NULL),
(108, 4, 'created_at', NULL, 'eav/entity_attribute_backend_time_created', 'static', NULL, NULL, 'text', NULL, NULL, NULL, 1, 0, NULL, 0, NULL),
(109, 4, 'updated_at', NULL, 'eav/entity_attribute_backend_time_updated', 'static', NULL, NULL, 'text', NULL, NULL, NULL, 1, 0, NULL, 0, NULL),
(110, 4, 'country_of_manufacture', NULL, NULL, 'varchar', NULL, NULL, 'select', 'Country of Manufacture', NULL, 'catalog/product_attribute_source_countryofmanufacture', 0, 0, NULL, 0, NULL),
(111, 4, 'msrp_enabled', NULL, 'catalog/product_attribute_backend_msrp', 'varchar', NULL, NULL, 'select', 'Apply MAP', NULL, 'catalog/product_attribute_source_msrp_type_enabled', 0, 0, '2', 0, NULL),
(112, 4, 'msrp_display_actual_price_type', NULL, 'catalog/product_attribute_backend_boolean', 'varchar', NULL, NULL, 'select', 'Display Actual Price', NULL, 'catalog/product_attribute_source_msrp_type_price', 0, 0, '4', 0, NULL),
(113, 4, 'msrp', NULL, 'catalog/product_attribute_backend_price', 'decimal', NULL, NULL, 'price', 'Manufacturer''s Suggested Retail Price', NULL, NULL, 0, 0, NULL, 0, NULL),
(114, 4, 'enable_googlecheckout', NULL, NULL, 'int', NULL, NULL, 'select', 'Is Product Available for Purchase with Google Checkout', NULL, 'eav/entity_attribute_source_boolean', 0, 0, '1', 0, NULL),
(115, 4, 'tax_class_id', NULL, NULL, 'int', NULL, NULL, 'select', 'Tax Class', NULL, 'tax/class_source_product', 1, 0, NULL, 0, NULL),
(116, 4, 'gift_message_available', NULL, 'catalog/product_attribute_backend_boolean', 'varchar', NULL, NULL, 'select', 'Allow Gift Message', NULL, 'eav/entity_attribute_source_boolean', 0, 0, NULL, 0, NULL),
(117, 4, 'price_type', NULL, NULL, 'int', NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, NULL, 0, NULL),
(118, 4, 'sku_type', NULL, NULL, 'int', NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, NULL, 0, NULL),
(119, 4, 'weight_type', NULL, NULL, 'int', NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, NULL, 0, NULL),
(120, 4, 'price_view', NULL, NULL, 'int', NULL, NULL, 'select', 'Price View', NULL, 'bundle/product_attribute_source_price_view', 1, 0, NULL, 0, NULL),
(121, 4, 'shipment_type', NULL, NULL, 'int', NULL, NULL, NULL, 'Shipment', NULL, NULL, 1, 0, NULL, 0, NULL),
(122, 4, 'links_purchased_separately', NULL, NULL, 'int', NULL, NULL, NULL, 'Links can be purchased separately', NULL, NULL, 1, 0, NULL, 0, NULL),
(123, 4, 'samples_title', NULL, NULL, 'varchar', NULL, NULL, NULL, 'Samples title', NULL, NULL, 1, 0, NULL, 0, NULL),
(124, 4, 'links_title', NULL, NULL, 'varchar', NULL, NULL, NULL, 'Links title', NULL, NULL, 1, 0, NULL, 0, NULL),
(125, 4, 'links_exist', NULL, NULL, 'int', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, '0', 0, NULL),
(126, 3, 'thumbnail', NULL, 'catalog/category_attribute_backend_image', 'varchar', NULL, NULL, 'image', 'Thumbnail Image', NULL, NULL, 0, 0, NULL, 0, NULL);

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `eav_attribute_group`
--

CREATE TABLE IF NOT EXISTS `eav_attribute_group` (
  `attribute_group_id` smallint(5) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Attribute Group Id',
  `attribute_set_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Attribute Set Id',
  `attribute_group_name` varchar(255) NOT NULL DEFAULT '' COMMENT 'Attribute Group Name',
  `sort_order` smallint(6) NOT NULL DEFAULT '0' COMMENT 'Sort Order',
  `default_id` smallint(5) unsigned DEFAULT '0' COMMENT 'Default Id',
  PRIMARY KEY (`attribute_group_id`),
  UNIQUE KEY `UNQ_EAV_ATTRIBUTE_GROUP_ATTRIBUTE_SET_ID_ATTRIBUTE_GROUP_NAME` (`attribute_set_id`,`attribute_group_name`),
  KEY `IDX_EAV_ATTRIBUTE_GROUP_ATTRIBUTE_SET_ID_SORT_ORDER` (`attribute_set_id`,`sort_order`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='Eav Attribute Group' AUTO_INCREMENT=18 ;

--
-- Gegevens worden uitgevoerd voor tabel `eav_attribute_group`
--

INSERT INTO `eav_attribute_group` (`attribute_group_id`, `attribute_set_id`, `attribute_group_name`, `sort_order`, `default_id`) VALUES
(1, 1, 'General', 1, 1),
(2, 2, 'General', 1, 1),
(3, 3, 'General', 10, 1),
(4, 3, 'General Information', 2, 0),
(5, 3, 'Display Settings', 20, 0),
(6, 3, 'Custom Design', 30, 0),
(7, 4, 'General', 1, 1),
(8, 4, 'Prices', 2, 0),
(9, 4, 'Meta Information', 3, 0),
(10, 4, 'Images', 4, 0),
(11, 4, 'Recurring Profile', 5, 0),
(12, 4, 'Design', 6, 0),
(13, 5, 'General', 1, 1),
(14, 6, 'General', 1, 1),
(15, 7, 'General', 1, 1),
(16, 8, 'General', 1, 1),
(17, 4, 'Gift Options', 7, 0);

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `eav_attribute_label`
--

CREATE TABLE IF NOT EXISTS `eav_attribute_label` (
  `attribute_label_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Attribute Label Id',
  `attribute_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Attribute Id',
  `store_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Store Id',
  `value` varchar(255) NOT NULL DEFAULT '' COMMENT 'Value',
  PRIMARY KEY (`attribute_label_id`),
  KEY `IDX_EAV_ATTRIBUTE_LABEL_ATTRIBUTE_ID` (`attribute_id`),
  KEY `IDX_EAV_ATTRIBUTE_LABEL_STORE_ID` (`store_id`),
  KEY `IDX_EAV_ATTRIBUTE_LABEL_ATTRIBUTE_ID_STORE_ID` (`attribute_id`,`store_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Eav Attribute Label' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `eav_attribute_option`
--

CREATE TABLE IF NOT EXISTS `eav_attribute_option` (
  `option_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Option Id',
  `attribute_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Attribute Id',
  `sort_order` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Sort Order',
  PRIMARY KEY (`option_id`),
  KEY `IDX_EAV_ATTRIBUTE_OPTION_ATTRIBUTE_ID` (`attribute_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='Eav Attribute Option' AUTO_INCREMENT=3 ;

--
-- Gegevens worden uitgevoerd voor tabel `eav_attribute_option`
--

INSERT INTO `eav_attribute_option` (`option_id`, `attribute_id`, `sort_order`) VALUES
(1, 18, 0),
(2, 18, 1);

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `eav_attribute_option_value`
--

CREATE TABLE IF NOT EXISTS `eav_attribute_option_value` (
  `value_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Value Id',
  `option_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Option Id',
  `store_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Store Id',
  `value` varchar(255) NOT NULL DEFAULT '' COMMENT 'Value',
  PRIMARY KEY (`value_id`),
  KEY `IDX_EAV_ATTRIBUTE_OPTION_VALUE_OPTION_ID` (`option_id`),
  KEY `IDX_EAV_ATTRIBUTE_OPTION_VALUE_STORE_ID` (`store_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='Eav Attribute Option Value' AUTO_INCREMENT=3 ;

--
-- Gegevens worden uitgevoerd voor tabel `eav_attribute_option_value`
--

INSERT INTO `eav_attribute_option_value` (`value_id`, `option_id`, `store_id`, `value`) VALUES
(1, 1, 0, 'Male'),
(2, 2, 0, 'Female');

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `eav_attribute_set`
--

CREATE TABLE IF NOT EXISTS `eav_attribute_set` (
  `attribute_set_id` smallint(5) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Attribute Set Id',
  `entity_type_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Entity Type Id',
  `attribute_set_name` varchar(255) NOT NULL DEFAULT '' COMMENT 'Attribute Set Name',
  `sort_order` smallint(6) NOT NULL DEFAULT '0' COMMENT 'Sort Order',
  PRIMARY KEY (`attribute_set_id`),
  UNIQUE KEY `UNQ_EAV_ATTRIBUTE_SET_ENTITY_TYPE_ID_ATTRIBUTE_SET_NAME` (`entity_type_id`,`attribute_set_name`),
  KEY `IDX_EAV_ATTRIBUTE_SET_ENTITY_TYPE_ID_SORT_ORDER` (`entity_type_id`,`sort_order`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='Eav Attribute Set' AUTO_INCREMENT=9 ;

--
-- Gegevens worden uitgevoerd voor tabel `eav_attribute_set`
--

INSERT INTO `eav_attribute_set` (`attribute_set_id`, `entity_type_id`, `attribute_set_name`, `sort_order`) VALUES
(1, 1, 'Default', 1),
(2, 2, 'Default', 1),
(3, 3, 'Default', 1),
(4, 4, 'Default', 1),
(5, 5, 'Default', 1),
(6, 6, 'Default', 1),
(7, 7, 'Default', 1),
(8, 8, 'Default', 1);

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `eav_entity`
--

CREATE TABLE IF NOT EXISTS `eav_entity` (
  `entity_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Entity Id',
  `entity_type_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Entity Type Id',
  `attribute_set_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Attribute Set Id',
  `increment_id` varchar(50) NOT NULL DEFAULT '' COMMENT 'Increment Id',
  `parent_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Parent Id',
  `store_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Store Id',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Created At',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'Updated At',
  `is_active` smallint(5) unsigned NOT NULL DEFAULT '1' COMMENT 'Defines Is Entity Active',
  PRIMARY KEY (`entity_id`),
  KEY `IDX_EAV_ENTITY_ENTITY_TYPE_ID` (`entity_type_id`),
  KEY `IDX_EAV_ENTITY_STORE_ID` (`store_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Eav Entity' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `eav_entity_attribute`
--

CREATE TABLE IF NOT EXISTS `eav_entity_attribute` (
  `entity_attribute_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Entity Attribute Id',
  `entity_type_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Entity Type Id',
  `attribute_set_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Attribute Set Id',
  `attribute_group_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Attribute Group Id',
  `attribute_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Attribute Id',
  `sort_order` smallint(6) NOT NULL DEFAULT '0' COMMENT 'Sort Order',
  PRIMARY KEY (`entity_attribute_id`),
  UNIQUE KEY `UNQ_EAV_ENTITY_ATTRIBUTE_ATTRIBUTE_SET_ID_ATTRIBUTE_ID` (`attribute_set_id`,`attribute_id`),
  UNIQUE KEY `UNQ_EAV_ENTITY_ATTRIBUTE_ATTRIBUTE_GROUP_ID_ATTRIBUTE_ID` (`attribute_group_id`,`attribute_id`),
  KEY `IDX_EAV_ENTITY_ATTRIBUTE_ATTRIBUTE_SET_ID_SORT_ORDER` (`attribute_set_id`,`sort_order`),
  KEY `IDX_EAV_ENTITY_ATTRIBUTE_ATTRIBUTE_ID` (`attribute_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='Eav Entity Attributes' AUTO_INCREMENT=125 ;

--
-- Gegevens worden uitgevoerd voor tabel `eav_entity_attribute`
--

INSERT INTO `eav_entity_attribute` (`entity_attribute_id`, `entity_type_id`, `attribute_set_id`, `attribute_group_id`, `attribute_id`, `sort_order`) VALUES
(1, 1, 1, 1, 1, 10),
(2, 1, 1, 1, 2, 0),
(3, 1, 1, 1, 3, 20),
(4, 1, 1, 1, 4, 30),
(5, 1, 1, 1, 5, 40),
(6, 1, 1, 1, 6, 50),
(7, 1, 1, 1, 7, 60),
(8, 1, 1, 1, 8, 70),
(9, 1, 1, 1, 9, 80),
(10, 1, 1, 1, 10, 25),
(11, 1, 1, 1, 11, 90),
(12, 1, 1, 1, 12, 0),
(13, 1, 1, 1, 13, 0),
(14, 1, 1, 1, 14, 0),
(15, 1, 1, 1, 15, 100),
(16, 1, 1, 1, 16, 0),
(17, 1, 1, 1, 17, 86),
(18, 1, 1, 1, 18, 110),
(19, 2, 2, 2, 19, 10),
(20, 2, 2, 2, 20, 20),
(21, 2, 2, 2, 21, 30),
(22, 2, 2, 2, 22, 40),
(23, 2, 2, 2, 23, 50),
(24, 2, 2, 2, 24, 60),
(25, 2, 2, 2, 25, 70),
(26, 2, 2, 2, 26, 80),
(27, 2, 2, 2, 27, 90),
(28, 2, 2, 2, 28, 100),
(29, 2, 2, 2, 29, 100),
(30, 2, 2, 2, 30, 110),
(31, 2, 2, 2, 31, 120),
(32, 2, 2, 2, 32, 130),
(33, 1, 1, 1, 33, 111),
(34, 1, 1, 1, 34, 112),
(35, 3, 3, 4, 35, 1),
(36, 3, 3, 4, 36, 2),
(37, 3, 3, 4, 37, 3),
(38, 3, 3, 4, 38, 4),
(39, 3, 3, 4, 39, 5),
(40, 3, 3, 4, 40, 6),
(41, 3, 3, 4, 41, 7),
(42, 3, 3, 4, 42, 8),
(43, 3, 3, 5, 43, 10),
(44, 3, 3, 5, 44, 20),
(45, 3, 3, 5, 45, 30),
(46, 3, 3, 4, 46, 12),
(47, 3, 3, 4, 47, 13),
(48, 3, 3, 4, 48, 14),
(49, 3, 3, 4, 49, 15),
(50, 3, 3, 4, 50, 16),
(51, 3, 3, 4, 51, 17),
(52, 3, 3, 6, 52, 10),
(53, 3, 3, 6, 53, 30),
(54, 3, 3, 6, 54, 40),
(55, 3, 3, 6, 55, 50),
(56, 3, 3, 6, 56, 60),
(57, 3, 3, 4, 57, 24),
(58, 3, 3, 4, 58, 25),
(59, 3, 3, 5, 59, 40),
(60, 3, 3, 5, 60, 50),
(61, 3, 3, 4, 61, 10),
(62, 3, 3, 6, 62, 5),
(63, 3, 3, 6, 63, 6),
(64, 3, 3, 5, 64, 51),
(65, 4, 4, 7, 65, 1),
(66, 4, 4, 7, 66, 2),
(67, 4, 4, 7, 67, 3),
(68, 4, 4, 7, 68, 4),
(69, 4, 4, 8, 69, 1),
(70, 4, 4, 8, 70, 2),
(71, 4, 4, 8, 71, 3),
(72, 4, 4, 8, 72, 4),
(73, 4, 4, 8, 73, 5),
(74, 4, 4, 7, 74, 5),
(75, 4, 4, 9, 76, 1),
(76, 4, 4, 9, 77, 2),
(77, 4, 4, 9, 78, 3),
(78, 4, 4, 10, 79, 1),
(79, 4, 4, 10, 80, 2),
(80, 4, 4, 10, 81, 3),
(81, 4, 4, 10, 82, 4),
(82, 4, 4, 7, 83, 6),
(83, 4, 4, 8, 84, 6),
(84, 4, 4, 7, 86, 7),
(85, 4, 4, 7, 87, 8),
(86, 4, 4, 10, 88, 5),
(87, 4, 4, 7, 89, 9),
(88, 4, 4, 7, 90, 10),
(89, 4, 4, 7, 91, 11),
(90, 4, 4, 8, 92, 7),
(91, 4, 4, 11, 93, 1),
(92, 4, 4, 11, 94, 2),
(93, 4, 4, 7, 95, 12),
(94, 4, 4, 12, 96, 1),
(95, 4, 4, 12, 97, 2),
(96, 4, 4, 12, 98, 3),
(97, 4, 4, 12, 99, 4),
(98, 4, 4, 12, 100, 5),
(99, 4, 4, 7, 101, 13),
(100, 4, 4, 12, 102, 6),
(101, 4, 4, 7, 103, 14),
(102, 4, 4, 7, 104, 15),
(103, 4, 4, 7, 105, 16),
(104, 4, 4, 7, 106, 17),
(105, 4, 4, 7, 107, 18),
(106, 4, 4, 7, 108, 19),
(107, 4, 4, 7, 109, 20),
(108, 4, 4, 7, 110, 21),
(109, 4, 4, 8, 111, 8),
(110, 4, 4, 8, 112, 9),
(111, 4, 4, 8, 113, 10),
(112, 4, 4, 8, 114, 11),
(113, 4, 4, 8, 115, 12),
(114, 4, 4, 17, 116, 1),
(115, 4, 4, 7, 117, 22),
(116, 4, 4, 7, 118, 23),
(117, 4, 4, 7, 119, 24),
(118, 4, 4, 8, 120, 13),
(119, 4, 4, 7, 121, 25),
(120, 4, 4, 7, 122, 26),
(121, 4, 4, 7, 123, 27),
(122, 4, 4, 7, 124, 28),
(123, 4, 4, 7, 125, 29),
(124, 3, 3, 4, 126, 4);

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `eav_entity_datetime`
--

CREATE TABLE IF NOT EXISTS `eav_entity_datetime` (
  `value_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Value Id',
  `entity_type_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Entity Type Id',
  `attribute_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Attribute Id',
  `store_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Store Id',
  `entity_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Entity Id',
  `value` datetime NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'Attribute Value',
  PRIMARY KEY (`value_id`),
  UNIQUE KEY `UNQ_EAV_ENTITY_DATETIME_ENTITY_ID_ATTRIBUTE_ID_STORE_ID` (`entity_id`,`attribute_id`,`store_id`),
  KEY `IDX_EAV_ENTITY_DATETIME_ENTITY_TYPE_ID` (`entity_type_id`),
  KEY `IDX_EAV_ENTITY_DATETIME_ATTRIBUTE_ID` (`attribute_id`),
  KEY `IDX_EAV_ENTITY_DATETIME_STORE_ID` (`store_id`),
  KEY `IDX_EAV_ENTITY_DATETIME_ENTITY_ID` (`entity_id`),
  KEY `IDX_EAV_ENTITY_DATETIME_ATTRIBUTE_ID_VALUE` (`attribute_id`,`value`),
  KEY `IDX_EAV_ENTITY_DATETIME_ENTITY_TYPE_ID_VALUE` (`entity_type_id`,`value`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Eav Entity Value Prefix' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `eav_entity_decimal`
--

CREATE TABLE IF NOT EXISTS `eav_entity_decimal` (
  `value_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Value Id',
  `entity_type_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Entity Type Id',
  `attribute_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Attribute Id',
  `store_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Store Id',
  `entity_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Entity Id',
  `value` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Attribute Value',
  PRIMARY KEY (`value_id`),
  UNIQUE KEY `UNQ_EAV_ENTITY_DECIMAL_ENTITY_ID_ATTRIBUTE_ID_STORE_ID` (`entity_id`,`attribute_id`,`store_id`),
  KEY `IDX_EAV_ENTITY_DECIMAL_ENTITY_TYPE_ID` (`entity_type_id`),
  KEY `IDX_EAV_ENTITY_DECIMAL_ATTRIBUTE_ID` (`attribute_id`),
  KEY `IDX_EAV_ENTITY_DECIMAL_STORE_ID` (`store_id`),
  KEY `IDX_EAV_ENTITY_DECIMAL_ENTITY_ID` (`entity_id`),
  KEY `IDX_EAV_ENTITY_DECIMAL_ATTRIBUTE_ID_VALUE` (`attribute_id`,`value`),
  KEY `IDX_EAV_ENTITY_DECIMAL_ENTITY_TYPE_ID_VALUE` (`entity_type_id`,`value`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Eav Entity Value Prefix' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `eav_entity_int`
--

CREATE TABLE IF NOT EXISTS `eav_entity_int` (
  `value_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Value Id',
  `entity_type_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Entity Type Id',
  `attribute_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Attribute Id',
  `store_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Store Id',
  `entity_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Entity Id',
  `value` int(11) NOT NULL DEFAULT '0' COMMENT 'Attribute Value',
  PRIMARY KEY (`value_id`),
  UNIQUE KEY `UNQ_EAV_ENTITY_INT_ENTITY_ID_ATTRIBUTE_ID_STORE_ID` (`entity_id`,`attribute_id`,`store_id`),
  KEY `IDX_EAV_ENTITY_INT_ENTITY_TYPE_ID` (`entity_type_id`),
  KEY `IDX_EAV_ENTITY_INT_ATTRIBUTE_ID` (`attribute_id`),
  KEY `IDX_EAV_ENTITY_INT_STORE_ID` (`store_id`),
  KEY `IDX_EAV_ENTITY_INT_ENTITY_ID` (`entity_id`),
  KEY `IDX_EAV_ENTITY_INT_ATTRIBUTE_ID_VALUE` (`attribute_id`,`value`),
  KEY `IDX_EAV_ENTITY_INT_ENTITY_TYPE_ID_VALUE` (`entity_type_id`,`value`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Eav Entity Value Prefix' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `eav_entity_store`
--

CREATE TABLE IF NOT EXISTS `eav_entity_store` (
  `entity_store_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Entity Store Id',
  `entity_type_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Entity Type Id',
  `store_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Store Id',
  `increment_prefix` varchar(20) DEFAULT NULL COMMENT 'Increment Prefix',
  `increment_last_id` varchar(50) DEFAULT NULL COMMENT 'Last Incremented Id',
  PRIMARY KEY (`entity_store_id`),
  KEY `IDX_EAV_ENTITY_STORE_ENTITY_TYPE_ID` (`entity_type_id`),
  KEY `IDX_EAV_ENTITY_STORE_STORE_ID` (`store_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Eav Entity Store' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `eav_entity_text`
--

CREATE TABLE IF NOT EXISTS `eav_entity_text` (
  `value_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Value Id',
  `entity_type_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Entity Type Id',
  `attribute_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Attribute Id',
  `store_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Store Id',
  `entity_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Entity Id',
  `value` text NOT NULL COMMENT 'Attribute Value',
  PRIMARY KEY (`value_id`),
  UNIQUE KEY `UNQ_EAV_ENTITY_TEXT_ENTITY_ID_ATTRIBUTE_ID_STORE_ID` (`entity_id`,`attribute_id`,`store_id`),
  KEY `IDX_EAV_ENTITY_TEXT_ENTITY_TYPE_ID` (`entity_type_id`),
  KEY `IDX_EAV_ENTITY_TEXT_ATTRIBUTE_ID` (`attribute_id`),
  KEY `IDX_EAV_ENTITY_TEXT_STORE_ID` (`store_id`),
  KEY `IDX_EAV_ENTITY_TEXT_ENTITY_ID` (`entity_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Eav Entity Value Prefix' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `eav_entity_type`
--

CREATE TABLE IF NOT EXISTS `eav_entity_type` (
  `entity_type_id` smallint(5) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Entity Type Id',
  `entity_type_code` varchar(50) NOT NULL COMMENT 'Entity Type Code',
  `entity_model` varchar(255) NOT NULL COMMENT 'Entity Model',
  `attribute_model` varchar(255) DEFAULT NULL COMMENT 'Attribute Model',
  `entity_table` varchar(255) DEFAULT NULL COMMENT 'Entity Table',
  `value_table_prefix` varchar(255) DEFAULT NULL COMMENT 'Value Table Prefix',
  `entity_id_field` varchar(255) DEFAULT NULL COMMENT 'Entity Id Field',
  `is_data_sharing` smallint(5) unsigned NOT NULL DEFAULT '1' COMMENT 'Defines Is Data Sharing',
  `data_sharing_key` varchar(100) DEFAULT 'default' COMMENT 'Data Sharing Key',
  `default_attribute_set_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Default Attribute Set Id',
  `increment_model` varchar(255) DEFAULT '' COMMENT 'Increment Model',
  `increment_per_store` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Increment Per Store',
  `increment_pad_length` smallint(5) unsigned NOT NULL DEFAULT '8' COMMENT 'Increment Pad Length',
  `increment_pad_char` varchar(1) NOT NULL DEFAULT '0' COMMENT 'Increment Pad Char',
  `additional_attribute_table` varchar(255) DEFAULT '' COMMENT 'Additional Attribute Table',
  `entity_attribute_collection` varchar(255) DEFAULT '' COMMENT 'Entity Attribute Collection',
  PRIMARY KEY (`entity_type_id`),
  KEY `IDX_EAV_ENTITY_TYPE_ENTITY_TYPE_CODE` (`entity_type_code`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='Eav Entity Type' AUTO_INCREMENT=9 ;

--
-- Gegevens worden uitgevoerd voor tabel `eav_entity_type`
--

INSERT INTO `eav_entity_type` (`entity_type_id`, `entity_type_code`, `entity_model`, `attribute_model`, `entity_table`, `value_table_prefix`, `entity_id_field`, `is_data_sharing`, `data_sharing_key`, `default_attribute_set_id`, `increment_model`, `increment_per_store`, `increment_pad_length`, `increment_pad_char`, `additional_attribute_table`, `entity_attribute_collection`) VALUES
(1, 'customer', 'customer/customer', 'customer/attribute', 'customer/entity', NULL, NULL, 1, 'default', 1, 'eav/entity_increment_numeric', 0, 8, '0', 'customer/eav_attribute', 'customer/attribute_collection'),
(2, 'customer_address', 'customer/address', 'customer/attribute', 'customer/address_entity', NULL, NULL, 1, 'default', 2, NULL, 0, 8, '0', 'customer/eav_attribute', 'customer/address_attribute_collection'),
(3, 'catalog_category', 'catalog/category', 'catalog/resource_eav_attribute', 'catalog/category', NULL, NULL, 1, 'default', 3, NULL, 0, 8, '0', 'catalog/eav_attribute', 'catalog/category_attribute_collection'),
(4, 'catalog_product', 'catalog/product', 'catalog/resource_eav_attribute', 'catalog/product', NULL, NULL, 1, 'default', 4, NULL, 0, 8, '0', 'catalog/eav_attribute', 'catalog/product_attribute_collection'),
(5, 'order', 'sales/order', NULL, 'sales/order', NULL, NULL, 1, 'default', 0, 'eav/entity_increment_numeric', 1, 8, '0', NULL, NULL),
(6, 'invoice', 'sales/order_invoice', NULL, 'sales/invoice', NULL, NULL, 1, 'default', 0, 'eav/entity_increment_numeric', 1, 8, '0', NULL, NULL),
(7, 'creditmemo', 'sales/order_creditmemo', NULL, 'sales/creditmemo', NULL, NULL, 1, 'default', 0, 'eav/entity_increment_numeric', 1, 8, '0', NULL, NULL),
(8, 'shipment', 'sales/order_shipment', NULL, 'sales/shipment', NULL, NULL, 1, 'default', 0, 'eav/entity_increment_numeric', 1, 8, '0', NULL, NULL);

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `eav_entity_varchar`
--

CREATE TABLE IF NOT EXISTS `eav_entity_varchar` (
  `value_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Value Id',
  `entity_type_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Entity Type Id',
  `attribute_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Attribute Id',
  `store_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Store Id',
  `entity_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Entity Id',
  `value` varchar(255) NOT NULL DEFAULT '' COMMENT 'Attribute Value',
  PRIMARY KEY (`value_id`),
  UNIQUE KEY `UNQ_EAV_ENTITY_VARCHAR_ENTITY_ID_ATTRIBUTE_ID_STORE_ID` (`entity_id`,`attribute_id`,`store_id`),
  KEY `IDX_EAV_ENTITY_VARCHAR_ENTITY_TYPE_ID` (`entity_type_id`),
  KEY `IDX_EAV_ENTITY_VARCHAR_ATTRIBUTE_ID` (`attribute_id`),
  KEY `IDX_EAV_ENTITY_VARCHAR_STORE_ID` (`store_id`),
  KEY `IDX_EAV_ENTITY_VARCHAR_ENTITY_ID` (`entity_id`),
  KEY `IDX_EAV_ENTITY_VARCHAR_ATTRIBUTE_ID_VALUE` (`attribute_id`,`value`),
  KEY `IDX_EAV_ENTITY_VARCHAR_ENTITY_TYPE_ID_VALUE` (`entity_type_id`,`value`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Eav Entity Value Prefix' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `eav_form_element`
--

CREATE TABLE IF NOT EXISTS `eav_form_element` (
  `element_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Element Id',
  `type_id` smallint(5) unsigned NOT NULL COMMENT 'Type Id',
  `fieldset_id` smallint(5) unsigned DEFAULT NULL COMMENT 'Fieldset Id',
  `attribute_id` smallint(5) unsigned NOT NULL COMMENT 'Attribute Id',
  `sort_order` int(11) NOT NULL DEFAULT '0' COMMENT 'Sort Order',
  PRIMARY KEY (`element_id`),
  UNIQUE KEY `UNQ_EAV_FORM_ELEMENT_TYPE_ID_ATTRIBUTE_ID` (`type_id`,`attribute_id`),
  KEY `IDX_EAV_FORM_ELEMENT_TYPE_ID` (`type_id`),
  KEY `IDX_EAV_FORM_ELEMENT_FIELDSET_ID` (`fieldset_id`),
  KEY `IDX_EAV_FORM_ELEMENT_ATTRIBUTE_ID` (`attribute_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='Eav Form Element' AUTO_INCREMENT=53 ;

--
-- Gegevens worden uitgevoerd voor tabel `eav_form_element`
--

INSERT INTO `eav_form_element` (`element_id`, `type_id`, `fieldset_id`, `attribute_id`, `sort_order`) VALUES
(1, 1, NULL, 20, 0),
(2, 1, NULL, 22, 1),
(3, 1, NULL, 24, 2),
(4, 1, NULL, 9, 3),
(5, 1, NULL, 25, 4),
(6, 1, NULL, 26, 5),
(7, 1, NULL, 28, 6),
(8, 1, NULL, 30, 7),
(9, 1, NULL, 27, 8),
(10, 1, NULL, 31, 9),
(11, 1, NULL, 32, 10),
(12, 2, NULL, 20, 0),
(13, 2, NULL, 22, 1),
(14, 2, NULL, 24, 2),
(15, 2, NULL, 9, 3),
(16, 2, NULL, 25, 4),
(17, 2, NULL, 26, 5),
(18, 2, NULL, 28, 6),
(19, 2, NULL, 30, 7),
(20, 2, NULL, 27, 8),
(21, 2, NULL, 31, 9),
(22, 2, NULL, 32, 10),
(23, 3, NULL, 20, 0),
(24, 3, NULL, 22, 1),
(25, 3, NULL, 24, 2),
(26, 3, NULL, 25, 3),
(27, 3, NULL, 26, 4),
(28, 3, NULL, 28, 5),
(29, 3, NULL, 30, 6),
(30, 3, NULL, 27, 7),
(31, 3, NULL, 31, 8),
(32, 3, NULL, 32, 9),
(33, 4, NULL, 20, 0),
(34, 4, NULL, 22, 1),
(35, 4, NULL, 24, 2),
(36, 4, NULL, 25, 3),
(37, 4, NULL, 26, 4),
(38, 4, NULL, 28, 5),
(39, 4, NULL, 30, 6),
(40, 4, NULL, 27, 7),
(41, 4, NULL, 31, 8),
(42, 4, NULL, 32, 9),
(43, 5, 1, 5, 0),
(44, 5, 1, 7, 1),
(45, 5, 1, 9, 2),
(46, 5, 2, 24, 0),
(47, 5, 2, 31, 1),
(48, 5, 2, 25, 2),
(49, 5, 2, 26, 3),
(50, 5, 2, 28, 4),
(51, 5, 2, 30, 5),
(52, 5, 2, 27, 6);

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `eav_form_fieldset`
--

CREATE TABLE IF NOT EXISTS `eav_form_fieldset` (
  `fieldset_id` smallint(5) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Fieldset Id',
  `type_id` smallint(5) unsigned NOT NULL COMMENT 'Type Id',
  `code` varchar(64) NOT NULL COMMENT 'Code',
  `sort_order` int(11) NOT NULL DEFAULT '0' COMMENT 'Sort Order',
  PRIMARY KEY (`fieldset_id`),
  UNIQUE KEY `UNQ_EAV_FORM_FIELDSET_TYPE_ID_CODE` (`type_id`,`code`),
  KEY `IDX_EAV_FORM_FIELDSET_TYPE_ID` (`type_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='Eav Form Fieldset' AUTO_INCREMENT=3 ;

--
-- Gegevens worden uitgevoerd voor tabel `eav_form_fieldset`
--

INSERT INTO `eav_form_fieldset` (`fieldset_id`, `type_id`, `code`, `sort_order`) VALUES
(1, 5, 'general', 1),
(2, 5, 'address', 2);

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `eav_form_fieldset_label`
--

CREATE TABLE IF NOT EXISTS `eav_form_fieldset_label` (
  `fieldset_id` smallint(5) unsigned NOT NULL COMMENT 'Fieldset Id',
  `store_id` smallint(5) unsigned NOT NULL COMMENT 'Store Id',
  `label` varchar(255) NOT NULL COMMENT 'Label',
  PRIMARY KEY (`fieldset_id`,`store_id`),
  KEY `IDX_EAV_FORM_FIELDSET_LABEL_FIELDSET_ID` (`fieldset_id`),
  KEY `IDX_EAV_FORM_FIELDSET_LABEL_STORE_ID` (`store_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Eav Form Fieldset Label';

--
-- Gegevens worden uitgevoerd voor tabel `eav_form_fieldset_label`
--

INSERT INTO `eav_form_fieldset_label` (`fieldset_id`, `store_id`, `label`) VALUES
(1, 0, 'Personal Information'),
(2, 0, 'Address Information');

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `eav_form_type`
--

CREATE TABLE IF NOT EXISTS `eav_form_type` (
  `type_id` smallint(5) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Type Id',
  `code` varchar(64) NOT NULL COMMENT 'Code',
  `label` varchar(255) NOT NULL COMMENT 'Label',
  `is_system` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Is System',
  `theme` varchar(64) DEFAULT NULL COMMENT 'Theme',
  `store_id` smallint(5) unsigned NOT NULL COMMENT 'Store Id',
  PRIMARY KEY (`type_id`),
  UNIQUE KEY `UNQ_EAV_FORM_TYPE_CODE_THEME_STORE_ID` (`code`,`theme`,`store_id`),
  KEY `IDX_EAV_FORM_TYPE_STORE_ID` (`store_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='Eav Form Type' AUTO_INCREMENT=6 ;

--
-- Gegevens worden uitgevoerd voor tabel `eav_form_type`
--

INSERT INTO `eav_form_type` (`type_id`, `code`, `label`, `is_system`, `theme`, `store_id`) VALUES
(1, 'checkout_onepage_register', 'checkout_onepage_register', 1, '', 0),
(2, 'checkout_onepage_register_guest', 'checkout_onepage_register_guest', 1, '', 0),
(3, 'checkout_onepage_billing_address', 'checkout_onepage_billing_address', 1, '', 0),
(4, 'checkout_onepage_shipping_address', 'checkout_onepage_shipping_address', 1, '', 0),
(5, 'checkout_multishipping_register', 'checkout_multishipping_register', 1, '', 0);

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `eav_form_type_entity`
--

CREATE TABLE IF NOT EXISTS `eav_form_type_entity` (
  `type_id` smallint(5) unsigned NOT NULL COMMENT 'Type Id',
  `entity_type_id` smallint(5) unsigned NOT NULL COMMENT 'Entity Type Id',
  PRIMARY KEY (`type_id`,`entity_type_id`),
  KEY `IDX_EAV_FORM_TYPE_ENTITY_ENTITY_TYPE_ID` (`entity_type_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Eav Form Type Entity';

--
-- Gegevens worden uitgevoerd voor tabel `eav_form_type_entity`
--

INSERT INTO `eav_form_type_entity` (`type_id`, `entity_type_id`) VALUES
(1, 1),
(2, 1),
(5, 1),
(1, 2),
(2, 2),
(3, 2),
(4, 2),
(5, 2);

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `gift_message`
--

CREATE TABLE IF NOT EXISTS `gift_message` (
  `gift_message_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'GiftMessage Id',
  `customer_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Customer id',
  `sender` varchar(255) DEFAULT NULL COMMENT 'Sender',
  `recipient` varchar(255) DEFAULT NULL COMMENT 'Recipient',
  `message` text COMMENT 'Message',
  PRIMARY KEY (`gift_message_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Gift Message' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `googlecheckout_notification`
--

CREATE TABLE IF NOT EXISTS `googlecheckout_notification` (
  `serial_number` varchar(64) NOT NULL COMMENT 'Serial Number',
  `started_at` timestamp NULL DEFAULT NULL COMMENT 'Started At',
  `status` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Status',
  PRIMARY KEY (`serial_number`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Google Checkout Notification Table';

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `importexport_importdata`
--

CREATE TABLE IF NOT EXISTS `importexport_importdata` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Id',
  `entity` varchar(50) NOT NULL COMMENT 'Entity',
  `behavior` varchar(10) NOT NULL DEFAULT 'append' COMMENT 'Behavior',
  `data` longtext COMMENT 'Data',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Import Data Table' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `index_event`
--

CREATE TABLE IF NOT EXISTS `index_event` (
  `event_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Event Id',
  `type` varchar(64) NOT NULL COMMENT 'Type',
  `entity` varchar(64) NOT NULL COMMENT 'Entity',
  `entity_pk` bigint(20) DEFAULT NULL COMMENT 'Entity Primary Key',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Creation Time',
  `old_data` mediumtext COMMENT 'Old Data',
  `new_data` mediumtext COMMENT 'New Data',
  PRIMARY KEY (`event_id`),
  UNIQUE KEY `UNQ_INDEX_EVENT_TYPE_ENTITY_ENTITY_PK` (`type`,`entity`,`entity_pk`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='Index Event' AUTO_INCREMENT=50 ;

--
-- Gegevens worden uitgevoerd voor tabel `index_event`
--

INSERT INTO `index_event` (`event_id`, `type`, `entity`, `entity_pk`, `created_at`, `old_data`, `new_data`) VALUES
(1, 'save', 'catalog_category', 1, '2012-02-28 10:55:59', NULL, 'a:5:{s:35:"cataloginventory_stock_match_result";b:0;s:34:"catalog_product_price_match_result";b:0;s:24:"catalog_url_match_result";b:1;s:37:"catalog_category_product_match_result";b:1;s:35:"catalogsearch_fulltext_match_result";b:1;}'),
(2, 'save', 'catalog_category', 2, '2012-02-28 10:56:01', NULL, 'a:6:{s:35:"cataloginventory_stock_match_result";b:0;s:34:"catalog_product_price_match_result";b:0;s:24:"catalog_url_match_result";b:1;s:33:"catalog_product_flat_match_result";b:0;s:37:"catalog_category_product_match_result";b:1;s:35:"catalogsearch_fulltext_match_result";b:1;}'),
(3, 'save', 'cataloginventory_stock_item', 1, '2012-02-28 11:07:47', NULL, 'a:6:{s:35:"cataloginventory_stock_match_result";b:1;s:34:"catalog_product_price_match_result";b:0;s:24:"catalog_url_match_result";b:0;s:33:"catalog_product_flat_match_result";b:0;s:37:"catalog_category_product_match_result";b:0;s:35:"catalogsearch_fulltext_match_result";b:0;}'),
(4, 'save', 'catalog_product', 1, '2012-02-28 11:07:48', NULL, 'a:6:{s:35:"cataloginventory_stock_match_result";b:1;s:34:"catalog_product_price_match_result";b:1;s:24:"catalog_url_match_result";b:1;s:33:"catalog_product_flat_match_result";b:1;s:37:"catalog_category_product_match_result";b:1;s:35:"catalogsearch_fulltext_match_result";b:1;}'),
(5, 'catalog_reindex_price', 'catalog_product', 1, '2012-02-28 11:07:48', NULL, 'a:6:{s:35:"cataloginventory_stock_match_result";b:0;s:34:"catalog_product_price_match_result";b:1;s:24:"catalog_url_match_result";b:0;s:33:"catalog_product_flat_match_result";b:0;s:37:"catalog_category_product_match_result";b:0;s:35:"catalogsearch_fulltext_match_result";b:0;}'),
(6, 'save', 'catalog_category', 3, '2012-02-28 11:11:45', NULL, 'a:6:{s:35:"cataloginventory_stock_match_result";b:0;s:34:"catalog_product_price_match_result";b:0;s:24:"catalog_url_match_result";b:1;s:33:"catalog_product_flat_match_result";b:0;s:37:"catalog_category_product_match_result";b:1;s:35:"catalogsearch_fulltext_match_result";b:1;}'),
(7, 'save', 'catalog_category', 4, '2012-03-01 12:28:40', NULL, 'a:6:{s:35:"cataloginventory_stock_match_result";b:0;s:34:"catalog_product_price_match_result";b:0;s:24:"catalog_url_match_result";b:1;s:33:"catalog_product_flat_match_result";b:0;s:37:"catalog_category_product_match_result";b:1;s:35:"catalogsearch_fulltext_match_result";b:1;}'),
(8, 'save', 'catalog_category', 5, '2012-03-01 12:33:02', NULL, 'a:6:{s:35:"cataloginventory_stock_match_result";b:0;s:34:"catalog_product_price_match_result";b:0;s:24:"catalog_url_match_result";b:1;s:33:"catalog_product_flat_match_result";b:0;s:37:"catalog_category_product_match_result";b:1;s:35:"catalogsearch_fulltext_match_result";b:1;}'),
(9, 'save', 'catalog_category', 6, '2012-03-01 12:39:05', NULL, 'a:6:{s:35:"cataloginventory_stock_match_result";b:0;s:34:"catalog_product_price_match_result";b:0;s:24:"catalog_url_match_result";b:1;s:33:"catalog_product_flat_match_result";b:0;s:37:"catalog_category_product_match_result";b:1;s:35:"catalogsearch_fulltext_match_result";b:1;}'),
(10, 'save', 'catalog_category', 7, '2012-03-01 12:44:42', NULL, 'a:6:{s:35:"cataloginventory_stock_match_result";b:0;s:34:"catalog_product_price_match_result";b:0;s:24:"catalog_url_match_result";b:1;s:33:"catalog_product_flat_match_result";b:0;s:37:"catalog_category_product_match_result";b:1;s:35:"catalogsearch_fulltext_match_result";b:1;}'),
(11, 'save', 'catalog_category', 8, '2012-03-01 12:45:57', NULL, 'a:6:{s:35:"cataloginventory_stock_match_result";b:0;s:34:"catalog_product_price_match_result";b:0;s:24:"catalog_url_match_result";b:1;s:33:"catalog_product_flat_match_result";b:0;s:37:"catalog_category_product_match_result";b:1;s:35:"catalogsearch_fulltext_match_result";b:1;}'),
(12, 'save', 'catalog_category', 9, '2012-03-01 12:47:30', NULL, 'a:6:{s:35:"cataloginventory_stock_match_result";b:0;s:34:"catalog_product_price_match_result";b:0;s:24:"catalog_url_match_result";b:1;s:33:"catalog_product_flat_match_result";b:0;s:37:"catalog_category_product_match_result";b:1;s:35:"catalogsearch_fulltext_match_result";b:1;}'),
(13, 'save', 'catalog_category', 10, '2012-03-01 12:48:05', NULL, 'a:6:{s:35:"cataloginventory_stock_match_result";b:0;s:34:"catalog_product_price_match_result";b:0;s:24:"catalog_url_match_result";b:1;s:33:"catalog_product_flat_match_result";b:0;s:37:"catalog_category_product_match_result";b:1;s:35:"catalogsearch_fulltext_match_result";b:1;}'),
(14, 'save', 'catalog_category', 11, '2012-03-01 12:49:05', NULL, 'a:6:{s:35:"cataloginventory_stock_match_result";b:0;s:34:"catalog_product_price_match_result";b:0;s:24:"catalog_url_match_result";b:1;s:33:"catalog_product_flat_match_result";b:0;s:37:"catalog_category_product_match_result";b:1;s:35:"catalogsearch_fulltext_match_result";b:1;}'),
(15, 'save', 'catalog_category', 12, '2012-03-01 12:53:59', NULL, 'a:6:{s:35:"cataloginventory_stock_match_result";b:0;s:34:"catalog_product_price_match_result";b:0;s:24:"catalog_url_match_result";b:1;s:33:"catalog_product_flat_match_result";b:0;s:37:"catalog_category_product_match_result";b:1;s:35:"catalogsearch_fulltext_match_result";b:1;}'),
(16, 'save', 'catalog_category', 13, '2012-03-01 12:57:20', NULL, 'a:6:{s:35:"cataloginventory_stock_match_result";b:0;s:34:"catalog_product_price_match_result";b:0;s:24:"catalog_url_match_result";b:1;s:33:"catalog_product_flat_match_result";b:0;s:37:"catalog_category_product_match_result";b:1;s:35:"catalogsearch_fulltext_match_result";b:1;}'),
(17, 'save', 'catalog_category', 14, '2012-03-01 12:58:38', NULL, 'a:6:{s:35:"cataloginventory_stock_match_result";b:0;s:34:"catalog_product_price_match_result";b:0;s:24:"catalog_url_match_result";b:1;s:33:"catalog_product_flat_match_result";b:0;s:37:"catalog_category_product_match_result";b:1;s:35:"catalogsearch_fulltext_match_result";b:1;}'),
(18, 'save', 'catalog_category', 15, '2012-03-01 13:20:26', NULL, 'a:6:{s:35:"cataloginventory_stock_match_result";b:0;s:34:"catalog_product_price_match_result";b:0;s:24:"catalog_url_match_result";b:1;s:33:"catalog_product_flat_match_result";b:0;s:37:"catalog_category_product_match_result";b:1;s:35:"catalogsearch_fulltext_match_result";b:1;}'),
(19, 'save', 'catalog_category', 16, '2012-03-01 13:21:42', NULL, 'a:6:{s:35:"cataloginventory_stock_match_result";b:0;s:34:"catalog_product_price_match_result";b:0;s:24:"catalog_url_match_result";b:1;s:33:"catalog_product_flat_match_result";b:0;s:37:"catalog_category_product_match_result";b:1;s:35:"catalogsearch_fulltext_match_result";b:1;}'),
(20, 'save', 'catalog_category', 17, '2012-03-01 13:22:33', NULL, 'a:6:{s:35:"cataloginventory_stock_match_result";b:0;s:34:"catalog_product_price_match_result";b:0;s:24:"catalog_url_match_result";b:1;s:33:"catalog_product_flat_match_result";b:0;s:37:"catalog_category_product_match_result";b:1;s:35:"catalogsearch_fulltext_match_result";b:1;}'),
(21, 'save', 'catalog_category', 18, '2012-03-01 13:23:02', NULL, 'a:6:{s:35:"cataloginventory_stock_match_result";b:0;s:34:"catalog_product_price_match_result";b:0;s:24:"catalog_url_match_result";b:1;s:33:"catalog_product_flat_match_result";b:0;s:37:"catalog_category_product_match_result";b:1;s:35:"catalogsearch_fulltext_match_result";b:1;}'),
(22, 'save', 'catalog_category', 19, '2012-03-01 13:23:55', NULL, 'a:6:{s:35:"cataloginventory_stock_match_result";b:0;s:34:"catalog_product_price_match_result";b:0;s:24:"catalog_url_match_result";b:1;s:33:"catalog_product_flat_match_result";b:0;s:37:"catalog_category_product_match_result";b:1;s:35:"catalogsearch_fulltext_match_result";b:1;}'),
(23, 'save', 'catalog_category', 20, '2012-03-01 13:24:18', NULL, 'a:6:{s:35:"cataloginventory_stock_match_result";b:0;s:34:"catalog_product_price_match_result";b:0;s:24:"catalog_url_match_result";b:1;s:33:"catalog_product_flat_match_result";b:0;s:37:"catalog_category_product_match_result";b:1;s:35:"catalogsearch_fulltext_match_result";b:1;}'),
(24, 'save', 'catalog_category', 21, '2012-03-01 13:25:32', NULL, 'a:6:{s:35:"cataloginventory_stock_match_result";b:0;s:34:"catalog_product_price_match_result";b:0;s:24:"catalog_url_match_result";b:1;s:33:"catalog_product_flat_match_result";b:0;s:37:"catalog_category_product_match_result";b:1;s:35:"catalogsearch_fulltext_match_result";b:1;}'),
(25, 'save', 'catalog_category', 22, '2012-03-01 13:25:53', NULL, 'a:6:{s:35:"cataloginventory_stock_match_result";b:0;s:34:"catalog_product_price_match_result";b:0;s:24:"catalog_url_match_result";b:1;s:33:"catalog_product_flat_match_result";b:0;s:37:"catalog_category_product_match_result";b:1;s:35:"catalogsearch_fulltext_match_result";b:1;}'),
(26, 'save', 'catalog_category', 23, '2012-03-01 13:26:27', NULL, 'a:6:{s:35:"cataloginventory_stock_match_result";b:0;s:34:"catalog_product_price_match_result";b:0;s:24:"catalog_url_match_result";b:1;s:33:"catalog_product_flat_match_result";b:0;s:37:"catalog_category_product_match_result";b:1;s:35:"catalogsearch_fulltext_match_result";b:1;}'),
(27, 'save', 'catalog_category', 24, '2012-03-01 13:26:46', NULL, 'a:6:{s:35:"cataloginventory_stock_match_result";b:0;s:34:"catalog_product_price_match_result";b:0;s:24:"catalog_url_match_result";b:1;s:33:"catalog_product_flat_match_result";b:0;s:37:"catalog_category_product_match_result";b:1;s:35:"catalogsearch_fulltext_match_result";b:1;}'),
(28, 'save', 'catalog_category', 25, '2012-03-01 13:27:30', NULL, 'a:6:{s:35:"cataloginventory_stock_match_result";b:0;s:34:"catalog_product_price_match_result";b:0;s:24:"catalog_url_match_result";b:1;s:33:"catalog_product_flat_match_result";b:0;s:37:"catalog_category_product_match_result";b:1;s:35:"catalogsearch_fulltext_match_result";b:1;}'),
(29, 'save', 'catalog_category', 26, '2012-03-01 13:27:51', NULL, 'a:6:{s:35:"cataloginventory_stock_match_result";b:0;s:34:"catalog_product_price_match_result";b:0;s:24:"catalog_url_match_result";b:1;s:33:"catalog_product_flat_match_result";b:0;s:37:"catalog_category_product_match_result";b:1;s:35:"catalogsearch_fulltext_match_result";b:1;}'),
(30, 'save', 'catalog_category', 27, '2012-03-01 14:39:34', NULL, 'a:6:{s:35:"cataloginventory_stock_match_result";b:0;s:34:"catalog_product_price_match_result";b:0;s:24:"catalog_url_match_result";b:1;s:33:"catalog_product_flat_match_result";b:0;s:37:"catalog_category_product_match_result";b:1;s:35:"catalogsearch_fulltext_match_result";b:1;}'),
(31, 'save', 'catalog_category', 28, '2012-03-01 14:42:29', NULL, 'a:6:{s:35:"cataloginventory_stock_match_result";b:0;s:34:"catalog_product_price_match_result";b:0;s:24:"catalog_url_match_result";b:1;s:33:"catalog_product_flat_match_result";b:0;s:37:"catalog_category_product_match_result";b:1;s:35:"catalogsearch_fulltext_match_result";b:1;}'),
(32, 'save', 'catalog_category', 29, '2012-03-01 14:43:00', NULL, 'a:6:{s:35:"cataloginventory_stock_match_result";b:0;s:34:"catalog_product_price_match_result";b:0;s:24:"catalog_url_match_result";b:1;s:33:"catalog_product_flat_match_result";b:0;s:37:"catalog_category_product_match_result";b:1;s:35:"catalogsearch_fulltext_match_result";b:1;}'),
(33, 'save', 'catalog_category', 30, '2012-03-01 14:43:42', NULL, 'a:6:{s:35:"cataloginventory_stock_match_result";b:0;s:34:"catalog_product_price_match_result";b:0;s:24:"catalog_url_match_result";b:1;s:33:"catalog_product_flat_match_result";b:0;s:37:"catalog_category_product_match_result";b:1;s:35:"catalogsearch_fulltext_match_result";b:1;}'),
(34, 'save', 'catalog_category', 31, '2012-03-01 14:44:56', NULL, 'a:6:{s:35:"cataloginventory_stock_match_result";b:0;s:34:"catalog_product_price_match_result";b:0;s:24:"catalog_url_match_result";b:1;s:33:"catalog_product_flat_match_result";b:0;s:37:"catalog_category_product_match_result";b:1;s:35:"catalogsearch_fulltext_match_result";b:1;}'),
(35, 'save', 'catalog_category', 32, '2012-03-01 14:45:39', NULL, 'a:6:{s:35:"cataloginventory_stock_match_result";b:0;s:34:"catalog_product_price_match_result";b:0;s:24:"catalog_url_match_result";b:1;s:33:"catalog_product_flat_match_result";b:0;s:37:"catalog_category_product_match_result";b:1;s:35:"catalogsearch_fulltext_match_result";b:1;}'),
(36, 'save', 'catalog_category', 33, '2012-03-01 14:46:20', NULL, 'a:6:{s:35:"cataloginventory_stock_match_result";b:0;s:34:"catalog_product_price_match_result";b:0;s:24:"catalog_url_match_result";b:1;s:33:"catalog_product_flat_match_result";b:0;s:37:"catalog_category_product_match_result";b:1;s:35:"catalogsearch_fulltext_match_result";b:1;}'),
(37, 'save', 'cataloginventory_stock_item', 2, '2012-03-01 18:31:48', NULL, 'a:6:{s:35:"cataloginventory_stock_match_result";b:1;s:34:"catalog_product_price_match_result";b:0;s:24:"catalog_url_match_result";b:0;s:33:"catalog_product_flat_match_result";b:0;s:37:"catalog_category_product_match_result";b:0;s:35:"catalogsearch_fulltext_match_result";b:0;}'),
(38, 'save', 'catalog_product', 2, '2012-03-01 18:31:49', NULL, 'a:6:{s:35:"cataloginventory_stock_match_result";b:1;s:34:"catalog_product_price_match_result";b:1;s:24:"catalog_url_match_result";b:1;s:33:"catalog_product_flat_match_result";b:1;s:37:"catalog_category_product_match_result";b:1;s:35:"catalogsearch_fulltext_match_result";b:1;}'),
(39, 'catalog_reindex_price', 'catalog_product', 2, '2012-03-01 18:31:49', NULL, 'a:6:{s:35:"cataloginventory_stock_match_result";b:0;s:34:"catalog_product_price_match_result";b:1;s:24:"catalog_url_match_result";b:0;s:33:"catalog_product_flat_match_result";b:0;s:37:"catalog_category_product_match_result";b:0;s:35:"catalogsearch_fulltext_match_result";b:0;}'),
(40, 'save', 'cataloginventory_stock_item', 3, '2012-03-01 18:35:04', NULL, 'a:6:{s:35:"cataloginventory_stock_match_result";b:1;s:34:"catalog_product_price_match_result";b:0;s:24:"catalog_url_match_result";b:0;s:33:"catalog_product_flat_match_result";b:0;s:37:"catalog_category_product_match_result";b:0;s:35:"catalogsearch_fulltext_match_result";b:0;}'),
(41, 'save', 'catalog_product', 3, '2012-03-01 18:35:04', NULL, 'a:6:{s:35:"cataloginventory_stock_match_result";b:1;s:34:"catalog_product_price_match_result";b:1;s:24:"catalog_url_match_result";b:1;s:33:"catalog_product_flat_match_result";b:1;s:37:"catalog_category_product_match_result";b:1;s:35:"catalogsearch_fulltext_match_result";b:1;}'),
(42, 'catalog_reindex_price', 'catalog_product', 3, '2012-03-01 18:35:05', NULL, 'a:6:{s:35:"cataloginventory_stock_match_result";b:0;s:34:"catalog_product_price_match_result";b:1;s:24:"catalog_url_match_result";b:0;s:33:"catalog_product_flat_match_result";b:0;s:37:"catalog_category_product_match_result";b:0;s:35:"catalogsearch_fulltext_match_result";b:0;}'),
(43, 'save', 'cataloginventory_stock_item', 4, '2012-03-01 18:37:16', NULL, 'a:6:{s:35:"cataloginventory_stock_match_result";b:1;s:34:"catalog_product_price_match_result";b:0;s:24:"catalog_url_match_result";b:0;s:33:"catalog_product_flat_match_result";b:0;s:37:"catalog_category_product_match_result";b:0;s:35:"catalogsearch_fulltext_match_result";b:0;}'),
(44, 'save', 'catalog_product', 4, '2012-03-01 18:37:17', NULL, 'a:6:{s:35:"cataloginventory_stock_match_result";b:1;s:34:"catalog_product_price_match_result";b:1;s:24:"catalog_url_match_result";b:1;s:33:"catalog_product_flat_match_result";b:1;s:37:"catalog_category_product_match_result";b:1;s:35:"catalogsearch_fulltext_match_result";b:1;}'),
(45, 'catalog_reindex_price', 'catalog_product', 4, '2012-03-01 18:37:17', NULL, 'a:6:{s:35:"cataloginventory_stock_match_result";b:0;s:34:"catalog_product_price_match_result";b:1;s:24:"catalog_url_match_result";b:0;s:33:"catalog_product_flat_match_result";b:0;s:37:"catalog_category_product_match_result";b:0;s:35:"catalogsearch_fulltext_match_result";b:0;}'),
(46, 'save', 'catalog_category', 34, '2012-03-03 13:03:03', NULL, 'a:6:{s:35:"cataloginventory_stock_match_result";b:0;s:34:"catalog_product_price_match_result";b:0;s:24:"catalog_url_match_result";b:1;s:33:"catalog_product_flat_match_result";b:0;s:37:"catalog_category_product_match_result";b:1;s:35:"catalogsearch_fulltext_match_result";b:1;}'),
(47, 'save', 'catalog_category', 35, '2012-03-03 13:05:54', NULL, 'a:6:{s:35:"cataloginventory_stock_match_result";b:0;s:34:"catalog_product_price_match_result";b:0;s:24:"catalog_url_match_result";b:1;s:33:"catalog_product_flat_match_result";b:0;s:37:"catalog_category_product_match_result";b:1;s:35:"catalogsearch_fulltext_match_result";b:1;}'),
(48, 'save', 'catalog_category', 36, '2012-03-03 13:37:25', NULL, 'a:6:{s:35:"cataloginventory_stock_match_result";b:0;s:34:"catalog_product_price_match_result";b:0;s:24:"catalog_url_match_result";b:1;s:33:"catalog_product_flat_match_result";b:0;s:37:"catalog_category_product_match_result";b:1;s:35:"catalogsearch_fulltext_match_result";b:1;}'),
(49, 'save', 'catalog_category', 37, '2012-03-03 14:47:57', NULL, 'a:6:{s:35:"cataloginventory_stock_match_result";b:0;s:34:"catalog_product_price_match_result";b:0;s:24:"catalog_url_match_result";b:1;s:33:"catalog_product_flat_match_result";b:0;s:37:"catalog_category_product_match_result";b:1;s:35:"catalogsearch_fulltext_match_result";b:1;}');

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `index_process`
--

CREATE TABLE IF NOT EXISTS `index_process` (
  `process_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Process Id',
  `indexer_code` varchar(32) NOT NULL COMMENT 'Indexer Code',
  `status` varchar(15) NOT NULL DEFAULT 'pending' COMMENT 'Status',
  `started_at` timestamp NULL DEFAULT NULL COMMENT 'Started At',
  `ended_at` timestamp NULL DEFAULT NULL COMMENT 'Ended At',
  `mode` varchar(9) NOT NULL DEFAULT 'real_time' COMMENT 'Mode',
  PRIMARY KEY (`process_id`),
  UNIQUE KEY `UNQ_INDEX_PROCESS_INDEXER_CODE` (`indexer_code`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='Index Process' AUTO_INCREMENT=10 ;

--
-- Gegevens worden uitgevoerd voor tabel `index_process`
--

INSERT INTO `index_process` (`process_id`, `indexer_code`, `status`, `started_at`, `ended_at`, `mode`) VALUES
(1, 'catalog_product_attribute', 'pending', '2012-03-03 14:15:09', '2012-03-03 14:15:09', 'real_time'),
(2, 'catalog_product_price', 'pending', '2012-03-03 14:15:09', '2012-03-03 14:15:09', 'real_time'),
(3, 'catalog_url', 'pending', '2012-03-03 15:55:15', '2012-03-03 15:55:15', 'real_time'),
(4, 'catalog_product_flat', 'pending', '2012-03-03 14:15:09', '2012-03-03 14:15:09', 'real_time'),
(5, 'catalog_category_flat', 'pending', '2012-02-28 10:59:08', '2012-02-28 10:59:08', 'real_time'),
(6, 'catalog_category_product', 'pending', '2012-03-03 15:55:15', '2012-03-03 15:55:15', 'real_time'),
(7, 'catalogsearch_fulltext', 'pending', '2012-03-03 15:55:15', '2012-03-03 15:55:15', 'real_time'),
(8, 'cataloginventory_stock', 'pending', '2012-03-03 14:15:09', '2012-03-03 14:15:09', 'real_time'),
(9, 'tag_summary', 'pending', '2012-03-03 14:15:09', '2012-03-03 14:15:09', 'real_time');

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `index_process_event`
--

CREATE TABLE IF NOT EXISTS `index_process_event` (
  `process_id` int(10) unsigned NOT NULL COMMENT 'Process Id',
  `event_id` bigint(20) unsigned NOT NULL COMMENT 'Event Id',
  `status` varchar(7) NOT NULL DEFAULT 'new' COMMENT 'Status',
  PRIMARY KEY (`process_id`,`event_id`),
  KEY `IDX_INDEX_PROCESS_EVENT_EVENT_ID` (`event_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Index Process Event';

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `log_customer`
--

CREATE TABLE IF NOT EXISTS `log_customer` (
  `log_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Log ID',
  `visitor_id` bigint(20) unsigned DEFAULT NULL COMMENT 'Visitor ID',
  `customer_id` int(11) NOT NULL DEFAULT '0' COMMENT 'Customer ID',
  `login_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Login Time',
  `logout_at` timestamp NULL DEFAULT NULL COMMENT 'Logout Time',
  `store_id` smallint(5) unsigned NOT NULL COMMENT 'Store ID',
  PRIMARY KEY (`log_id`),
  KEY `IDX_LOG_CUSTOMER_VISITOR_ID` (`visitor_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='Log Customers Table' AUTO_INCREMENT=3 ;

--
-- Gegevens worden uitgevoerd voor tabel `log_customer`
--

INSERT INTO `log_customer` (`log_id`, `visitor_id`, `customer_id`, `login_at`, `logout_at`, `store_id`) VALUES
(1, 1, 1, '2012-02-28 12:19:42', '2012-02-28 11:19:42', 1),
(2, 41, 1, '2012-03-04 22:54:42', '2012-03-04 21:54:42', 1);

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `log_quote`
--

CREATE TABLE IF NOT EXISTS `log_quote` (
  `quote_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Quote ID',
  `visitor_id` bigint(20) unsigned DEFAULT NULL COMMENT 'Visitor ID',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Creation Time',
  `deleted_at` timestamp NULL DEFAULT NULL COMMENT 'Deletion Time',
  PRIMARY KEY (`quote_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Log Quotes Table';

--
-- Gegevens worden uitgevoerd voor tabel `log_quote`
--

INSERT INTO `log_quote` (`quote_id`, `visitor_id`, `created_at`, `deleted_at`) VALUES
(1, 1, '2012-02-28 11:19:24', NULL),
(2, 33, '2012-03-03 14:55:24', NULL),
(3, 41, '2012-03-04 20:54:06', NULL),
(4, 54, '2012-03-05 08:48:29', NULL),
(5, 55, '2012-03-05 09:03:15', NULL);

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `log_summary`
--

CREATE TABLE IF NOT EXISTS `log_summary` (
  `summary_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Summary ID',
  `store_id` smallint(5) unsigned NOT NULL COMMENT 'Store ID',
  `type_id` smallint(5) unsigned DEFAULT NULL COMMENT 'Type ID',
  `visitor_count` int(11) NOT NULL DEFAULT '0' COMMENT 'Visitor Count',
  `customer_count` int(11) NOT NULL DEFAULT '0' COMMENT 'Customer Count',
  `add_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Date',
  PRIMARY KEY (`summary_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Log Summary Table' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `log_summary_type`
--

CREATE TABLE IF NOT EXISTS `log_summary_type` (
  `type_id` smallint(5) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Type ID',
  `type_code` varchar(64) NOT NULL DEFAULT '' COMMENT 'Type Code',
  `period` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Period',
  `period_type` varchar(6) NOT NULL DEFAULT 'MINUTE' COMMENT 'Period Type',
  PRIMARY KEY (`type_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='Log Summary Types Table' AUTO_INCREMENT=3 ;

--
-- Gegevens worden uitgevoerd voor tabel `log_summary_type`
--

INSERT INTO `log_summary_type` (`type_id`, `type_code`, `period`, `period_type`) VALUES
(1, 'hour', 1, 'HOUR'),
(2, 'day', 1, 'DAY');

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `log_url`
--

CREATE TABLE IF NOT EXISTS `log_url` (
  `url_id` bigint(20) unsigned NOT NULL DEFAULT '0' COMMENT 'URL ID',
  `visitor_id` bigint(20) unsigned DEFAULT NULL COMMENT 'Visitor ID',
  `visit_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Visit Time',
  PRIMARY KEY (`url_id`),
  KEY `IDX_LOG_URL_VISITOR_ID` (`visitor_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Log URL Table';

--
-- Gegevens worden uitgevoerd voor tabel `log_url`
--

INSERT INTO `log_url` (`url_id`, `visitor_id`, `visit_time`) VALUES
(1, 1, '2012-02-28 10:58:01'),
(2, 1, '2012-02-28 11:02:13'),
(3, 1, '2012-02-28 11:03:30'),
(4, 1, '2012-02-28 11:03:33'),
(5, 1, '2012-02-28 11:03:37'),
(6, 1, '2012-02-28 11:03:39'),
(7, 1, '2012-02-28 11:03:41'),
(8, 1, '2012-02-28 11:03:42'),
(9, 1, '2012-02-28 11:03:43'),
(10, 1, '2012-02-28 11:03:43'),
(11, 1, '2012-02-28 11:03:45'),
(12, 1, '2012-02-28 11:03:46'),
(13, 1, '2012-02-28 11:03:51'),
(14, 1, '2012-02-28 11:03:52'),
(15, 1, '2012-02-28 11:07:57'),
(16, 1, '2012-02-28 11:08:08'),
(17, 1, '2012-02-28 11:08:08'),
(18, 1, '2012-02-28 11:08:15'),
(19, 1, '2012-02-28 11:08:16'),
(20, 1, '2012-02-28 11:08:16'),
(21, 1, '2012-02-28 11:08:22'),
(22, 1, '2012-02-28 11:09:44'),
(23, 1, '2012-02-28 11:09:46'),
(24, 1, '2012-02-28 11:09:57'),
(25, 1, '2012-02-28 11:09:59'),
(26, 1, '2012-02-28 11:10:00'),
(27, 1, '2012-02-28 11:12:58'),
(28, 1, '2012-02-28 11:12:59'),
(29, 1, '2012-02-28 11:13:00'),
(30, 1, '2012-02-28 11:13:01'),
(31, 1, '2012-02-28 11:13:02'),
(32, 1, '2012-02-28 11:14:29'),
(33, 1, '2012-02-28 11:15:03'),
(34, 1, '2012-02-28 11:16:18'),
(35, 1, '2012-02-28 11:16:21'),
(36, 1, '2012-02-28 11:16:59'),
(37, 1, '2012-02-28 11:17:00'),
(38, 1, '2012-02-28 11:17:35'),
(39, 1, '2012-02-28 11:17:46'),
(40, 1, '2012-02-28 11:17:56'),
(41, 1, '2012-02-28 11:17:57'),
(42, 1, '2012-02-28 11:19:24'),
(43, 1, '2012-02-28 11:19:25'),
(44, 1, '2012-02-28 11:19:35'),
(45, 1, '2012-02-28 11:19:38'),
(46, 1, '2012-02-28 11:19:42'),
(47, 2, '2012-02-28 11:19:43'),
(48, 2, '2012-02-28 11:19:45'),
(49, 2, '2012-02-28 11:23:18'),
(50, 2, '2012-02-28 11:23:20'),
(51, 2, '2012-02-28 11:25:41'),
(52, 2, '2012-02-28 11:30:59'),
(53, 2, '2012-02-28 11:31:07'),
(54, 2, '2012-02-28 11:41:59'),
(55, 2, '2012-02-28 11:42:18'),
(56, 2, '2012-02-28 11:43:47'),
(57, 2, '2012-02-28 11:45:14'),
(58, 2, '2012-02-28 11:45:24'),
(59, 2, '2012-02-28 11:47:07'),
(60, 2, '2012-02-28 11:47:21'),
(61, 3, '2012-02-29 09:18:26'),
(62, 3, '2012-02-29 09:20:08'),
(63, 3, '2012-02-29 09:21:41'),
(64, 3, '2012-02-29 09:29:46'),
(65, 3, '2012-02-29 09:30:00'),
(66, 3, '2012-02-29 09:31:14'),
(67, 3, '2012-02-29 09:31:32'),
(68, 3, '2012-02-29 09:50:49'),
(69, 3, '2012-02-29 09:52:37'),
(70, 3, '2012-02-29 09:53:01'),
(71, 3, '2012-02-29 10:16:07'),
(72, 3, '2012-02-29 10:17:40'),
(73, 3, '2012-02-29 10:17:42'),
(74, 3, '2012-02-29 10:19:07'),
(75, 3, '2012-02-29 10:23:42'),
(76, 3, '2012-02-29 10:39:41'),
(77, 3, '2012-02-29 10:54:26'),
(78, 3, '2012-02-29 10:55:05'),
(79, 4, '2012-02-29 11:07:20'),
(80, 4, '2012-02-29 11:09:53'),
(81, 4, '2012-02-29 11:10:26'),
(82, 4, '2012-02-29 11:10:38'),
(83, 4, '2012-02-29 11:10:58'),
(84, 4, '2012-02-29 11:11:44'),
(85, 4, '2012-02-29 11:11:52'),
(86, 4, '2012-02-29 11:12:05'),
(87, 4, '2012-02-29 11:14:58'),
(88, 4, '2012-02-29 11:22:15'),
(89, 4, '2012-02-29 11:23:47'),
(90, 4, '2012-02-29 11:28:12'),
(91, 4, '2012-02-29 11:29:17'),
(92, 4, '2012-02-29 11:31:39'),
(93, 4, '2012-02-29 11:31:50'),
(94, 4, '2012-02-29 11:32:02'),
(95, 4, '2012-02-29 11:32:07'),
(96, 4, '2012-02-29 11:32:26'),
(97, 4, '2012-02-29 11:35:27'),
(98, 4, '2012-02-29 11:35:29'),
(99, 4, '2012-02-29 11:36:43'),
(100, 4, '2012-02-29 11:36:46'),
(101, 4, '2012-02-29 11:37:04'),
(102, 4, '2012-02-29 11:37:22'),
(103, 4, '2012-02-29 11:37:34'),
(104, 4, '2012-02-29 11:39:59'),
(105, 4, '2012-02-29 11:40:11'),
(106, 4, '2012-02-29 11:40:23'),
(107, 4, '2012-02-29 11:41:06'),
(108, 4, '2012-02-29 11:41:44'),
(109, 4, '2012-02-29 11:41:47'),
(110, 4, '2012-02-29 11:42:39'),
(111, 4, '2012-02-29 11:42:59'),
(112, 4, '2012-02-29 11:43:02'),
(113, 4, '2012-02-29 11:50:35'),
(114, 4, '2012-02-29 11:51:23'),
(115, 4, '2012-02-29 11:52:15'),
(116, 4, '2012-02-29 11:52:44'),
(117, 4, '2012-02-29 11:52:56'),
(118, 4, '2012-02-29 11:53:10'),
(119, 4, '2012-02-29 11:53:25'),
(120, 4, '2012-02-29 11:54:16'),
(121, 4, '2012-02-29 11:55:49'),
(122, 4, '2012-02-29 11:56:36'),
(123, 4, '2012-02-29 11:57:07'),
(124, 4, '2012-02-29 12:06:23'),
(125, 4, '2012-02-29 12:12:41'),
(126, 4, '2012-02-29 12:12:43'),
(127, 4, '2012-02-29 12:12:44'),
(128, 4, '2012-02-29 12:12:46'),
(129, 4, '2012-02-29 12:12:55'),
(130, 4, '2012-02-29 12:13:21'),
(131, 4, '2012-02-29 12:13:25'),
(132, 4, '2012-02-29 12:13:29'),
(133, 4, '2012-02-29 12:13:43'),
(134, 4, '2012-02-29 12:14:01'),
(135, 4, '2012-02-29 12:15:12'),
(136, 4, '2012-02-29 12:15:16'),
(137, 4, '2012-02-29 12:21:30'),
(138, 4, '2012-02-29 12:21:33'),
(139, 4, '2012-02-29 12:22:47'),
(140, 4, '2012-02-29 12:23:13'),
(141, 4, '2012-02-29 12:23:17'),
(142, 4, '2012-02-29 12:24:26'),
(143, 4, '2012-02-29 12:24:48'),
(144, 4, '2012-02-29 12:25:05'),
(145, 4, '2012-02-29 12:25:29'),
(146, 4, '2012-02-29 12:25:34'),
(147, 4, '2012-02-29 12:25:44'),
(148, 4, '2012-02-29 12:26:01'),
(149, 4, '2012-02-29 12:26:49'),
(150, 4, '2012-02-29 12:27:18'),
(151, 4, '2012-02-29 12:27:41'),
(152, 4, '2012-02-29 12:28:50'),
(153, 4, '2012-02-29 12:28:56'),
(154, 4, '2012-02-29 12:28:59'),
(155, 4, '2012-02-29 12:29:20'),
(156, 4, '2012-02-29 12:29:23'),
(157, 4, '2012-02-29 12:30:00'),
(158, 4, '2012-02-29 12:32:28'),
(159, 4, '2012-02-29 12:32:35'),
(160, 5, '2012-02-29 12:32:47'),
(161, 4, '2012-02-29 12:33:05'),
(162, 5, '2012-02-29 12:33:09'),
(163, 4, '2012-02-29 12:35:46'),
(164, 4, '2012-02-29 12:37:11'),
(165, 4, '2012-02-29 12:38:05'),
(166, 4, '2012-02-29 12:40:00'),
(167, 4, '2012-02-29 12:40:58'),
(168, 4, '2012-02-29 12:41:01'),
(169, 4, '2012-02-29 13:19:34'),
(170, 4, '2012-02-29 13:26:40'),
(171, 4, '2012-02-29 13:27:17'),
(172, 4, '2012-02-29 13:27:37'),
(173, 5, '2012-02-29 13:27:57'),
(174, 4, '2012-02-29 13:29:51'),
(175, 4, '2012-02-29 13:30:48'),
(176, 4, '2012-02-29 13:31:34'),
(177, 4, '2012-02-29 13:31:48'),
(178, 4, '2012-02-29 13:33:48'),
(179, 4, '2012-02-29 13:33:59'),
(180, 4, '2012-02-29 13:34:48'),
(181, 4, '2012-02-29 13:35:04'),
(182, 4, '2012-02-29 13:35:32'),
(183, 4, '2012-02-29 13:37:39'),
(184, 4, '2012-02-29 13:37:39'),
(185, 4, '2012-02-29 13:37:41'),
(186, 4, '2012-02-29 13:37:45'),
(187, 4, '2012-02-29 13:37:58'),
(188, 4, '2012-02-29 13:38:37'),
(189, 4, '2012-02-29 13:38:54'),
(190, 4, '2012-02-29 13:40:14'),
(191, 4, '2012-02-29 13:41:25'),
(192, 4, '2012-02-29 13:41:52'),
(193, 4, '2012-02-29 13:42:30'),
(194, 4, '2012-02-29 13:42:33'),
(195, 4, '2012-02-29 13:42:40'),
(196, 4, '2012-02-29 13:42:43'),
(197, 4, '2012-02-29 13:43:22'),
(198, 4, '2012-02-29 13:46:11'),
(199, 4, '2012-02-29 13:47:30'),
(200, 4, '2012-02-29 13:48:04'),
(201, 4, '2012-02-29 13:48:05'),
(202, 4, '2012-02-29 13:49:41'),
(203, 4, '2012-02-29 13:50:05'),
(204, 4, '2012-02-29 13:50:56'),
(205, 4, '2012-02-29 13:52:38'),
(206, 4, '2012-02-29 13:53:28'),
(207, 4, '2012-02-29 13:54:09'),
(208, 4, '2012-02-29 13:54:45'),
(209, 4, '2012-02-29 13:57:51'),
(210, 4, '2012-02-29 13:58:11'),
(211, 4, '2012-02-29 13:58:26'),
(212, 4, '2012-02-29 13:58:35'),
(213, 4, '2012-02-29 13:58:45'),
(214, 4, '2012-02-29 14:01:40'),
(215, 4, '2012-02-29 14:02:03'),
(216, 4, '2012-02-29 14:03:25'),
(217, 4, '2012-02-29 14:03:28'),
(218, 4, '2012-02-29 14:03:57'),
(219, 4, '2012-02-29 14:03:59'),
(220, 4, '2012-02-29 14:07:27'),
(221, 4, '2012-02-29 14:07:31'),
(222, 4, '2012-02-29 14:08:40'),
(223, 4, '2012-02-29 14:08:52'),
(224, 4, '2012-02-29 14:09:07'),
(225, 4, '2012-02-29 14:09:29'),
(226, 4, '2012-02-29 14:09:33'),
(227, 4, '2012-02-29 14:09:40'),
(228, 4, '2012-02-29 14:09:59'),
(229, 4, '2012-02-29 14:10:34'),
(230, 4, '2012-02-29 14:11:16'),
(231, 4, '2012-02-29 14:11:53'),
(232, 4, '2012-02-29 14:12:00'),
(233, 4, '2012-02-29 14:13:51'),
(234, 4, '2012-02-29 14:14:32'),
(235, 4, '2012-02-29 14:14:52'),
(236, 4, '2012-02-29 14:15:07'),
(237, 4, '2012-02-29 14:17:01'),
(238, 4, '2012-02-29 14:17:33'),
(239, 4, '2012-02-29 14:22:53'),
(240, 4, '2012-02-29 14:23:06'),
(241, 4, '2012-02-29 14:23:25'),
(242, 4, '2012-02-29 14:23:37'),
(243, 4, '2012-02-29 14:25:27'),
(244, 4, '2012-02-29 14:25:37'),
(245, 4, '2012-02-29 14:25:45'),
(246, 4, '2012-02-29 14:26:04'),
(247, 4, '2012-02-29 14:27:14'),
(248, 4, '2012-02-29 14:27:15'),
(249, 4, '2012-02-29 14:28:07'),
(250, 4, '2012-02-29 14:30:32'),
(251, 4, '2012-02-29 14:31:31'),
(252, 4, '2012-02-29 14:32:11'),
(253, 4, '2012-02-29 14:32:39'),
(254, 4, '2012-02-29 14:33:40'),
(255, 4, '2012-02-29 14:34:54'),
(256, 4, '2012-02-29 14:36:28'),
(257, 4, '2012-02-29 14:37:49'),
(258, 4, '2012-02-29 14:38:26'),
(259, 4, '2012-02-29 14:38:48'),
(260, 4, '2012-02-29 14:39:09'),
(261, 4, '2012-02-29 14:39:12'),
(262, 4, '2012-02-29 14:39:53'),
(263, 4, '2012-02-29 14:40:30'),
(264, 4, '2012-02-29 14:40:45'),
(265, 4, '2012-02-29 14:42:51'),
(266, 4, '2012-02-29 14:44:52'),
(267, 4, '2012-02-29 14:45:06'),
(268, 4, '2012-02-29 14:45:27'),
(269, 4, '2012-02-29 14:45:51'),
(270, 4, '2012-02-29 14:46:09'),
(271, 4, '2012-02-29 14:46:12'),
(272, 4, '2012-02-29 14:46:30'),
(273, 4, '2012-02-29 14:46:54'),
(274, 4, '2012-02-29 14:46:59'),
(275, 4, '2012-02-29 14:47:08'),
(276, 4, '2012-02-29 14:47:12'),
(277, 4, '2012-02-29 14:47:24'),
(278, 4, '2012-02-29 14:47:37'),
(279, 4, '2012-02-29 14:47:41'),
(280, 4, '2012-02-29 14:47:52'),
(281, 4, '2012-02-29 14:49:04'),
(282, 4, '2012-02-29 14:49:17'),
(283, 4, '2012-02-29 14:49:31'),
(284, 4, '2012-02-29 14:49:47'),
(285, 4, '2012-02-29 14:49:48'),
(286, 4, '2012-02-29 14:49:58'),
(287, 4, '2012-02-29 14:50:07'),
(288, 4, '2012-02-29 14:50:26'),
(289, 4, '2012-02-29 14:50:35'),
(290, 4, '2012-02-29 14:50:44'),
(291, 4, '2012-02-29 14:50:53'),
(292, 6, '2012-02-29 22:54:59'),
(293, 7, '2012-02-29 22:56:10'),
(294, 6, '2012-02-29 22:57:31'),
(295, 6, '2012-02-29 22:57:56'),
(296, 6, '2012-02-29 22:59:20'),
(297, 6, '2012-02-29 22:59:26'),
(298, 6, '2012-02-29 22:59:28'),
(299, 6, '2012-02-29 23:00:09'),
(300, 6, '2012-02-29 23:00:10'),
(301, 6, '2012-02-29 23:00:12'),
(302, 6, '2012-02-29 23:00:15'),
(303, 6, '2012-02-29 23:00:37'),
(304, 6, '2012-02-29 23:00:50'),
(305, 6, '2012-02-29 23:06:42'),
(306, 6, '2012-02-29 23:06:54'),
(307, 6, '2012-02-29 23:06:58'),
(308, 6, '2012-02-29 23:07:01'),
(309, 6, '2012-02-29 23:07:04'),
(310, 6, '2012-02-29 23:07:09'),
(311, 8, '2012-03-01 10:11:10'),
(312, 8, '2012-03-01 10:11:44'),
(313, 9, '2012-03-01 10:11:58'),
(314, 10, '2012-03-01 10:12:29'),
(315, 8, '2012-03-01 10:13:01'),
(316, 8, '2012-03-01 10:13:12'),
(317, 8, '2012-03-01 10:13:47'),
(318, 8, '2012-03-01 10:16:00'),
(319, 8, '2012-03-01 10:17:34'),
(320, 8, '2012-03-01 10:18:13'),
(321, 8, '2012-03-01 10:18:27'),
(322, 8, '2012-03-01 10:19:36'),
(323, 8, '2012-03-01 10:19:48'),
(324, 8, '2012-03-01 10:20:33'),
(325, 8, '2012-03-01 10:22:31'),
(326, 8, '2012-03-01 10:22:35'),
(327, 8, '2012-03-01 10:23:02'),
(328, 8, '2012-03-01 10:25:12'),
(329, 8, '2012-03-01 10:25:21'),
(330, 8, '2012-03-01 10:25:31'),
(331, 10, '2012-03-01 10:25:58'),
(332, 8, '2012-03-01 10:26:05'),
(333, 9, '2012-03-01 10:26:07'),
(334, 8, '2012-03-01 10:32:30'),
(335, 8, '2012-03-01 10:32:44'),
(336, 8, '2012-03-01 10:33:03'),
(337, 10, '2012-03-01 10:33:22'),
(338, 9, '2012-03-01 10:33:29'),
(339, 8, '2012-03-01 10:34:07'),
(340, 8, '2012-03-01 10:34:18'),
(341, 8, '2012-03-01 10:35:35'),
(342, 8, '2012-03-01 10:36:29'),
(343, 8, '2012-03-01 10:38:43'),
(344, 8, '2012-03-01 11:06:19'),
(345, 8, '2012-03-01 11:09:30'),
(346, 8, '2012-03-01 11:10:12'),
(347, 8, '2012-03-01 11:11:00'),
(348, 8, '2012-03-01 11:11:03'),
(349, 8, '2012-03-01 11:11:31'),
(350, 8, '2012-03-01 11:11:42'),
(351, 8, '2012-03-01 11:24:52'),
(352, 8, '2012-03-01 11:24:57'),
(353, 8, '2012-03-01 11:26:30'),
(354, 8, '2012-03-01 11:27:07'),
(355, 8, '2012-03-01 11:28:05'),
(356, 8, '2012-03-01 11:28:17'),
(357, 9, '2012-03-01 11:28:20'),
(358, 10, '2012-03-01 11:28:25'),
(359, 8, '2012-03-01 11:28:46'),
(360, 8, '2012-03-01 11:29:01'),
(361, 8, '2012-03-01 11:29:24'),
(362, 8, '2012-03-01 11:29:31'),
(363, 8, '2012-03-01 11:39:53'),
(364, 10, '2012-03-01 11:44:05'),
(365, 8, '2012-03-01 11:47:55'),
(366, 8, '2012-03-01 11:47:58'),
(367, 8, '2012-03-01 12:09:11'),
(368, 8, '2012-03-01 12:09:26'),
(369, 8, '2012-03-01 12:10:05'),
(370, 8, '2012-03-01 12:13:49'),
(371, 8, '2012-03-01 12:14:41'),
(372, 8, '2012-03-01 12:18:12'),
(373, 8, '2012-03-01 12:19:27'),
(374, 8, '2012-03-01 12:23:21'),
(375, 8, '2012-03-01 12:25:20'),
(376, 8, '2012-03-01 12:26:18'),
(377, 11, '2012-03-01 12:29:24'),
(378, 12, '2012-03-01 12:29:27'),
(379, 8, '2012-03-01 12:29:48'),
(380, 8, '2012-03-01 12:31:18'),
(381, 8, '2012-03-01 12:31:21'),
(382, 8, '2012-03-01 12:31:38'),
(383, 8, '2012-03-01 12:33:09'),
(384, 8, '2012-03-01 12:33:13'),
(385, 8, '2012-03-01 12:33:29'),
(386, 8, '2012-03-01 12:33:34'),
(387, 8, '2012-03-01 12:33:55'),
(388, 8, '2012-03-01 12:34:01'),
(389, 8, '2012-03-01 12:34:08'),
(390, 8, '2012-03-01 12:34:12'),
(391, 8, '2012-03-01 12:34:21'),
(392, 8, '2012-03-01 12:34:24'),
(393, 8, '2012-03-01 12:34:25'),
(394, 8, '2012-03-01 12:34:26'),
(395, 8, '2012-03-01 12:34:27'),
(396, 8, '2012-03-01 12:34:28'),
(397, 8, '2012-03-01 12:34:31'),
(398, 8, '2012-03-01 12:34:38'),
(399, 8, '2012-03-01 12:35:37'),
(400, 8, '2012-03-01 12:37:22'),
(401, 8, '2012-03-01 12:37:24'),
(402, 8, '2012-03-01 12:38:04'),
(403, 8, '2012-03-01 12:38:12'),
(404, 8, '2012-03-01 12:38:14'),
(405, 8, '2012-03-01 12:39:10'),
(406, 8, '2012-03-01 12:39:35'),
(407, 8, '2012-03-01 12:39:49'),
(408, 8, '2012-03-01 12:39:53'),
(409, 8, '2012-03-01 12:41:01'),
(410, 8, '2012-03-01 12:42:21'),
(411, 8, '2012-03-01 12:42:25'),
(412, 8, '2012-03-01 12:42:28'),
(413, 8, '2012-03-01 12:42:44'),
(414, 8, '2012-03-01 12:42:49'),
(415, 8, '2012-03-01 12:42:52'),
(416, 8, '2012-03-01 12:42:55'),
(417, 8, '2012-03-01 12:43:14'),
(418, 8, '2012-03-01 12:43:33'),
(419, 8, '2012-03-01 12:43:43'),
(420, 8, '2012-03-01 12:44:44'),
(421, 8, '2012-03-01 12:44:47'),
(422, 8, '2012-03-01 12:45:04'),
(423, 8, '2012-03-01 12:45:58'),
(424, 8, '2012-03-01 12:46:02'),
(425, 8, '2012-03-01 12:46:06'),
(426, 8, '2012-03-01 12:46:09'),
(427, 8, '2012-03-01 12:46:12'),
(428, 8, '2012-03-01 12:46:14'),
(429, 8, '2012-03-01 12:46:16'),
(430, 8, '2012-03-01 12:48:07'),
(431, 8, '2012-03-01 12:48:18'),
(432, 8, '2012-03-01 12:49:11'),
(433, 8, '2012-03-01 12:53:25'),
(434, 8, '2012-03-01 12:54:01'),
(435, 8, '2012-03-01 12:54:07'),
(436, 8, '2012-03-01 12:54:09'),
(437, 8, '2012-03-01 12:56:23'),
(438, 8, '2012-03-01 12:57:22'),
(439, 8, '2012-03-01 12:57:24'),
(440, 8, '2012-03-01 12:58:38'),
(441, 8, '2012-03-01 12:58:42'),
(442, 8, '2012-03-01 12:59:25'),
(443, 8, '2012-03-01 12:59:28'),
(444, 8, '2012-03-01 13:00:27'),
(445, 8, '2012-03-01 13:00:31'),
(446, 8, '2012-03-01 13:00:35'),
(447, 8, '2012-03-01 13:01:44'),
(448, 8, '2012-03-01 13:01:47'),
(449, 8, '2012-03-01 13:01:53'),
(450, 8, '2012-03-01 13:02:17'),
(451, 8, '2012-03-01 13:13:25'),
(452, 8, '2012-03-01 13:13:31'),
(453, 8, '2012-03-01 13:15:15'),
(454, 8, '2012-03-01 13:16:00'),
(455, 8, '2012-03-01 13:16:24'),
(456, 8, '2012-03-01 13:16:51'),
(457, 8, '2012-03-01 13:20:31'),
(458, 8, '2012-03-01 13:21:03'),
(459, 8, '2012-03-01 13:21:05'),
(460, 8, '2012-03-01 13:21:09'),
(461, 8, '2012-03-01 13:21:43'),
(462, 8, '2012-03-01 13:21:59'),
(463, 8, '2012-03-01 13:23:05'),
(464, 8, '2012-03-01 13:23:11'),
(465, 8, '2012-03-01 13:23:13'),
(466, 8, '2012-03-01 13:23:57'),
(467, 8, '2012-03-01 13:24:20'),
(468, 8, '2012-03-01 13:24:23'),
(469, 8, '2012-03-01 13:24:30'),
(470, 8, '2012-03-01 13:24:50'),
(471, 8, '2012-03-01 13:25:01'),
(472, 8, '2012-03-01 13:25:55'),
(473, 8, '2012-03-01 13:26:47'),
(474, 8, '2012-03-01 13:27:53'),
(475, 8, '2012-03-01 13:28:15'),
(476, 8, '2012-03-01 13:28:16'),
(477, 8, '2012-03-01 13:28:23'),
(478, 8, '2012-03-01 13:28:25'),
(479, 8, '2012-03-01 13:28:28'),
(480, 12, '2012-03-01 13:28:37'),
(481, 13, '2012-03-01 13:28:43'),
(482, 13, '2012-03-01 13:28:52'),
(483, 8, '2012-03-01 13:28:55'),
(484, 13, '2012-03-01 14:06:55'),
(485, 13, '2012-03-01 14:07:44'),
(486, 8, '2012-03-01 14:08:52'),
(487, 8, '2012-03-01 14:09:18'),
(488, 8, '2012-03-01 14:09:22'),
(489, 14, '2012-03-01 14:09:43'),
(490, 14, '2012-03-01 14:09:49'),
(491, 14, '2012-03-01 14:09:54'),
(492, 14, '2012-03-01 14:09:58'),
(493, 8, '2012-03-01 14:10:02'),
(494, 14, '2012-03-01 14:10:10'),
(495, 8, '2012-03-01 14:17:18'),
(496, 8, '2012-03-01 14:17:23'),
(497, 14, '2012-03-01 14:17:27'),
(498, 8, '2012-03-01 14:17:52'),
(499, 8, '2012-03-01 14:18:10'),
(500, 8, '2012-03-01 14:19:20'),
(501, 8, '2012-03-01 14:20:03'),
(502, 8, '2012-03-01 14:20:06'),
(503, 8, '2012-03-01 14:20:16'),
(504, 8, '2012-03-01 14:20:47'),
(505, 8, '2012-03-01 14:20:50'),
(506, 8, '2012-03-01 14:21:05'),
(507, 8, '2012-03-01 14:21:26'),
(508, 8, '2012-03-01 14:22:19'),
(509, 8, '2012-03-01 14:22:24'),
(510, 8, '2012-03-01 14:22:31'),
(511, 8, '2012-03-01 14:22:35'),
(512, 8, '2012-03-01 14:22:44'),
(513, 8, '2012-03-01 14:24:57'),
(514, 13, '2012-03-01 14:27:05'),
(515, 8, '2012-03-01 14:32:17'),
(516, 8, '2012-03-01 14:33:58'),
(517, 8, '2012-03-01 14:34:27'),
(518, 8, '2012-03-01 14:34:31'),
(519, 8, '2012-03-01 14:35:07'),
(520, 8, '2012-03-01 14:35:49'),
(521, 8, '2012-03-01 14:36:31'),
(522, 8, '2012-03-01 14:36:50'),
(523, 8, '2012-03-01 14:37:07'),
(524, 8, '2012-03-01 14:38:33'),
(525, 8, '2012-03-01 14:38:36'),
(526, 8, '2012-03-01 14:39:36'),
(527, 8, '2012-03-01 14:40:00'),
(528, 8, '2012-03-01 14:40:36'),
(529, 8, '2012-03-01 14:42:31'),
(530, 8, '2012-03-01 14:43:43'),
(531, 8, '2012-03-01 14:43:55'),
(532, 8, '2012-03-01 14:44:59'),
(533, 8, '2012-03-01 14:45:17'),
(534, 8, '2012-03-01 14:46:28'),
(535, 8, '2012-03-01 14:47:27'),
(536, 8, '2012-03-01 14:49:52'),
(537, 8, '2012-03-01 14:49:55'),
(538, 8, '2012-03-01 14:50:39'),
(539, 8, '2012-03-01 14:51:21'),
(540, 8, '2012-03-01 14:51:23'),
(541, 8, '2012-03-01 14:51:49'),
(542, 8, '2012-03-01 14:56:28'),
(543, 8, '2012-03-01 14:56:49'),
(544, 8, '2012-03-01 14:57:32'),
(545, 8, '2012-03-01 15:36:18'),
(546, 8, '2012-03-01 15:37:58'),
(547, 8, '2012-03-01 15:38:29'),
(548, 8, '2012-03-01 15:48:28'),
(549, 8, '2012-03-01 15:48:47'),
(550, 8, '2012-03-01 15:49:20'),
(551, 8, '2012-03-01 15:49:36'),
(552, 8, '2012-03-01 15:50:01'),
(553, 8, '2012-03-01 15:50:11'),
(554, 8, '2012-03-01 15:50:22'),
(555, 8, '2012-03-01 15:50:27'),
(556, 8, '2012-03-01 15:51:11'),
(557, 8, '2012-03-01 15:51:12'),
(558, 8, '2012-03-01 15:52:04'),
(559, 8, '2012-03-01 15:53:07'),
(560, 8, '2012-03-01 15:54:15'),
(561, 8, '2012-03-01 15:57:41'),
(562, 8, '2012-03-01 15:57:54'),
(563, 8, '2012-03-01 15:57:58'),
(564, 8, '2012-03-01 15:58:18'),
(565, 8, '2012-03-01 15:59:59'),
(566, 8, '2012-03-01 16:02:46'),
(567, 8, '2012-03-01 16:03:01'),
(568, 8, '2012-03-01 16:03:15'),
(569, 8, '2012-03-01 16:03:19'),
(570, 8, '2012-03-01 16:03:27'),
(571, 8, '2012-03-01 16:03:55'),
(572, 8, '2012-03-01 16:04:11'),
(573, 8, '2012-03-01 16:04:59'),
(574, 8, '2012-03-01 16:05:06'),
(575, 8, '2012-03-01 16:05:40'),
(576, 8, '2012-03-01 16:06:03'),
(577, 8, '2012-03-01 16:06:09'),
(578, 8, '2012-03-01 16:06:20'),
(579, 8, '2012-03-01 16:06:31'),
(580, 8, '2012-03-01 16:07:30'),
(581, 8, '2012-03-01 16:07:34'),
(582, 8, '2012-03-01 16:08:15'),
(583, 8, '2012-03-01 16:08:27'),
(584, 8, '2012-03-01 16:16:17'),
(585, 8, '2012-03-01 16:16:41'),
(586, 8, '2012-03-01 16:17:00'),
(587, 8, '2012-03-01 16:17:11'),
(588, 15, '2012-03-01 16:17:22'),
(589, 16, '2012-03-01 16:17:31'),
(590, 15, '2012-03-01 16:17:38'),
(591, 8, '2012-03-01 16:17:52'),
(592, 8, '2012-03-01 16:18:23'),
(593, 8, '2012-03-01 16:18:42'),
(594, 8, '2012-03-01 16:18:59'),
(595, 8, '2012-03-01 16:19:04'),
(596, 15, '2012-03-01 16:19:50'),
(597, 8, '2012-03-01 16:21:00'),
(598, 8, '2012-03-01 16:21:11'),
(599, 8, '2012-03-01 16:21:38'),
(600, 8, '2012-03-01 16:22:48'),
(601, 8, '2012-03-01 16:23:08'),
(602, 8, '2012-03-01 16:23:38'),
(603, 8, '2012-03-01 16:23:51'),
(604, 8, '2012-03-01 16:24:12'),
(605, 8, '2012-03-01 16:24:52'),
(606, 8, '2012-03-01 16:25:35'),
(607, 8, '2012-03-01 16:26:04'),
(608, 8, '2012-03-01 16:26:40'),
(609, 8, '2012-03-01 16:26:50'),
(610, 8, '2012-03-01 16:27:14'),
(611, 8, '2012-03-01 16:27:27'),
(612, 8, '2012-03-01 16:28:10'),
(613, 8, '2012-03-01 16:28:29'),
(614, 8, '2012-03-01 16:30:16'),
(615, 8, '2012-03-01 16:30:19'),
(616, 8, '2012-03-01 16:30:30'),
(617, 8, '2012-03-01 16:31:03'),
(618, 8, '2012-03-01 16:31:30'),
(619, 8, '2012-03-01 16:31:31'),
(620, 8, '2012-03-01 16:32:00'),
(621, 15, '2012-03-01 16:32:06'),
(622, 15, '2012-03-01 16:32:11'),
(623, 16, '2012-03-01 16:32:16'),
(624, 8, '2012-03-01 16:32:23'),
(625, 15, '2012-03-01 16:32:26'),
(626, 8, '2012-03-01 16:33:40'),
(627, 15, '2012-03-01 16:33:46'),
(628, 8, '2012-03-01 16:34:17'),
(629, 15, '2012-03-01 16:34:19'),
(630, 8, '2012-03-01 16:34:59'),
(631, 8, '2012-03-01 16:35:20'),
(632, 8, '2012-03-01 16:35:30'),
(633, 8, '2012-03-01 16:35:44'),
(634, 8, '2012-03-01 16:36:06'),
(635, 8, '2012-03-01 16:36:52'),
(636, 8, '2012-03-01 16:38:10'),
(637, 8, '2012-03-01 16:38:20'),
(638, 8, '2012-03-01 16:39:00'),
(639, 8, '2012-03-01 16:39:14'),
(640, 15, '2012-03-01 16:39:15'),
(641, 17, '2012-03-01 16:39:18'),
(642, 16, '2012-03-01 16:39:25'),
(643, 8, '2012-03-01 16:40:53'),
(644, 8, '2012-03-01 16:41:12'),
(645, 8, '2012-03-01 16:41:22'),
(646, 8, '2012-03-01 16:43:24'),
(647, 8, '2012-03-01 16:43:26'),
(648, 8, '2012-03-01 16:47:27'),
(649, 8, '2012-03-01 16:47:35'),
(650, 8, '2012-03-01 16:48:27'),
(651, 8, '2012-03-01 16:48:39'),
(652, 15, '2012-03-01 16:48:58'),
(653, 15, '2012-03-01 16:49:33'),
(654, 15, '2012-03-01 16:49:36'),
(655, 8, '2012-03-01 16:57:18'),
(656, 8, '2012-03-01 16:58:34'),
(657, 8, '2012-03-01 16:59:01'),
(658, 8, '2012-03-01 17:00:33'),
(659, 8, '2012-03-01 17:00:44'),
(660, 8, '2012-03-01 17:00:58'),
(661, 8, '2012-03-01 17:01:09'),
(662, 8, '2012-03-01 17:04:31'),
(663, 8, '2012-03-01 17:05:03'),
(664, 8, '2012-03-01 17:05:34'),
(665, 8, '2012-03-01 17:07:43'),
(666, 8, '2012-03-01 17:07:45'),
(667, 8, '2012-03-01 17:08:04'),
(668, 8, '2012-03-01 17:08:20'),
(669, 8, '2012-03-01 17:08:37'),
(670, 8, '2012-03-01 17:12:04'),
(671, 8, '2012-03-01 17:12:15'),
(672, 8, '2012-03-01 17:12:46'),
(673, 8, '2012-03-01 17:13:54'),
(674, 8, '2012-03-01 17:14:38'),
(675, 8, '2012-03-01 17:16:02'),
(676, 8, '2012-03-01 17:16:24'),
(677, 8, '2012-03-01 17:16:38'),
(678, 8, '2012-03-01 17:16:57'),
(679, 8, '2012-03-01 17:17:33'),
(680, 8, '2012-03-01 17:18:07'),
(681, 8, '2012-03-01 17:18:50'),
(682, 8, '2012-03-01 17:20:18'),
(683, 8, '2012-03-01 17:20:31'),
(684, 8, '2012-03-01 17:21:32'),
(685, 8, '2012-03-01 17:22:36'),
(686, 8, '2012-03-01 18:07:38'),
(687, 8, '2012-03-01 18:08:18'),
(688, 8, '2012-03-01 18:08:33'),
(689, 8, '2012-03-01 18:12:21'),
(690, 8, '2012-03-01 18:12:30'),
(691, 8, '2012-03-01 18:13:17'),
(692, 8, '2012-03-01 18:13:30'),
(693, 8, '2012-03-01 18:23:17'),
(694, 8, '2012-03-01 18:26:57'),
(695, 8, '2012-03-01 18:27:02'),
(696, 8, '2012-03-01 18:27:08'),
(697, 8, '2012-03-01 18:33:33'),
(698, 8, '2012-03-01 18:37:45'),
(699, 8, '2012-03-01 18:40:27'),
(700, 8, '2012-03-01 18:43:18'),
(701, 8, '2012-03-01 18:43:30'),
(702, 8, '2012-03-01 18:43:57'),
(703, 8, '2012-03-01 18:45:10'),
(704, 18, '2012-03-02 08:41:07'),
(705, 19, '2012-03-02 10:03:29'),
(706, 19, '2012-03-02 10:03:31'),
(707, 19, '2012-03-02 10:04:40'),
(708, 19, '2012-03-02 10:04:42'),
(709, 19, '2012-03-02 10:04:50'),
(710, 19, '2012-03-02 10:04:53'),
(711, 19, '2012-03-02 10:05:04'),
(712, 19, '2012-03-02 10:05:40'),
(713, 19, '2012-03-02 10:06:20'),
(714, 19, '2012-03-02 10:06:41'),
(715, 19, '2012-03-02 10:07:11'),
(716, 19, '2012-03-02 10:12:25'),
(717, 19, '2012-03-02 10:14:48'),
(718, 19, '2012-03-02 10:14:55'),
(719, 19, '2012-03-02 10:14:56'),
(720, 19, '2012-03-02 10:15:01'),
(721, 19, '2012-03-02 10:16:06'),
(722, 19, '2012-03-02 10:17:49'),
(723, 19, '2012-03-02 10:17:52'),
(724, 19, '2012-03-02 10:17:59'),
(725, 19, '2012-03-02 10:18:01'),
(726, 19, '2012-03-02 10:18:31'),
(727, 19, '2012-03-02 10:18:41'),
(728, 19, '2012-03-02 10:19:16'),
(729, 19, '2012-03-02 10:19:22'),
(730, 19, '2012-03-02 10:20:08'),
(731, 19, '2012-03-02 10:20:12'),
(732, 19, '2012-03-02 10:20:49'),
(733, 19, '2012-03-02 10:20:59'),
(734, 19, '2012-03-02 10:24:19'),
(735, 19, '2012-03-02 10:24:26'),
(736, 19, '2012-03-02 10:26:21'),
(737, 19, '2012-03-02 10:26:29'),
(738, 19, '2012-03-02 10:28:28'),
(739, 19, '2012-03-02 10:29:15'),
(740, 19, '2012-03-02 10:29:20'),
(741, 19, '2012-03-02 10:30:06'),
(742, 19, '2012-03-02 10:30:09'),
(743, 19, '2012-03-02 10:31:26'),
(744, 19, '2012-03-02 10:31:29'),
(745, 19, '2012-03-02 10:32:00'),
(746, 19, '2012-03-02 10:32:14'),
(747, 19, '2012-03-02 10:35:17'),
(748, 19, '2012-03-02 10:36:40'),
(749, 19, '2012-03-02 10:38:05'),
(750, 19, '2012-03-02 10:39:48'),
(751, 19, '2012-03-02 10:40:20'),
(752, 19, '2012-03-02 10:40:48'),
(753, 19, '2012-03-02 10:42:07'),
(754, 19, '2012-03-02 10:42:39'),
(755, 19, '2012-03-02 10:43:13'),
(756, 19, '2012-03-02 10:43:16'),
(757, 19, '2012-03-02 10:43:17'),
(758, 19, '2012-03-02 10:43:45'),
(759, 19, '2012-03-02 10:44:03'),
(760, 19, '2012-03-02 10:44:11'),
(761, 19, '2012-03-02 10:44:14'),
(762, 19, '2012-03-02 10:44:14'),
(763, 19, '2012-03-02 10:46:24'),
(764, 19, '2012-03-02 10:46:27'),
(765, 19, '2012-03-02 10:46:31'),
(766, 19, '2012-03-02 10:48:18'),
(767, 19, '2012-03-02 10:48:42'),
(768, 19, '2012-03-02 10:49:45'),
(769, 19, '2012-03-02 10:49:52'),
(770, 19, '2012-03-02 10:49:52'),
(771, 19, '2012-03-02 10:49:55'),
(772, 19, '2012-03-02 10:52:44'),
(773, 19, '2012-03-02 10:52:54'),
(774, 19, '2012-03-02 10:53:15'),
(775, 19, '2012-03-02 10:53:41'),
(776, 19, '2012-03-02 10:53:53'),
(777, 19, '2012-03-02 10:54:28'),
(778, 19, '2012-03-02 10:54:56'),
(779, 19, '2012-03-02 10:55:37'),
(780, 19, '2012-03-02 10:55:45'),
(781, 19, '2012-03-02 10:55:58'),
(782, 19, '2012-03-02 10:56:38'),
(783, 19, '2012-03-02 10:57:31'),
(784, 19, '2012-03-02 10:58:05'),
(785, 19, '2012-03-02 10:58:08'),
(786, 19, '2012-03-02 10:58:16'),
(787, 20, '2012-03-02 10:58:23'),
(788, 21, '2012-03-02 10:58:34'),
(789, 22, '2012-03-02 10:58:43'),
(790, 19, '2012-03-02 10:59:03'),
(791, 19, '2012-03-02 10:59:11'),
(792, 19, '2012-03-02 11:00:09'),
(793, 19, '2012-03-02 11:00:16'),
(794, 19, '2012-03-02 11:00:19'),
(795, 19, '2012-03-02 11:00:21'),
(796, 19, '2012-03-02 11:00:22'),
(797, 19, '2012-03-02 11:00:41'),
(798, 19, '2012-03-02 11:01:05'),
(799, 19, '2012-03-02 11:01:21'),
(800, 19, '2012-03-02 11:01:32'),
(801, 19, '2012-03-02 11:01:41'),
(802, 22, '2012-03-02 11:01:46'),
(803, 19, '2012-03-02 11:02:18'),
(804, 19, '2012-03-02 11:02:44'),
(805, 19, '2012-03-02 11:03:14'),
(806, 19, '2012-03-02 11:03:34'),
(807, 19, '2012-03-02 11:03:50'),
(808, 19, '2012-03-02 11:04:11'),
(809, 19, '2012-03-02 11:04:28'),
(810, 19, '2012-03-02 11:05:33'),
(811, 19, '2012-03-02 11:05:42'),
(812, 22, '2012-03-02 11:05:45'),
(813, 22, '2012-03-02 11:05:49'),
(814, 20, '2012-03-02 11:05:53'),
(815, 22, '2012-03-02 11:05:55'),
(816, 22, '2012-03-02 11:06:01'),
(817, 22, '2012-03-02 11:06:02'),
(818, 19, '2012-03-02 11:06:22'),
(819, 20, '2012-03-02 11:06:28'),
(820, 22, '2012-03-02 11:06:31'),
(821, 22, '2012-03-02 11:06:37'),
(822, 22, '2012-03-02 11:06:38'),
(823, 22, '2012-03-02 11:06:39'),
(824, 22, '2012-03-02 11:06:40'),
(825, 19, '2012-03-02 11:06:42'),
(826, 19, '2012-03-02 11:08:42'),
(827, 19, '2012-03-02 11:09:58'),
(828, 19, '2012-03-02 11:10:16'),
(829, 22, '2012-03-02 11:10:26'),
(830, 20, '2012-03-02 11:10:29'),
(831, 19, '2012-03-02 11:10:37'),
(832, 19, '2012-03-02 11:10:59'),
(833, 19, '2012-03-02 11:11:32'),
(834, 19, '2012-03-02 11:12:01'),
(835, 19, '2012-03-02 11:12:26'),
(836, 22, '2012-03-02 11:12:30'),
(837, 20, '2012-03-02 11:12:34'),
(838, 21, '2012-03-02 11:12:36'),
(839, 21, '2012-03-02 11:12:42'),
(840, 19, '2012-03-02 11:12:55'),
(841, 20, '2012-03-02 11:16:04'),
(842, 19, '2012-03-02 11:16:17'),
(843, 19, '2012-03-02 11:17:52'),
(844, 19, '2012-03-02 11:18:11'),
(845, 19, '2012-03-02 11:18:26'),
(846, 19, '2012-03-02 11:18:43'),
(847, 19, '2012-03-02 11:18:56'),
(848, 19, '2012-03-02 11:19:50'),
(849, 19, '2012-03-02 11:19:56'),
(850, 19, '2012-03-02 11:20:35'),
(851, 19, '2012-03-02 11:20:38'),
(852, 20, '2012-03-02 11:20:47'),
(853, 19, '2012-03-02 11:20:51'),
(854, 19, '2012-03-02 11:21:00'),
(855, 19, '2012-03-02 11:21:31'),
(856, 19, '2012-03-02 11:21:42'),
(857, 19, '2012-03-02 11:22:13'),
(858, 19, '2012-03-02 11:23:55'),
(859, 19, '2012-03-02 11:25:24'),
(860, 19, '2012-03-02 11:25:45'),
(861, 21, '2012-03-02 11:25:54'),
(862, 19, '2012-03-02 11:26:25'),
(863, 19, '2012-03-02 11:26:28'),
(864, 19, '2012-03-02 11:26:32'),
(865, 19, '2012-03-02 11:26:50'),
(866, 19, '2012-03-02 11:27:04'),
(867, 19, '2012-03-02 11:27:29'),
(868, 19, '2012-03-02 11:27:31'),
(869, 19, '2012-03-02 11:27:49'),
(870, 19, '2012-03-02 11:28:48'),
(871, 19, '2012-03-02 11:28:51'),
(872, 20, '2012-03-02 11:28:59'),
(873, 19, '2012-03-02 11:29:14'),
(874, 19, '2012-03-02 11:29:17'),
(875, 20, '2012-03-02 11:29:22'),
(876, 19, '2012-03-02 11:29:34'),
(877, 19, '2012-03-02 11:29:37'),
(878, 20, '2012-03-02 11:29:40'),
(879, 20, '2012-03-02 11:29:42'),
(880, 19, '2012-03-02 11:29:47'),
(881, 19, '2012-03-02 11:30:34'),
(882, 19, '2012-03-02 11:31:26'),
(883, 19, '2012-03-02 11:31:42'),
(884, 19, '2012-03-02 11:32:03'),
(885, 19, '2012-03-02 11:32:05'),
(886, 19, '2012-03-02 11:32:07'),
(887, 19, '2012-03-02 11:32:19'),
(888, 19, '2012-03-02 11:32:44'),
(889, 19, '2012-03-02 11:33:13'),
(890, 19, '2012-03-02 11:37:01'),
(891, 19, '2012-03-02 11:38:26'),
(892, 19, '2012-03-02 11:38:42'),
(893, 19, '2012-03-02 11:39:38'),
(894, 19, '2012-03-02 11:41:48'),
(895, 19, '2012-03-02 11:41:53'),
(896, 19, '2012-03-02 11:43:18'),
(897, 19, '2012-03-02 11:43:50'),
(898, 19, '2012-03-02 11:44:14'),
(899, 19, '2012-03-02 11:45:18'),
(900, 19, '2012-03-02 11:45:22'),
(901, 19, '2012-03-02 11:46:34'),
(902, 19, '2012-03-02 11:46:50'),
(903, 19, '2012-03-02 11:47:00'),
(904, 19, '2012-03-02 11:48:51'),
(905, 19, '2012-03-02 11:49:10'),
(906, 19, '2012-03-02 11:49:46'),
(907, 19, '2012-03-02 11:53:15'),
(908, 19, '2012-03-02 11:53:32'),
(909, 19, '2012-03-02 11:53:48'),
(910, 19, '2012-03-02 11:54:12'),
(911, 19, '2012-03-02 11:54:44'),
(912, 19, '2012-03-02 11:55:13'),
(913, 19, '2012-03-02 11:55:48'),
(914, 19, '2012-03-02 11:56:18'),
(915, 19, '2012-03-02 11:56:34'),
(916, 19, '2012-03-02 11:56:53'),
(917, 19, '2012-03-02 11:57:14'),
(918, 19, '2012-03-02 11:58:21'),
(919, 19, '2012-03-02 11:58:29'),
(920, 19, '2012-03-02 11:58:45'),
(921, 19, '2012-03-02 11:58:47'),
(922, 19, '2012-03-02 11:58:49'),
(923, 19, '2012-03-02 11:58:52'),
(924, 19, '2012-03-02 11:58:56'),
(925, 19, '2012-03-02 11:58:58'),
(926, 19, '2012-03-02 11:59:02'),
(927, 19, '2012-03-02 12:01:07'),
(928, 19, '2012-03-02 12:02:51'),
(929, 19, '2012-03-02 12:03:20'),
(930, 19, '2012-03-02 12:03:30'),
(931, 19, '2012-03-02 12:05:23'),
(932, 19, '2012-03-02 12:06:47'),
(933, 19, '2012-03-02 12:07:00'),
(934, 19, '2012-03-02 12:07:40'),
(935, 19, '2012-03-02 12:08:00'),
(936, 19, '2012-03-02 12:08:59'),
(937, 19, '2012-03-02 12:09:24'),
(938, 19, '2012-03-02 12:09:31'),
(939, 19, '2012-03-02 12:09:47'),
(940, 19, '2012-03-02 12:10:24'),
(941, 19, '2012-03-02 12:10:47'),
(942, 19, '2012-03-02 12:11:17'),
(943, 19, '2012-03-02 12:11:50'),
(944, 19, '2012-03-02 12:13:16'),
(945, 19, '2012-03-02 12:13:35'),
(946, 19, '2012-03-02 12:13:56'),
(947, 19, '2012-03-02 12:14:08'),
(948, 19, '2012-03-02 12:14:25'),
(949, 19, '2012-03-02 12:14:42'),
(950, 19, '2012-03-02 12:15:43'),
(951, 19, '2012-03-02 12:15:48'),
(952, 20, '2012-03-02 12:15:52'),
(953, 23, '2012-03-02 12:15:59'),
(954, 19, '2012-03-02 12:16:20'),
(955, 19, '2012-03-02 12:16:56'),
(956, 19, '2012-03-02 12:17:23'),
(957, 23, '2012-03-02 12:17:32'),
(958, 21, '2012-03-02 12:17:33'),
(959, 23, '2012-03-02 12:19:02'),
(960, 19, '2012-03-02 12:21:52'),
(961, 20, '2012-03-02 12:22:49'),
(962, 19, '2012-03-02 12:23:16'),
(963, 19, '2012-03-02 12:23:16'),
(964, 19, '2012-03-02 12:23:19'),
(965, 19, '2012-03-02 12:23:56'),
(966, 23, '2012-03-02 12:24:05'),
(967, 20, '2012-03-02 12:24:08'),
(968, 23, '2012-03-02 12:24:13'),
(969, 19, '2012-03-02 12:24:55'),
(970, 19, '2012-03-02 12:25:11'),
(971, 23, '2012-03-02 12:25:16'),
(972, 21, '2012-03-02 12:25:20'),
(973, 20, '2012-03-02 12:25:25'),
(974, 20, '2012-03-02 12:25:35'),
(975, 20, '2012-03-02 12:25:35'),
(976, 20, '2012-03-02 12:25:36'),
(977, 20, '2012-03-02 12:25:36'),
(978, 20, '2012-03-02 12:25:39'),
(979, 19, '2012-03-02 12:25:44'),
(980, 19, '2012-03-02 12:26:41'),
(981, 19, '2012-03-02 12:37:15'),
(982, 19, '2012-03-02 12:37:25'),
(983, 19, '2012-03-02 12:42:54'),
(984, 19, '2012-03-02 12:48:26'),
(985, 19, '2012-03-02 12:49:01'),
(986, 19, '2012-03-02 12:49:07'),
(987, 19, '2012-03-02 12:49:11'),
(988, 19, '2012-03-02 12:49:31'),
(989, 19, '2012-03-02 12:50:14'),
(990, 19, '2012-03-02 12:50:50'),
(991, 19, '2012-03-02 12:50:56'),
(992, 19, '2012-03-02 12:51:18'),
(993, 19, '2012-03-02 12:52:18'),
(994, 19, '2012-03-02 12:52:46'),
(995, 19, '2012-03-02 12:53:12'),
(996, 19, '2012-03-02 12:53:35'),
(997, 19, '2012-03-02 12:53:38'),
(998, 19, '2012-03-02 12:53:58'),
(999, 19, '2012-03-02 12:54:24'),
(1000, 19, '2012-03-02 12:54:32'),
(1001, 19, '2012-03-02 12:54:40'),
(1002, 19, '2012-03-02 12:57:01'),
(1003, 19, '2012-03-02 13:03:14'),
(1004, 19, '2012-03-02 13:03:28'),
(1005, 19, '2012-03-02 13:31:31'),
(1006, 19, '2012-03-02 13:33:20'),
(1007, 19, '2012-03-02 13:33:35'),
(1008, 19, '2012-03-02 13:34:09'),
(1009, 19, '2012-03-02 13:34:27'),
(1010, 19, '2012-03-02 13:37:04'),
(1011, 19, '2012-03-02 13:37:20'),
(1012, 19, '2012-03-02 13:39:21'),
(1013, 19, '2012-03-02 13:50:41'),
(1014, 19, '2012-03-02 13:51:37'),
(1015, 19, '2012-03-02 13:52:18'),
(1016, 19, '2012-03-02 13:59:48'),
(1017, 19, '2012-03-02 13:59:56'),
(1018, 24, '2012-03-02 14:00:18'),
(1019, 25, '2012-03-02 14:00:25'),
(1020, 25, '2012-03-02 14:00:31'),
(1021, 19, '2012-03-02 14:00:51'),
(1022, 19, '2012-03-02 14:00:52'),
(1023, 19, '2012-03-02 14:00:54'),
(1024, 19, '2012-03-02 14:00:57'),
(1025, 19, '2012-03-02 14:01:06'),
(1026, 19, '2012-03-02 14:01:45'),
(1027, 19, '2012-03-02 14:01:53'),
(1028, 19, '2012-03-02 14:03:48'),
(1029, 19, '2012-03-02 14:04:38'),
(1030, 19, '2012-03-02 14:05:48'),
(1031, 19, '2012-03-02 14:06:10'),
(1032, 19, '2012-03-02 14:06:38'),
(1033, 19, '2012-03-02 14:06:41'),
(1034, 19, '2012-03-02 14:06:51'),
(1035, 19, '2012-03-02 14:07:53'),
(1036, 19, '2012-03-02 14:08:00'),
(1037, 19, '2012-03-02 14:09:04'),
(1038, 19, '2012-03-02 14:09:18'),
(1039, 19, '2012-03-02 14:09:44'),
(1040, 19, '2012-03-02 14:10:03'),
(1041, 19, '2012-03-02 14:10:20'),
(1042, 19, '2012-03-02 14:10:37'),
(1043, 19, '2012-03-02 14:36:23'),
(1044, 19, '2012-03-02 14:40:06'),
(1045, 19, '2012-03-02 14:40:48'),
(1046, 19, '2012-03-02 14:44:55'),
(1047, 19, '2012-03-02 14:47:58'),
(1048, 19, '2012-03-02 14:48:46'),
(1049, 19, '2012-03-02 14:48:59'),
(1050, 19, '2012-03-02 14:53:55'),
(1051, 19, '2012-03-02 14:54:23'),
(1052, 19, '2012-03-02 14:54:38'),
(1053, 19, '2012-03-02 14:54:52'),
(1054, 19, '2012-03-02 15:29:09'),
(1055, 19, '2012-03-02 16:10:37'),
(1056, 19, '2012-03-02 16:24:56'),
(1057, 19, '2012-03-02 16:25:05'),
(1058, 19, '2012-03-02 16:26:22'),
(1059, 19, '2012-03-02 16:27:06'),
(1060, 19, '2012-03-02 16:27:22'),
(1061, 26, '2012-03-02 16:27:29'),
(1062, 27, '2012-03-02 16:27:34'),
(1063, 28, '2012-03-02 16:27:39'),
(1064, 19, '2012-03-02 16:28:30'),
(1065, 19, '2012-03-02 16:28:55'),
(1066, 19, '2012-03-02 16:29:06'),
(1067, 19, '2012-03-02 16:29:16'),
(1068, 19, '2012-03-02 16:29:26'),
(1069, 19, '2012-03-02 16:29:36'),
(1070, 19, '2012-03-02 16:29:58'),
(1071, 19, '2012-03-02 16:30:55'),
(1072, 26, '2012-03-02 16:31:00'),
(1073, 27, '2012-03-02 16:31:02'),
(1074, 28, '2012-03-02 16:31:05'),
(1075, 19, '2012-03-02 16:31:22'),
(1076, 19, '2012-03-02 16:31:44'),
(1077, 19, '2012-03-02 16:32:05'),
(1078, 19, '2012-03-02 16:32:12'),
(1079, 19, '2012-03-02 16:32:22'),
(1080, 19, '2012-03-02 16:32:33'),
(1081, 19, '2012-03-02 16:32:49'),
(1082, 19, '2012-03-02 16:33:17'),
(1083, 27, '2012-03-02 16:33:50'),
(1084, 26, '2012-03-02 16:33:52'),
(1085, 28, '2012-03-02 16:33:57'),
(1086, 19, '2012-03-02 16:34:23'),
(1087, 19, '2012-03-02 17:06:08'),
(1088, 19, '2012-03-02 17:06:46'),
(1089, 19, '2012-03-02 17:06:54'),
(1090, 19, '2012-03-02 17:07:56'),
(1091, 19, '2012-03-02 17:15:44'),
(1092, 19, '2012-03-02 17:16:24'),
(1093, 19, '2012-03-02 17:23:35'),
(1094, 19, '2012-03-02 17:24:09'),
(1095, 19, '2012-03-02 17:25:18'),
(1096, 19, '2012-03-02 17:37:05'),
(1097, 19, '2012-03-02 17:37:09'),
(1098, 19, '2012-03-02 17:37:09'),
(1099, 19, '2012-03-02 17:37:11'),
(1100, 19, '2012-03-02 17:37:12'),
(1101, 19, '2012-03-02 17:37:14'),
(1102, 19, '2012-03-02 17:37:46'),
(1103, 19, '2012-03-02 17:37:49'),
(1104, 19, '2012-03-02 17:37:50'),
(1105, 19, '2012-03-02 17:37:50'),
(1106, 19, '2012-03-02 17:37:52'),
(1107, 19, '2012-03-02 17:37:57'),
(1108, 19, '2012-03-02 17:39:07'),
(1109, 19, '2012-03-02 17:39:11'),
(1110, 19, '2012-03-02 17:39:12'),
(1111, 19, '2012-03-02 17:39:13'),
(1112, 19, '2012-03-02 17:39:14'),
(1113, 19, '2012-03-02 17:39:16'),
(1114, 19, '2012-03-02 17:39:50'),
(1115, 19, '2012-03-02 17:40:05'),
(1116, 19, '2012-03-02 17:40:08'),
(1117, 19, '2012-03-02 17:40:09'),
(1118, 19, '2012-03-02 17:40:10'),
(1119, 19, '2012-03-02 17:40:12'),
(1120, 19, '2012-03-02 17:40:21'),
(1121, 19, '2012-03-02 17:40:23'),
(1122, 19, '2012-03-02 17:40:24'),
(1123, 19, '2012-03-02 17:40:25'),
(1124, 19, '2012-03-02 17:40:26'),
(1125, 19, '2012-03-02 17:40:28'),
(1126, 19, '2012-03-02 17:40:31'),
(1127, 19, '2012-03-02 17:42:47'),
(1128, 19, '2012-03-02 17:42:49'),
(1129, 19, '2012-03-02 17:42:51'),
(1130, 19, '2012-03-02 17:42:53'),
(1131, 19, '2012-03-02 17:44:02'),
(1132, 19, '2012-03-02 17:44:05'),
(1133, 19, '2012-03-02 17:44:06'),
(1134, 19, '2012-03-02 17:44:06'),
(1135, 19, '2012-03-02 17:44:08'),
(1136, 19, '2012-03-02 17:44:10'),
(1137, 19, '2012-03-02 17:44:24'),
(1138, 19, '2012-03-02 17:44:25'),
(1139, 19, '2012-03-02 17:44:28'),
(1140, 19, '2012-03-02 17:44:28'),
(1141, 19, '2012-03-02 17:44:29'),
(1142, 19, '2012-03-02 17:44:31'),
(1143, 19, '2012-03-02 17:44:33'),
(1144, 19, '2012-03-02 17:44:35'),
(1145, 19, '2012-03-02 17:46:01'),
(1146, 19, '2012-03-02 17:46:04'),
(1147, 19, '2012-03-02 17:46:04'),
(1148, 19, '2012-03-02 17:46:05'),
(1149, 19, '2012-03-02 17:46:59'),
(1150, 19, '2012-03-02 17:47:02'),
(1151, 19, '2012-03-02 17:47:02'),
(1152, 19, '2012-03-02 17:47:03'),
(1153, 19, '2012-03-02 17:47:21'),
(1154, 19, '2012-03-02 17:47:23'),
(1155, 19, '2012-03-02 17:47:25'),
(1156, 19, '2012-03-02 17:47:26'),
(1157, 19, '2012-03-02 17:47:27'),
(1158, 19, '2012-03-02 17:48:02'),
(1159, 19, '2012-03-02 17:48:04'),
(1160, 19, '2012-03-02 17:48:05'),
(1161, 19, '2012-03-02 17:48:08'),
(1162, 19, '2012-03-02 17:48:53'),
(1163, 19, '2012-03-02 17:48:57'),
(1164, 19, '2012-03-02 17:48:57'),
(1165, 19, '2012-03-02 17:49:40'),
(1166, 19, '2012-03-02 17:49:42'),
(1167, 19, '2012-03-02 17:49:43'),
(1168, 19, '2012-03-02 17:52:35'),
(1169, 19, '2012-03-02 17:52:38'),
(1170, 19, '2012-03-02 17:52:38'),
(1171, 19, '2012-03-02 17:53:20'),
(1172, 19, '2012-03-02 17:53:22'),
(1173, 19, '2012-03-02 17:53:24'),
(1174, 19, '2012-03-02 17:57:09'),
(1175, 19, '2012-03-02 17:57:21'),
(1176, 19, '2012-03-02 17:57:51'),
(1177, 29, '2012-03-02 17:58:24'),
(1178, 19, '2012-03-02 17:58:49'),
(1179, 19, '2012-03-02 18:00:40'),
(1180, 19, '2012-03-02 18:02:08'),
(1181, 19, '2012-03-02 18:02:11'),
(1182, 19, '2012-03-02 18:02:12'),
(1183, 19, '2012-03-02 18:02:14'),
(1184, 19, '2012-03-02 18:04:49'),
(1185, 19, '2012-03-02 18:04:51'),
(1186, 19, '2012-03-02 18:04:52'),
(1187, 19, '2012-03-02 18:05:01'),
(1188, 19, '2012-03-02 18:05:03'),
(1189, 19, '2012-03-02 18:05:04'),
(1190, 19, '2012-03-02 18:05:06'),
(1191, 19, '2012-03-02 18:05:14'),
(1192, 19, '2012-03-02 18:05:17'),
(1193, 19, '2012-03-02 18:05:18'),
(1194, 19, '2012-03-02 18:05:20'),
(1195, 19, '2012-03-02 18:09:15'),
(1196, 19, '2012-03-02 18:09:17'),
(1197, 19, '2012-03-02 18:09:45'),
(1198, 19, '2012-03-02 18:09:48'),
(1199, 19, '2012-03-02 18:09:55'),
(1200, 19, '2012-03-02 18:09:57'),
(1201, 19, '2012-03-02 18:10:01'),
(1202, 19, '2012-03-02 18:11:06'),
(1203, 19, '2012-03-02 18:11:39'),
(1204, 19, '2012-03-02 18:11:47'),
(1205, 19, '2012-03-02 18:11:56'),
(1206, 19, '2012-03-02 18:12:03'),
(1207, 19, '2012-03-02 18:12:10'),
(1208, 19, '2012-03-02 18:13:11'),
(1209, 19, '2012-03-02 18:15:18'),
(1210, 19, '2012-03-02 18:16:49'),
(1211, 19, '2012-03-02 18:17:23'),
(1212, 19, '2012-03-02 18:19:16'),
(1213, 19, '2012-03-02 18:19:47'),
(1214, 19, '2012-03-02 18:20:30'),
(1215, 19, '2012-03-02 18:20:49'),
(1216, 19, '2012-03-02 18:21:40'),
(1217, 19, '2012-03-02 18:21:53'),
(1218, 19, '2012-03-02 18:22:03'),
(1219, 19, '2012-03-02 18:22:24'),
(1220, 19, '2012-03-02 18:25:06'),
(1221, 19, '2012-03-02 18:26:28'),
(1222, 29, '2012-03-02 18:26:40'),
(1223, 19, '2012-03-02 18:26:48'),
(1224, 19, '2012-03-02 18:26:57'),
(1225, 19, '2012-03-02 18:27:01'),
(1226, 19, '2012-03-02 18:27:11'),
(1227, 19, '2012-03-02 18:27:28'),
(1228, 19, '2012-03-02 18:27:30'),
(1229, 19, '2012-03-02 18:27:34'),
(1230, 19, '2012-03-02 18:27:36'),
(1231, 19, '2012-03-02 18:27:44'),
(1232, 19, '2012-03-02 18:27:59'),
(1233, 19, '2012-03-02 18:28:09'),
(1234, 19, '2012-03-02 18:28:23'),
(1235, 19, '2012-03-02 18:28:34'),
(1236, 19, '2012-03-02 18:30:26'),
(1237, 19, '2012-03-02 18:30:35'),
(1238, 19, '2012-03-02 18:31:17'),
(1239, 19, '2012-03-02 18:31:32'),
(1240, 19, '2012-03-02 18:31:51'),
(1241, 19, '2012-03-02 18:32:05'),
(1242, 19, '2012-03-02 18:33:01'),
(1243, 19, '2012-03-02 18:33:09'),
(1244, 19, '2012-03-02 18:33:25'),
(1245, 19, '2012-03-02 18:33:31'),
(1246, 19, '2012-03-02 18:35:20'),
(1247, 19, '2012-03-02 18:35:49'),
(1248, 19, '2012-03-02 18:35:59'),
(1249, 19, '2012-03-02 18:36:53'),
(1250, 19, '2012-03-02 18:37:34'),
(1251, 19, '2012-03-02 18:37:42'),
(1252, 19, '2012-03-02 18:38:30'),
(1253, 19, '2012-03-02 18:38:57'),
(1254, 19, '2012-03-02 18:39:04'),
(1255, 19, '2012-03-02 18:39:26'),
(1256, 19, '2012-03-02 18:43:07'),
(1257, 19, '2012-03-02 18:43:11'),
(1258, 19, '2012-03-02 18:43:52'),
(1259, 19, '2012-03-02 18:44:02'),
(1260, 19, '2012-03-02 18:44:11'),
(1261, 19, '2012-03-02 18:45:01'),
(1262, 19, '2012-03-02 18:45:16'),
(1263, 19, '2012-03-02 18:46:17'),
(1264, 19, '2012-03-02 18:46:28'),
(1265, 19, '2012-03-02 18:46:41'),
(1266, 19, '2012-03-02 18:47:08'),
(1267, 19, '2012-03-02 18:48:34'),
(1268, 19, '2012-03-02 18:49:07'),
(1269, 19, '2012-03-02 18:50:11'),
(1270, 19, '2012-03-02 18:50:15'),
(1271, 19, '2012-03-02 18:50:40'),
(1272, 19, '2012-03-02 18:50:51'),
(1273, 19, '2012-03-02 18:51:01'),
(1274, 19, '2012-03-02 18:51:48'),
(1275, 19, '2012-03-02 18:54:04'),
(1276, 19, '2012-03-02 18:54:18'),
(1277, 19, '2012-03-02 18:54:24'),
(1278, 19, '2012-03-02 18:56:44'),
(1279, 19, '2012-03-02 18:58:19'),
(1280, 19, '2012-03-02 18:58:28'),
(1281, 19, '2012-03-02 18:58:41'),
(1282, 19, '2012-03-02 18:58:59'),
(1283, 19, '2012-03-02 18:59:08'),
(1284, 19, '2012-03-02 18:59:21'),
(1285, 19, '2012-03-02 18:59:27'),
(1286, 19, '2012-03-02 18:59:47'),
(1287, 19, '2012-03-02 19:00:12'),
(1288, 19, '2012-03-02 19:00:19'),
(1289, 19, '2012-03-02 19:00:48'),
(1290, 19, '2012-03-02 19:01:04'),
(1291, 19, '2012-03-02 19:01:20'),
(1292, 19, '2012-03-02 19:01:28'),
(1293, 19, '2012-03-02 19:04:59'),
(1294, 19, '2012-03-02 19:05:14'),
(1295, 19, '2012-03-02 19:05:18'),
(1296, 19, '2012-03-02 19:05:48'),
(1297, 19, '2012-03-02 19:05:52'),
(1298, 19, '2012-03-02 19:06:01'),
(1299, 19, '2012-03-02 19:06:10'),
(1300, 19, '2012-03-02 19:06:39'),
(1301, 19, '2012-03-02 19:07:11'),
(1302, 19, '2012-03-02 19:08:32'),
(1303, 19, '2012-03-02 19:08:37'),
(1304, 19, '2012-03-02 19:09:00'),
(1305, 19, '2012-03-02 19:09:17'),
(1306, 19, '2012-03-02 19:09:42'),
(1307, 30, '2012-03-03 10:39:14'),
(1308, 30, '2012-03-03 10:40:50'),
(1309, 31, '2012-03-03 10:43:23'),
(1310, 32, '2012-03-03 10:44:23'),
(1311, 30, '2012-03-03 10:44:32'),
(1312, 33, '2012-03-03 10:44:47'),
(1313, 31, '2012-03-03 10:45:00'),
(1314, 33, '2012-03-03 10:57:11'),
(1315, 33, '2012-03-03 10:57:33'),
(1316, 33, '2012-03-03 10:57:50'),
(1317, 33, '2012-03-03 10:59:11'),
(1318, 33, '2012-03-03 10:59:23'),
(1319, 33, '2012-03-03 10:59:37'),
(1320, 33, '2012-03-03 11:01:19'),
(1321, 33, '2012-03-03 11:02:23'),
(1322, 33, '2012-03-03 11:04:27'),
(1323, 33, '2012-03-03 11:05:25'),
(1324, 33, '2012-03-03 11:05:40'),
(1325, 33, '2012-03-03 11:05:45'),
(1326, 33, '2012-03-03 11:06:05'),
(1327, 33, '2012-03-03 11:06:24'),
(1328, 33, '2012-03-03 11:06:39'),
(1329, 33, '2012-03-03 11:06:49'),
(1330, 33, '2012-03-03 11:07:02'),
(1331, 33, '2012-03-03 11:07:09'),
(1332, 33, '2012-03-03 11:07:59'),
(1333, 33, '2012-03-03 11:08:04'),
(1334, 33, '2012-03-03 11:08:21'),
(1335, 33, '2012-03-03 11:08:52'),
(1336, 33, '2012-03-03 11:08:58'),
(1337, 33, '2012-03-03 11:09:13'),
(1338, 33, '2012-03-03 11:09:33'),
(1339, 33, '2012-03-03 11:09:49'),
(1340, 33, '2012-03-03 11:10:45'),
(1341, 33, '2012-03-03 11:10:48'),
(1342, 33, '2012-03-03 11:11:06'),
(1343, 33, '2012-03-03 11:11:09'),
(1344, 33, '2012-03-03 11:11:30'),
(1345, 33, '2012-03-03 11:11:52'),
(1346, 33, '2012-03-03 11:28:07'),
(1347, 33, '2012-03-03 11:28:09'),
(1348, 33, '2012-03-03 11:30:12'),
(1349, 33, '2012-03-03 11:30:14'),
(1350, 33, '2012-03-03 11:30:38'),
(1351, 33, '2012-03-03 11:30:41'),
(1352, 33, '2012-03-03 11:33:59'),
(1353, 33, '2012-03-03 11:34:29'),
(1354, 33, '2012-03-03 11:35:02'),
(1355, 33, '2012-03-03 11:35:16'),
(1356, 33, '2012-03-03 11:35:50'),
(1357, 32, '2012-03-03 11:35:52'),
(1358, 31, '2012-03-03 11:35:58'),
(1359, 30, '2012-03-03 11:36:04'),
(1360, 33, '2012-03-03 11:37:17'),
(1361, 33, '2012-03-03 11:37:18'),
(1362, 33, '2012-03-03 11:37:47'),
(1363, 33, '2012-03-03 11:38:03'),
(1364, 33, '2012-03-03 11:41:36'),
(1365, 33, '2012-03-03 11:41:47'),
(1366, 33, '2012-03-03 11:42:18'),
(1367, 33, '2012-03-03 11:42:21'),
(1368, 33, '2012-03-03 11:42:35'),
(1369, 33, '2012-03-03 11:45:18'),
(1370, 33, '2012-03-03 11:48:38'),
(1371, 32, '2012-03-03 11:49:02'),
(1372, 31, '2012-03-03 11:49:12'),
(1373, 33, '2012-03-03 11:52:24'),
(1374, 33, '2012-03-03 11:53:06'),
(1375, 33, '2012-03-03 11:53:26'),
(1376, 33, '2012-03-03 11:53:34'),
(1377, 33, '2012-03-03 11:54:28'),
(1378, 33, '2012-03-03 11:55:35'),
(1379, 33, '2012-03-03 11:57:23'),
(1380, 33, '2012-03-03 11:57:26'),
(1381, 33, '2012-03-03 11:58:34'),
(1382, 33, '2012-03-03 11:58:35'),
(1383, 33, '2012-03-03 11:58:49'),
(1384, 33, '2012-03-03 11:59:12'),
(1385, 33, '2012-03-03 11:59:15'),
(1386, 33, '2012-03-03 12:00:05'),
(1387, 33, '2012-03-03 12:01:48'),
(1388, 33, '2012-03-03 12:02:03'),
(1389, 33, '2012-03-03 12:03:05'),
(1390, 33, '2012-03-03 12:03:11'),
(1391, 31, '2012-03-03 12:03:17'),
(1392, 30, '2012-03-03 12:03:23'),
(1393, 32, '2012-03-03 12:03:29'),
(1394, 33, '2012-03-03 12:07:54'),
(1395, 33, '2012-03-03 12:07:57'),
(1396, 34, '2012-03-03 12:09:23'),
(1397, 35, '2012-03-03 12:09:27'),
(1398, 33, '2012-03-03 12:10:08'),
(1399, 33, '2012-03-03 12:14:10'),
(1400, 33, '2012-03-03 12:15:17'),
(1401, 33, '2012-03-03 12:16:58'),
(1402, 33, '2012-03-03 12:17:11'),
(1403, 33, '2012-03-03 12:18:02'),
(1404, 33, '2012-03-03 12:18:30'),
(1405, 33, '2012-03-03 12:18:38'),
(1406, 33, '2012-03-03 12:19:12'),
(1407, 33, '2012-03-03 12:19:47'),
(1408, 33, '2012-03-03 12:20:12'),
(1409, 33, '2012-03-03 12:20:43'),
(1410, 33, '2012-03-03 12:22:50'),
(1411, 33, '2012-03-03 12:23:04'),
(1412, 33, '2012-03-03 12:23:08'),
(1413, 33, '2012-03-03 12:23:08'),
(1414, 33, '2012-03-03 12:23:10'),
(1415, 33, '2012-03-03 12:27:37'),
(1416, 33, '2012-03-03 12:43:43'),
(1417, 33, '2012-03-03 12:46:27'),
(1418, 33, '2012-03-03 12:58:29'),
(1419, 32, '2012-03-03 12:58:36'),
(1420, 30, '2012-03-03 12:58:42'),
(1421, 35, '2012-03-03 12:58:54'),
(1422, 33, '2012-03-03 13:07:48'),
(1423, 33, '2012-03-03 13:09:11'),
(1424, 33, '2012-03-03 13:10:04'),
(1425, 33, '2012-03-03 13:11:22'),
(1426, 33, '2012-03-03 13:12:56'),
(1427, 33, '2012-03-03 13:14:36'),
(1428, 33, '2012-03-03 13:14:50'),
(1429, 33, '2012-03-03 13:15:11'),
(1430, 33, '2012-03-03 13:15:27'),
(1431, 33, '2012-03-03 13:15:53'),
(1432, 33, '2012-03-03 13:15:57'),
(1433, 33, '2012-03-03 13:16:20'),
(1434, 33, '2012-03-03 13:16:24'),
(1435, 33, '2012-03-03 13:17:12'),
(1436, 33, '2012-03-03 13:17:15'),
(1437, 33, '2012-03-03 13:18:24'),
(1438, 33, '2012-03-03 13:18:29'),
(1439, 33, '2012-03-03 13:20:14'),
(1440, 33, '2012-03-03 13:29:33'),
(1441, 33, '2012-03-03 13:30:17'),
(1442, 33, '2012-03-03 13:30:28'),
(1443, 33, '2012-03-03 13:32:36'),
(1444, 33, '2012-03-03 13:34:44'),
(1445, 33, '2012-03-03 13:35:34'),
(1446, 33, '2012-03-03 13:35:37'),
(1447, 33, '2012-03-03 13:37:42'),
(1448, 33, '2012-03-03 13:40:20'),
(1449, 33, '2012-03-03 13:40:23'),
(1450, 33, '2012-03-03 13:41:34'),
(1451, 33, '2012-03-03 13:43:05'),
(1452, 33, '2012-03-03 13:43:09'),
(1453, 33, '2012-03-03 13:44:25'),
(1454, 33, '2012-03-03 13:44:28'),
(1455, 33, '2012-03-03 13:46:10'),
(1456, 33, '2012-03-03 13:46:13'),
(1457, 33, '2012-03-03 13:46:31'),
(1458, 33, '2012-03-03 14:04:36'),
(1459, 33, '2012-03-03 14:08:49'),
(1460, 33, '2012-03-03 14:08:55'),
(1461, 33, '2012-03-03 14:09:08'),
(1462, 33, '2012-03-03 14:10:37'),
(1463, 33, '2012-03-03 14:11:34'),
(1464, 33, '2012-03-03 14:11:44'),
(1465, 33, '2012-03-03 14:11:44'),
(1466, 33, '2012-03-03 14:13:44'),
(1467, 33, '2012-03-03 14:15:13'),
(1468, 33, '2012-03-03 14:15:50'),
(1469, 33, '2012-03-03 14:16:03'),
(1470, 33, '2012-03-03 14:16:44'),
(1471, 33, '2012-03-03 14:17:14'),
(1472, 33, '2012-03-03 14:17:18'),
(1473, 33, '2012-03-03 14:23:18'),
(1474, 36, '2012-03-03 14:23:23'),
(1475, 37, '2012-03-03 14:23:28'),
(1476, 33, '2012-03-03 14:26:28'),
(1477, 33, '2012-03-03 14:27:02'),
(1478, 33, '2012-03-03 14:27:06'),
(1479, 37, '2012-03-03 14:27:16'),
(1480, 33, '2012-03-03 14:27:56'),
(1481, 33, '2012-03-03 14:28:06'),
(1482, 33, '2012-03-03 14:28:10'),
(1483, 33, '2012-03-03 14:28:30'),
(1484, 33, '2012-03-03 14:28:51'),
(1485, 33, '2012-03-03 14:28:57'),
(1486, 33, '2012-03-03 14:29:02'),
(1487, 33, '2012-03-03 14:29:54'),
(1488, 33, '2012-03-03 14:30:04'),
(1489, 33, '2012-03-03 14:30:12'),
(1490, 33, '2012-03-03 14:30:20'),
(1491, 33, '2012-03-03 14:31:28'),
(1492, 33, '2012-03-03 14:31:46'),
(1493, 33, '2012-03-03 14:32:10'),
(1494, 33, '2012-03-03 14:33:48'),
(1495, 33, '2012-03-03 14:42:24'),
(1496, 33, '2012-03-03 14:44:47'),
(1497, 33, '2012-03-03 14:46:05'),
(1498, 33, '2012-03-03 14:47:22'),
(1499, 33, '2012-03-03 14:48:41'),
(1500, 33, '2012-03-03 14:50:08'),
(1501, 33, '2012-03-03 14:51:06'),
(1502, 33, '2012-03-03 14:51:46'),
(1503, 33, '2012-03-03 14:52:11'),
(1504, 33, '2012-03-03 14:52:30'),
(1505, 33, '2012-03-03 14:53:13'),
(1506, 33, '2012-03-03 14:53:42'),
(1507, 36, '2012-03-03 14:53:50'),
(1508, 36, '2012-03-03 14:53:57'),
(1509, 37, '2012-03-03 14:54:05'),
(1510, 33, '2012-03-03 14:54:09'),
(1511, 33, '2012-03-03 14:54:47'),
(1512, 33, '2012-03-03 14:55:05'),
(1513, 33, '2012-03-03 14:55:24'),
(1514, 33, '2012-03-03 14:55:28'),
(1515, 33, '2012-03-03 14:55:38'),
(1516, 33, '2012-03-03 14:56:25'),
(1517, 33, '2012-03-03 14:57:12'),
(1518, 33, '2012-03-03 14:58:01'),
(1519, 33, '2012-03-03 14:59:05'),
(1520, 33, '2012-03-03 14:59:14'),
(1521, 33, '2012-03-03 14:59:20'),
(1522, 33, '2012-03-03 14:59:49'),
(1523, 33, '2012-03-03 15:00:22'),
(1524, 33, '2012-03-03 15:01:35'),
(1525, 33, '2012-03-03 15:02:12'),
(1526, 33, '2012-03-03 15:03:02'),
(1527, 33, '2012-03-03 15:03:15'),
(1528, 33, '2012-03-03 15:04:26'),
(1529, 33, '2012-03-03 15:04:53'),
(1530, 33, '2012-03-03 15:05:41'),
(1531, 33, '2012-03-03 15:05:47'),
(1532, 33, '2012-03-03 15:06:15'),
(1533, 33, '2012-03-03 15:06:30'),
(1534, 33, '2012-03-03 15:06:53'),
(1535, 33, '2012-03-03 15:07:56'),
(1536, 33, '2012-03-03 15:12:31'),
(1537, 33, '2012-03-03 15:13:51'),
(1538, 33, '2012-03-03 15:15:23'),
(1539, 33, '2012-03-03 15:16:21'),
(1540, 33, '2012-03-03 15:16:35'),
(1541, 37, '2012-03-03 15:16:42'),
(1542, 36, '2012-03-03 15:16:52'),
(1543, 33, '2012-03-03 15:16:59'),
(1544, 33, '2012-03-03 15:17:29'),
(1545, 33, '2012-03-03 15:17:46'),
(1546, 33, '2012-03-03 15:18:03'),
(1547, 33, '2012-03-03 15:18:07'),
(1548, 33, '2012-03-03 15:18:09'),
(1549, 33, '2012-03-03 15:18:16'),
(1550, 33, '2012-03-03 15:18:36'),
(1551, 33, '2012-03-03 15:19:46'),
(1552, 33, '2012-03-03 15:19:49'),
(1553, 33, '2012-03-03 15:22:50'),
(1554, 33, '2012-03-03 15:23:02'),
(1555, 33, '2012-03-03 15:29:38'),
(1556, 33, '2012-03-03 15:32:27'),
(1557, 33, '2012-03-03 15:33:09'),
(1558, 33, '2012-03-03 15:33:19'),
(1559, 33, '2012-03-03 15:33:29'),
(1560, 33, '2012-03-03 15:34:22'),
(1561, 33, '2012-03-03 15:34:26'),
(1562, 33, '2012-03-03 15:34:57'),
(1563, 33, '2012-03-03 15:35:11'),
(1564, 33, '2012-03-03 15:35:57'),
(1565, 33, '2012-03-03 15:37:00'),
(1566, 33, '2012-03-03 15:37:23');
INSERT INTO `log_url` (`url_id`, `visitor_id`, `visit_time`) VALUES
(1567, 33, '2012-03-03 15:37:28'),
(1568, 33, '2012-03-03 15:38:23'),
(1569, 33, '2012-03-03 15:38:47'),
(1570, 33, '2012-03-03 15:38:57'),
(1571, 33, '2012-03-03 15:39:19'),
(1572, 33, '2012-03-03 15:39:37'),
(1573, 33, '2012-03-03 15:39:47'),
(1574, 33, '2012-03-03 15:39:53'),
(1575, 37, '2012-03-03 15:39:56'),
(1576, 36, '2012-03-03 15:40:03'),
(1577, 38, '2012-03-03 15:40:08'),
(1578, 33, '2012-03-03 15:40:12'),
(1579, 38, '2012-03-03 15:40:42'),
(1580, 33, '2012-03-03 15:45:30'),
(1581, 33, '2012-03-03 15:45:36'),
(1582, 33, '2012-03-03 15:46:13'),
(1583, 33, '2012-03-03 15:46:18'),
(1584, 33, '2012-03-03 15:52:12'),
(1585, 33, '2012-03-03 15:55:28'),
(1586, 33, '2012-03-03 15:56:22'),
(1587, 36, '2012-03-03 15:56:25'),
(1588, 33, '2012-03-03 15:56:30'),
(1589, 33, '2012-03-03 15:57:43'),
(1590, 33, '2012-03-03 15:57:53'),
(1591, 33, '2012-03-03 15:58:33'),
(1592, 33, '2012-03-03 15:58:52'),
(1593, 33, '2012-03-03 15:59:13'),
(1594, 33, '2012-03-03 15:59:48'),
(1595, 33, '2012-03-03 16:00:29'),
(1596, 33, '2012-03-03 16:00:41'),
(1597, 33, '2012-03-03 16:01:35'),
(1598, 33, '2012-03-03 16:02:11'),
(1599, 33, '2012-03-03 16:02:52'),
(1600, 33, '2012-03-03 16:03:17'),
(1601, 33, '2012-03-03 16:03:40'),
(1602, 33, '2012-03-03 16:04:10'),
(1603, 33, '2012-03-03 16:04:24'),
(1604, 33, '2012-03-03 16:05:14'),
(1605, 33, '2012-03-03 16:05:27'),
(1606, 33, '2012-03-03 16:05:41'),
(1607, 33, '2012-03-03 16:06:04'),
(1608, 33, '2012-03-03 16:06:33'),
(1609, 33, '2012-03-03 16:07:03'),
(1610, 33, '2012-03-03 16:08:03'),
(1611, 33, '2012-03-03 16:08:22'),
(1612, 33, '2012-03-03 16:09:02'),
(1613, 33, '2012-03-03 16:09:16'),
(1614, 33, '2012-03-03 16:09:47'),
(1615, 33, '2012-03-03 16:11:06'),
(1616, 33, '2012-03-03 16:11:47'),
(1617, 33, '2012-03-03 16:12:05'),
(1618, 36, '2012-03-03 16:12:09'),
(1619, 38, '2012-03-03 16:12:14'),
(1620, 37, '2012-03-03 16:12:18'),
(1621, 33, '2012-03-03 16:13:27'),
(1622, 33, '2012-03-03 16:13:44'),
(1623, 33, '2012-03-03 16:13:58'),
(1624, 33, '2012-03-03 16:16:39'),
(1625, 33, '2012-03-03 16:17:17'),
(1626, 33, '2012-03-03 16:17:51'),
(1627, 33, '2012-03-03 16:18:16'),
(1628, 33, '2012-03-03 16:18:28'),
(1629, 33, '2012-03-03 16:19:34'),
(1630, 33, '2012-03-03 16:19:39'),
(1631, 33, '2012-03-03 16:19:48'),
(1632, 33, '2012-03-03 16:20:33'),
(1633, 33, '2012-03-03 16:20:46'),
(1634, 33, '2012-03-03 16:21:26'),
(1635, 33, '2012-03-03 16:22:21'),
(1636, 33, '2012-03-03 16:23:04'),
(1637, 33, '2012-03-03 16:23:14'),
(1638, 33, '2012-03-03 16:24:30'),
(1639, 33, '2012-03-03 16:25:13'),
(1640, 33, '2012-03-03 16:25:30'),
(1641, 33, '2012-03-03 16:26:23'),
(1642, 33, '2012-03-03 16:26:48'),
(1643, 33, '2012-03-03 16:27:18'),
(1644, 33, '2012-03-03 16:27:54'),
(1645, 33, '2012-03-03 16:28:11'),
(1646, 33, '2012-03-03 16:28:20'),
(1647, 33, '2012-03-03 16:28:48'),
(1648, 33, '2012-03-03 16:28:58'),
(1649, 33, '2012-03-03 16:29:31'),
(1650, 33, '2012-03-03 16:30:20'),
(1651, 39, '2012-03-04 14:13:58'),
(1652, 40, '2012-03-04 14:15:57'),
(1653, 40, '2012-03-04 14:20:37'),
(1654, 41, '2012-03-04 17:06:44'),
(1655, 42, '2012-03-04 17:08:44'),
(1656, 42, '2012-03-04 17:09:41'),
(1657, 41, '2012-03-04 17:09:50'),
(1658, 42, '2012-03-04 17:09:55'),
(1659, 41, '2012-03-04 17:10:02'),
(1660, 42, '2012-03-04 17:10:06'),
(1661, 41, '2012-03-04 17:10:25'),
(1662, 41, '2012-03-04 17:10:37'),
(1663, 41, '2012-03-04 17:10:57'),
(1664, 41, '2012-03-04 17:11:24'),
(1665, 41, '2012-03-04 17:11:55'),
(1666, 42, '2012-03-04 17:12:00'),
(1667, 41, '2012-03-04 17:12:10'),
(1668, 41, '2012-03-04 17:12:47'),
(1669, 42, '2012-03-04 17:12:52'),
(1670, 41, '2012-03-04 17:12:58'),
(1671, 41, '2012-03-04 17:13:13'),
(1672, 41, '2012-03-04 17:21:01'),
(1673, 41, '2012-03-04 17:26:43'),
(1674, 41, '2012-03-04 17:27:33'),
(1675, 43, '2012-03-04 17:29:39'),
(1676, 41, '2012-03-04 17:30:21'),
(1677, 41, '2012-03-04 17:30:44'),
(1678, 43, '2012-03-04 17:30:59'),
(1679, 42, '2012-03-04 17:31:02'),
(1680, 41, '2012-03-04 17:31:24'),
(1681, 41, '2012-03-04 17:31:38'),
(1682, 41, '2012-03-04 17:32:09'),
(1683, 41, '2012-03-04 17:33:41'),
(1684, 41, '2012-03-04 17:34:28'),
(1685, 42, '2012-03-04 17:34:33'),
(1686, 41, '2012-03-04 17:34:47'),
(1687, 41, '2012-03-04 17:35:17'),
(1688, 41, '2012-03-04 17:35:37'),
(1689, 41, '2012-03-04 17:48:36'),
(1690, 41, '2012-03-04 17:49:10'),
(1691, 41, '2012-03-04 17:49:50'),
(1692, 41, '2012-03-04 17:50:08'),
(1693, 41, '2012-03-04 17:50:31'),
(1694, 41, '2012-03-04 17:51:22'),
(1695, 41, '2012-03-04 17:52:28'),
(1696, 41, '2012-03-04 17:52:37'),
(1697, 41, '2012-03-04 17:53:14'),
(1698, 41, '2012-03-04 17:54:05'),
(1699, 41, '2012-03-04 17:55:00'),
(1700, 41, '2012-03-04 17:56:04'),
(1701, 41, '2012-03-04 17:57:08'),
(1702, 41, '2012-03-04 17:57:23'),
(1703, 41, '2012-03-04 17:58:23'),
(1704, 41, '2012-03-04 17:59:20'),
(1705, 41, '2012-03-04 18:00:27'),
(1706, 41, '2012-03-04 18:00:54'),
(1707, 41, '2012-03-04 18:02:27'),
(1708, 41, '2012-03-04 18:02:37'),
(1709, 41, '2012-03-04 18:02:59'),
(1710, 41, '2012-03-04 18:03:46'),
(1711, 41, '2012-03-04 18:03:54'),
(1712, 41, '2012-03-04 18:04:20'),
(1713, 42, '2012-03-04 18:04:25'),
(1714, 41, '2012-03-04 18:04:41'),
(1715, 41, '2012-03-04 18:04:56'),
(1716, 42, '2012-03-04 18:05:00'),
(1717, 41, '2012-03-04 18:05:33'),
(1718, 43, '2012-03-04 18:05:42'),
(1719, 42, '2012-03-04 18:05:46'),
(1720, 41, '2012-03-04 18:06:19'),
(1721, 41, '2012-03-04 18:07:25'),
(1722, 41, '2012-03-04 18:07:34'),
(1723, 41, '2012-03-04 18:07:39'),
(1724, 41, '2012-03-04 18:07:42'),
(1725, 41, '2012-03-04 18:07:46'),
(1726, 41, '2012-03-04 18:08:27'),
(1727, 41, '2012-03-04 18:08:39'),
(1728, 41, '2012-03-04 18:08:58'),
(1729, 41, '2012-03-04 18:10:11'),
(1730, 41, '2012-03-04 18:10:39'),
(1731, 41, '2012-03-04 18:11:36'),
(1732, 41, '2012-03-04 18:11:51'),
(1733, 41, '2012-03-04 18:12:00'),
(1734, 41, '2012-03-04 18:12:49'),
(1735, 41, '2012-03-04 18:12:57'),
(1736, 41, '2012-03-04 18:13:28'),
(1737, 41, '2012-03-04 18:13:59'),
(1738, 41, '2012-03-04 18:14:16'),
(1739, 41, '2012-03-04 18:14:38'),
(1740, 41, '2012-03-04 18:14:55'),
(1741, 41, '2012-03-04 18:16:08'),
(1742, 41, '2012-03-04 18:16:16'),
(1743, 41, '2012-03-04 18:16:26'),
(1744, 41, '2012-03-04 18:17:25'),
(1745, 41, '2012-03-04 18:17:46'),
(1746, 41, '2012-03-04 18:17:50'),
(1747, 42, '2012-03-04 18:17:59'),
(1748, 42, '2012-03-04 18:18:19'),
(1749, 41, '2012-03-04 18:18:30'),
(1750, 44, '2012-03-04 18:18:39'),
(1751, 44, '2012-03-04 18:19:27'),
(1752, 41, '2012-03-04 18:23:08'),
(1753, 41, '2012-03-04 18:24:49'),
(1754, 41, '2012-03-04 18:25:45'),
(1755, 41, '2012-03-04 18:32:15'),
(1756, 41, '2012-03-04 18:32:39'),
(1757, 41, '2012-03-04 18:33:20'),
(1758, 41, '2012-03-04 18:33:35'),
(1759, 41, '2012-03-04 18:33:40'),
(1760, 41, '2012-03-04 18:36:03'),
(1761, 41, '2012-03-04 18:36:07'),
(1762, 41, '2012-03-04 18:36:47'),
(1763, 41, '2012-03-04 18:40:49'),
(1764, 41, '2012-03-04 18:44:28'),
(1765, 41, '2012-03-04 18:44:31'),
(1766, 41, '2012-03-04 18:45:12'),
(1767, 41, '2012-03-04 18:45:15'),
(1768, 41, '2012-03-04 18:45:26'),
(1769, 41, '2012-03-04 18:45:29'),
(1770, 41, '2012-03-04 18:45:48'),
(1771, 41, '2012-03-04 18:45:51'),
(1772, 41, '2012-03-04 18:46:16'),
(1773, 41, '2012-03-04 18:46:19'),
(1774, 41, '2012-03-04 18:46:31'),
(1775, 41, '2012-03-04 18:46:35'),
(1776, 41, '2012-03-04 18:46:43'),
(1777, 41, '2012-03-04 18:46:46'),
(1778, 41, '2012-03-04 18:47:31'),
(1779, 41, '2012-03-04 18:47:50'),
(1780, 41, '2012-03-04 18:49:59'),
(1781, 41, '2012-03-04 18:50:29'),
(1782, 41, '2012-03-04 18:50:51'),
(1783, 43, '2012-03-04 18:51:03'),
(1784, 44, '2012-03-04 18:51:07'),
(1785, 42, '2012-03-04 18:51:13'),
(1786, 41, '2012-03-04 19:00:05'),
(1787, 41, '2012-03-04 19:07:34'),
(1788, 41, '2012-03-04 19:08:41'),
(1789, 41, '2012-03-04 19:11:04'),
(1790, 41, '2012-03-04 19:11:19'),
(1791, 41, '2012-03-04 19:14:45'),
(1792, 41, '2012-03-04 19:14:55'),
(1793, 41, '2012-03-04 19:15:03'),
(1794, 41, '2012-03-04 19:17:21'),
(1795, 41, '2012-03-04 19:18:03'),
(1796, 41, '2012-03-04 19:18:50'),
(1797, 41, '2012-03-04 19:25:19'),
(1798, 41, '2012-03-04 19:25:41'),
(1799, 41, '2012-03-04 19:26:21'),
(1800, 41, '2012-03-04 19:26:41'),
(1801, 41, '2012-03-04 19:27:10'),
(1802, 42, '2012-03-04 19:27:15'),
(1803, 41, '2012-03-04 19:27:23'),
(1804, 41, '2012-03-04 19:27:56'),
(1805, 41, '2012-03-04 19:28:04'),
(1806, 41, '2012-03-04 19:33:01'),
(1807, 41, '2012-03-04 19:59:41'),
(1808, 41, '2012-03-04 20:01:17'),
(1809, 41, '2012-03-04 20:32:52'),
(1810, 41, '2012-03-04 20:34:44'),
(1811, 41, '2012-03-04 20:36:16'),
(1812, 41, '2012-03-04 20:36:53'),
(1813, 41, '2012-03-04 20:37:10'),
(1814, 41, '2012-03-04 20:37:34'),
(1815, 41, '2012-03-04 20:38:08'),
(1816, 41, '2012-03-04 20:38:20'),
(1817, 41, '2012-03-04 20:38:37'),
(1818, 41, '2012-03-04 20:38:53'),
(1819, 41, '2012-03-04 20:39:32'),
(1820, 41, '2012-03-04 20:40:10'),
(1821, 41, '2012-03-04 20:40:35'),
(1822, 41, '2012-03-04 20:42:29'),
(1823, 41, '2012-03-04 20:43:00'),
(1824, 41, '2012-03-04 20:43:10'),
(1825, 41, '2012-03-04 20:43:50'),
(1826, 41, '2012-03-04 20:44:11'),
(1827, 41, '2012-03-04 20:44:21'),
(1828, 41, '2012-03-04 20:45:08'),
(1829, 41, '2012-03-04 20:46:54'),
(1830, 41, '2012-03-04 20:49:36'),
(1831, 45, '2012-03-04 20:49:42'),
(1832, 41, '2012-03-04 20:49:55'),
(1833, 41, '2012-03-04 20:50:09'),
(1834, 41, '2012-03-04 20:50:17'),
(1835, 46, '2012-03-04 20:50:26'),
(1836, 41, '2012-03-04 20:50:39'),
(1837, 46, '2012-03-04 20:50:41'),
(1838, 41, '2012-03-04 20:50:56'),
(1839, 41, '2012-03-04 20:51:03'),
(1840, 41, '2012-03-04 20:51:19'),
(1841, 41, '2012-03-04 20:51:26'),
(1842, 41, '2012-03-04 20:51:50'),
(1843, 41, '2012-03-04 20:52:34'),
(1844, 41, '2012-03-04 20:53:09'),
(1845, 46, '2012-03-04 20:53:11'),
(1846, 45, '2012-03-04 20:53:15'),
(1847, 41, '2012-03-04 20:53:59'),
(1848, 41, '2012-03-04 20:54:06'),
(1849, 41, '2012-03-04 20:54:12'),
(1850, 41, '2012-03-04 20:54:18'),
(1851, 41, '2012-03-04 20:54:20'),
(1852, 41, '2012-03-04 20:54:27'),
(1853, 41, '2012-03-04 20:54:32'),
(1854, 41, '2012-03-04 20:54:36'),
(1855, 41, '2012-03-04 20:54:39'),
(1856, 41, '2012-03-04 20:54:40'),
(1857, 41, '2012-03-04 20:54:44'),
(1858, 41, '2012-03-04 20:54:48'),
(1859, 41, '2012-03-04 20:54:52'),
(1860, 41, '2012-03-04 20:55:09'),
(1861, 41, '2012-03-04 20:56:33'),
(1862, 41, '2012-03-04 20:56:43'),
(1863, 41, '2012-03-04 20:56:46'),
(1864, 41, '2012-03-04 21:04:44'),
(1865, 41, '2012-03-04 21:05:25'),
(1866, 41, '2012-03-04 21:05:31'),
(1867, 41, '2012-03-04 21:05:44'),
(1868, 41, '2012-03-04 21:05:47'),
(1869, 41, '2012-03-04 21:06:02'),
(1870, 41, '2012-03-04 21:45:32'),
(1871, 41, '2012-03-04 21:45:35'),
(1872, 41, '2012-03-04 21:47:12'),
(1873, 41, '2012-03-04 21:48:21'),
(1874, 41, '2012-03-04 21:49:01'),
(1875, 41, '2012-03-04 21:49:19'),
(1876, 41, '2012-03-04 21:49:22'),
(1877, 41, '2012-03-04 21:49:26'),
(1878, 41, '2012-03-04 21:49:35'),
(1879, 41, '2012-03-04 21:50:21'),
(1880, 41, '2012-03-04 21:50:42'),
(1881, 41, '2012-03-04 21:50:49'),
(1882, 41, '2012-03-04 21:50:51'),
(1883, 41, '2012-03-04 21:50:58'),
(1884, 41, '2012-03-04 21:51:02'),
(1885, 41, '2012-03-04 21:51:11'),
(1886, 41, '2012-03-04 21:51:21'),
(1887, 41, '2012-03-04 21:51:34'),
(1888, 41, '2012-03-04 21:51:49'),
(1889, 41, '2012-03-04 21:51:53'),
(1890, 41, '2012-03-04 21:51:54'),
(1891, 41, '2012-03-04 21:52:30'),
(1892, 41, '2012-03-04 21:52:32'),
(1893, 41, '2012-03-04 21:52:39'),
(1894, 41, '2012-03-04 21:53:04'),
(1895, 41, '2012-03-04 21:54:38'),
(1896, 41, '2012-03-04 21:54:42'),
(1897, 47, '2012-03-04 21:54:44'),
(1898, 47, '2012-03-04 21:54:51'),
(1899, 47, '2012-03-04 21:57:02'),
(1900, 47, '2012-03-04 21:57:39'),
(1901, 47, '2012-03-04 21:57:47'),
(1902, 47, '2012-03-04 21:58:02'),
(1903, 47, '2012-03-04 21:58:12'),
(1904, 47, '2012-03-04 21:59:08'),
(1905, 47, '2012-03-04 21:59:17'),
(1906, 48, '2012-03-04 21:59:57'),
(1907, 47, '2012-03-04 22:00:13'),
(1908, 47, '2012-03-04 22:01:13'),
(1909, 48, '2012-03-04 22:01:31'),
(1910, 47, '2012-03-04 22:01:54'),
(1911, 47, '2012-03-04 22:02:47'),
(1912, 47, '2012-03-04 22:03:14'),
(1913, 47, '2012-03-04 22:03:15'),
(1914, 47, '2012-03-04 22:04:23'),
(1915, 47, '2012-03-04 22:04:51'),
(1916, 48, '2012-03-04 22:05:01'),
(1917, 47, '2012-03-04 22:05:35'),
(1918, 47, '2012-03-04 22:06:00'),
(1919, 47, '2012-03-04 22:07:12'),
(1920, 47, '2012-03-04 22:07:20'),
(1921, 47, '2012-03-04 22:08:33'),
(1922, 47, '2012-03-04 22:08:54'),
(1923, 47, '2012-03-04 22:09:01'),
(1924, 47, '2012-03-04 22:09:11'),
(1925, 47, '2012-03-04 22:09:18'),
(1926, 47, '2012-03-04 22:09:33'),
(1927, 47, '2012-03-04 22:10:54'),
(1928, 47, '2012-03-04 22:11:07'),
(1929, 47, '2012-03-04 22:11:13'),
(1930, 47, '2012-03-04 22:11:25'),
(1931, 47, '2012-03-04 22:12:09'),
(1932, 47, '2012-03-04 22:12:49'),
(1933, 47, '2012-03-04 22:13:07'),
(1934, 48, '2012-03-04 22:13:24'),
(1935, 49, '2012-03-04 22:13:31'),
(1936, 50, '2012-03-04 22:13:42'),
(1937, 47, '2012-03-04 22:14:03'),
(1938, 47, '2012-03-04 22:14:54'),
(1939, 47, '2012-03-04 22:15:08'),
(1940, 47, '2012-03-04 22:31:19'),
(1941, 47, '2012-03-04 22:32:50'),
(1942, 47, '2012-03-04 22:33:22'),
(1943, 47, '2012-03-04 22:33:33'),
(1944, 47, '2012-03-04 22:33:37'),
(1945, 47, '2012-03-04 22:35:43'),
(1946, 47, '2012-03-04 22:35:52'),
(1947, 47, '2012-03-04 22:36:56'),
(1948, 47, '2012-03-04 22:38:05'),
(1949, 47, '2012-03-04 22:38:39'),
(1950, 47, '2012-03-04 22:39:20'),
(1951, 47, '2012-03-04 22:39:33'),
(1952, 47, '2012-03-04 22:39:43'),
(1953, 47, '2012-03-04 22:40:01'),
(1954, 47, '2012-03-04 22:40:16'),
(1955, 47, '2012-03-04 22:40:29'),
(1956, 47, '2012-03-04 22:41:08'),
(1957, 47, '2012-03-04 22:41:47'),
(1958, 47, '2012-03-04 22:42:07'),
(1959, 47, '2012-03-04 22:54:10'),
(1960, 47, '2012-03-04 22:54:39'),
(1961, 47, '2012-03-04 22:54:46'),
(1962, 47, '2012-03-04 22:56:16'),
(1963, 47, '2012-03-04 22:56:18'),
(1964, 47, '2012-03-04 22:56:32'),
(1965, 47, '2012-03-04 22:57:08'),
(1966, 47, '2012-03-04 22:57:09'),
(1967, 47, '2012-03-04 22:57:24'),
(1968, 47, '2012-03-04 23:00:30'),
(1969, 47, '2012-03-04 23:02:04'),
(1970, 47, '2012-03-04 23:03:03'),
(1971, 47, '2012-03-04 23:03:08'),
(1972, 47, '2012-03-04 23:03:48'),
(1973, 47, '2012-03-04 23:04:26'),
(1974, 47, '2012-03-04 23:05:33'),
(1975, 47, '2012-03-04 23:05:48'),
(1976, 47, '2012-03-04 23:06:11'),
(1977, 47, '2012-03-04 23:06:17'),
(1978, 49, '2012-03-04 23:06:23'),
(1979, 47, '2012-03-04 23:06:55'),
(1980, 47, '2012-03-04 23:07:33'),
(1981, 47, '2012-03-04 23:08:35'),
(1982, 47, '2012-03-04 23:08:39'),
(1983, 47, '2012-03-04 23:08:48'),
(1984, 47, '2012-03-04 23:09:04'),
(1985, 47, '2012-03-04 23:09:59'),
(1986, 47, '2012-03-04 23:10:31'),
(1987, 47, '2012-03-04 23:10:52'),
(1988, 47, '2012-03-04 23:12:09'),
(1989, 47, '2012-03-04 23:12:19'),
(1990, 47, '2012-03-04 23:13:58'),
(1991, 47, '2012-03-04 23:14:01'),
(1992, 47, '2012-03-04 23:14:08'),
(1993, 47, '2012-03-04 23:15:05'),
(1994, 47, '2012-03-04 23:15:20'),
(1995, 47, '2012-03-04 23:15:36'),
(1996, 47, '2012-03-04 23:15:57'),
(1997, 47, '2012-03-04 23:16:12'),
(1998, 47, '2012-03-04 23:16:52'),
(1999, 47, '2012-03-04 23:17:21'),
(2000, 47, '2012-03-04 23:18:44'),
(2001, 47, '2012-03-04 23:20:04'),
(2002, 47, '2012-03-04 23:20:35'),
(2003, 47, '2012-03-04 23:21:27'),
(2004, 47, '2012-03-04 23:21:43'),
(2005, 47, '2012-03-04 23:21:46'),
(2006, 47, '2012-03-04 23:21:55'),
(2007, 47, '2012-03-04 23:21:57'),
(2008, 47, '2012-03-04 23:22:42'),
(2009, 47, '2012-03-04 23:23:22'),
(2010, 47, '2012-03-04 23:24:42'),
(2011, 47, '2012-03-04 23:24:55'),
(2012, 47, '2012-03-04 23:25:38'),
(2013, 47, '2012-03-04 23:25:53'),
(2014, 47, '2012-03-04 23:26:10'),
(2015, 47, '2012-03-04 23:27:15'),
(2016, 47, '2012-03-04 23:27:53'),
(2017, 47, '2012-03-04 23:28:05'),
(2018, 47, '2012-03-04 23:30:12'),
(2019, 47, '2012-03-04 23:31:19'),
(2020, 47, '2012-03-04 23:32:26'),
(2021, 47, '2012-03-04 23:33:58'),
(2022, 47, '2012-03-04 23:34:23'),
(2023, 47, '2012-03-04 23:35:50'),
(2024, 47, '2012-03-04 23:36:17'),
(2025, 47, '2012-03-04 23:36:33'),
(2026, 47, '2012-03-04 23:36:48'),
(2027, 47, '2012-03-04 23:37:44'),
(2028, 47, '2012-03-04 23:37:59'),
(2029, 47, '2012-03-04 23:38:11'),
(2030, 47, '2012-03-04 23:38:24'),
(2031, 51, '2012-03-04 23:38:49'),
(2032, 52, '2012-03-04 23:38:58'),
(2033, 47, '2012-03-04 23:39:07'),
(2034, 47, '2012-03-04 23:40:33'),
(2035, 47, '2012-03-04 23:41:01'),
(2036, 47, '2012-03-04 23:43:26'),
(2037, 47, '2012-03-04 23:43:31'),
(2038, 47, '2012-03-04 23:43:33'),
(2039, 47, '2012-03-04 23:43:38'),
(2040, 51, '2012-03-04 23:43:43'),
(2041, 47, '2012-03-04 23:44:37'),
(2042, 47, '2012-03-04 23:44:44'),
(2043, 47, '2012-03-04 23:45:00'),
(2044, 47, '2012-03-04 23:45:17'),
(2045, 47, '2012-03-04 23:45:48'),
(2046, 47, '2012-03-04 23:46:51'),
(2047, 47, '2012-03-04 23:46:58'),
(2048, 47, '2012-03-04 23:48:08'),
(2049, 47, '2012-03-04 23:48:15'),
(2050, 47, '2012-03-04 23:49:10'),
(2051, 47, '2012-03-04 23:49:35'),
(2052, 47, '2012-03-04 23:49:45'),
(2053, 47, '2012-03-04 23:50:32'),
(2054, 47, '2012-03-04 23:50:44'),
(2055, 47, '2012-03-04 23:52:32'),
(2056, 47, '2012-03-04 23:53:16'),
(2057, 47, '2012-03-04 23:54:34'),
(2058, 47, '2012-03-04 23:56:59'),
(2059, 47, '2012-03-04 23:57:18'),
(2060, 47, '2012-03-04 23:58:15'),
(2061, 47, '2012-03-04 23:58:57'),
(2062, 47, '2012-03-04 23:59:10'),
(2063, 47, '2012-03-05 00:00:06'),
(2064, 47, '2012-03-05 00:00:40'),
(2065, 47, '2012-03-05 00:01:35'),
(2066, 47, '2012-03-05 00:01:55'),
(2067, 47, '2012-03-05 00:01:56'),
(2068, 47, '2012-03-05 00:02:00'),
(2069, 47, '2012-03-05 00:02:16'),
(2070, 47, '2012-03-05 00:02:24'),
(2071, 51, '2012-03-05 00:02:44'),
(2072, 47, '2012-03-05 00:02:57'),
(2073, 47, '2012-03-05 00:03:47'),
(2074, 47, '2012-03-05 00:03:53'),
(2075, 47, '2012-03-05 00:04:05'),
(2076, 47, '2012-03-05 00:04:30'),
(2077, 47, '2012-03-05 00:05:15'),
(2078, 47, '2012-03-05 00:05:27'),
(2079, 47, '2012-03-05 00:05:43'),
(2080, 47, '2012-03-05 00:06:24'),
(2081, 47, '2012-03-05 00:06:43'),
(2082, 47, '2012-03-05 00:07:12'),
(2083, 51, '2012-03-05 00:07:24'),
(2084, 52, '2012-03-05 00:07:28'),
(2085, 53, '2012-03-05 00:07:34'),
(2086, 47, '2012-03-05 00:07:57'),
(2087, 47, '2012-03-05 00:08:23'),
(2088, 47, '2012-03-05 00:08:38'),
(2089, 47, '2012-03-05 00:08:58'),
(2090, 47, '2012-03-05 00:09:07'),
(2091, 47, '2012-03-05 00:09:25'),
(2092, 47, '2012-03-05 00:09:32'),
(2093, 47, '2012-03-05 00:09:44'),
(2094, 51, '2012-03-05 00:09:58'),
(2095, 52, '2012-03-05 00:10:03'),
(2096, 53, '2012-03-05 00:10:08'),
(2097, 53, '2012-03-05 00:10:13'),
(2098, 53, '2012-03-05 00:10:17'),
(2099, 53, '2012-03-05 00:10:21'),
(2100, 47, '2012-03-05 00:10:27'),
(2101, 47, '2012-03-05 00:10:32'),
(2102, 47, '2012-03-05 00:10:38'),
(2103, 51, '2012-03-05 00:10:40'),
(2104, 51, '2012-03-05 00:10:46'),
(2105, 52, '2012-03-05 00:10:52'),
(2106, 52, '2012-03-05 00:11:00'),
(2107, 53, '2012-03-05 00:11:06'),
(2108, 53, '2012-03-05 00:11:10'),
(2109, 53, '2012-03-05 00:11:15'),
(2110, 53, '2012-03-05 00:11:19'),
(2111, 47, '2012-03-05 00:11:29'),
(2112, 47, '2012-03-05 00:11:50'),
(2113, 47, '2012-03-05 00:11:59'),
(2114, 47, '2012-03-05 00:12:24'),
(2115, 47, '2012-03-05 00:12:32'),
(2116, 47, '2012-03-05 00:12:49'),
(2117, 53, '2012-03-05 00:14:13'),
(2118, 53, '2012-03-05 00:14:18'),
(2119, 53, '2012-03-05 00:14:22'),
(2120, 53, '2012-03-05 00:14:27'),
(2121, 53, '2012-03-05 00:14:31'),
(2122, 53, '2012-03-05 00:14:37'),
(2123, 53, '2012-03-05 00:14:43'),
(2124, 53, '2012-03-05 00:14:46'),
(2125, 53, '2012-03-05 00:14:50'),
(2126, 53, '2012-03-05 00:14:54'),
(2127, 53, '2012-03-05 00:14:57'),
(2128, 53, '2012-03-05 00:15:01'),
(2129, 53, '2012-03-05 00:15:16'),
(2130, 53, '2012-03-05 00:15:19'),
(2131, 53, '2012-03-05 00:15:23'),
(2132, 53, '2012-03-05 00:15:26'),
(2133, 53, '2012-03-05 00:15:34'),
(2134, 53, '2012-03-05 00:15:38'),
(2135, 53, '2012-03-05 00:15:40'),
(2136, 53, '2012-03-05 00:15:44'),
(2137, 47, '2012-03-05 00:15:53'),
(2138, 47, '2012-03-05 00:16:03'),
(2139, 47, '2012-03-05 00:16:06'),
(2140, 47, '2012-03-05 00:16:10'),
(2141, 47, '2012-03-05 00:16:13'),
(2142, 47, '2012-03-05 00:16:17'),
(2143, 47, '2012-03-05 00:17:33'),
(2144, 47, '2012-03-05 00:18:25'),
(2145, 47, '2012-03-05 00:19:18'),
(2146, 47, '2012-03-05 00:19:25'),
(2147, 47, '2012-03-05 00:20:07'),
(2148, 47, '2012-03-05 00:20:14'),
(2149, 47, '2012-03-05 00:20:28'),
(2150, 47, '2012-03-05 00:20:33'),
(2151, 47, '2012-03-05 00:21:19'),
(2152, 47, '2012-03-05 00:21:31'),
(2153, 47, '2012-03-05 00:21:50'),
(2154, 47, '2012-03-05 00:22:19'),
(2155, 47, '2012-03-05 00:22:50'),
(2156, 47, '2012-03-05 00:25:38'),
(2157, 47, '2012-03-05 00:25:52'),
(2158, 47, '2012-03-05 00:26:04'),
(2159, 47, '2012-03-05 00:26:23'),
(2160, 47, '2012-03-05 00:26:34'),
(2161, 47, '2012-03-05 00:27:20'),
(2162, 47, '2012-03-05 00:27:36'),
(2163, 47, '2012-03-05 00:27:52'),
(2164, 54, '2012-03-05 08:48:11'),
(2165, 54, '2012-03-05 08:48:13'),
(2166, 54, '2012-03-05 08:48:25'),
(2167, 54, '2012-03-05 08:48:29'),
(2168, 54, '2012-03-05 08:48:36'),
(2169, 54, '2012-03-05 08:48:42'),
(2170, 54, '2012-03-05 08:48:47'),
(2171, 54, '2012-03-05 08:48:53'),
(2172, 54, '2012-03-05 08:49:49'),
(2173, 54, '2012-03-05 08:49:52'),
(2174, 55, '2012-03-05 09:02:53'),
(2175, 55, '2012-03-05 09:02:57'),
(2176, 55, '2012-03-05 09:02:59'),
(2177, 55, '2012-03-05 09:03:00'),
(2178, 55, '2012-03-05 09:03:08'),
(2179, 55, '2012-03-05 09:03:15'),
(2180, 55, '2012-03-05 09:03:19'),
(2181, 55, '2012-03-05 09:23:16'),
(2182, 55, '2012-03-05 09:30:53'),
(2183, 55, '2012-03-05 09:38:55'),
(2184, 55, '2012-03-05 09:38:59'),
(2185, 55, '2012-03-05 09:39:01'),
(2186, 55, '2012-03-05 09:39:06'),
(2187, 56, '2012-03-05 09:39:19'),
(2188, 55, '2012-03-05 09:40:05'),
(2189, 55, '2012-03-05 10:09:21'),
(2190, 55, '2012-03-05 10:09:24'),
(2191, 57, '2012-03-05 10:09:52'),
(2192, 57, '2012-03-05 10:09:56'),
(2193, 57, '2012-03-05 10:09:57'),
(2194, 57, '2012-03-05 10:09:59'),
(2195, 58, '2012-03-05 10:10:08'),
(2196, 58, '2012-03-05 10:10:11'),
(2197, 58, '2012-03-05 10:10:13'),
(2198, 55, '2012-03-05 10:11:07'),
(2199, 55, '2012-03-05 10:11:10'),
(2200, 55, '2012-03-05 10:11:49'),
(2201, 55, '2012-03-05 10:11:52'),
(2202, 55, '2012-03-05 10:14:34'),
(2203, 55, '2012-03-05 10:14:51'),
(2204, 55, '2012-03-05 10:15:00'),
(2205, 55, '2012-03-05 10:16:17'),
(2206, 55, '2012-03-05 10:16:20'),
(2207, 55, '2012-03-05 10:16:25'),
(2208, 55, '2012-03-05 10:16:28'),
(2209, 55, '2012-03-05 10:17:15'),
(2210, 55, '2012-03-05 10:17:18'),
(2211, 55, '2012-03-05 10:17:40'),
(2212, 55, '2012-03-05 10:17:43'),
(2213, 55, '2012-03-05 10:18:04'),
(2214, 55, '2012-03-05 10:18:06'),
(2215, 55, '2012-03-05 10:19:03'),
(2216, 55, '2012-03-05 10:19:06'),
(2217, 55, '2012-03-05 10:19:38'),
(2218, 55, '2012-03-05 10:19:41'),
(2219, 55, '2012-03-05 10:19:48'),
(2220, 55, '2012-03-05 10:19:55'),
(2221, 55, '2012-03-05 10:19:59'),
(2222, 55, '2012-03-05 10:20:03'),
(2223, 55, '2012-03-05 10:20:17'),
(2224, 55, '2012-03-05 10:20:34'),
(2225, 55, '2012-03-05 10:21:34'),
(2226, 55, '2012-03-05 10:21:53'),
(2227, 55, '2012-03-05 10:22:33'),
(2228, 57, '2012-03-05 10:22:35'),
(2229, 58, '2012-03-05 10:22:46'),
(2230, 55, '2012-03-05 10:23:12'),
(2231, 55, '2012-03-05 10:23:15'),
(2232, 55, '2012-03-05 10:23:22'),
(2233, 55, '2012-03-05 10:23:24'),
(2234, 55, '2012-03-05 10:23:31'),
(2235, 55, '2012-03-05 10:24:33'),
(2236, 55, '2012-03-05 10:25:04'),
(2237, 55, '2012-03-05 10:25:21'),
(2238, 55, '2012-03-05 10:25:36'),
(2239, 55, '2012-03-05 10:26:01'),
(2240, 55, '2012-03-05 10:26:54'),
(2241, 55, '2012-03-05 10:27:09'),
(2242, 55, '2012-03-05 10:28:16'),
(2243, 55, '2012-03-05 10:29:32'),
(2244, 55, '2012-03-05 10:29:45'),
(2245, 55, '2012-03-05 10:30:07'),
(2246, 55, '2012-03-05 10:31:04'),
(2247, 55, '2012-03-05 10:31:26'),
(2248, 55, '2012-03-05 10:31:50'),
(2249, 55, '2012-03-05 10:32:13'),
(2250, 55, '2012-03-05 10:32:27'),
(2251, 55, '2012-03-05 10:33:12'),
(2252, 55, '2012-03-05 10:33:18'),
(2253, 55, '2012-03-05 10:33:39'),
(2254, 55, '2012-03-05 10:33:59'),
(2255, 55, '2012-03-05 10:34:18'),
(2256, 55, '2012-03-05 10:34:50'),
(2257, 55, '2012-03-05 10:36:29'),
(2258, 55, '2012-03-05 10:36:42'),
(2259, 55, '2012-03-05 10:37:06'),
(2260, 55, '2012-03-05 10:37:20'),
(2261, 55, '2012-03-05 10:37:41'),
(2262, 55, '2012-03-05 10:38:46'),
(2263, 55, '2012-03-05 10:39:01'),
(2264, 55, '2012-03-05 10:39:15'),
(2265, 55, '2012-03-05 10:39:25'),
(2266, 55, '2012-03-05 10:40:37'),
(2267, 55, '2012-03-05 10:41:40'),
(2268, 55, '2012-03-05 10:41:51'),
(2269, 55, '2012-03-05 10:42:06'),
(2270, 55, '2012-03-05 10:42:15'),
(2271, 55, '2012-03-05 10:43:20'),
(2272, 55, '2012-03-05 10:44:57'),
(2273, 55, '2012-03-05 10:45:14'),
(2274, 55, '2012-03-05 10:45:42'),
(2275, 55, '2012-03-05 10:45:51'),
(2276, 55, '2012-03-05 10:48:14'),
(2277, 55, '2012-03-05 10:48:57'),
(2278, 55, '2012-03-05 10:49:11'),
(2279, 55, '2012-03-05 10:50:05'),
(2280, 55, '2012-03-05 10:50:30'),
(2281, 55, '2012-03-05 10:50:42'),
(2282, 55, '2012-03-05 10:51:14'),
(2283, 55, '2012-03-05 10:52:17'),
(2284, 57, '2012-03-05 10:52:24'),
(2285, 58, '2012-03-05 10:52:34'),
(2286, 55, '2012-03-05 10:53:05'),
(2287, 55, '2012-03-05 10:54:27'),
(2288, 55, '2012-03-05 10:55:11'),
(2289, 55, '2012-03-05 10:56:03'),
(2290, 55, '2012-03-05 10:56:21'),
(2291, 55, '2012-03-05 10:57:06'),
(2292, 55, '2012-03-05 10:57:25'),
(2293, 55, '2012-03-05 10:58:12'),
(2294, 55, '2012-03-05 10:58:40'),
(2295, 55, '2012-03-05 10:58:57'),
(2296, 55, '2012-03-05 10:59:01'),
(2297, 55, '2012-03-05 10:59:52'),
(2298, 55, '2012-03-05 10:59:57'),
(2299, 55, '2012-03-05 11:01:55'),
(2300, 55, '2012-03-05 11:03:12'),
(2301, 55, '2012-03-05 11:03:31'),
(2302, 55, '2012-03-05 11:03:45'),
(2303, 55, '2012-03-05 11:04:25'),
(2304, 55, '2012-03-05 11:04:57'),
(2305, 55, '2012-03-05 11:05:53'),
(2306, 55, '2012-03-05 11:07:32'),
(2307, 55, '2012-03-05 11:08:18'),
(2308, 55, '2012-03-05 11:08:33'),
(2309, 55, '2012-03-05 11:08:53'),
(2310, 55, '2012-03-05 11:09:43'),
(2311, 55, '2012-03-05 11:10:02'),
(2312, 55, '2012-03-05 11:10:36'),
(2313, 55, '2012-03-05 11:10:48'),
(2314, 55, '2012-03-05 11:11:03'),
(2315, 55, '2012-03-05 11:11:26'),
(2316, 55, '2012-03-05 11:11:52'),
(2317, 55, '2012-03-05 11:13:42'),
(2318, 55, '2012-03-05 11:13:54'),
(2319, 55, '2012-03-05 11:14:11'),
(2320, 55, '2012-03-05 11:14:23'),
(2321, 55, '2012-03-05 11:14:56'),
(2322, 55, '2012-03-05 11:15:05'),
(2323, 55, '2012-03-05 11:15:23'),
(2324, 55, '2012-03-05 11:18:06'),
(2325, 55, '2012-03-05 11:18:59'),
(2326, 55, '2012-03-05 11:19:18'),
(2327, 59, '2012-03-05 11:19:25'),
(2328, 55, '2012-03-05 11:19:59'),
(2329, 57, '2012-03-05 11:20:10'),
(2330, 55, '2012-03-05 11:21:21'),
(2331, 55, '2012-03-05 11:22:27'),
(2332, 55, '2012-03-05 11:23:03'),
(2333, 57, '2012-03-05 11:23:11'),
(2334, 55, '2012-03-05 11:25:34'),
(2335, 59, '2012-03-05 11:25:40'),
(2336, 55, '2012-03-05 11:26:34'),
(2337, 59, '2012-03-05 11:26:40'),
(2338, 55, '2012-03-05 11:27:04'),
(2339, 59, '2012-03-05 11:27:14'),
(2340, 55, '2012-03-05 11:28:46'),
(2341, 59, '2012-03-05 11:28:51'),
(2342, 55, '2012-03-05 11:29:11'),
(2343, 55, '2012-03-05 11:29:15'),
(2344, 59, '2012-03-05 11:29:21'),
(2345, 55, '2012-03-05 11:30:16'),
(2346, 55, '2012-03-05 11:50:45'),
(2347, 55, '2012-03-05 11:51:00'),
(2348, 59, '2012-03-05 11:51:07'),
(2349, 55, '2012-03-05 11:51:21'),
(2350, 59, '2012-03-05 11:51:26'),
(2351, 59, '2012-03-05 11:51:39'),
(2352, 55, '2012-03-05 11:51:46'),
(2353, 58, '2012-03-05 11:51:55'),
(2354, 59, '2012-03-05 11:52:05'),
(2355, 55, '2012-03-05 11:52:30'),
(2356, 57, '2012-03-05 11:52:45'),
(2357, 55, '2012-03-05 11:53:45'),
(2358, 55, '2012-03-05 11:54:02'),
(2359, 55, '2012-03-05 11:54:26'),
(2360, 55, '2012-03-05 12:02:07'),
(2361, 55, '2012-03-05 12:02:35'),
(2362, 55, '2012-03-05 12:02:59'),
(2363, 55, '2012-03-05 12:05:13'),
(2364, 55, '2012-03-05 12:05:37'),
(2365, 59, '2012-03-05 12:05:45'),
(2366, 58, '2012-03-05 12:05:51'),
(2367, 58, '2012-03-05 12:06:06'),
(2368, 55, '2012-03-05 12:06:09'),
(2369, 55, '2012-03-05 12:06:34'),
(2370, 55, '2012-03-05 12:06:47'),
(2371, 59, '2012-03-05 12:06:52'),
(2372, 55, '2012-03-05 12:07:13'),
(2373, 55, '2012-03-05 12:12:21'),
(2374, 55, '2012-03-05 12:19:47'),
(2375, 55, '2012-03-05 12:19:50'),
(2376, 55, '2012-03-05 12:19:56'),
(2377, 55, '2012-03-05 12:19:59'),
(2378, 55, '2012-03-05 12:20:02'),
(2379, 55, '2012-03-05 12:20:05'),
(2380, 55, '2012-03-05 12:20:08'),
(2381, 55, '2012-03-05 12:20:10'),
(2382, 55, '2012-03-05 12:20:22'),
(2383, 55, '2012-03-05 12:20:41'),
(2384, 55, '2012-03-05 12:20:50'),
(2385, 55, '2012-03-05 12:20:53'),
(2386, 55, '2012-03-05 12:21:02'),
(2387, 55, '2012-03-05 12:21:19'),
(2388, 55, '2012-03-05 12:22:21'),
(2389, 55, '2012-03-05 12:22:30'),
(2390, 55, '2012-03-05 12:22:48'),
(2391, 55, '2012-03-05 12:22:59'),
(2392, 55, '2012-03-05 12:23:09'),
(2393, 55, '2012-03-05 12:23:46'),
(2394, 55, '2012-03-05 12:23:55'),
(2395, 59, '2012-03-05 12:24:03'),
(2396, 58, '2012-03-05 12:24:12'),
(2397, 55, '2012-03-05 12:24:45'),
(2398, 55, '2012-03-05 12:24:59'),
(2399, 55, '2012-03-05 12:26:11'),
(2400, 55, '2012-03-05 12:26:40'),
(2401, 55, '2012-03-05 12:27:14'),
(2402, 55, '2012-03-05 12:27:20'),
(2403, 55, '2012-03-05 12:27:36'),
(2404, 57, '2012-03-05 12:27:42'),
(2405, 55, '2012-03-05 12:27:51'),
(2406, 55, '2012-03-05 12:27:58'),
(2407, 55, '2012-03-05 12:28:02'),
(2408, 55, '2012-03-05 12:28:19'),
(2409, 55, '2012-03-05 12:28:50'),
(2410, 57, '2012-03-05 12:28:55'),
(2411, 55, '2012-03-05 12:31:41'),
(2412, 57, '2012-03-05 12:31:48'),
(2413, 55, '2012-03-05 12:33:26'),
(2414, 55, '2012-03-05 12:34:05'),
(2415, 55, '2012-03-05 12:34:44'),
(2416, 57, '2012-03-05 12:34:49'),
(2417, 55, '2012-03-05 12:35:09'),
(2418, 55, '2012-03-05 12:36:34'),
(2419, 55, '2012-03-05 12:36:39'),
(2420, 55, '2012-03-05 12:37:12'),
(2421, 55, '2012-03-05 12:40:18'),
(2422, 55, '2012-03-05 12:40:21'),
(2423, 55, '2012-03-05 12:41:53'),
(2424, 57, '2012-03-05 12:42:07'),
(2425, 58, '2012-03-05 12:42:14'),
(2426, 59, '2012-03-05 12:42:23'),
(2427, 59, '2012-03-05 12:42:41'),
(2428, 59, '2012-03-05 12:42:42'),
(2429, 59, '2012-03-05 12:42:58'),
(2430, 55, '2012-03-05 12:44:10'),
(2431, 55, '2012-03-05 12:44:16'),
(2432, 59, '2012-03-05 12:44:32'),
(2433, 55, '2012-03-05 12:45:08'),
(2434, 59, '2012-03-05 12:45:17'),
(2435, 55, '2012-03-05 12:45:23'),
(2436, 55, '2012-03-05 12:45:37'),
(2437, 55, '2012-03-05 12:46:39'),
(2438, 59, '2012-03-05 12:46:44'),
(2439, 55, '2012-03-05 12:47:10'),
(2440, 59, '2012-03-05 12:47:25'),
(2441, 58, '2012-03-05 12:47:33'),
(2442, 57, '2012-03-05 12:47:42'),
(2443, 55, '2012-03-05 12:49:08'),
(2444, 55, '2012-03-05 13:01:43'),
(2445, 55, '2012-03-05 13:01:50'),
(2446, 55, '2012-03-05 13:02:22'),
(2447, 60, '2012-03-06 14:10:00'),
(2448, 60, '2012-03-06 14:10:02');

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `log_url_info`
--

CREATE TABLE IF NOT EXISTS `log_url_info` (
  `url_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT COMMENT 'URL ID',
  `url` varchar(255) NOT NULL DEFAULT '' COMMENT 'URL',
  `referer` varchar(255) DEFAULT NULL COMMENT 'Referrer',
  PRIMARY KEY (`url_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='Log URL Info Table' AUTO_INCREMENT=2449 ;

--
-- Gegevens worden uitgevoerd voor tabel `log_url_info`
--

INSERT INTO `log_url_info` (`url_id`, `url`, `referer`) VALUES
(1, 'http://127.0.0.1/magento/index.php/', 'http://127.0.0.1/magento/index.php/install/wizard/end/'),
(2, 'http://127.0.0.1/magento/index.php/about-magento-demo-store/?___store=default', 'http://127.0.0.1/magento/index.php/admin/cms_page/index/key/6818a2c97634dc3e3046ca4db341c995/'),
(3, 'http://127.0.0.1/magento/index.php/', NULL),
(4, 'http://127.0.0.1/magento/index.php/customer/account/login/', 'http://127.0.0.1/magento/index.php/'),
(5, 'http://127.0.0.1/magento/index.php/', NULL),
(6, 'http://127.0.0.1/magento/index.php/customer/account/login/', 'http://127.0.0.1/magento/index.php/'),
(7, 'http://127.0.0.1/magento/index.php/checkout/cart/', 'http://127.0.0.1/magento/index.php/customer/account/login/'),
(8, 'http://127.0.0.1/magento/index.php/checkout/', 'http://127.0.0.1/magento/index.php/checkout/cart/'),
(9, 'http://127.0.0.1/magento/index.php/checkout/onepage/', 'http://127.0.0.1/magento/index.php/checkout/cart/'),
(10, 'http://127.0.0.1/magento/index.php/checkout/cart/', 'http://127.0.0.1/magento/index.php/checkout/cart/'),
(11, 'http://127.0.0.1/magento/index.php/customer/account/login/', 'http://127.0.0.1/magento/index.php/'),
(12, 'http://127.0.0.1/magento/index.php/', NULL),
(13, 'http://127.0.0.1/magento/index.php/poll/vote/add/poll_id/1/', 'http://127.0.0.1/magento/index.php/'),
(14, 'http://127.0.0.1/magento/index.php/', 'http://127.0.0.1/magento/index.php/'),
(15, 'http://127.0.0.1/magento/index.php/', 'http://127.0.0.1/magento/index.php/'),
(16, 'http://127.0.0.1/magento/index.php/catalogsearch/result/?q=eizo', 'http://127.0.0.1/magento/index.php/'),
(17, 'http://127.0.0.1/magento/index.php/catalogsearch/ajax/suggest/?q=eizo', 'http://127.0.0.1/magento/index.php/'),
(18, 'http://127.0.0.1/magento/index.php/catalogsearch/ajax/suggest/?q=mon', 'http://127.0.0.1/magento/index.php/catalogsearch/result/?q=eizo'),
(19, 'http://127.0.0.1/magento/index.php/catalogsearch/result/?q=monitor', 'http://127.0.0.1/magento/index.php/catalogsearch/result/?q=eizo'),
(20, 'http://127.0.0.1/magento/index.php/catalogsearch/ajax/suggest/?q=monitor', 'http://127.0.0.1/magento/index.php/catalogsearch/result/?q=eizo'),
(21, 'http://127.0.0.1/magento/index.php/', 'http://127.0.0.1/magento/index.php/catalogsearch/result/?q=monitor'),
(22, 'http://127.0.0.1/magento/index.php/', 'http://127.0.0.1/magento/index.php/catalogsearch/result/?q=monitor'),
(23, 'http://127.0.0.1/magento/index.php/', 'http://127.0.0.1/magento/index.php/catalogsearch/result/?q=monitor'),
(24, 'http://127.0.0.1/magento/index.php/catalog/seo_sitemap/category/', 'http://127.0.0.1/magento/index.php/'),
(25, 'http://127.0.0.1/magento/index.php/', 'http://127.0.0.1/magento/index.php/catalogsearch/result/?q=monitor'),
(26, 'http://127.0.0.1/magento/index.php/', 'http://127.0.0.1/magento/index.php/catalogsearch/result/?q=monitor'),
(27, 'http://127.0.0.1/magento/index.php/', 'http://127.0.0.1/magento/index.php/catalogsearch/result/?q=monitor'),
(28, 'http://127.0.0.1/magento/index.php/', 'http://127.0.0.1/magento/index.php/catalogsearch/result/?q=monitor'),
(29, 'http://127.0.0.1/magento/index.php/', 'http://127.0.0.1/magento/index.php/catalogsearch/result/?q=monitor'),
(30, 'http://127.0.0.1/magento/index.php/', 'http://127.0.0.1/magento/index.php/catalogsearch/result/?q=monitor'),
(31, 'http://127.0.0.1/magento/index.php/', 'http://127.0.0.1/magento/index.php/'),
(32, 'http://127.0.0.1/magento/index.php/', 'http://127.0.0.1/magento/index.php/'),
(33, 'http://127.0.0.1/magento/index.php/', 'http://127.0.0.1/magento/index.php/'),
(34, 'http://127.0.0.1/magento/index.php/', 'http://127.0.0.1/magento/index.php/'),
(35, 'http://127.0.0.1/magento/index.php/', 'http://127.0.0.1/magento/index.php/'),
(36, 'http://127.0.0.1/magento/index.php/', 'http://127.0.0.1/magento/index.php/'),
(37, 'http://127.0.0.1/magento/index.php/', 'http://127.0.0.1/magento/index.php/'),
(38, 'http://127.0.0.1/magento/index.php/', 'http://127.0.0.1/magento/index.php/'),
(39, 'http://127.0.0.1/magento/index.php/customer/account/login/', 'http://127.0.0.1/magento/index.php/'),
(40, 'http://127.0.0.1/magento/index.php/customer/account/loginPost/', 'http://127.0.0.1/magento/index.php/customer/account/login/'),
(41, 'http://127.0.0.1/magento/index.php/customer/account/login/', 'http://127.0.0.1/magento/index.php/customer/account/login/'),
(42, 'http://127.0.0.1/magento/index.php/customer/account/loginPost/', 'http://127.0.0.1/magento/index.php/customer/account/login/'),
(43, 'http://127.0.0.1/magento/index.php/wishlist/index/index/', 'http://127.0.0.1/magento/index.php/customer/account/login/'),
(44, 'http://127.0.0.1/magento/index.php/customer/account/', 'http://127.0.0.1/magento/index.php/wishlist/index/index/'),
(45, 'http://127.0.0.1/magento/index.php/', 'http://127.0.0.1/magento/index.php/customer/account/'),
(46, 'http://127.0.0.1/magento/index.php/customer/account/logout/', 'http://127.0.0.1/magento/index.php/'),
(47, 'http://127.0.0.1/magento/index.php/customer/account/logoutSuccess/', 'http://127.0.0.1/magento/index.php/'),
(48, 'http://127.0.0.1/magento/index.php/', 'http://127.0.0.1/magento/index.php/customer/account/logoutSuccess/'),
(49, 'http://127.0.0.1/magento/index.php/', 'http://127.0.0.1/magento/index.php/customer/account/logoutSuccess/'),
(50, 'http://127.0.0.1/magento/index.php/', 'http://127.0.0.1/magento/index.php/customer/account/logoutSuccess/'),
(51, 'http://127.0.0.1/magento/index.php/', 'http://127.0.0.1/magento/index.php/customer/account/logoutSuccess/'),
(52, 'http://127.0.0.1/magento/index.php/', 'http://127.0.0.1/magento/index.php/customer/account/logoutSuccess/'),
(53, 'http://127.0.0.1/magento/index.php/', 'http://127.0.0.1/magento/index.php/customer/account/logoutSuccess/'),
(54, 'http://127.0.0.1/magento/index.php/', 'http://127.0.0.1/magento/index.php/customer/account/logoutSuccess/'),
(55, 'http://127.0.0.1/magento/index.php/', 'http://127.0.0.1/magento/index.php/customer/account/logoutSuccess/'),
(56, 'http://127.0.0.1/magento/index.php/', 'http://127.0.0.1/magento/index.php/customer/account/logoutSuccess/'),
(57, 'http://127.0.0.1/magento/index.php/', 'http://127.0.0.1/magento/index.php/customer/account/logoutSuccess/'),
(58, 'http://127.0.0.1/magento/index.php/', 'http://127.0.0.1/magento/index.php/customer/account/logoutSuccess/'),
(59, 'http://127.0.0.1/magento/index.php/', 'http://127.0.0.1/magento/index.php/customer/account/logoutSuccess/'),
(60, 'http://127.0.0.1/magento/index.php/', 'http://127.0.0.1/magento/index.php/customer/account/logoutSuccess/'),
(61, 'http://127.0.0.1/magento/', 'http://127.0.0.1/'),
(62, 'http://127.0.0.1/magento/index.php/', 'http://127.0.0.1/magento/index.php/customer/account/logoutSuccess/'),
(63, 'http://127.0.0.1/magento/index.php/', 'http://127.0.0.1/magento/index.php/customer/account/logoutSuccess/'),
(64, 'http://127.0.0.1/magento/index.php/', 'http://127.0.0.1/magento/index.php/customer/account/logoutSuccess/'),
(65, 'http://127.0.0.1/magento/index.php/', 'http://127.0.0.1/magento/index.php/customer/account/logoutSuccess/'),
(66, 'http://127.0.0.1/magento/index.php/', 'http://127.0.0.1/magento/index.php/customer/account/logoutSuccess/'),
(67, 'http://127.0.0.1/magento/index.php/', 'http://127.0.0.1/magento/index.php/customer/account/logoutSuccess/'),
(68, 'http://127.0.0.1/magento/index.php/', 'http://127.0.0.1/magento/index.php/customer/account/logoutSuccess/'),
(69, 'http://127.0.0.1/magento/index.php/', 'http://127.0.0.1/magento/index.php/customer/account/logoutSuccess/'),
(70, 'http://127.0.0.1/magento/index.php/', 'http://127.0.0.1/magento/index.php/customer/account/logoutSuccess/'),
(71, 'http://127.0.0.1/magento/index.php/', 'http://127.0.0.1/magento/index.php/customer/account/logoutSuccess/'),
(72, 'http://127.0.0.1/magento/index.php/', 'http://127.0.0.1/magento/index.php/customer/account/logoutSuccess/'),
(73, 'http://127.0.0.1/magento/skin/frontend/base/default/css/local.css', 'http://127.0.0.1/magento/index.php/'),
(74, 'http://127.0.0.1/magento/index.php/', 'http://127.0.0.1/magento/index.php/customer/account/logoutSuccess/'),
(75, 'http://127.0.0.1/magento/index.php/', 'http://127.0.0.1/magento/index.php/customer/account/logoutSuccess/'),
(76, 'http://127.0.0.1/magento/index.php/', 'http://127.0.0.1/magento/index.php/customer/account/logoutSuccess/'),
(77, 'http://127.0.0.1/magento/index.php/', 'http://127.0.0.1/magento/index.php/customer/account/logoutSuccess/'),
(78, 'http://127.0.0.1/magento/index.php/', 'http://127.0.0.1/magento/index.php/'),
(79, 'http://127.0.0.1/magento/index.php/', 'http://127.0.0.1/magento/index.php/'),
(80, 'http://127.0.0.1/magento/index.php/', 'http://127.0.0.1/magento/index.php/'),
(81, 'http://127.0.0.1/magento/index.php/', 'http://127.0.0.1/magento/index.php/'),
(82, 'http://127.0.0.1/magento/index.php/', 'http://127.0.0.1/magento/index.php/'),
(83, 'http://127.0.0.1/magento/index.php/', 'http://127.0.0.1/magento/index.php/'),
(84, 'http://127.0.0.1/magento/index.php/', 'http://127.0.0.1/magento/index.php/'),
(85, 'http://127.0.0.1/magento/index.php/', 'http://127.0.0.1/magento/index.php/'),
(86, 'http://127.0.0.1/magento/index.php/', 'http://127.0.0.1/magento/index.php/'),
(87, 'http://127.0.0.1/magento/index.php/', 'http://127.0.0.1/magento/index.php/'),
(88, 'http://127.0.0.1/magento/index.php/', 'http://127.0.0.1/magento/index.php/'),
(89, 'http://127.0.0.1/magento/index.php/', 'http://127.0.0.1/magento/index.php/'),
(90, 'http://127.0.0.1/magento/index.php/', 'http://127.0.0.1/magento/index.php/'),
(91, 'http://127.0.0.1/magento/index.php/', 'http://127.0.0.1/magento/index.php/'),
(92, 'http://127.0.0.1/magento/index.php/', 'http://127.0.0.1/magento/index.php/'),
(93, 'http://127.0.0.1/magento/index.php/', 'http://127.0.0.1/magento/index.php/'),
(94, 'http://127.0.0.1/magento/index.php/', 'http://127.0.0.1/magento/index.php/'),
(95, 'http://127.0.0.1/magento/index.php/', 'http://127.0.0.1/magento/index.php/'),
(96, 'http://127.0.0.1/magento/index.php/', 'http://127.0.0.1/magento/index.php/'),
(97, 'http://127.0.0.1/magento/index.php/', 'http://127.0.0.1/magento/index.php/'),
(98, 'http://127.0.0.1/magento/skin/frontend/default/thebis/img/background_thebis.jpg', 'http://127.0.0.1/magento/skin/frontend/default/thebis/css/styles.css'),
(99, 'http://127.0.0.1/magento/index.php/', 'http://127.0.0.1/magento/index.php/'),
(100, 'http://127.0.0.1/magento/index.php/', 'http://127.0.0.1/magento/index.php/'),
(101, 'http://127.0.0.1/magento/index.php/', 'http://127.0.0.1/magento/index.php/'),
(102, 'http://127.0.0.1/magento/index.php/', 'http://127.0.0.1/magento/index.php/'),
(103, 'http://127.0.0.1/magento/index.php/', 'http://127.0.0.1/magento/index.php/'),
(104, 'http://127.0.0.1/magento/index.php/', 'http://127.0.0.1/magento/index.php/'),
(105, 'http://127.0.0.1/magento/index.php/', 'http://127.0.0.1/magento/index.php/'),
(106, 'http://127.0.0.1/magento/index.php/', 'http://127.0.0.1/magento/index.php/'),
(107, 'http://127.0.0.1/magento/index.php/', 'http://127.0.0.1/magento/index.php/'),
(108, 'http://127.0.0.1/magento/index.php/', 'http://127.0.0.1/magento/index.php/'),
(109, 'http://127.0.0.1/magento/index.php/', 'http://127.0.0.1/magento/index.php/'),
(110, 'http://127.0.0.1/magento/index.php/', 'http://127.0.0.1/magento/index.php/'),
(111, 'http://127.0.0.1/magento/index.php/', 'http://127.0.0.1/magento/index.php/'),
(112, 'http://127.0.0.1/magento/index.php/', 'http://127.0.0.1/magento/index.php/'),
(113, 'http://127.0.0.1/magento/index.php/', 'http://127.0.0.1/magento/index.php/'),
(114, 'http://127.0.0.1/magento/index.php/', 'http://127.0.0.1/magento/index.php/'),
(115, 'http://127.0.0.1/magento/index.php/', 'http://127.0.0.1/magento/index.php/'),
(116, 'http://127.0.0.1/magento/index.php/', 'http://127.0.0.1/magento/index.php/'),
(117, 'http://127.0.0.1/magento/index.php/', 'http://127.0.0.1/magento/index.php/'),
(118, 'http://127.0.0.1/magento/index.php/', 'http://127.0.0.1/magento/index.php/'),
(119, 'http://127.0.0.1/magento/index.php/', 'http://127.0.0.1/magento/index.php/'),
(120, 'http://127.0.0.1/magento/index.php/', 'http://127.0.0.1/magento/index.php/'),
(121, 'http://127.0.0.1/magento/index.php/', 'http://127.0.0.1/magento/index.php/'),
(122, 'http://127.0.0.1/magento/index.php/', 'http://127.0.0.1/magento/index.php/'),
(123, 'http://127.0.0.1/magento/index.php/', 'http://127.0.0.1/magento/index.php/'),
(124, 'http://127.0.0.1/magento/index.php/', 'http://127.0.0.1/magento/index.php/'),
(125, 'http://127.0.0.1/magento/index.php/', 'http://127.0.0.1/magento/index.php/'),
(126, 'http://127.0.0.1/magento/skin/frontend/default/thebis/img/logo_thebis.png', 'http://127.0.0.1/magento/skin/frontend/default/thebis/css/styles.css'),
(127, 'http://127.0.0.1/magento/index.php/', 'http://127.0.0.1/magento/index.php/'),
(128, 'http://127.0.0.1/magento/skin/frontend/default/thebis/img/logo_thebis.png', 'http://127.0.0.1/magento/skin/frontend/default/thebis/css/styles.css'),
(129, 'http://127.0.0.1/magento/index.php/', 'http://127.0.0.1/magento/index.php/'),
(130, 'http://127.0.0.1/magento/index.php/', 'http://127.0.0.1/magento/index.php/'),
(131, 'http://127.0.0.1/magento/index.php/', 'http://127.0.0.1/magento/index.php/'),
(132, 'http://127.0.0.1/magento/index.php/', 'http://127.0.0.1/magento/index.php/'),
(133, 'http://127.0.0.1/magento/index.php/', 'http://127.0.0.1/magento/index.php/'),
(134, 'http://127.0.0.1/magento/index.php/', 'http://127.0.0.1/magento/index.php/'),
(135, 'http://127.0.0.1/magento/index.php/', 'http://127.0.0.1/magento/index.php/'),
(136, 'http://127.0.0.1/magento/index.php/', 'http://127.0.0.1/magento/index.php/'),
(137, 'http://127.0.0.1/magento/index.php/', 'http://127.0.0.1/magento/index.php/'),
(138, 'http://127.0.0.1/magento/index.php/', 'http://127.0.0.1/magento/index.php/'),
(139, 'http://127.0.0.1/magento/index.php/', 'http://127.0.0.1/magento/index.php/'),
(140, 'http://127.0.0.1/magento/index.php/', 'http://127.0.0.1/magento/index.php/'),
(141, 'http://127.0.0.1/magento/index.php/', 'http://127.0.0.1/magento/index.php/'),
(142, 'http://127.0.0.1/magento/index.php/', 'http://127.0.0.1/magento/index.php/'),
(143, 'http://127.0.0.1/magento/index.php/', 'http://127.0.0.1/magento/index.php/'),
(144, 'http://127.0.0.1/magento/index.php/', 'http://127.0.0.1/magento/index.php/'),
(145, 'http://127.0.0.1/magento/index.php/', 'http://127.0.0.1/magento/index.php/'),
(146, 'http://127.0.0.1/magento/index.php/', 'http://127.0.0.1/magento/index.php/'),
(147, 'http://127.0.0.1/magento/index.php/', 'http://127.0.0.1/magento/index.php/'),
(148, 'http://127.0.0.1/magento/index.php/', 'http://127.0.0.1/magento/index.php/'),
(149, 'http://127.0.0.1/magento/index.php/', 'http://127.0.0.1/magento/index.php/'),
(150, 'http://127.0.0.1/magento/index.php/', 'http://127.0.0.1/magento/index.php/'),
(151, 'http://127.0.0.1/magento/index.php/', 'http://127.0.0.1/magento/index.php/'),
(152, 'http://127.0.0.1/magento/index.php/', 'http://127.0.0.1/magento/index.php/'),
(153, 'http://127.0.0.1/magento/index.php/customer/account/login/', 'http://127.0.0.1/magento/index.php/'),
(154, 'http://127.0.0.1/magento/index.php/', 'http://127.0.0.1/magento/index.php/'),
(155, 'http://127.0.0.1/magento/index.php/customer/account/login/', 'http://127.0.0.1/magento/index.php/'),
(156, 'http://127.0.0.1/magento/index.php/', 'http://127.0.0.1/magento/index.php/'),
(157, 'http://127.0.0.1/magento/index.php/', 'http://127.0.0.1/magento/index.php/'),
(158, 'http://127.0.0.1/magento/index.php/', NULL),
(159, 'http://127.0.0.1/magento/index.php/', NULL),
(160, 'http://127.0.0.1/magento/index.php/', NULL),
(161, 'http://127.0.0.1/magento/index.php/', NULL),
(162, 'http://127.0.0.1/magento/index.php/', NULL),
(163, 'http://127.0.0.1/magento/index.php/', NULL),
(164, 'http://127.0.0.1/magento/index.php/', NULL),
(165, 'http://127.0.0.1/magento/index.php/', NULL),
(166, 'http://127.0.0.1/magento/index.php/', NULL),
(167, 'http://127.0.0.1/magento/index.php/', NULL),
(168, 'http://127.0.0.1/magento/index.php/', NULL),
(169, 'http://127.0.0.1/magento/index.php/', NULL),
(170, 'http://127.0.0.1/magento/index.php/', NULL),
(171, 'http://127.0.0.1/magento/index.php/', NULL),
(172, 'http://127.0.0.1/magento/index.php/', NULL),
(173, 'http://127.0.0.1/magento/index.php/', NULL),
(174, 'http://127.0.0.1/magento/index.php/', NULL),
(175, 'http://127.0.0.1/magento/index.php/', NULL),
(176, 'http://127.0.0.1/magento/index.php/', NULL),
(177, 'http://127.0.0.1/magento/index.php/', NULL),
(178, 'http://127.0.0.1/magento/index.php/', NULL),
(179, 'http://127.0.0.1/magento/index.php/', NULL),
(180, 'http://127.0.0.1/magento/index.php/', NULL),
(181, 'http://127.0.0.1/magento/index.php/', NULL),
(182, 'http://127.0.0.1/magento/index.php/', NULL),
(183, 'http://127.0.0.1/magento/index.php/', NULL),
(184, 'http://127.0.0.1/magento/index.php/', NULL),
(185, 'http://127.0.0.1/magento/index.php/', NULL),
(186, 'http://127.0.0.1/magento/index.php/', NULL),
(187, 'http://127.0.0.1/magento/index.php/', NULL),
(188, 'http://127.0.0.1/magento/index.php/', NULL),
(189, 'http://127.0.0.1/magento/index.php/', NULL),
(190, 'http://127.0.0.1/magento/index.php/', NULL),
(191, 'http://127.0.0.1/magento/index.php/', NULL),
(192, 'http://127.0.0.1/magento/index.php/', NULL),
(193, 'http://127.0.0.1/magento/index.php/', NULL),
(194, 'http://127.0.0.1/magento/index.php/', NULL),
(195, 'http://127.0.0.1/magento/index.php/', NULL),
(196, 'http://127.0.0.1/magento/index.php/', NULL),
(197, 'http://127.0.0.1/magento/index.php/', NULL),
(198, 'http://127.0.0.1/magento/index.php/', NULL),
(199, 'http://127.0.0.1/magento/index.php/', NULL),
(200, 'http://127.0.0.1/magento/index.php/', NULL),
(201, 'http://127.0.0.1/magento/index.php/', NULL),
(202, 'http://127.0.0.1/magento/index.php/', NULL),
(203, 'http://127.0.0.1/magento/index.php/', NULL),
(204, 'http://127.0.0.1/magento/index.php/', NULL),
(205, 'http://127.0.0.1/magento/index.php/', NULL),
(206, 'http://127.0.0.1/magento/index.php/', NULL),
(207, 'http://127.0.0.1/magento/index.php/', NULL),
(208, 'http://127.0.0.1/magento/index.php/', NULL),
(209, 'http://127.0.0.1/magento/index.php/', NULL),
(210, 'http://127.0.0.1/magento/index.php/', NULL),
(211, 'http://127.0.0.1/magento/index.php/', NULL),
(212, 'http://127.0.0.1/magento/index.php/', NULL),
(213, 'http://127.0.0.1/magento/index.php/', NULL),
(214, 'http://127.0.0.1/magento/index.php/', NULL),
(215, 'http://127.0.0.1/magento/index.php/', NULL),
(216, 'http://127.0.0.1/magento/index.php/', NULL),
(217, 'http://127.0.0.1/magento/index.php/', NULL),
(218, 'http://127.0.0.1/magento/index.php/', NULL),
(219, 'http://127.0.0.1/magento/index.php/', NULL),
(220, 'http://127.0.0.1/magento/index.php/', NULL),
(221, 'http://127.0.0.1/magento/index.php/', NULL),
(222, 'http://127.0.0.1/magento/index.php/', NULL),
(223, 'http://127.0.0.1/magento/index.php/', NULL),
(224, 'http://127.0.0.1/magento/index.php/', NULL),
(225, 'http://127.0.0.1/magento/index.php/', NULL),
(226, 'http://127.0.0.1/magento/index.php/', NULL),
(227, 'http://127.0.0.1/magento/index.php/', NULL),
(228, 'http://127.0.0.1/magento/index.php/', NULL),
(229, 'http://127.0.0.1/magento/index.php/', NULL),
(230, 'http://127.0.0.1/magento/index.php/', NULL),
(231, 'http://127.0.0.1/magento/index.php/', NULL),
(232, 'http://127.0.0.1/magento/index.php/', NULL),
(233, 'http://127.0.0.1/magento/index.php/', NULL),
(234, 'http://127.0.0.1/magento/index.php/', NULL),
(235, 'http://127.0.0.1/magento/index.php/', NULL),
(236, 'http://127.0.0.1/magento/index.php/', NULL),
(237, 'http://127.0.0.1/magento/index.php/', NULL),
(238, 'http://127.0.0.1/magento/index.php/', NULL),
(239, 'http://127.0.0.1/magento/index.php/', NULL),
(240, 'http://127.0.0.1/magento/index.php/', NULL),
(241, 'http://127.0.0.1/magento/index.php/', NULL),
(242, 'http://127.0.0.1/magento/index.php/', NULL),
(243, 'http://127.0.0.1/magento/index.php/', NULL),
(244, 'http://127.0.0.1/magento/index.php/', NULL),
(245, 'http://127.0.0.1/magento/index.php/', NULL),
(246, 'http://127.0.0.1/magento/index.php/', NULL),
(247, 'http://127.0.0.1/magento/index.php/', NULL),
(248, 'http://127.0.0.1/magento/index.php/', NULL),
(249, 'http://127.0.0.1/magento/index.php/', NULL),
(250, 'http://127.0.0.1/magento/index.php/', NULL),
(251, 'http://127.0.0.1/magento/index.php/', NULL),
(252, 'http://127.0.0.1/magento/index.php/', NULL),
(253, 'http://127.0.0.1/magento/index.php/', NULL),
(254, 'http://127.0.0.1/magento/index.php/', NULL),
(255, 'http://127.0.0.1/magento/index.php/', NULL),
(256, 'http://127.0.0.1/magento/index.php/', NULL),
(257, 'http://127.0.0.1/magento/index.php/', NULL),
(258, 'http://127.0.0.1/magento/index.php/', NULL),
(259, 'http://127.0.0.1/magento/index.php/', NULL),
(260, 'http://127.0.0.1/magento/index.php/', NULL),
(261, 'http://127.0.0.1/magento/index.php/', NULL),
(262, 'http://127.0.0.1/magento/index.php/', NULL),
(263, 'http://127.0.0.1/magento/index.php/', NULL),
(264, 'http://127.0.0.1/magento/index.php/', NULL),
(265, 'http://127.0.0.1/magento/index.php/', NULL),
(266, 'http://127.0.0.1/magento/index.php/', NULL),
(267, 'http://127.0.0.1/magento/index.php/', NULL),
(268, 'http://127.0.0.1/magento/index.php/', NULL),
(269, 'http://127.0.0.1/magento/index.php/', NULL),
(270, 'http://127.0.0.1/magento/index.php/', NULL),
(271, 'http://127.0.0.1/magento/index.php/', NULL),
(272, 'http://127.0.0.1/magento/index.php/', NULL),
(273, 'http://127.0.0.1/magento/index.php/', NULL),
(274, 'http://127.0.0.1/magento/index.php/', NULL),
(275, 'http://127.0.0.1/magento/index.php/', NULL),
(276, 'http://127.0.0.1/magento/index.php/', NULL),
(277, 'http://127.0.0.1/magento/index.php/', NULL),
(278, 'http://127.0.0.1/magento/index.php/', NULL),
(279, 'http://127.0.0.1/magento/index.php/', NULL),
(280, 'http://127.0.0.1/magento/index.php/', NULL),
(281, 'http://127.0.0.1/magento/index.php/', NULL),
(282, 'http://127.0.0.1/magento/index.php/', NULL),
(283, 'http://127.0.0.1/magento/index.php/', NULL),
(284, 'http://127.0.0.1/magento/index.php/', NULL),
(285, 'http://127.0.0.1/magento/index.php/', NULL),
(286, 'http://127.0.0.1/magento/index.php/', NULL),
(287, 'http://127.0.0.1/magento/index.php/', NULL),
(288, 'http://127.0.0.1/magento/index.php/', NULL),
(289, 'http://127.0.0.1/magento/index.php/', NULL),
(290, 'http://127.0.0.1/magento/index.php/', NULL),
(291, 'http://127.0.0.1/magento/index.php/', NULL),
(292, 'http://127.0.0.1/magento/index.php/', NULL),
(293, 'http://127.0.0.1/magento/index.php/', NULL),
(294, 'http://127.0.0.1/magento/index.php/', NULL),
(295, 'http://127.0.0.1/magento/index.php/', NULL),
(296, 'http://127.0.0.1/magento/index.php/', NULL),
(297, 'http://127.0.0.1/magento/index.php/', NULL),
(298, 'http://127.0.0.1/magento/index.php/', NULL),
(299, 'http://127.0.0.1/magento/index.php/checkout/', 'http://127.0.0.1/magento/index.php/'),
(300, 'http://127.0.0.1/magento/index.php/checkout/onepage/', 'http://127.0.0.1/magento/index.php/'),
(301, 'http://127.0.0.1/magento/index.php/checkout/cart/', 'http://127.0.0.1/magento/index.php/'),
(302, 'http://127.0.0.1/magento/index.php/', NULL),
(303, 'http://127.0.0.1/magento/index.php/', NULL),
(304, 'http://127.0.0.1/magento/index.php/', NULL),
(305, 'http://127.0.0.1/magento/index.php/customer/account/login/', 'http://127.0.0.1/magento/index.php/'),
(306, 'http://127.0.0.1/magento/index.php/', NULL),
(307, 'http://127.0.0.1/magento/index.php/customer/account/login/', 'http://127.0.0.1/magento/index.php/'),
(308, 'http://127.0.0.1/magento/index.php/', NULL),
(309, 'http://127.0.0.1/magento/index.php/checkout/cart/', 'http://127.0.0.1/magento/index.php/'),
(310, 'http://127.0.0.1/magento/index.php/', 'http://127.0.0.1/magento/index.php/checkout/cart/'),
(311, 'http://127.0.0.1/magento/index.php/', 'http://127.0.0.1/magento/index.php/checkout/cart/'),
(312, 'http://127.0.0.1/magento/index.php/', 'http://127.0.0.1/magento/index.php/checkout/cart/'),
(313, 'http://127.0.0.1/magento/index.php/', NULL),
(314, 'http://127.0.0.1/magento/index.php/', NULL),
(315, 'http://127.0.0.1/magento/index.php/', 'http://127.0.0.1/magento/index.php/checkout/cart/'),
(316, 'http://127.0.0.1/magento/index.php/', 'http://127.0.0.1/magento/index.php/checkout/cart/'),
(317, 'http://127.0.0.1/magento/index.php/', 'http://127.0.0.1/magento/index.php/checkout/cart/'),
(318, 'http://127.0.0.1/magento/index.php/', 'http://127.0.0.1/magento/index.php/checkout/cart/'),
(319, 'http://127.0.0.1/magento/index.php/', 'http://127.0.0.1/magento/index.php/checkout/cart/'),
(320, 'http://127.0.0.1/magento/index.php/', 'http://127.0.0.1/magento/index.php/checkout/cart/'),
(321, 'http://127.0.0.1/magento/index.php/', 'http://127.0.0.1/magento/index.php/checkout/cart/'),
(322, 'http://127.0.0.1/magento/index.php/', 'http://127.0.0.1/magento/index.php/checkout/cart/'),
(323, 'http://127.0.0.1/magento/index.php/', 'http://127.0.0.1/magento/index.php/checkout/cart/'),
(324, 'http://127.0.0.1/magento/index.php/', 'http://127.0.0.1/magento/index.php/checkout/cart/'),
(325, 'http://127.0.0.1/magento/index.php/', 'http://127.0.0.1/magento/index.php/checkout/cart/'),
(326, 'http://127.0.0.1/magento/index.php/', 'http://127.0.0.1/magento/index.php/checkout/cart/'),
(327, 'http://127.0.0.1/magento/index.php/', 'http://127.0.0.1/magento/index.php/checkout/cart/'),
(328, 'http://127.0.0.1/magento/index.php/', 'http://127.0.0.1/magento/index.php/checkout/cart/'),
(329, 'http://127.0.0.1/magento/index.php/', 'http://127.0.0.1/magento/index.php/checkout/cart/'),
(330, 'http://127.0.0.1/magento/index.php/', 'http://127.0.0.1/magento/index.php/checkout/cart/'),
(331, 'http://127.0.0.1/magento/index.php/', NULL),
(332, 'http://127.0.0.1/magento/index.php/', 'http://127.0.0.1/magento/index.php/checkout/cart/'),
(333, 'http://127.0.0.1/magento/index.php/', NULL),
(334, 'http://127.0.0.1/magento/index.php/', 'http://127.0.0.1/magento/index.php/checkout/cart/'),
(335, 'http://127.0.0.1/magento/index.php/', 'http://127.0.0.1/magento/index.php/checkout/cart/'),
(336, 'http://127.0.0.1/magento/index.php/', 'http://127.0.0.1/magento/index.php/checkout/cart/'),
(337, 'http://127.0.0.1/magento/index.php/', NULL),
(338, 'http://127.0.0.1/magento/index.php/', NULL),
(339, 'http://127.0.0.1/magento/index.php/', 'http://127.0.0.1/magento/index.php/checkout/cart/'),
(340, 'http://127.0.0.1/magento/index.php/', 'http://127.0.0.1/magento/index.php/checkout/cart/'),
(341, 'http://127.0.0.1/magento/index.php/', 'http://127.0.0.1/magento/index.php/checkout/cart/'),
(342, 'http://127.0.0.1/magento/index.php/', 'http://127.0.0.1/magento/index.php/checkout/cart/'),
(343, 'http://127.0.0.1/magento/index.php/', 'http://127.0.0.1/magento/index.php/checkout/cart/'),
(344, 'http://127.0.0.1/magento/index.php/', 'http://127.0.0.1/magento/index.php/checkout/cart/'),
(345, 'http://127.0.0.1/magento/index.php/', 'http://127.0.0.1/magento/index.php/checkout/cart/'),
(346, 'http://127.0.0.1/magento/index.php/', 'http://127.0.0.1/magento/index.php/checkout/cart/'),
(347, 'http://127.0.0.1/magento/index.php/', 'http://127.0.0.1/magento/index.php/checkout/cart/'),
(348, 'http://127.0.0.1/magento/index.php/', 'http://127.0.0.1/magento/index.php/checkout/cart/'),
(349, 'http://127.0.0.1/magento/index.php/', 'http://127.0.0.1/magento/index.php/checkout/cart/'),
(350, 'http://127.0.0.1/magento/index.php/', 'http://127.0.0.1/magento/index.php/checkout/cart/'),
(351, 'http://127.0.0.1/magento/index.php/', 'http://127.0.0.1/magento/index.php/checkout/cart/'),
(352, 'http://127.0.0.1/magento/index.php/', 'http://127.0.0.1/magento/index.php/checkout/cart/'),
(353, 'http://127.0.0.1/magento/index.php/', 'http://127.0.0.1/magento/index.php/checkout/cart/'),
(354, 'http://127.0.0.1/magento/index.php/', 'http://127.0.0.1/magento/index.php/checkout/cart/'),
(355, 'http://127.0.0.1/magento/index.php/', 'http://127.0.0.1/magento/index.php/checkout/cart/'),
(356, 'http://127.0.0.1/magento/index.php/', 'http://127.0.0.1/magento/index.php/checkout/cart/'),
(357, 'http://127.0.0.1/magento/index.php/', NULL),
(358, 'http://127.0.0.1/magento/index.php/', NULL),
(359, 'http://127.0.0.1/magento/index.php/', 'http://127.0.0.1/magento/index.php/checkout/cart/'),
(360, 'http://127.0.0.1/magento/index.php/', 'http://127.0.0.1/magento/index.php/checkout/cart/'),
(361, 'http://127.0.0.1/magento/index.php/', 'http://127.0.0.1/magento/index.php/checkout/cart/'),
(362, 'http://127.0.0.1/magento/index.php/', 'http://127.0.0.1/magento/index.php/checkout/cart/'),
(363, 'http://127.0.0.1/magento/index.php/', 'http://127.0.0.1/magento/index.php/checkout/cart/'),
(364, 'http://127.0.0.1/magento/index.php/', NULL),
(365, 'http://127.0.0.1/magento/index.php/', 'http://127.0.0.1/magento/index.php/checkout/cart/'),
(366, 'http://127.0.0.1/magento/index.php/', 'http://127.0.0.1/magento/index.php/checkout/cart/'),
(367, 'http://127.0.0.1/magento/index.php/', 'http://127.0.0.1/magento/index.php/checkout/cart/'),
(368, 'http://127.0.0.1/magento/index.php/', 'http://127.0.0.1/magento/index.php/checkout/cart/'),
(369, 'http://127.0.0.1/magento/index.php/', 'http://127.0.0.1/magento/index.php/checkout/cart/'),
(370, 'http://127.0.0.1/magento/index.php/about-magento-demo-store/?___store=default', 'http://127.0.0.1/magento/index.php/admin/cms_page/index/key/3eea5e8579460de0faf6e5dfd71552ed/'),
(371, 'http://127.0.0.1/magento/index.php/', 'http://127.0.0.1/magento/index.php/checkout/cart/'),
(372, 'http://127.0.0.1/magento/index.php/', 'http://127.0.0.1/magento/index.php/checkout/cart/'),
(373, 'http://127.0.0.1/magento/index.php/', 'http://127.0.0.1/magento/index.php/checkout/cart/'),
(374, 'http://127.0.0.1/magento/index.php/', 'http://127.0.0.1/magento/index.php/checkout/cart/'),
(375, 'http://127.0.0.1/magento/index.php/', 'http://127.0.0.1/magento/index.php/checkout/cart/'),
(376, 'http://127.0.0.1/magento/index.php/', 'http://127.0.0.1/magento/index.php/checkout/cart/'),
(377, 'http://127.0.0.1/magento/index.php/', NULL),
(378, 'http://127.0.0.1/magento/index.php/', NULL),
(379, 'http://127.0.0.1/magento/index.php/', 'http://127.0.0.1/magento/index.php/checkout/cart/'),
(380, 'http://127.0.0.1/magento/index.php/', 'http://127.0.0.1/magento/index.php/checkout/cart/'),
(381, 'http://127.0.0.1/magento/index.php/', 'http://127.0.0.1/magento/index.php/checkout/cart/'),
(382, 'http://127.0.0.1/magento/index.php/', 'http://127.0.0.1/magento/index.php/checkout/cart/'),
(383, 'http://127.0.0.1/magento/index.php/', 'http://127.0.0.1/magento/index.php/checkout/cart/'),
(384, 'http://127.0.0.1/magento/index.php/catalog/category/view/s/monitoren/id/5/', 'http://127.0.0.1/magento/index.php/'),
(385, 'http://127.0.0.1/magento/index.php/', 'http://127.0.0.1/magento/index.php/checkout/cart/'),
(386, 'http://127.0.0.1/magento/index.php/catalog/category/view/id/5', 'http://127.0.0.1/magento/index.php/'),
(387, 'http://127.0.0.1/magento/index.php/', 'http://127.0.0.1/magento/index.php/checkout/cart/'),
(388, 'http://127.0.0.1/magento/index.php/catalog/category/view/id/5', 'http://127.0.0.1/magento/index.php/'),
(389, 'http://127.0.0.1/magento/index.php/catalog/category/view/id/5', 'http://127.0.0.1/magento/index.php/monitoren.html'),
(390, 'http://127.0.0.1/magento/index.php/', 'http://127.0.0.1/magento/index.php/monitoren.html'),
(391, 'http://127.0.0.1/magento/index.php/', 'http://127.0.0.1/magento/index.php/monitoren.html'),
(392, 'http://127.0.0.1/magento/index.php/', 'http://127.0.0.1/magento/index.php/monitoren.html'),
(393, 'http://127.0.0.1/magento/index.php/catalog/category/view/id/5', 'http://127.0.0.1/magento/index.php/'),
(394, 'http://127.0.0.1/magento/index.php/catalog/category/view/id/5', 'http://127.0.0.1/magento/index.php/'),
(395, 'http://127.0.0.1/magento/index.php/catalog/category/view/id/5', 'http://127.0.0.1/magento/index.php/'),
(396, 'http://127.0.0.1/magento/index.php/catalog/category/view/id/5', 'http://127.0.0.1/magento/index.php/'),
(397, 'http://127.0.0.1/magento/index.php/', 'http://127.0.0.1/magento/index.php/monitoren.html'),
(398, 'http://127.0.0.1/magento/index.php/', 'http://127.0.0.1/magento/index.php/monitoren.html'),
(399, 'http://127.0.0.1/magento/index.php/', 'http://127.0.0.1/magento/index.php/monitoren.html'),
(400, 'http://127.0.0.1/magento/index.php/', 'http://127.0.0.1/magento/index.php/monitoren.html'),
(401, 'http://127.0.0.1/magento/index.php/', 'http://127.0.0.1/magento/index.php/monitoren.html'),
(402, 'http://127.0.0.1/magento/index.php/', 'http://127.0.0.1/magento/index.php/monitoren.html'),
(403, 'http://127.0.0.1/magento/index.php/catalog/category/view/id/5', 'http://127.0.0.1/magento/index.php/'),
(404, 'http://127.0.0.1/magento/index.php/', 'http://127.0.0.1/magento/index.php/monitoren.html'),
(405, 'http://127.0.0.1/magento/index.php/', 'http://127.0.0.1/magento/index.php/monitoren.html'),
(406, 'http://127.0.0.1/magento/index.php/', 'http://127.0.0.1/magento/index.php/monitoren.html'),
(407, 'http://127.0.0.1/magento/index.php/catalog/category/view/id/6', 'http://127.0.0.1/magento/index.php/'),
(408, 'http://127.0.0.1/magento/index.php/', 'http://127.0.0.1/magento/index.php/monitoren.html'),
(409, 'http://127.0.0.1/magento/index.php/', 'http://127.0.0.1/magento/index.php/monitoren.html'),
(410, 'http://127.0.0.1/magento/index.php/', 'http://127.0.0.1/magento/index.php/monitoren.html'),
(411, 'http://127.0.0.1/magento/index.php/catalog/category/view/id/5', 'http://127.0.0.1/magento/index.php/'),
(412, 'http://127.0.0.1/magento/index.php/', 'http://127.0.0.1/magento/index.php/monitoren.html'),
(413, 'http://127.0.0.1/magento/index.php/', 'http://127.0.0.1/magento/index.php/monitoren.html'),
(414, 'http://127.0.0.1/magento/index.php/', 'http://127.0.0.1/magento/index.php/monitoren.html'),
(415, 'http://127.0.0.1/magento/index.php/catalog/category/view/id/5', 'http://127.0.0.1/magento/index.php/'),
(416, 'http://127.0.0.1/magento/index.php/', 'http://127.0.0.1/magento/index.php/monitoren.html'),
(417, 'http://127.0.0.1/magento/index.php/', 'http://127.0.0.1/magento/index.php/monitoren.html'),
(418, 'http://127.0.0.1/magento/index.php/', 'http://127.0.0.1/magento/index.php/monitoren.html'),
(419, 'http://127.0.0.1/magento/index.php/', 'http://127.0.0.1/magento/index.php/monitoren.html'),
(420, 'http://127.0.0.1/magento/index.php/', 'http://127.0.0.1/magento/index.php/monitoren.html'),
(421, 'http://127.0.0.1/magento/index.php/', 'http://127.0.0.1/magento/index.php/monitoren.html'),
(422, 'http://127.0.0.1/magento/index.php/', 'http://127.0.0.1/magento/index.php/monitoren.html'),
(423, 'http://127.0.0.1/magento/index.php/', 'http://127.0.0.1/magento/index.php/monitoren.html'),
(424, 'http://127.0.0.1/magento/index.php/catalog/category/view/id/8', 'http://127.0.0.1/magento/index.php/'),
(425, 'http://127.0.0.1/magento/index.php/', 'http://127.0.0.1/magento/index.php/monitoren.html'),
(426, 'http://127.0.0.1/magento/index.php/catalog/category/view/id/7', 'http://127.0.0.1/magento/index.php/'),
(427, 'http://127.0.0.1/magento/index.php/', 'http://127.0.0.1/magento/index.php/monitoren.html'),
(428, 'http://127.0.0.1/magento/index.php/catalog/category/view/id/5', 'http://127.0.0.1/magento/index.php/'),
(429, 'http://127.0.0.1/magento/index.php/', 'http://127.0.0.1/magento/index.php/monitoren.html'),
(430, 'http://127.0.0.1/magento/index.php/', 'http://127.0.0.1/magento/index.php/monitoren.html'),
(431, 'http://127.0.0.1/magento/index.php/', 'http://127.0.0.1/magento/index.php/monitoren.html'),
(432, 'http://127.0.0.1/magento/index.php/', 'http://127.0.0.1/magento/index.php/monitoren.html'),
(433, 'http://127.0.0.1/magento/index.php/', 'http://127.0.0.1/magento/index.php/monitoren.html'),
(434, 'http://127.0.0.1/magento/index.php/', 'http://127.0.0.1/magento/index.php/monitoren.html'),
(435, 'http://127.0.0.1/magento/index.php/catalog/category/view/id/12', 'http://127.0.0.1/magento/index.php/'),
(436, 'http://127.0.0.1/magento/index.php/', 'http://127.0.0.1/magento/index.php/monitoren.html'),
(437, 'http://127.0.0.1/magento/index.php/', 'http://127.0.0.1/magento/index.php/monitoren.html'),
(438, 'http://127.0.0.1/magento/index.php/', 'http://127.0.0.1/magento/index.php/monitoren.html'),
(439, 'http://127.0.0.1/magento/index.php/', 'http://127.0.0.1/magento/index.php/monitoren.html'),
(440, 'http://127.0.0.1/magento/index.php/', 'http://127.0.0.1/magento/index.php/monitoren.html'),
(441, 'http://127.0.0.1/magento/index.php/', 'http://127.0.0.1/magento/index.php/monitoren.html'),
(442, 'http://127.0.0.1/magento/index.php/', 'http://127.0.0.1/magento/index.php/monitoren.html'),
(443, 'http://127.0.0.1/magento/index.php/', 'http://127.0.0.1/magento/index.php/monitoren.html'),
(444, 'http://127.0.0.1/magento/index.php/', 'http://127.0.0.1/magento/index.php/monitoren.html'),
(445, 'http://127.0.0.1/magento/index.php/', 'http://127.0.0.1/magento/index.php/monitoren.html'),
(446, 'http://127.0.0.1/magento/index.php/', 'http://127.0.0.1/magento/index.php/monitoren.html'),
(447, 'http://127.0.0.1/magento/index.php/', 'http://127.0.0.1/magento/index.php/monitoren.html'),
(448, 'http://127.0.0.1/magento/index.php/', 'http://127.0.0.1/magento/index.php/monitoren.html'),
(449, 'http://127.0.0.1/magento/index.php/', 'http://127.0.0.1/magento/index.php/monitoren.html'),
(450, 'http://127.0.0.1/magento/index.php/', 'http://127.0.0.1/magento/index.php/monitoren.html'),
(451, 'http://127.0.0.1/magento/index.php/', 'http://127.0.0.1/magento/index.php/monitoren.html'),
(452, 'http://127.0.0.1/magento/index.php/', 'http://127.0.0.1/magento/index.php/monitoren.html'),
(453, 'http://127.0.0.1/magento/index.php/', 'http://127.0.0.1/magento/index.php/monitoren.html'),
(454, 'http://127.0.0.1/magento/index.php/', 'http://127.0.0.1/magento/index.php/monitoren.html'),
(455, 'http://127.0.0.1/magento/index.php/', 'http://127.0.0.1/magento/index.php/monitoren.html'),
(456, 'http://127.0.0.1/magento/index.php/', 'http://127.0.0.1/magento/index.php/monitoren.html'),
(457, 'http://127.0.0.1/magento/index.php/', 'http://127.0.0.1/magento/index.php/monitoren.html'),
(458, 'http://127.0.0.1/magento/index.php/', 'http://127.0.0.1/magento/index.php/monitoren.html'),
(459, 'http://127.0.0.1/magento/index.php/catalog/category/view/id/6', 'http://127.0.0.1/magento/index.php/'),
(460, 'http://127.0.0.1/magento/index.php/', 'http://127.0.0.1/magento/index.php/monitoren.html'),
(461, 'http://127.0.0.1/magento/index.php/', 'http://127.0.0.1/magento/index.php/monitoren.html'),
(462, 'http://127.0.0.1/magento/index.php/', 'http://127.0.0.1/magento/index.php/monitoren.html'),
(463, 'http://127.0.0.1/magento/index.php/', 'http://127.0.0.1/magento/index.php/monitoren.html'),
(464, 'http://127.0.0.1/magento/index.php/catalog/category/view/id/18', 'http://127.0.0.1/magento/index.php/'),
(465, 'http://127.0.0.1/magento/index.php/', 'http://127.0.0.1/magento/index.php/monitoren.html'),
(466, 'http://127.0.0.1/magento/index.php/', 'http://127.0.0.1/magento/index.php/monitoren.html'),
(467, 'http://127.0.0.1/magento/index.php/', 'http://127.0.0.1/magento/index.php/monitoren.html'),
(468, 'http://127.0.0.1/magento/index.php/', 'http://127.0.0.1/magento/index.php/monitoren.html'),
(469, 'http://127.0.0.1/magento/index.php/', 'http://127.0.0.1/magento/index.php/monitoren.html'),
(470, 'http://127.0.0.1/magento/index.php/', 'http://127.0.0.1/magento/index.php/monitoren.html'),
(471, 'http://127.0.0.1/magento/index.php/', 'http://127.0.0.1/magento/index.php/monitoren.html'),
(472, 'http://127.0.0.1/magento/index.php/', 'http://127.0.0.1/magento/index.php/monitoren.html'),
(473, 'http://127.0.0.1/magento/index.php/', 'http://127.0.0.1/magento/index.php/monitoren.html'),
(474, 'http://127.0.0.1/magento/index.php/', 'http://127.0.0.1/magento/index.php/monitoren.html'),
(475, 'http://127.0.0.1/magento/index.php/catalog/category/view/id/25', 'http://127.0.0.1/magento/index.php/'),
(476, 'http://127.0.0.1/magento/index.php/catalog/category/view/id/26', 'http://127.0.0.1/magento/index.php/'),
(477, 'http://127.0.0.1/magento/index.php/catalog/category/view/id/5', 'http://127.0.0.1/magento/index.php/software/subcategorie-1.html'),
(478, 'http://127.0.0.1/magento/index.php/catalog/category/view/id/10', 'http://127.0.0.1/magento/index.php/software/subcategorie-1.html'),
(479, 'http://127.0.0.1/magento/index.php/catalog/category/view/id/5', 'http://127.0.0.1/magento/index.php/componenten/videokaarten.html'),
(480, 'http://127.0.0.1/magento/index.php/', NULL),
(481, 'http://127.0.0.1/magento/index.php/', NULL),
(482, 'http://127.0.0.1/magento/index.php/', NULL),
(483, 'http://127.0.0.1/magento/index.php/catalog/category/view/id/5', 'http://127.0.0.1/magento/index.php/componenten/videokaarten.html'),
(484, 'http://127.0.0.1/magento/index.php/', NULL),
(485, 'http://127.0.0.1/magento/index.php/', NULL),
(486, 'http://127.0.0.1/magento/index.php/catalog/category/view/id/5', 'http://127.0.0.1/magento/index.php/componenten/videokaarten.html'),
(487, 'http://127.0.0.1/magento/index.php/catalog/category/view/id/5', 'http://127.0.0.1/magento/index.php/componenten/videokaarten.html'),
(488, 'http://127.0.0.1/magento/index.php/', NULL),
(489, 'http://127.0.0.1/magento/index.php/', NULL),
(490, 'http://127.0.0.1/magento/index.php/', NULL),
(491, 'http://127.0.0.1/magento/index.php/', NULL),
(492, 'http://127.0.0.1/magento/index.php/', NULL),
(493, 'http://127.0.0.1/magento/index.php/', NULL),
(494, 'http://127.0.0.1/magento/index.php/', NULL),
(495, 'http://127.0.0.1/magento/index.php/', NULL),
(496, 'http://127.0.0.1/magento/index.php/', NULL),
(497, 'http://127.0.0.1/magento/index.php/', NULL),
(498, 'http://127.0.0.1/magento/index.php/', NULL),
(499, 'http://127.0.0.1/magento/index.php/', NULL),
(500, 'http://127.0.0.1/magento/index.php/', NULL),
(501, 'http://127.0.0.1/magento/index.php/', NULL),
(502, 'http://127.0.0.1/magento/index.php/', NULL),
(503, 'http://127.0.0.1/magento/index.php/', NULL),
(504, 'http://127.0.0.1/magento/index.php/', NULL),
(505, 'http://127.0.0.1/magento/index.php/', NULL),
(506, 'http://127.0.0.1/magento/index.php/', NULL),
(507, 'http://127.0.0.1/magento/index.php/', NULL),
(508, 'http://127.0.0.1/magento/index.php/', NULL),
(509, 'http://127.0.0.1/magento/index.php/', NULL),
(510, 'http://127.0.0.1/magento/index.php/', NULL),
(511, 'http://127.0.0.1/magento/index.php/', NULL),
(512, 'http://127.0.0.1/magento/index.php/', NULL),
(513, 'http://127.0.0.1/magento/index.php/', NULL),
(514, 'http://127.0.0.1/magento/index.php/', NULL),
(515, 'http://127.0.0.1/magento/index.php/', NULL),
(516, 'http://127.0.0.1/magento/index.php/', NULL),
(517, 'http://127.0.0.1/magento/index.php/', NULL),
(518, 'http://127.0.0.1/magento/index.php/', NULL),
(519, 'http://127.0.0.1/magento/index.php/', NULL),
(520, 'http://127.0.0.1/magento/index.php/', NULL),
(521, 'http://127.0.0.1/magento/index.php/', NULL),
(522, 'http://127.0.0.1/magento/index.php/', NULL),
(523, 'http://127.0.0.1/magento/index.php/', NULL),
(524, 'http://127.0.0.1/magento/index.php/', NULL),
(525, 'http://127.0.0.1/magento/index.php/', NULL),
(526, 'http://127.0.0.1/magento/index.php/', NULL),
(527, 'http://127.0.0.1/magento/index.php/', NULL),
(528, 'http://127.0.0.1/magento/index.php/', NULL),
(529, 'http://127.0.0.1/magento/index.php/', NULL),
(530, 'http://127.0.0.1/magento/index.php/', NULL),
(531, 'http://127.0.0.1/magento/index.php/', NULL),
(532, 'http://127.0.0.1/magento/index.php/', NULL),
(533, 'http://127.0.0.1/magento/index.php/', NULL),
(534, 'http://127.0.0.1/magento/index.php/', NULL),
(535, 'http://127.0.0.1/magento/index.php/', NULL),
(536, 'http://127.0.0.1/magento/index.php/catalog/category/view/id/28', 'http://127.0.0.1/magento/index.php/'),
(537, 'http://127.0.0.1/magento/index.php/', NULL),
(538, 'http://127.0.0.1/magento/index.php/', NULL),
(539, 'http://127.0.0.1/magento/index.php/customer/account/login/', 'http://127.0.0.1/magento/index.php/'),
(540, 'http://127.0.0.1/magento/index.php/', NULL),
(541, 'http://127.0.0.1/magento/index.php/', NULL),
(542, 'http://127.0.0.1/magento/index.php/', NULL),
(543, 'http://127.0.0.1/magento/index.php/', NULL),
(544, 'http://127.0.0.1/magento/index.php/', NULL),
(545, 'http://127.0.0.1/magento/index.php/', NULL),
(546, 'http://127.0.0.1/magento/index.php/', NULL),
(547, 'http://127.0.0.1/magento/index.php/', NULL),
(548, 'http://127.0.0.1/magento/index.php/', NULL),
(549, 'http://127.0.0.1/magento/index.php/', NULL),
(550, 'http://127.0.0.1/magento/index.php/', NULL),
(551, 'http://127.0.0.1/magento/index.php/', NULL),
(552, 'http://127.0.0.1/magento/index.php/', NULL),
(553, 'http://127.0.0.1/magento/index.php/', NULL),
(554, 'http://127.0.0.1/magento/index.php/', NULL),
(555, 'http://127.0.0.1/magento/index.php/', NULL),
(556, 'http://127.0.0.1/magento/index.php/', NULL),
(557, 'http://127.0.0.1/magento/index.php/', NULL),
(558, 'http://127.0.0.1/magento/index.php/', NULL),
(559, 'http://127.0.0.1/magento/index.php/', NULL),
(560, 'http://127.0.0.1/magento/index.php/', NULL),
(561, 'http://127.0.0.1/magento/index.php/', NULL),
(562, 'http://127.0.0.1/magento/index.php/:/', 'http://127.0.0.1/magento/index.php/'),
(563, 'http://127.0.0.1/magento/index.php/', NULL),
(564, 'http://127.0.0.1/magento/index.php/', NULL),
(565, 'http://127.0.0.1/magento/index.php/', NULL),
(566, 'http://127.0.0.1/magento/index.php/', NULL),
(567, 'http://127.0.0.1/magento/index.php/', NULL),
(568, 'http://127.0.0.1/magento/index.php/', NULL),
(569, 'http://127.0.0.1/magento/index.php/', NULL),
(570, 'http://127.0.0.1/magento/index.php/', NULL),
(571, 'http://127.0.0.1/magento/index.php/', NULL),
(572, 'http://127.0.0.1/magento/index.php/', NULL),
(573, 'http://127.0.0.1/magento/index.php/', NULL),
(574, 'http://127.0.0.1/magento/index.php/', NULL),
(575, 'http://127.0.0.1/magento/index.php/', NULL),
(576, 'http://127.0.0.1/magento/index.php/', NULL),
(577, 'http://127.0.0.1/magento/index.php/', NULL),
(578, 'http://127.0.0.1/magento/index.php/', NULL),
(579, 'http://127.0.0.1/magento/index.php/', NULL),
(580, 'http://127.0.0.1/magento/index.php/', NULL),
(581, 'http://127.0.0.1/magento/index.php/', NULL),
(582, 'http://127.0.0.1/magento/index.php/', NULL),
(583, 'http://127.0.0.1/magento/index.php/', NULL),
(584, 'http://127.0.0.1/magento/index.php/', NULL),
(585, 'http://127.0.0.1/magento/index.php/', NULL),
(586, 'http://127.0.0.1/magento/index.php/', NULL),
(587, 'http://127.0.0.1/magento/index.php/', NULL),
(588, 'http://127.0.0.1/magento/index.php/', NULL),
(589, 'http://127.0.0.1/magento/index.php/', NULL),
(590, 'http://127.0.0.1/magento/index.php/', NULL),
(591, 'http://127.0.0.1/magento/index.php/', NULL),
(592, 'http://127.0.0.1/magento/index.php/', NULL),
(593, 'http://127.0.0.1/magento/index.php/', NULL),
(594, 'http://127.0.0.1/magento/index.php/', NULL),
(595, 'http://127.0.0.1/magento/index.php/', NULL),
(596, 'http://127.0.0.1/magento/index.php/', NULL),
(597, 'http://127.0.0.1/magento/index.php/', NULL),
(598, 'http://127.0.0.1/magento/index.php/', NULL),
(599, 'http://127.0.0.1/magento/index.php/', NULL),
(600, 'http://127.0.0.1/magento/index.php/', NULL),
(601, 'http://127.0.0.1/magento/index.php/', NULL),
(602, 'http://127.0.0.1/magento/index.php/', NULL),
(603, 'http://127.0.0.1/magento/index.php/', NULL),
(604, 'http://127.0.0.1/magento/index.php/', NULL),
(605, 'http://127.0.0.1/magento/index.php/', NULL),
(606, 'http://127.0.0.1/magento/index.php/', NULL),
(607, 'http://127.0.0.1/magento/index.php/', NULL),
(608, 'http://127.0.0.1/magento/index.php/', NULL),
(609, 'http://127.0.0.1/magento/index.php/', NULL),
(610, 'http://127.0.0.1/magento/index.php/', NULL),
(611, 'http://127.0.0.1/magento/index.php/', NULL),
(612, 'http://127.0.0.1/magento/index.php/', NULL),
(613, 'http://127.0.0.1/magento/index.php/', NULL),
(614, 'http://127.0.0.1/magento/index.php/', NULL),
(615, 'http://127.0.0.1/magento/index.php/', NULL),
(616, 'http://127.0.0.1/magento/index.php/', NULL),
(617, 'http://127.0.0.1/magento/index.php/', NULL),
(618, 'http://127.0.0.1/magento/index.php/', NULL),
(619, 'http://127.0.0.1/magento/index.php/', NULL),
(620, 'http://127.0.0.1/magento/index.php/', NULL),
(621, 'http://127.0.0.1/magento/index.php/', NULL),
(622, 'http://127.0.0.1/magento/index.php/', NULL),
(623, 'http://127.0.0.1/magento/index.php/', NULL),
(624, 'http://127.0.0.1/magento/index.php/', NULL),
(625, 'http://127.0.0.1/magento/index.php/', NULL),
(626, 'http://127.0.0.1/magento/index.php/', NULL),
(627, 'http://127.0.0.1/magento/index.php/', NULL),
(628, 'http://127.0.0.1/magento/index.php/', NULL),
(629, 'http://127.0.0.1/magento/index.php/', NULL),
(630, 'http://127.0.0.1/magento/index.php/', NULL),
(631, 'http://127.0.0.1/magento/index.php/', NULL),
(632, 'http://127.0.0.1/magento/index.php/', NULL),
(633, 'http://127.0.0.1/magento/index.php/', NULL),
(634, 'http://127.0.0.1/magento/index.php/', NULL),
(635, 'http://127.0.0.1/magento/index.php/', NULL),
(636, 'http://127.0.0.1/magento/index.php/', NULL),
(637, 'http://127.0.0.1/magento/index.php/', NULL),
(638, 'http://127.0.0.1/magento/index.php/', NULL),
(639, 'http://127.0.0.1/magento/index.php/', NULL),
(640, 'http://127.0.0.1/magento/index.php/', NULL),
(641, 'http://127.0.0.1/magento/index.php/', NULL),
(642, 'http://127.0.0.1/magento/index.php/', NULL),
(643, 'http://127.0.0.1/magento/index.php/', NULL),
(644, 'http://127.0.0.1/magento/index.php/', NULL),
(645, 'http://127.0.0.1/magento/index.php/', NULL),
(646, 'http://127.0.0.1/magento/index.php/customer/account/login/', 'http://127.0.0.1/magento/index.php/'),
(647, 'http://127.0.0.1/magento/index.php/', NULL),
(648, 'http://127.0.0.1/magento/index.php/', NULL),
(649, 'http://127.0.0.1/magento/index.php/', NULL),
(650, 'http://127.0.0.1/magento/index.php/', NULL),
(651, 'http://127.0.0.1/magento/index.php/', NULL),
(652, 'http://127.0.0.1/magento/index.php/', NULL),
(653, 'http://127.0.0.1/magento/index.php/catalog/category/view/id/19', 'http://127.0.0.1/magento/index.php/'),
(654, 'http://127.0.0.1/magento/index.php/', NULL),
(655, 'http://127.0.0.1/magento/index.php/', NULL),
(656, 'http://127.0.0.1/magento/index.php/', NULL),
(657, 'http://127.0.0.1/magento/index.php/', NULL),
(658, 'http://127.0.0.1/magento/index.php/', NULL),
(659, 'http://127.0.0.1/magento/index.php/', NULL),
(660, 'http://127.0.0.1/magento/index.php/', NULL),
(661, 'http://127.0.0.1/magento/index.php/', NULL),
(662, 'http://127.0.0.1/magento/index.php/', NULL),
(663, 'http://127.0.0.1/magento/index.php/', NULL),
(664, 'http://127.0.0.1/magento/index.php/', NULL),
(665, 'http://127.0.0.1/magento/index.php/', NULL),
(666, 'http://127.0.0.1/magento/skin/frontend/default/thebis/img/bg_titlebar.png', 'http://127.0.0.1/magento/skin/frontend/default/thebis/css/styles.css'),
(667, 'http://127.0.0.1/magento/index.php/', NULL),
(668, 'http://127.0.0.1/magento/index.php/', NULL),
(669, 'http://127.0.0.1/magento/index.php/', NULL),
(670, 'http://127.0.0.1/magento/index.php/', NULL),
(671, 'http://127.0.0.1/magento/index.php/', NULL),
(672, 'http://127.0.0.1/magento/index.php/', NULL),
(673, 'http://127.0.0.1/magento/index.php/', NULL),
(674, 'http://127.0.0.1/magento/index.php/', NULL);
INSERT INTO `log_url_info` (`url_id`, `url`, `referer`) VALUES
(675, 'http://127.0.0.1/magento/index.php/', NULL),
(676, 'http://127.0.0.1/magento/index.php/', NULL),
(677, 'http://127.0.0.1/magento/index.php/', NULL),
(678, 'http://127.0.0.1/magento/index.php/', NULL),
(679, 'http://127.0.0.1/magento/index.php/', NULL),
(680, 'http://127.0.0.1/magento/index.php/', NULL),
(681, 'http://127.0.0.1/magento/index.php/', NULL),
(682, 'http://127.0.0.1/magento/index.php/', NULL),
(683, 'http://127.0.0.1/magento/index.php/', NULL),
(684, 'http://127.0.0.1/magento/index.php/', NULL),
(685, 'http://127.0.0.1/magento/index.php/', NULL),
(686, 'http://127.0.0.1/magento/index.php/', NULL),
(687, 'http://127.0.0.1/magento/index.php/', NULL),
(688, 'http://127.0.0.1/magento/index.php/', NULL),
(689, 'http://127.0.0.1/magento/index.php/', NULL),
(690, 'http://127.0.0.1/magento/index.php/', NULL),
(691, 'http://127.0.0.1/magento/index.php/', NULL),
(692, 'http://127.0.0.1/magento/index.php/', NULL),
(693, 'http://127.0.0.1/magento/index.php/', NULL),
(694, 'http://127.0.0.1/magento/index.php/', NULL),
(695, 'http://127.0.0.1/magento/index.php/catalog/category/view/id/7', 'http://127.0.0.1/magento/index.php/'),
(696, 'http://127.0.0.1/magento/index.php/', NULL),
(697, 'http://127.0.0.1/magento/index.php/', NULL),
(698, 'http://127.0.0.1/magento/index.php/', NULL),
(699, 'http://127.0.0.1/magento/index.php/', NULL),
(700, 'http://127.0.0.1/magento/index.php/', NULL),
(701, 'http://127.0.0.1/magento/index.php/', NULL),
(702, 'http://127.0.0.1/magento/index.php/', NULL),
(703, 'http://127.0.0.1/magento/index.php/', NULL),
(704, 'http://127.0.0.1/magento/index.php/', NULL),
(705, 'http://127.0.0.1/magento/index.php/', NULL),
(706, 'http://127.0.0.1/magento/skin/frontend/default/thebis/img/banner_114.png', 'http://127.0.0.1/magento/skin/frontend/default/thebis/css/styles.css'),
(707, 'http://127.0.0.1/magento/index.php/', NULL),
(708, 'http://127.0.0.1/magento/skin/frontend/default/thebis/img/banner_114.png', 'http://127.0.0.1/magento/skin/frontend/default/thebis/css/styles.css'),
(709, 'http://127.0.0.1/magento/index.php/', NULL),
(710, 'http://127.0.0.1/magento/skin/frontend/default/thebis/img/banner_114.png', 'http://127.0.0.1/magento/skin/frontend/default/thebis/css/styles.css'),
(711, 'http://127.0.0.1/magento/index.php/', NULL),
(712, 'http://127.0.0.1/magento/index.php/', NULL),
(713, 'http://127.0.0.1/magento/index.php/', NULL),
(714, 'http://127.0.0.1/magento/index.php/', NULL),
(715, 'http://127.0.0.1/magento/index.php/', NULL),
(716, 'http://127.0.0.1/magento/index.php/', NULL),
(717, 'http://127.0.0.1/magento/index.php/', NULL),
(718, 'http://127.0.0.1/magento/index.php/catalogsearch/result/?q=sd', 'http://127.0.0.1/magento/index.php/'),
(719, 'http://127.0.0.1/magento/index.php/catalogsearch/ajax/suggest/?q=sd', 'http://127.0.0.1/magento/index.php/'),
(720, 'http://127.0.0.1/magento/index.php/', NULL),
(721, 'http://127.0.0.1/magento/index.php/', NULL),
(722, 'http://127.0.0.1/magento/index.php/', NULL),
(723, 'http://127.0.0.1/magento/index.php/', NULL),
(724, 'http://127.0.0.1/magento/index.php/', NULL),
(725, 'http://127.0.0.1/magento/index.php/', NULL),
(726, 'http://127.0.0.1/magento/index.php/', NULL),
(727, 'http://127.0.0.1/magento/index.php/', NULL),
(728, 'http://127.0.0.1/magento/index.php/', NULL),
(729, 'http://127.0.0.1/magento/index.php/', NULL),
(730, 'http://127.0.0.1/magento/index.php/', NULL),
(731, 'http://127.0.0.1/magento/index.php/', NULL),
(732, 'http://127.0.0.1/magento/index.php/', NULL),
(733, 'http://127.0.0.1/magento/index.php/', NULL),
(734, 'http://127.0.0.1/magento/index.php/', NULL),
(735, 'http://127.0.0.1/magento/index.php/', NULL),
(736, 'http://127.0.0.1/magento/index.php/', NULL),
(737, 'http://127.0.0.1/magento/index.php/', NULL),
(738, 'http://127.0.0.1/magento/index.php/', NULL),
(739, 'http://127.0.0.1/magento/index.php/', NULL),
(740, 'http://127.0.0.1/magento/index.php/', NULL),
(741, 'http://127.0.0.1/magento/index.php/', NULL),
(742, 'http://127.0.0.1/magento/index.php/', NULL),
(743, 'http://127.0.0.1/magento/index.php/', NULL),
(744, 'http://127.0.0.1/magento/index.php/', NULL),
(745, 'http://127.0.0.1/magento/index.php/', NULL),
(746, 'http://127.0.0.1/magento/index.php/', NULL),
(747, 'http://127.0.0.1/magento/index.php/', NULL),
(748, 'http://127.0.0.1/magento/index.php/', NULL),
(749, 'http://127.0.0.1/magento/index.php/', NULL),
(750, 'http://127.0.0.1/magento/index.php/', NULL),
(751, 'http://127.0.0.1/magento/index.php/', NULL),
(752, 'http://127.0.0.1/magento/index.php/', NULL),
(753, 'http://127.0.0.1/magento/index.php/', NULL),
(754, 'http://127.0.0.1/magento/index.php/', NULL),
(755, 'http://127.0.0.1/magento/index.php/', NULL),
(756, 'http://127.0.0.1/magento/index.php/', NULL),
(757, 'http://127.0.0.1/magento/index.php/', NULL),
(758, 'http://127.0.0.1/magento/index.php/', NULL),
(759, 'http://127.0.0.1/magento/index.php/', NULL),
(760, 'http://127.0.0.1/magento/index.php/', NULL),
(761, 'http://127.0.0.1/magento/index.php/', NULL),
(762, 'http://127.0.0.1/magento/index.php/catalogsearch/ajax/suggest/?q=Search%20entire%20store%20here...', 'http://127.0.0.1/magento/index.php/'),
(763, 'http://127.0.0.1/magento/index.php/', NULL),
(764, 'http://127.0.0.1/magento/index.php/', NULL),
(765, 'http://127.0.0.1/magento/index.php/', NULL),
(766, 'http://127.0.0.1/magento/index.php/', NULL),
(767, 'http://127.0.0.1/magento/index.php/', NULL),
(768, 'http://127.0.0.1/magento/index.php/', NULL),
(769, 'http://127.0.0.1/magento/index.php/catalogsearch/result/?q=rfer', 'http://127.0.0.1/magento/index.php/'),
(770, 'http://127.0.0.1/magento/index.php/catalogsearch/ajax/suggest/?q=rfer', 'http://127.0.0.1/magento/index.php/'),
(771, 'http://127.0.0.1/magento/index.php/', NULL),
(772, 'http://127.0.0.1/magento/index.php/', NULL),
(773, 'http://127.0.0.1/magento/index.php/', NULL),
(774, 'http://127.0.0.1/magento/index.php/', NULL),
(775, 'http://127.0.0.1/magento/index.php/', NULL),
(776, 'http://127.0.0.1/magento/index.php/', NULL),
(777, 'http://127.0.0.1/magento/index.php/', NULL),
(778, 'http://127.0.0.1/magento/index.php/', NULL),
(779, 'http://127.0.0.1/magento/index.php/', NULL),
(780, 'http://127.0.0.1/magento/index.php/', NULL),
(781, 'http://127.0.0.1/magento/index.php/', NULL),
(782, 'http://127.0.0.1/magento/index.php/', NULL),
(783, 'http://127.0.0.1/magento/index.php/', NULL),
(784, 'http://127.0.0.1/magento/index.php/', NULL),
(785, 'http://127.0.0.1/magento/index.php/catalogsearch/ajax/suggest/?q=sdsdsd', 'http://127.0.0.1/magento/index.php/'),
(786, 'http://127.0.0.1/magento/index.php/', NULL),
(787, 'http://127.0.0.1/magento/index.php/', NULL),
(788, 'http://127.0.0.1/magento/index.php/', NULL),
(789, 'http://127.0.0.1/magento/index.php/', NULL),
(790, 'http://127.0.0.1/magento/index.php/', NULL),
(791, 'http://127.0.0.1/magento/index.php/', NULL),
(792, 'http://127.0.0.1/magento/index.php/', NULL),
(793, 'http://127.0.0.1/magento/index.php/', NULL),
(794, 'http://127.0.0.1/magento/index.php/catalogsearch/ajax/suggest/?q=sdsd', 'http://127.0.0.1/magento/index.php/'),
(795, 'http://127.0.0.1/magento/index.php/catalogsearch/ajax/suggest/?q=sdsdddddddddddddddddddddddddddddddd', 'http://127.0.0.1/magento/index.php/'),
(796, 'http://127.0.0.1/magento/index.php/catalogsearch/ajax/suggest/?q=Zoeken', 'http://127.0.0.1/magento/index.php/'),
(797, 'http://127.0.0.1/magento/index.php/', NULL),
(798, 'http://127.0.0.1/magento/index.php/', NULL),
(799, 'http://127.0.0.1/magento/index.php/', NULL),
(800, 'http://127.0.0.1/magento/index.php/', NULL),
(801, 'http://127.0.0.1/magento/index.php/', NULL),
(802, 'http://127.0.0.1/magento/index.php/', NULL),
(803, 'http://127.0.0.1/magento/index.php/', NULL),
(804, 'http://127.0.0.1/magento/index.php/', NULL),
(805, 'http://127.0.0.1/magento/index.php/', NULL),
(806, 'http://127.0.0.1/magento/index.php/', NULL),
(807, 'http://127.0.0.1/magento/index.php/', NULL),
(808, 'http://127.0.0.1/magento/index.php/', NULL),
(809, 'http://127.0.0.1/magento/index.php/', NULL),
(810, 'http://127.0.0.1/magento/index.php/', NULL),
(811, 'http://127.0.0.1/magento/index.php/', NULL),
(812, 'http://127.0.0.1/magento/index.php/', NULL),
(813, 'http://127.0.0.1/magento/index.php/', NULL),
(814, 'http://127.0.0.1/magento/index.php/', NULL),
(815, 'http://127.0.0.1/magento/index.php/', NULL),
(816, 'http://127.0.0.1/magento/index.php/catalogsearch/ajax/suggest/?q=dfdfdfdf', 'http://127.0.0.1/magento/index.php/'),
(817, 'http://127.0.0.1/magento/index.php/', NULL),
(818, 'http://127.0.0.1/magento/index.php/', NULL),
(819, 'http://127.0.0.1/magento/index.php/', NULL),
(820, 'http://127.0.0.1/magento/index.php/', NULL),
(821, 'http://127.0.0.1/magento/index.php/catalogsearch/ajax/suggest/?q=dfdfdf', 'http://127.0.0.1/magento/index.php/'),
(822, 'http://127.0.0.1/magento/index.php/catalogsearch/ajax/suggest/?q=dfdfdffffffffffffffffffffffffffffffffffffffffffffff', 'http://127.0.0.1/magento/index.php/'),
(823, 'http://127.0.0.1/magento/index.php/catalogsearch/ajax/suggest/?q=fff', 'http://127.0.0.1/magento/index.php/'),
(824, 'http://127.0.0.1/magento/index.php/catalogsearch/ajax/suggest/?q=Zoeken', 'http://127.0.0.1/magento/index.php/'),
(825, 'http://127.0.0.1/magento/index.php/', NULL),
(826, 'http://127.0.0.1/magento/index.php/', NULL),
(827, 'http://127.0.0.1/magento/index.php/', NULL),
(828, 'http://127.0.0.1/magento/index.php/', NULL),
(829, 'http://127.0.0.1/magento/index.php/', NULL),
(830, 'http://127.0.0.1/magento/index.php/', NULL),
(831, 'http://127.0.0.1/magento/index.php/', NULL),
(832, 'http://127.0.0.1/magento/index.php/', NULL),
(833, 'http://127.0.0.1/magento/index.php/', NULL),
(834, 'http://127.0.0.1/magento/index.php/', NULL),
(835, 'http://127.0.0.1/magento/index.php/', NULL),
(836, 'http://127.0.0.1/magento/index.php/', NULL),
(837, 'http://127.0.0.1/magento/index.php/', NULL),
(838, 'http://127.0.0.1/magento/index.php/', NULL),
(839, 'http://127.0.0.1/magento/index.php/catalogsearch/ajax/suggest/?q=dwdwd', 'http://127.0.0.1/magento/index.php/'),
(840, 'http://127.0.0.1/magento/index.php/', NULL),
(841, 'http://127.0.0.1/magento/index.php/', NULL),
(842, 'http://127.0.0.1/magento/index.php/', NULL),
(843, 'http://127.0.0.1/magento/index.php/', NULL),
(844, 'http://127.0.0.1/magento/index.php/', NULL),
(845, 'http://127.0.0.1/magento/index.php/', NULL),
(846, 'http://127.0.0.1/magento/index.php/', NULL),
(847, 'http://127.0.0.1/magento/index.php/', NULL),
(848, 'http://127.0.0.1/magento/index.php/', NULL),
(849, 'http://127.0.0.1/magento/index.php/', NULL),
(850, 'http://127.0.0.1/magento/index.php/', NULL),
(851, 'http://127.0.0.1/magento/index.php/', NULL),
(852, 'http://127.0.0.1/magento/index.php/', NULL),
(853, 'http://127.0.0.1/magento/index.php/', NULL),
(854, 'http://127.0.0.1/magento/index.php/', NULL),
(855, 'http://127.0.0.1/magento/index.php/', NULL),
(856, 'http://127.0.0.1/magento/index.php/', NULL),
(857, 'http://127.0.0.1/magento/index.php/', NULL),
(858, 'http://127.0.0.1/magento/index.php/', NULL),
(859, 'http://127.0.0.1/magento/index.php/', NULL),
(860, 'http://127.0.0.1/magento/index.php/', NULL),
(861, 'http://127.0.0.1/magento/index.php/', NULL),
(862, 'http://127.0.0.1/magento/index.php/', NULL),
(863, 'http://127.0.0.1/magento/index.php/', NULL),
(864, 'http://127.0.0.1/magento/index.php/', NULL),
(865, 'http://127.0.0.1/magento/index.php/', NULL),
(866, 'http://127.0.0.1/magento/index.php/', NULL),
(867, 'http://127.0.0.1/magento/index.php/', NULL),
(868, 'http://127.0.0.1/magento/index.php/', NULL),
(869, 'http://127.0.0.1/magento/index.php/', NULL),
(870, 'http://127.0.0.1/magento/index.php/', NULL),
(871, 'http://127.0.0.1/magento/index.php/', NULL),
(872, 'http://127.0.0.1/magento/index.php/', NULL),
(873, 'http://127.0.0.1/magento/index.php/', NULL),
(874, 'http://127.0.0.1/magento/index.php/', NULL),
(875, 'http://127.0.0.1/magento/index.php/', NULL),
(876, 'http://127.0.0.1/magento/index.php/', NULL),
(877, 'http://127.0.0.1/magento/index.php/', NULL),
(878, 'http://127.0.0.1/magento/index.php/', NULL),
(879, 'http://127.0.0.1/magento/index.php/', NULL),
(880, 'http://127.0.0.1/magento/index.php/', NULL),
(881, 'http://127.0.0.1/magento/index.php/', NULL),
(882, 'http://127.0.0.1/magento/index.php/', NULL),
(883, 'http://127.0.0.1/magento/index.php/', NULL),
(884, 'http://127.0.0.1/magento/index.php/catalogsearch/ajax/suggest/?q=edwd', 'http://127.0.0.1/magento/index.php/'),
(885, 'http://127.0.0.1/magento/index.php/catalogsearch/result/?q=edwd', 'http://127.0.0.1/magento/index.php/'),
(886, 'http://127.0.0.1/magento/index.php/', NULL),
(887, 'http://127.0.0.1/magento/index.php/', NULL),
(888, 'http://127.0.0.1/magento/index.php/', NULL),
(889, 'http://127.0.0.1/magento/index.php/', NULL),
(890, 'http://127.0.0.1/magento/index.php/', NULL),
(891, 'http://127.0.0.1/magento/index.php/', NULL),
(892, 'http://127.0.0.1/magento/index.php/', NULL),
(893, 'http://127.0.0.1/magento/index.php/', NULL),
(894, 'http://127.0.0.1/magento/index.php/', NULL),
(895, 'http://127.0.0.1/magento/index.php/', NULL),
(896, 'http://127.0.0.1/magento/index.php/', NULL),
(897, 'http://127.0.0.1/magento/index.php/', NULL),
(898, 'http://127.0.0.1/magento/index.php/', NULL),
(899, 'http://127.0.0.1/magento/index.php/', NULL),
(900, 'http://127.0.0.1/magento/index.php/', NULL),
(901, 'http://127.0.0.1/magento/index.php/', NULL),
(902, 'http://127.0.0.1/magento/index.php/', NULL),
(903, 'http://127.0.0.1/magento/index.php/', NULL),
(904, 'http://127.0.0.1/magento/index.php/', NULL),
(905, 'http://127.0.0.1/magento/index.php/', NULL),
(906, 'http://127.0.0.1/magento/index.php/', NULL),
(907, 'http://127.0.0.1/magento/index.php/', NULL),
(908, 'http://127.0.0.1/magento/index.php/', NULL),
(909, 'http://127.0.0.1/magento/index.php/', NULL),
(910, 'http://127.0.0.1/magento/index.php/', NULL),
(911, 'http://127.0.0.1/magento/index.php/', NULL),
(912, 'http://127.0.0.1/magento/index.php/', NULL),
(913, 'http://127.0.0.1/magento/index.php/', NULL),
(914, 'http://127.0.0.1/magento/index.php/', NULL),
(915, 'http://127.0.0.1/magento/index.php/', NULL),
(916, 'http://127.0.0.1/magento/index.php/', NULL),
(917, 'http://127.0.0.1/magento/index.php/', NULL),
(918, 'http://127.0.0.1/magento/index.php/', NULL),
(919, 'http://127.0.0.1/magento/index.php/', NULL),
(920, 'http://127.0.0.1/magento/index.php/checkout/', 'http://127.0.0.1/magento/index.php/'),
(921, 'http://127.0.0.1/magento/index.php/checkout/onepage/', 'http://127.0.0.1/magento/index.php/'),
(922, 'http://127.0.0.1/magento/index.php/checkout/cart/', 'http://127.0.0.1/magento/index.php/'),
(923, 'http://127.0.0.1/magento/index.php/', NULL),
(924, 'http://127.0.0.1/magento/index.php/checkout/cart/', 'http://127.0.0.1/magento/index.php/'),
(925, 'http://127.0.0.1/magento/index.php/', NULL),
(926, 'http://127.0.0.1/magento/index.php/', NULL),
(927, 'http://127.0.0.1/magento/index.php/', NULL),
(928, 'http://127.0.0.1/magento/index.php/', NULL),
(929, 'http://127.0.0.1/magento/index.php/', NULL),
(930, 'http://127.0.0.1/magento/index.php/', NULL),
(931, 'http://127.0.0.1/magento/index.php/', NULL),
(932, 'http://127.0.0.1/magento/index.php/', NULL),
(933, 'http://127.0.0.1/magento/index.php/', NULL),
(934, 'http://127.0.0.1/magento/index.php/', NULL),
(935, 'http://127.0.0.1/magento/index.php/', NULL),
(936, 'http://127.0.0.1/magento/index.php/', NULL),
(937, 'http://127.0.0.1/magento/index.php/', NULL),
(938, 'http://127.0.0.1/magento/index.php/', NULL),
(939, 'http://127.0.0.1/magento/index.php/', NULL),
(940, 'http://127.0.0.1/magento/index.php/', NULL),
(941, 'http://127.0.0.1/magento/index.php/', NULL),
(942, 'http://127.0.0.1/magento/index.php/', NULL),
(943, 'http://127.0.0.1/magento/index.php/', NULL),
(944, 'http://127.0.0.1/magento/index.php/', NULL),
(945, 'http://127.0.0.1/magento/index.php/', NULL),
(946, 'http://127.0.0.1/magento/index.php/', NULL),
(947, 'http://127.0.0.1/magento/index.php/', NULL),
(948, 'http://127.0.0.1/magento/index.php/', NULL),
(949, 'http://127.0.0.1/magento/index.php/', NULL),
(950, 'http://127.0.0.1/magento/index.php/', NULL),
(951, 'http://127.0.0.1/magento/index.php/', NULL),
(952, 'http://127.0.0.1/magento/index.php/', NULL),
(953, 'http://127.0.0.1/magento/index.php/', NULL),
(954, 'http://127.0.0.1/magento/index.php/', NULL),
(955, 'http://127.0.0.1/magento/index.php/', NULL),
(956, 'http://127.0.0.1/magento/index.php/', NULL),
(957, 'http://127.0.0.1/magento/index.php/', NULL),
(958, 'http://127.0.0.1/magento/index.php/', NULL),
(959, 'http://127.0.0.1/magento/index.php/', NULL),
(960, 'http://127.0.0.1/magento/index.php/', NULL),
(961, 'http://127.0.0.1/magento/index.php/', NULL),
(962, 'http://127.0.0.1/magento/index.php/catalogsearch/result/?q=uk', 'http://127.0.0.1/magento/index.php/'),
(963, 'http://127.0.0.1/magento/index.php/catalogsearch/ajax/suggest/?q=uk', 'http://127.0.0.1/magento/index.php/'),
(964, 'http://127.0.0.1/magento/index.php/', NULL),
(965, 'http://127.0.0.1/magento/index.php/', NULL),
(966, 'http://127.0.0.1/magento/index.php/', NULL),
(967, 'http://127.0.0.1/magento/index.php/', NULL),
(968, 'http://127.0.0.1/magento/index.php/', NULL),
(969, 'http://127.0.0.1/magento/index.php/', NULL),
(970, 'http://127.0.0.1/magento/index.php/', NULL),
(971, 'http://127.0.0.1/magento/index.php/', NULL),
(972, 'http://127.0.0.1/magento/index.php/', NULL),
(973, 'http://127.0.0.1/magento/index.php/', NULL),
(974, 'http://127.0.0.1/magento/index.php/catalogsearch/ajax/suggest/?q=fdfdfdf', 'http://127.0.0.1/magento/index.php/'),
(975, 'http://127.0.0.1/magento/index.php/catalogsearch/ajax/suggest/?q=fdfdfd', 'http://127.0.0.1/magento/index.php/'),
(976, 'http://127.0.0.1/magento/index.php/catalogsearch/ajax/suggest/?q=fdfdf', 'http://127.0.0.1/magento/index.php/'),
(977, 'http://127.0.0.1/magento/index.php/catalogsearch/ajax/suggest/?q=Zoeken', 'http://127.0.0.1/magento/index.php/'),
(978, 'http://127.0.0.1/magento/index.php/catalogsearch/ajax/suggest/?q=fgfg', 'http://127.0.0.1/magento/index.php/'),
(979, 'http://127.0.0.1/magento/index.php/', NULL),
(980, 'http://127.0.0.1/magento/index.php/', NULL),
(981, 'http://127.0.0.1/magento/index.php/', NULL),
(982, 'http://127.0.0.1/magento/index.php/', NULL),
(983, 'http://127.0.0.1/magento/index.php/', NULL),
(984, 'http://127.0.0.1/magento/index.php/', NULL),
(985, 'http://127.0.0.1/magento/index.php/', NULL),
(986, 'http://127.0.0.1/magento/index.php/', NULL),
(987, 'http://127.0.0.1/magento/index.php/', NULL),
(988, 'http://127.0.0.1/magento/index.php/', NULL),
(989, 'http://127.0.0.1/magento/index.php/', NULL),
(990, 'http://127.0.0.1/magento/index.php/', NULL),
(991, 'http://127.0.0.1/magento/index.php/', NULL),
(992, 'http://127.0.0.1/magento/index.php/', NULL),
(993, 'http://127.0.0.1/magento/index.php/', NULL),
(994, 'http://127.0.0.1/magento/index.php/', NULL),
(995, 'http://127.0.0.1/magento/index.php/', NULL),
(996, 'http://127.0.0.1/magento/index.php/', NULL),
(997, 'http://127.0.0.1/magento/index.php/', NULL),
(998, 'http://127.0.0.1/magento/index.php/', NULL),
(999, 'http://127.0.0.1/magento/index.php/', NULL),
(1000, 'http://127.0.0.1/magento/index.php/', NULL),
(1001, 'http://127.0.0.1/magento/index.php/', NULL),
(1002, 'http://127.0.0.1/magento/index.php/', NULL),
(1003, 'http://127.0.0.1/magento/index.php/', NULL),
(1004, 'http://127.0.0.1/magento/index.php/', NULL),
(1005, 'http://127.0.0.1/magento/index.php/', NULL),
(1006, 'http://127.0.0.1/magento/index.php/', NULL),
(1007, 'http://127.0.0.1/magento/index.php/', NULL),
(1008, 'http://127.0.0.1/magento/index.php/', NULL),
(1009, 'http://127.0.0.1/magento/index.php/', NULL),
(1010, 'http://127.0.0.1/magento/index.php/', NULL),
(1011, 'http://127.0.0.1/magento/index.php/', NULL),
(1012, 'http://127.0.0.1/magento/index.php/', NULL),
(1013, 'http://127.0.0.1/magento/index.php/', NULL),
(1014, 'http://127.0.0.1/magento/index.php/', NULL),
(1015, 'http://127.0.0.1/magento/index.php/', NULL),
(1016, 'http://127.0.0.1/magento/index.php/', NULL),
(1017, 'http://127.0.0.1/magento/index.php/', NULL),
(1018, 'http://127.0.0.1/magento/index.php/', NULL),
(1019, 'http://127.0.0.1/magento/index.php/', NULL),
(1020, 'http://127.0.0.1/magento/index.php/', NULL),
(1021, 'http://127.0.0.1/magento/index.php/checkout/', 'http://127.0.0.1/magento/index.php/'),
(1022, 'http://127.0.0.1/magento/index.php/checkout/onepage/', 'http://127.0.0.1/magento/index.php/'),
(1023, 'http://127.0.0.1/magento/index.php/checkout/cart/', 'http://127.0.0.1/magento/index.php/'),
(1024, 'http://127.0.0.1/magento/index.php/', NULL),
(1025, 'http://127.0.0.1/magento/index.php/', NULL),
(1026, 'http://127.0.0.1/magento/index.php/', NULL),
(1027, 'http://127.0.0.1/magento/index.php/', NULL),
(1028, 'http://127.0.0.1/magento/index.php/', NULL),
(1029, 'http://127.0.0.1/magento/index.php/', NULL),
(1030, 'http://127.0.0.1/magento/index.php/', NULL),
(1031, 'http://127.0.0.1/magento/index.php/', NULL),
(1032, 'http://127.0.0.1/magento/index.php/', NULL),
(1033, 'http://127.0.0.1/magento/index.php/', NULL),
(1034, 'http://127.0.0.1/magento/index.php/', NULL),
(1035, 'http://127.0.0.1/magento/index.php/', NULL),
(1036, 'http://127.0.0.1/magento/index.php/', NULL),
(1037, 'http://127.0.0.1/magento/index.php/', NULL),
(1038, 'http://127.0.0.1/magento/index.php/', NULL),
(1039, 'http://127.0.0.1/magento/index.php/', NULL),
(1040, 'http://127.0.0.1/magento/index.php/', NULL),
(1041, 'http://127.0.0.1/magento/index.php/', NULL),
(1042, 'http://127.0.0.1/magento/index.php/', NULL),
(1043, 'http://127.0.0.1/magento/index.php/', NULL),
(1044, 'http://127.0.0.1/magento/index.php/', NULL),
(1045, 'http://127.0.0.1/magento/index.php/', NULL),
(1046, 'http://127.0.0.1/magento/index.php/', NULL),
(1047, 'http://127.0.0.1/magento/index.php/', NULL),
(1048, 'http://127.0.0.1/magento/index.php/', NULL),
(1049, 'http://127.0.0.1/magento/index.php/', NULL),
(1050, 'http://127.0.0.1/magento/index.php/', NULL),
(1051, 'http://127.0.0.1/magento/index.php/', NULL),
(1052, 'http://127.0.0.1/magento/index.php/', NULL),
(1053, 'http://127.0.0.1/magento/index.php/', NULL),
(1054, 'http://127.0.0.1/magento/index.php/', NULL),
(1055, 'http://127.0.0.1/magento/index.php/', NULL),
(1056, 'http://127.0.0.1/magento/index.php/', NULL),
(1057, 'http://127.0.0.1/magento/index.php/', NULL),
(1058, 'http://127.0.0.1/magento/index.php/', NULL),
(1059, 'http://127.0.0.1/magento/index.php/', NULL),
(1060, 'http://127.0.0.1/magento/index.php/', NULL),
(1061, 'http://127.0.0.1/magento/index.php/', NULL),
(1062, 'http://127.0.0.1/magento/index.php/', NULL),
(1063, 'http://127.0.0.1/magento/index.php/', NULL),
(1064, 'http://127.0.0.1/magento/index.php/', NULL),
(1065, 'http://127.0.0.1/magento/index.php/', NULL),
(1066, 'http://127.0.0.1/magento/index.php/', NULL),
(1067, 'http://127.0.0.1/magento/index.php/', NULL),
(1068, 'http://127.0.0.1/magento/index.php/', NULL),
(1069, 'http://127.0.0.1/magento/index.php/', NULL),
(1070, 'http://127.0.0.1/magento/index.php/', NULL),
(1071, 'http://127.0.0.1/magento/index.php/', NULL),
(1072, 'http://127.0.0.1/magento/index.php/', NULL),
(1073, 'http://127.0.0.1/magento/index.php/', NULL),
(1074, 'http://127.0.0.1/magento/index.php/', NULL),
(1075, 'http://127.0.0.1/magento/index.php/', NULL),
(1076, 'http://127.0.0.1/magento/index.php/', NULL),
(1077, 'http://127.0.0.1/magento/index.php/', NULL),
(1078, 'http://127.0.0.1/magento/index.php/', NULL),
(1079, 'http://127.0.0.1/magento/index.php/', NULL),
(1080, 'http://127.0.0.1/magento/index.php/', NULL),
(1081, 'http://127.0.0.1/magento/index.php/', NULL),
(1082, 'http://127.0.0.1/magento/index.php/', NULL),
(1083, 'http://127.0.0.1/magento/index.php/', NULL),
(1084, 'http://127.0.0.1/magento/index.php/', NULL),
(1085, 'http://127.0.0.1/magento/index.php/', NULL),
(1086, 'http://127.0.0.1/magento/index.php/', NULL),
(1087, 'http://127.0.0.1/magento/index.php/', NULL),
(1088, 'http://127.0.0.1/magento/index.php/', NULL),
(1089, 'http://127.0.0.1/magento/index.php/', NULL),
(1090, 'http://127.0.0.1/magento/index.php/', NULL),
(1091, 'http://127.0.0.1/magento/index.php/', NULL),
(1092, 'http://127.0.0.1/magento/index.php/', NULL),
(1093, 'http://127.0.0.1/magento/index.php/', NULL),
(1094, 'http://127.0.0.1/magento/index.php/', NULL),
(1095, 'http://127.0.0.1/magento/index.php/', NULL),
(1096, 'http://127.0.0.1/magento/index.php/', NULL),
(1097, 'http://127.0.0.1/magento/js/js/coin-slider.min.js', 'http://127.0.0.1/magento/index.php/'),
(1098, 'http://127.0.0.1/magento/js/js/jquery-1.7.1.min.js', 'http://127.0.0.1/magento/index.php/'),
(1099, 'http://127.0.0.1/magento/index.php/img/slider_01.png', 'http://127.0.0.1/magento/index.php/'),
(1100, 'http://127.0.0.1/magento/js/js/coin-slider.min.js', 'http://127.0.0.1/magento/index.php/'),
(1101, 'http://127.0.0.1/magento/index.php/img/slider_01.png', 'http://127.0.0.1/magento/index.php/'),
(1102, 'http://127.0.0.1/magento/index.php/', NULL),
(1103, 'http://127.0.0.1/magento/js/js/jquery-1.7.1.min.js', 'http://127.0.0.1/magento/index.php/'),
(1104, 'http://127.0.0.1/magento/index.php/img/slider_01.png', 'http://127.0.0.1/magento/index.php/'),
(1105, 'http://127.0.0.1/magento/js/js/coin-slider.min.js', 'http://127.0.0.1/magento/index.php/'),
(1106, 'http://127.0.0.1/magento/index.php/img/slider_01.png', 'http://127.0.0.1/magento/index.php/'),
(1107, 'http://127.0.0.1/magento/index.php/slider_01_url', 'http://127.0.0.1/magento/index.php/'),
(1108, 'http://127.0.0.1/magento/index.php/', NULL),
(1109, 'http://127.0.0.1/magento/js/js/coin-slider.min.js', 'http://127.0.0.1/magento/index.php/'),
(1110, 'http://127.0.0.1/magento/js/js/jquery-1.7.1.min.js', 'http://127.0.0.1/magento/index.php/'),
(1111, 'http://127.0.0.1/magento/index.php/img/slider_01.png', 'http://127.0.0.1/magento/index.php/'),
(1112, 'http://127.0.0.1/magento/js/js/coin-slider.min.js', 'http://127.0.0.1/magento/index.php/'),
(1113, 'http://127.0.0.1/magento/index.php/img/slider_01.png', 'http://127.0.0.1/magento/index.php/'),
(1114, 'http://127.0.0.1/magento/index.php/img/slider_01.png', NULL),
(1115, 'http://127.0.0.1/magento/index.php/', NULL),
(1116, 'http://127.0.0.1/magento/img/slider_01.png', 'http://127.0.0.1/magento/index.php/'),
(1117, 'http://127.0.0.1/magento/js/js/jquery-1.7.1.min.js', 'http://127.0.0.1/magento/index.php/'),
(1118, 'http://127.0.0.1/magento/js/js/coin-slider.min.js', 'http://127.0.0.1/magento/index.php/'),
(1119, 'http://127.0.0.1/magento/img/slider_01.png', 'http://127.0.0.1/magento/index.php/'),
(1120, 'http://127.0.0.1/magento/index.php/', NULL),
(1121, 'http://127.0.0.1/magento/img/slider_01.png', NULL),
(1122, 'http://127.0.0.1/magento/js/js/jquery-1.7.1.min.js', 'http://127.0.0.1/magento/index.php/'),
(1123, 'http://127.0.0.1/magento/index.php/img/slider_01.png', 'http://127.0.0.1/magento/index.php/'),
(1124, 'http://127.0.0.1/magento/js/js/coin-slider.min.js', 'http://127.0.0.1/magento/index.php/'),
(1125, 'http://127.0.0.1/magento/index.php/img/slider_01.png', 'http://127.0.0.1/magento/index.php/'),
(1126, 'http://127.0.0.1/magento/index.php/img/slider_01.png', NULL),
(1127, 'http://127.0.0.1/magento/index.php/', NULL),
(1128, 'http://127.0.0.1/magento/js/js/coin-slider.min.js', 'http://127.0.0.1/magento/index.php/'),
(1129, 'http://127.0.0.1/magento/js/js/jquery-1.7.1.min.js', 'http://127.0.0.1/magento/index.php/'),
(1130, 'http://127.0.0.1/magento/js/js/coin-slider.min.js', 'http://127.0.0.1/magento/index.php/'),
(1131, 'http://127.0.0.1/magento/index.php/', NULL),
(1132, 'http://127.0.0.1/magento/js/js/coin-slider.min.js', 'http://127.0.0.1/magento/index.php/'),
(1133, 'http://127.0.0.1/magento/img/slider_01.jpg', 'http://127.0.0.1/magento/index.php/'),
(1134, 'http://127.0.0.1/magento/js/js/jquery-1.7.1.min.js', 'http://127.0.0.1/magento/index.php/'),
(1135, 'http://127.0.0.1/magento/js/js/coin-slider.min.js', 'http://127.0.0.1/magento/index.php/'),
(1136, 'http://127.0.0.1/magento/img/slider_01.jpg', 'http://127.0.0.1/magento/index.php/'),
(1137, 'http://127.0.0.1/magento/img/slider_01.jpg', NULL),
(1138, 'http://127.0.0.1/magento/index.php/', NULL),
(1139, 'http://127.0.0.1/magento/js/js/jquery-1.7.1.min.js', 'http://127.0.0.1/magento/index.php/'),
(1140, 'http://127.0.0.1/magento/js/js/coin-slider.min.js', 'http://127.0.0.1/magento/index.php/'),
(1141, 'http://127.0.0.1/magento/index.php/img/slider_01.jpg', 'http://127.0.0.1/magento/index.php/'),
(1142, 'http://127.0.0.1/magento/js/js/jquery-1.7.1.min.js', 'http://127.0.0.1/magento/index.php/'),
(1143, 'http://127.0.0.1/magento/js/js/coin-slider.min.js', 'http://127.0.0.1/magento/index.php/'),
(1144, 'http://127.0.0.1/magento/index.php/img/slider_01.jpg', 'http://127.0.0.1/magento/index.php/'),
(1145, 'http://127.0.0.1/magento/index.php/', NULL),
(1146, 'http://127.0.0.1/magento/js/js/jquery-1.7.1.min.js', 'http://127.0.0.1/magento/index.php/'),
(1147, 'http://127.0.0.1/magento/js/js/coin-slider.min.js', 'http://127.0.0.1/magento/index.php/'),
(1148, 'http://127.0.0.1/magento/index.php/%7B%7Bskin', 'http://127.0.0.1/magento/index.php/'),
(1149, 'http://127.0.0.1/magento/index.php/', NULL),
(1150, 'http://127.0.0.1/magento/js/js/jquery-1.7.1.min.js', 'http://127.0.0.1/magento/index.php/'),
(1151, 'http://127.0.0.1/magento/js/js/coin-slider.min.js', 'http://127.0.0.1/magento/index.php/'),
(1152, 'http://127.0.0.1/magento/index.php/%7B%7Bskin', 'http://127.0.0.1/magento/index.php/'),
(1153, 'http://127.0.0.1/magento/index.php/', NULL),
(1154, 'http://127.0.0.1/magento/index.php/%7B%7Bskin', NULL),
(1155, 'http://127.0.0.1/magento/js/js/jquery-1.7.1.min.js', 'http://127.0.0.1/magento/index.php/'),
(1156, 'http://127.0.0.1/magento/js/js/coin-slider.min.js', 'http://127.0.0.1/magento/index.php/'),
(1157, 'http://127.0.0.1/magento/index.php/img/thebis/slider_01.jpg', 'http://127.0.0.1/magento/index.php/'),
(1158, 'http://127.0.0.1/magento/index.php/', NULL),
(1159, 'http://127.0.0.1/magento/js/js/coin-slider.min.js', 'http://127.0.0.1/magento/index.php/'),
(1160, 'http://127.0.0.1/magento/js/js/jquery-1.7.1.min.js', 'http://127.0.0.1/magento/index.php/'),
(1161, 'http://127.0.0.1/magento/js/js/coin-slider.min.js', 'http://127.0.0.1/magento/index.php/'),
(1162, 'http://127.0.0.1/magento/index.php/', NULL),
(1163, 'http://127.0.0.1/magento/js/js/jquery-1.7.1.min.js', 'http://127.0.0.1/magento/index.php/'),
(1164, 'http://127.0.0.1/magento/js/js/coin-slider.min.js', 'http://127.0.0.1/magento/index.php/'),
(1165, 'http://127.0.0.1/magento/index.php/', NULL),
(1166, 'http://127.0.0.1/magento/js/js/jquery-1.7.1.min.js', 'http://127.0.0.1/magento/index.php/'),
(1167, 'http://127.0.0.1/magento/js/js/coin-slider.min.js', 'http://127.0.0.1/magento/index.php/'),
(1168, 'http://127.0.0.1/magento/index.php/', NULL),
(1169, 'http://127.0.0.1/magento/js/js/jquery-1.7.1.min.js', 'http://127.0.0.1/magento/index.php/'),
(1170, 'http://127.0.0.1/magento/js/js/coin-slider.min.js', 'http://127.0.0.1/magento/index.php/'),
(1171, 'http://127.0.0.1/magento/index.php/', NULL),
(1172, 'http://127.0.0.1/magento/js/js/jquery-1.7.1.min.js', 'http://127.0.0.1/magento/index.php/'),
(1173, 'http://127.0.0.1/magento/js/js/coin-slider.min.js', 'http://127.0.0.1/magento/index.php/'),
(1174, 'http://127.0.0.1/magento/index.php/', NULL),
(1175, 'http://127.0.0.1/magento/index.php/', NULL),
(1176, 'http://127.0.0.1/magento/index.php/', NULL),
(1177, 'http://127.0.0.1/magento/index.php/', NULL),
(1178, 'http://127.0.0.1/magento/index.php/', NULL),
(1179, 'http://127.0.0.1/magento/index.php/', NULL),
(1180, 'http://127.0.0.1/magento/index.php/', NULL),
(1181, 'http://127.0.0.1/magento/js/js/coin-slider.min.js', 'http://127.0.0.1/magento/index.php/'),
(1182, 'http://127.0.0.1/magento/js/js/jquery-1.7.1.min.js', 'http://127.0.0.1/magento/index.php/'),
(1183, 'http://127.0.0.1/magento/js/js/coin-slider.min.js', 'http://127.0.0.1/magento/index.php/'),
(1184, 'http://127.0.0.1/magento/index.php/', NULL),
(1185, 'http://127.0.0.1/magento/js//js/jquery-1.7.1.min.js', 'http://127.0.0.1/magento/index.php/'),
(1186, 'http://127.0.0.1/magento/js//js/coin-slider.min.js', 'http://127.0.0.1/magento/index.php/'),
(1187, 'http://127.0.0.1/magento/index.php/', NULL),
(1188, 'http://127.0.0.1/magento/js/js/coin-slider.min.js', 'http://127.0.0.1/magento/index.php/'),
(1189, 'http://127.0.0.1/magento/js/js/jquery-1.7.1.min.js', 'http://127.0.0.1/magento/index.php/'),
(1190, 'http://127.0.0.1/magento/js/js/coin-slider.min.js', 'http://127.0.0.1/magento/index.php/'),
(1191, 'http://127.0.0.1/magento/index.php/', NULL),
(1192, 'http://127.0.0.1/magento/js/coin-slider.min.js', 'http://127.0.0.1/magento/index.php/'),
(1193, 'http://127.0.0.1/magento/js/jquery-1.7.1.min.js', 'http://127.0.0.1/magento/index.php/'),
(1194, 'http://127.0.0.1/magento/js/coin-slider.min.js', 'http://127.0.0.1/magento/index.php/'),
(1195, 'http://127.0.0.1/magento/index.php/', NULL),
(1196, 'http://127.0.0.1/magento/skin/frontend/base/default/coin-slider-styles.css', 'http://127.0.0.1/magento/index.php/'),
(1197, 'http://127.0.0.1/magento/index.php/', NULL),
(1198, 'http://127.0.0.1/magento/skin/frontend/base/default/js/coin-slider-styles.css', 'http://127.0.0.1/magento/index.php/'),
(1199, 'http://127.0.0.1/magento/index.php/', NULL),
(1200, 'http://127.0.0.1/magento/skin/frontend/base/default/js/coin-slider-styles.css', 'http://127.0.0.1/magento/index.php/'),
(1201, 'http://127.0.0.1/magento/index.php/', NULL),
(1202, 'http://127.0.0.1/magento/index.php/', NULL),
(1203, 'http://127.0.0.1/magento/index.php/', NULL),
(1204, 'http://127.0.0.1/magento/index.php/', NULL),
(1205, 'http://127.0.0.1/magento/index.php/', NULL),
(1206, 'http://127.0.0.1/magento/index.php/', NULL),
(1207, 'http://127.0.0.1/magento/index.php/', NULL),
(1208, 'http://127.0.0.1/magento/index.php/', NULL),
(1209, 'http://127.0.0.1/magento/index.php/', NULL),
(1210, 'http://127.0.0.1/magento/index.php/', NULL),
(1211, 'http://127.0.0.1/magento/index.php/', NULL),
(1212, 'http://127.0.0.1/magento/index.php/', NULL),
(1213, 'http://127.0.0.1/magento/index.php/', NULL),
(1214, 'http://127.0.0.1/magento/index.php/', NULL),
(1215, 'http://127.0.0.1/magento/index.php/', NULL),
(1216, 'http://127.0.0.1/magento/index.php/', NULL),
(1217, 'http://127.0.0.1/magento/index.php/', NULL),
(1218, 'http://127.0.0.1/magento/index.php/', NULL),
(1219, 'http://127.0.0.1/magento/index.php/', NULL),
(1220, 'http://127.0.0.1/magento/index.php/', NULL),
(1221, 'http://127.0.0.1/magento/index.php/', NULL),
(1222, 'http://127.0.0.1/magento/index.php/', NULL),
(1223, 'http://127.0.0.1/magento/index.php/', NULL),
(1224, 'http://127.0.0.1/magento/index.php/', NULL),
(1225, 'http://127.0.0.1/magento/index.php/', NULL),
(1226, 'http://127.0.0.1/magento/index.php/', NULL),
(1227, 'http://127.0.0.1/magento/index.php/', NULL),
(1228, 'http://127.0.0.1/magento/index.php/undefined', 'http://127.0.0.1/magento/index.php/'),
(1229, 'http://127.0.0.1/magento/index.php/undefined', 'http://127.0.0.1/magento/index.php/'),
(1230, 'http://127.0.0.1/magento/index.php/', NULL),
(1231, 'http://127.0.0.1/magento/index.php/', NULL),
(1232, 'http://127.0.0.1/magento/index.php/', NULL),
(1233, 'http://127.0.0.1/magento/index.php/', NULL),
(1234, 'http://127.0.0.1/magento/index.php/', NULL),
(1235, 'http://127.0.0.1/magento/index.php/', NULL),
(1236, 'http://127.0.0.1/magento/index.php/', NULL),
(1237, 'http://127.0.0.1/magento/index.php/', NULL),
(1238, 'http://127.0.0.1/magento/index.php/', NULL),
(1239, 'http://127.0.0.1/magento/index.php/', NULL),
(1240, 'http://127.0.0.1/magento/index.php/', NULL),
(1241, 'http://127.0.0.1/magento/index.php/', NULL),
(1242, 'http://127.0.0.1/magento/index.php/', NULL),
(1243, 'http://127.0.0.1/magento/index.php/', NULL),
(1244, 'http://127.0.0.1/magento/index.php/', NULL),
(1245, 'http://127.0.0.1/magento/index.php/', NULL),
(1246, 'http://127.0.0.1/magento/index.php/', NULL),
(1247, 'http://127.0.0.1/magento/index.php/', NULL),
(1248, 'http://127.0.0.1/magento/index.php/', NULL),
(1249, 'http://127.0.0.1/magento/index.php/', NULL),
(1250, 'http://127.0.0.1/magento/index.php/', NULL),
(1251, 'http://127.0.0.1/magento/index.php/', NULL),
(1252, 'http://127.0.0.1/magento/index.php/', NULL),
(1253, 'http://127.0.0.1/magento/index.php/', NULL),
(1254, 'http://127.0.0.1/magento/index.php/', NULL),
(1255, 'http://127.0.0.1/magento/index.php/', NULL),
(1256, 'http://127.0.0.1/magento/index.php/', NULL),
(1257, 'http://127.0.0.1/magento/index.php/', NULL),
(1258, 'http://127.0.0.1/magento/index.php/', NULL),
(1259, 'http://127.0.0.1/magento/index.php/', NULL),
(1260, 'http://127.0.0.1/magento/index.php/', NULL),
(1261, 'http://127.0.0.1/magento/index.php/', NULL),
(1262, 'http://127.0.0.1/magento/index.php/', NULL),
(1263, 'http://127.0.0.1/magento/index.php/', NULL),
(1264, 'http://127.0.0.1/magento/index.php/', NULL),
(1265, 'http://127.0.0.1/magento/index.php/', NULL),
(1266, 'http://127.0.0.1/magento/index.php/', NULL),
(1267, 'http://127.0.0.1/magento/index.php/', NULL),
(1268, 'http://127.0.0.1/magento/index.php/', NULL),
(1269, 'http://127.0.0.1/magento/index.php/', NULL),
(1270, 'http://127.0.0.1/magento/index.php/', NULL),
(1271, 'http://127.0.0.1/magento/index.php/', NULL),
(1272, 'http://127.0.0.1/magento/index.php/', NULL),
(1273, 'http://127.0.0.1/magento/index.php/', NULL),
(1274, 'http://127.0.0.1/magento/index.php/', NULL),
(1275, 'http://127.0.0.1/magento/index.php/', NULL),
(1276, 'http://127.0.0.1/magento/index.php/', NULL),
(1277, 'http://127.0.0.1/magento/index.php/', NULL),
(1278, 'http://127.0.0.1/magento/index.php/', NULL),
(1279, 'http://127.0.0.1/magento/index.php/', NULL),
(1280, 'http://127.0.0.1/magento/index.php/', NULL),
(1281, 'http://127.0.0.1/magento/index.php/', NULL),
(1282, 'http://127.0.0.1/magento/index.php/', NULL),
(1283, 'http://127.0.0.1/magento/index.php/', NULL),
(1284, 'http://127.0.0.1/magento/index.php/', NULL),
(1285, 'http://127.0.0.1/magento/index.php/', NULL),
(1286, 'http://127.0.0.1/magento/index.php/', NULL),
(1287, 'http://127.0.0.1/magento/index.php/', NULL),
(1288, 'http://127.0.0.1/magento/index.php/', NULL),
(1289, 'http://127.0.0.1/magento/index.php/', NULL),
(1290, 'http://127.0.0.1/magento/index.php/', NULL),
(1291, 'http://127.0.0.1/magento/index.php/', NULL),
(1292, 'http://127.0.0.1/magento/index.php/', NULL),
(1293, 'http://127.0.0.1/magento/index.php/', NULL),
(1294, 'http://127.0.0.1/magento/index.php/', NULL),
(1295, 'http://127.0.0.1/magento/index.php/', NULL),
(1296, 'http://127.0.0.1/magento/index.php/', NULL),
(1297, 'http://127.0.0.1/magento/index.php/', NULL),
(1298, 'http://127.0.0.1/magento/index.php/', NULL),
(1299, 'http://127.0.0.1/magento/index.php/', NULL),
(1300, 'http://127.0.0.1/magento/index.php/', NULL),
(1301, 'http://127.0.0.1/magento/index.php/', NULL),
(1302, 'http://127.0.0.1/magento/index.php/', NULL),
(1303, 'http://127.0.0.1/magento/index.php/', NULL),
(1304, 'http://127.0.0.1/magento/index.php/', NULL),
(1305, 'http://127.0.0.1/magento/index.php/', NULL),
(1306, 'http://127.0.0.1/magento/index.php/', NULL),
(1307, 'http://127.0.0.1/magento/index.php/', NULL),
(1308, 'http://127.0.0.1/magento/index.php/', NULL),
(1309, 'http://127.0.0.1/magento/index.php/', NULL),
(1310, 'http://127.0.0.1/magento/index.php/', NULL),
(1311, 'http://127.0.0.1/magento/index.php/', NULL),
(1312, 'http://127.0.0.1/magento/index.php/', NULL),
(1313, 'http://127.0.0.1/magento/index.php/', NULL),
(1314, 'http://127.0.0.1/magento/index.php/', NULL),
(1315, 'http://127.0.0.1/magento/index.php/', NULL),
(1316, 'http://127.0.0.1/magento/index.php/', NULL),
(1317, 'http://127.0.0.1/magento/index.php/', NULL),
(1318, 'http://127.0.0.1/magento/index.php/', NULL),
(1319, 'http://127.0.0.1/magento/index.php/', NULL),
(1320, 'http://127.0.0.1/magento/index.php/', NULL),
(1321, 'http://127.0.0.1/magento/index.php/', NULL),
(1322, 'http://127.0.0.1/magento/index.php/', NULL),
(1323, 'http://127.0.0.1/magento/index.php/', NULL),
(1324, 'http://127.0.0.1/magento/index.php/', NULL),
(1325, 'http://127.0.0.1/magento/index.php/', NULL),
(1326, 'http://127.0.0.1/magento/index.php/', NULL),
(1327, 'http://127.0.0.1/magento/index.php/', NULL),
(1328, 'http://127.0.0.1/magento/index.php/', NULL),
(1329, 'http://127.0.0.1/magento/index.php/', NULL),
(1330, 'http://127.0.0.1/magento/index.php/', NULL),
(1331, 'http://127.0.0.1/magento/index.php/', NULL),
(1332, 'http://127.0.0.1/magento/index.php/', NULL),
(1333, 'http://127.0.0.1/magento/index.php/', NULL),
(1334, 'http://127.0.0.1/magento/index.php/', NULL),
(1335, 'http://127.0.0.1/magento/index.php/', NULL),
(1336, 'http://127.0.0.1/magento/index.php/', NULL),
(1337, 'http://127.0.0.1/magento/index.php/', NULL),
(1338, 'http://127.0.0.1/magento/index.php/', NULL),
(1339, 'http://127.0.0.1/magento/index.php/', NULL),
(1340, 'http://127.0.0.1/magento/index.php/', NULL),
(1341, 'http://127.0.0.1/magento/index.php/', NULL),
(1342, 'http://127.0.0.1/magento/index.php/', NULL),
(1343, 'http://127.0.0.1/magento/index.php/', NULL),
(1344, 'http://127.0.0.1/magento/index.php/', NULL),
(1345, 'http://127.0.0.1/magento/index.php/', NULL),
(1346, 'http://127.0.0.1/magento/index.php/', NULL),
(1347, 'http://127.0.0.1/magento/skin/frontend/base/default/nivo-slider/jquery.nivo.slider.js', 'http://127.0.0.1/magento/index.php/'),
(1348, 'http://127.0.0.1/magento/index.php/', NULL),
(1349, 'http://127.0.0.1/magento/skin/frontend/base/default/nive-slider/jquery.nivo.slider.js', 'http://127.0.0.1/magento/index.php/'),
(1350, 'http://127.0.0.1/magento/skin/frontend/base/default/nivo-slider/jquery.nivo.slider.js', NULL),
(1351, 'http://127.0.0.1/magento/index.php/', NULL),
(1352, 'http://127.0.0.1/magento/index.php/', NULL),
(1353, 'http://127.0.0.1/magento/index.php/', NULL),
(1354, 'http://127.0.0.1/magento/index.php/', NULL),
(1355, 'http://127.0.0.1/magento/index.php/', NULL),
(1356, 'http://127.0.0.1/magento/index.php/', NULL),
(1357, 'http://127.0.0.1/magento/index.php/', NULL),
(1358, 'http://127.0.0.1/magento/index.php/', NULL),
(1359, 'http://127.0.0.1/magento/index.php/', NULL),
(1360, 'http://127.0.0.1/magento/index.php/', NULL),
(1361, 'http://127.0.0.1/magento/skin/frontend/base/default/js/jquery-1.7.1.minjs', 'http://127.0.0.1/magento/index.php/'),
(1362, 'http://127.0.0.1/magento/index.php/', NULL),
(1363, 'http://127.0.0.1/magento/index.php/', NULL),
(1364, 'http://127.0.0.1/magento/index.php/', NULL),
(1365, 'http://127.0.0.1/magento/index.php/', NULL),
(1366, 'http://127.0.0.1/magento/index.php/catalog/category/view/id/18', 'http://127.0.0.1/magento/index.php/'),
(1367, 'http://127.0.0.1/magento/index.php/', NULL),
(1368, 'http://127.0.0.1/magento/index.php/', NULL),
(1369, 'http://127.0.0.1/magento/index.php/', NULL),
(1370, 'http://127.0.0.1/magento/index.php/', NULL),
(1371, 'http://127.0.0.1/magento/index.php/', NULL),
(1372, 'http://127.0.0.1/magento/index.php/', NULL),
(1373, 'http://127.0.0.1/magento/index.php/', NULL),
(1374, 'http://127.0.0.1/magento/index.php/', NULL),
(1375, 'http://127.0.0.1/magento/index.php/', NULL),
(1376, 'http://127.0.0.1/magento/index.php/', NULL),
(1377, 'http://127.0.0.1/magento/index.php/', NULL),
(1378, 'http://127.0.0.1/magento/index.php/', NULL),
(1379, 'http://127.0.0.1/magento/index.php/', NULL),
(1380, 'http://127.0.0.1/magento/index.php/', NULL),
(1381, 'http://127.0.0.1/magento/index.php/', NULL),
(1382, 'http://127.0.0.1/magento/skin/frontend/base/default//nivo/nivo-slider.css', 'http://127.0.0.1/magento/index.php/'),
(1383, 'http://127.0.0.1/magento/index.php/', NULL),
(1384, 'http://127.0.0.1/magento/index.php/', NULL),
(1385, 'http://127.0.0.1/magento/index.php/', NULL),
(1386, 'http://127.0.0.1/magento/index.php/', NULL),
(1387, 'http://127.0.0.1/magento/index.php/', NULL),
(1388, 'http://127.0.0.1/magento/index.php/', NULL),
(1389, 'http://127.0.0.1/magento/index.php/', NULL),
(1390, 'http://127.0.0.1/magento/index.php/', NULL),
(1391, 'http://127.0.0.1/magento/index.php/', NULL),
(1392, 'http://127.0.0.1/magento/index.php/', NULL),
(1393, 'http://127.0.0.1/magento/index.php/', NULL),
(1394, 'http://127.0.0.1/magento/index.php/', NULL),
(1395, 'http://127.0.0.1/magento/index.php/', NULL),
(1396, 'http://127.0.0.1/magento/index.php/', NULL),
(1397, 'http://127.0.0.1/magento/index.php/', NULL),
(1398, 'http://127.0.0.1/magento/index.php/', NULL),
(1399, 'http://127.0.0.1/magento/index.php/', NULL),
(1400, 'http://127.0.0.1/magento/index.php/', NULL),
(1401, 'http://127.0.0.1/magento/index.php/', NULL),
(1402, 'http://127.0.0.1/magento/index.php/', NULL),
(1403, 'http://127.0.0.1/magento/index.php/', NULL),
(1404, 'http://127.0.0.1/magento/index.php/', NULL),
(1405, 'http://127.0.0.1/magento/index.php/', NULL),
(1406, 'http://127.0.0.1/magento/index.php/', NULL),
(1407, 'http://127.0.0.1/magento/index.php/', NULL),
(1408, 'http://127.0.0.1/magento/index.php/', NULL),
(1409, 'http://127.0.0.1/magento/index.php/', NULL),
(1410, 'http://127.0.0.1/magento/index.php/', NULL),
(1411, 'http://127.0.0.1/magento/index.php/', NULL),
(1412, 'http://127.0.0.1/magento/index.php/catalogsearch/result/?q=dfdf', 'http://127.0.0.1/magento/index.php/'),
(1413, 'http://127.0.0.1/magento/index.php/catalogsearch/ajax/suggest/?q=dfdf', 'http://127.0.0.1/magento/index.php/'),
(1414, 'http://127.0.0.1/magento/index.php/', NULL),
(1415, 'http://127.0.0.1/magento/index.php/', NULL),
(1416, 'http://127.0.0.1/magento/index.php/', NULL),
(1417, 'http://127.0.0.1/magento/index.php/', NULL),
(1418, 'http://127.0.0.1/magento/index.php/', NULL),
(1419, 'http://127.0.0.1/magento/index.php/', NULL),
(1420, 'http://127.0.0.1/magento/index.php/', NULL),
(1421, 'http://127.0.0.1/magento/index.php/', NULL),
(1422, 'http://127.0.0.1/magento/index.php/', NULL),
(1423, 'http://127.0.0.1/magento/index.php/', NULL),
(1424, 'http://127.0.0.1/magento/index.php/', NULL),
(1425, 'http://127.0.0.1/magento/index.php/', NULL),
(1426, 'http://127.0.0.1/magento/index.php/', NULL),
(1427, 'http://127.0.0.1/magento/index.php/', NULL),
(1428, 'http://127.0.0.1/magento/index.php/', NULL),
(1429, 'http://127.0.0.1/magento/index.php/', NULL),
(1430, 'http://127.0.0.1/magento/index.php/', NULL),
(1431, 'http://127.0.0.1/magento/index.php/', NULL),
(1432, 'http://127.0.0.1/magento/index.php/', NULL),
(1433, 'http://127.0.0.1/magento/index.php/', NULL),
(1434, 'http://127.0.0.1/magento/index.php/', NULL),
(1435, 'http://127.0.0.1/magento/index.php/', NULL),
(1436, 'http://127.0.0.1/magento/index.php/', NULL),
(1437, 'http://127.0.0.1/magento/index.php/', NULL),
(1438, 'http://127.0.0.1/magento/index.php/', NULL),
(1439, 'http://127.0.0.1/magento/index.php/', NULL),
(1440, 'http://127.0.0.1/magento/index.php/', NULL),
(1441, 'http://127.0.0.1/magento/index.php/', NULL),
(1442, 'http://127.0.0.1/magento/index.php/', NULL),
(1443, 'http://127.0.0.1/magento/index.php/', NULL),
(1444, 'http://127.0.0.1/magento/index.php/', NULL),
(1445, 'http://127.0.0.1/magento/index.php/', NULL),
(1446, 'http://127.0.0.1/magento/index.php/', NULL),
(1447, 'http://127.0.0.1/magento/index.php/', NULL),
(1448, 'http://127.0.0.1/magento/index.php/', NULL),
(1449, 'http://127.0.0.1/magento/index.php/', NULL),
(1450, 'http://127.0.0.1/magento/index.php/', NULL),
(1451, 'http://127.0.0.1/magento/index.php/', NULL),
(1452, 'http://127.0.0.1/magento/index.php/', NULL),
(1453, 'http://127.0.0.1/magento/index.php/', NULL),
(1454, 'http://127.0.0.1/magento/index.php/', NULL),
(1455, 'http://127.0.0.1/magento/index.php/', NULL),
(1456, 'http://127.0.0.1/magento/index.php/', NULL),
(1457, 'http://127.0.0.1/magento/index.php/', NULL),
(1458, 'http://127.0.0.1/magento/index.php/', NULL),
(1459, 'http://127.0.0.1/magento/index.php/', NULL),
(1460, 'http://127.0.0.1/magento/index.php/catalog/product/view/id/4/category/36', 'http://127.0.0.1/magento/index.php/'),
(1461, 'http://127.0.0.1/magento/index.php/', NULL),
(1462, 'http://127.0.0.1/magento/index.php/', NULL),
(1463, 'http://127.0.0.1/magento/index.php/', NULL),
(1464, 'http://127.0.0.1/magento/index.php/?dir=asc&order=name', 'http://127.0.0.1/magento/index.php/'),
(1465, 'http://127.0.0.1/magento/index.php/', NULL),
(1466, 'http://127.0.0.1/magento/index.php/', NULL),
(1467, 'http://127.0.0.1/magento/index.php/', NULL),
(1468, 'http://127.0.0.1/magento/index.php/', NULL),
(1469, 'http://127.0.0.1/magento/index.php/', NULL),
(1470, 'http://127.0.0.1/magento/index.php/', NULL),
(1471, 'http://127.0.0.1/magento/index.php/?mode=list', 'http://127.0.0.1/magento/index.php/'),
(1472, 'http://127.0.0.1/magento/index.php/?mode=grid', 'http://127.0.0.1/magento/index.php/?mode=list'),
(1473, 'http://127.0.0.1/magento/index.php/?mode=grid', 'http://127.0.0.1/magento/index.php/?mode=list'),
(1474, 'http://127.0.0.1/magento/index.php/', NULL),
(1475, 'http://127.0.0.1/magento/index.php/', NULL),
(1476, 'http://127.0.0.1/magento/index.php/?mode=grid', 'http://127.0.0.1/magento/index.php/?mode=list'),
(1477, 'http://127.0.0.1/magento/index.php/?mode=grid', 'http://127.0.0.1/magento/index.php/?mode=list'),
(1478, 'http://127.0.0.1/magento/index.php/?mode=grid', 'http://127.0.0.1/magento/index.php/?mode=list'),
(1479, 'http://127.0.0.1/magento/index.php/', NULL),
(1480, 'http://127.0.0.1/magento/index.php/?mode=grid', 'http://127.0.0.1/magento/index.php/?mode=list'),
(1481, 'http://127.0.0.1/magento/index.php/?mode=grid', 'http://127.0.0.1/magento/index.php/?mode=list'),
(1482, 'http://127.0.0.1/magento/index.php/?mode=grid', 'http://127.0.0.1/magento/index.php/?mode=list'),
(1483, 'http://127.0.0.1/magento/index.php/?mode=grid', 'http://127.0.0.1/magento/index.php/?mode=list'),
(1484, 'http://127.0.0.1/magento/index.php/?mode=grid', 'http://127.0.0.1/magento/index.php/?mode=list'),
(1485, 'http://127.0.0.1/magento/index.php/?mode=grid', 'http://127.0.0.1/magento/index.php/?mode=list'),
(1486, 'http://127.0.0.1/magento/index.php/?mode=grid', 'http://127.0.0.1/magento/index.php/?mode=list'),
(1487, 'http://127.0.0.1/magento/index.php/?mode=grid', 'http://127.0.0.1/magento/index.php/?mode=list'),
(1488, 'http://127.0.0.1/magento/index.php/?mode=grid', 'http://127.0.0.1/magento/index.php/?mode=list'),
(1489, 'http://127.0.0.1/magento/index.php/?mode=grid', 'http://127.0.0.1/magento/index.php/?mode=list'),
(1490, 'http://127.0.0.1/magento/index.php/?mode=grid', 'http://127.0.0.1/magento/index.php/?mode=list'),
(1491, 'http://127.0.0.1/magento/index.php/?mode=grid', 'http://127.0.0.1/magento/index.php/?mode=list'),
(1492, 'http://127.0.0.1/magento/index.php/?mode=grid', 'http://127.0.0.1/magento/index.php/?mode=list'),
(1493, 'http://127.0.0.1/magento/index.php/?mode=grid', 'http://127.0.0.1/magento/index.php/?mode=list'),
(1494, 'http://127.0.0.1/magento/index.php/?mode=grid', 'http://127.0.0.1/magento/index.php/?mode=list'),
(1495, 'http://127.0.0.1/magento/index.php/?mode=grid', 'http://127.0.0.1/magento/index.php/?mode=list'),
(1496, 'http://127.0.0.1/magento/index.php/?mode=grid', 'http://127.0.0.1/magento/index.php/?mode=list'),
(1497, 'http://127.0.0.1/magento/index.php/?mode=grid', 'http://127.0.0.1/magento/index.php/?mode=list'),
(1498, 'http://127.0.0.1/magento/index.php/?mode=grid', 'http://127.0.0.1/magento/index.php/?mode=list'),
(1499, 'http://127.0.0.1/magento/index.php/?mode=grid', 'http://127.0.0.1/magento/index.php/?mode=list'),
(1500, 'http://127.0.0.1/magento/index.php/?mode=grid', 'http://127.0.0.1/magento/index.php/?mode=list');
INSERT INTO `log_url_info` (`url_id`, `url`, `referer`) VALUES
(1501, 'http://127.0.0.1/magento/index.php/?mode=grid', 'http://127.0.0.1/magento/index.php/?mode=list'),
(1502, 'http://127.0.0.1/magento/index.php/?mode=grid', 'http://127.0.0.1/magento/index.php/?mode=list'),
(1503, 'http://127.0.0.1/magento/index.php/?mode=grid', 'http://127.0.0.1/magento/index.php/?mode=list'),
(1504, 'http://127.0.0.1/magento/index.php/?mode=grid', 'http://127.0.0.1/magento/index.php/?mode=list'),
(1505, 'http://127.0.0.1/magento/index.php/?mode=grid', 'http://127.0.0.1/magento/index.php/?mode=list'),
(1506, 'http://127.0.0.1/magento/index.php/?mode=grid', 'http://127.0.0.1/magento/index.php/?mode=list'),
(1507, 'http://127.0.0.1/magento/index.php/', NULL),
(1508, 'http://127.0.0.1/magento/index.php/', NULL),
(1509, 'http://127.0.0.1/magento/index.php/', NULL),
(1510, 'http://127.0.0.1/magento/index.php/?mode=grid', 'http://127.0.0.1/magento/index.php/?mode=list'),
(1511, 'http://127.0.0.1/magento/index.php/?mode=grid', 'http://127.0.0.1/magento/index.php/?mode=list'),
(1512, 'http://127.0.0.1/magento/index.php/?mode=grid', 'http://127.0.0.1/magento/index.php/?mode=list'),
(1513, 'http://127.0.0.1/magento/index.php/checkout/cart/add/uenc/aHR0cDovLzEyNy4wLjAuMS9tYWdlbnRvL2luZGV4LnBocC8_bW9kZT1ncmlk/product/1/', 'http://127.0.0.1/magento/index.php/?mode=grid'),
(1514, 'http://127.0.0.1/magento/index.php/checkout/cart/', 'http://127.0.0.1/magento/index.php/?mode=grid'),
(1515, 'http://127.0.0.1/magento/index.php/', NULL),
(1516, 'http://127.0.0.1/magento/index.php/', NULL),
(1517, 'http://127.0.0.1/magento/index.php/', NULL),
(1518, 'http://127.0.0.1/magento/index.php/', NULL),
(1519, 'http://127.0.0.1/magento/index.php/checkout/cart/add/uenc/aHR0cDovLzEyNy4wLjAuMS9tYWdlbnRvL2luZGV4LnBocC8,/product/1/', 'http://127.0.0.1/magento/index.php/'),
(1520, 'http://127.0.0.1/magento/index.php/checkout/cart/', 'http://127.0.0.1/magento/index.php/'),
(1521, 'http://127.0.0.1/magento/index.php/', NULL),
(1522, 'http://127.0.0.1/magento/index.php/', NULL),
(1523, 'http://127.0.0.1/magento/index.php/', NULL),
(1524, 'http://127.0.0.1/magento/index.php/', NULL),
(1525, 'http://127.0.0.1/magento/index.php/', NULL),
(1526, 'http://127.0.0.1/magento/index.php/', NULL),
(1527, 'http://127.0.0.1/magento/index.php/', NULL),
(1528, 'http://127.0.0.1/magento/index.php/', NULL),
(1529, 'http://127.0.0.1/magento/index.php/', NULL),
(1530, 'http://127.0.0.1/magento/index.php/', NULL),
(1531, 'http://127.0.0.1/magento/index.php/', NULL),
(1532, 'http://127.0.0.1/magento/index.php/', NULL),
(1533, 'http://127.0.0.1/magento/index.php/', NULL),
(1534, 'http://127.0.0.1/magento/index.php/', NULL),
(1535, 'http://127.0.0.1/magento/index.php/', NULL),
(1536, 'http://127.0.0.1/magento/index.php/', NULL),
(1537, 'http://127.0.0.1/magento/index.php/', NULL),
(1538, 'http://127.0.0.1/magento/index.php/', NULL),
(1539, 'http://127.0.0.1/magento/index.php/', NULL),
(1540, 'http://127.0.0.1/magento/index.php/', NULL),
(1541, 'http://127.0.0.1/magento/index.php/', NULL),
(1542, 'http://127.0.0.1/magento/index.php/', NULL),
(1543, 'http://127.0.0.1/magento/index.php/', NULL),
(1544, 'http://127.0.0.1/magento/index.php/', NULL),
(1545, 'http://127.0.0.1/magento/index.php/', NULL),
(1546, 'http://127.0.0.1/magento/index.php/checkout/cart/', 'http://127.0.0.1/magento/index.php/'),
(1547, 'http://127.0.0.1/magento/index.php/checkout/cart/delete/id/1/uenc/aHR0cDovLzEyNy4wLjAuMS9tYWdlbnRvL2luZGV4LnBocC9jaGVja291dC9jYXJ0Lw,,/', 'http://127.0.0.1/magento/index.php/checkout/cart/'),
(1548, 'http://127.0.0.1/magento/index.php/checkout/cart/', 'http://127.0.0.1/magento/index.php/checkout/cart/'),
(1549, 'http://127.0.0.1/magento/index.php/', NULL),
(1550, 'http://127.0.0.1/magento/index.php/', NULL),
(1551, 'http://127.0.0.1/magento/index.php/', NULL),
(1552, 'http://127.0.0.1/magento/index.php/', NULL),
(1553, 'http://127.0.0.1/magento/index.php/', NULL),
(1554, 'http://127.0.0.1/magento/index.php/', NULL),
(1555, 'http://127.0.0.1/magento/index.php/', NULL),
(1556, 'http://127.0.0.1/magento/index.php/', NULL),
(1557, 'http://127.0.0.1/magento/index.php/', NULL),
(1558, 'http://127.0.0.1/magento/index.php/', NULL),
(1559, 'http://127.0.0.1/magento/index.php/', NULL),
(1560, 'http://127.0.0.1/magento/index.php/', NULL),
(1561, 'http://127.0.0.1/magento/index.php/', NULL),
(1562, 'http://127.0.0.1/magento/index.php/', NULL),
(1563, 'http://127.0.0.1/magento/index.php/', NULL),
(1564, 'http://127.0.0.1/magento/index.php/', NULL),
(1565, 'http://127.0.0.1/magento/index.php/', NULL),
(1566, 'http://127.0.0.1/magento/index.php/', NULL),
(1567, 'http://127.0.0.1/magento/index.php/', NULL),
(1568, 'http://127.0.0.1/magento/index.php/', NULL),
(1569, 'http://127.0.0.1/magento/index.php/', NULL),
(1570, 'http://127.0.0.1/magento/index.php/', NULL),
(1571, 'http://127.0.0.1/magento/index.php/', NULL),
(1572, 'http://127.0.0.1/magento/index.php/', NULL),
(1573, 'http://127.0.0.1/magento/index.php/', NULL),
(1574, 'http://127.0.0.1/magento/index.php/', NULL),
(1575, 'http://127.0.0.1/magento/index.php/', NULL),
(1576, 'http://127.0.0.1/magento/index.php/', NULL),
(1577, 'http://127.0.0.1/magento/index.php/', NULL),
(1578, 'http://127.0.0.1/magento/index.php/', NULL),
(1579, 'http://127.0.0.1/magento/index.php/', NULL),
(1580, 'http://127.0.0.1/magento/index.php/', NULL),
(1581, 'http://127.0.0.1/magento/index.php/', NULL),
(1582, 'http://127.0.0.1/magento/index.php/', NULL),
(1583, 'http://127.0.0.1/magento/index.php/', NULL),
(1584, 'http://127.0.0.1/magento/index.php/', NULL),
(1585, 'http://127.0.0.1/magento/index.php/', NULL),
(1586, 'http://127.0.0.1/magento/index.php/', NULL),
(1587, 'http://127.0.0.1/magento/index.php/', NULL),
(1588, 'http://127.0.0.1/magento/index.php/', NULL),
(1589, 'http://127.0.0.1/magento/index.php/', NULL),
(1590, 'http://127.0.0.1/magento/index.php/', NULL),
(1591, 'http://127.0.0.1/magento/index.php/', NULL),
(1592, 'http://127.0.0.1/magento/index.php/', NULL),
(1593, 'http://127.0.0.1/magento/index.php/', NULL),
(1594, 'http://127.0.0.1/magento/index.php/', NULL),
(1595, 'http://127.0.0.1/magento/index.php/', NULL),
(1596, 'http://127.0.0.1/magento/index.php/', NULL),
(1597, 'http://127.0.0.1/magento/index.php/', NULL),
(1598, 'http://127.0.0.1/magento/index.php/', NULL),
(1599, 'http://127.0.0.1/magento/index.php/', NULL),
(1600, 'http://127.0.0.1/magento/index.php/', NULL),
(1601, 'http://127.0.0.1/magento/index.php/', NULL),
(1602, 'http://127.0.0.1/magento/index.php/', NULL),
(1603, 'http://127.0.0.1/magento/index.php/', NULL),
(1604, 'http://127.0.0.1/magento/index.php/', NULL),
(1605, 'http://127.0.0.1/magento/index.php/', NULL),
(1606, 'http://127.0.0.1/magento/index.php/', NULL),
(1607, 'http://127.0.0.1/magento/index.php/', NULL),
(1608, 'http://127.0.0.1/magento/index.php/', NULL),
(1609, 'http://127.0.0.1/magento/index.php/', NULL),
(1610, 'http://127.0.0.1/magento/index.php/', NULL),
(1611, 'http://127.0.0.1/magento/index.php/', NULL),
(1612, 'http://127.0.0.1/magento/index.php/', NULL),
(1613, 'http://127.0.0.1/magento/index.php/', NULL),
(1614, 'http://127.0.0.1/magento/index.php/', NULL),
(1615, 'http://127.0.0.1/magento/index.php/', NULL),
(1616, 'http://127.0.0.1/magento/index.php/', NULL),
(1617, 'http://127.0.0.1/magento/index.php/', NULL),
(1618, 'http://127.0.0.1/magento/index.php/', NULL),
(1619, 'http://127.0.0.1/magento/index.php/', NULL),
(1620, 'http://127.0.0.1/magento/index.php/', NULL),
(1621, 'http://127.0.0.1/magento/index.php/', NULL),
(1622, 'http://127.0.0.1/magento/index.php/', NULL),
(1623, 'http://127.0.0.1/magento/index.php/', NULL),
(1624, 'http://127.0.0.1/magento/index.php/', NULL),
(1625, 'http://127.0.0.1/magento/index.php/', NULL),
(1626, 'http://127.0.0.1/magento/index.php/', NULL),
(1627, 'http://127.0.0.1/magento/index.php/', NULL),
(1628, 'http://127.0.0.1/magento/index.php/', NULL),
(1629, 'http://127.0.0.1/magento/index.php/', NULL),
(1630, 'http://127.0.0.1/magento/index.php/', NULL),
(1631, 'http://127.0.0.1/magento/index.php/', NULL),
(1632, 'http://127.0.0.1/magento/index.php/', NULL),
(1633, 'http://127.0.0.1/magento/index.php/', NULL),
(1634, 'http://127.0.0.1/magento/index.php/', NULL),
(1635, 'http://127.0.0.1/magento/index.php/', NULL),
(1636, 'http://127.0.0.1/magento/index.php/', NULL),
(1637, 'http://127.0.0.1/magento/index.php/', NULL),
(1638, 'http://127.0.0.1/magento/index.php/', NULL),
(1639, 'http://127.0.0.1/magento/index.php/', NULL),
(1640, 'http://127.0.0.1/magento/index.php/', NULL),
(1641, 'http://127.0.0.1/magento/index.php/', NULL),
(1642, 'http://127.0.0.1/magento/index.php/', NULL),
(1643, 'http://127.0.0.1/magento/index.php/', NULL),
(1644, 'http://127.0.0.1/magento/index.php/', NULL),
(1645, 'http://127.0.0.1/magento/index.php/', NULL),
(1646, 'http://127.0.0.1/magento/index.php/', NULL),
(1647, 'http://127.0.0.1/magento/index.php/', NULL),
(1648, 'http://127.0.0.1/magento/index.php/', NULL),
(1649, 'http://127.0.0.1/magento/index.php/', NULL),
(1650, 'http://127.0.0.1/magento/index.php/', NULL),
(1651, 'http://127.0.0.1/magento/index.php/', NULL),
(1652, 'http://127.0.0.1/magento/index.php/', NULL),
(1653, 'http://127.0.0.1/magento/index.php/', NULL),
(1654, 'http://127.0.0.1/magento/index.php/', NULL),
(1655, 'http://127.0.0.1/magento/index.php/', NULL),
(1656, 'http://127.0.0.1/magento/index.php/', NULL),
(1657, 'http://127.0.0.1/magento/index.php/', NULL),
(1658, 'http://127.0.0.1/magento/index.php/', NULL),
(1659, 'http://127.0.0.1/magento/index.php/', NULL),
(1660, 'http://127.0.0.1/magento/index.php/', NULL),
(1661, 'http://127.0.0.1/magento/index.php/', NULL),
(1662, 'http://127.0.0.1/magento/index.php/', NULL),
(1663, 'http://127.0.0.1/magento/index.php/', NULL),
(1664, 'http://127.0.0.1/magento/index.php/', NULL),
(1665, 'http://127.0.0.1/magento/index.php/', NULL),
(1666, 'http://127.0.0.1/magento/index.php/', NULL),
(1667, 'http://127.0.0.1/magento/index.php/', NULL),
(1668, 'http://127.0.0.1/magento/index.php/', NULL),
(1669, 'http://127.0.0.1/magento/index.php/', NULL),
(1670, 'http://127.0.0.1/magento/index.php/', NULL),
(1671, 'http://127.0.0.1/magento/index.php/', NULL),
(1672, 'http://127.0.0.1/magento/index.php/', NULL),
(1673, 'http://127.0.0.1/magento/index.php/', NULL),
(1674, 'http://127.0.0.1/magento/index.php/', NULL),
(1675, 'http://127.0.0.1/magento/index.php/', NULL),
(1676, 'http://127.0.0.1/magento/index.php/', NULL),
(1677, 'http://127.0.0.1/magento/index.php/', NULL),
(1678, 'http://127.0.0.1/magento/index.php/', NULL),
(1679, 'http://127.0.0.1/magento/index.php/', NULL),
(1680, 'http://127.0.0.1/magento/index.php/', NULL),
(1681, 'http://127.0.0.1/magento/index.php/', NULL),
(1682, 'http://127.0.0.1/magento/index.php/', NULL),
(1683, 'http://127.0.0.1/magento/index.php/', NULL),
(1684, 'http://127.0.0.1/magento/index.php/', NULL),
(1685, 'http://127.0.0.1/magento/index.php/', NULL),
(1686, 'http://127.0.0.1/magento/index.php/', NULL),
(1687, 'http://127.0.0.1/magento/index.php/', NULL),
(1688, 'http://127.0.0.1/magento/index.php/', NULL),
(1689, 'http://127.0.0.1/magento/index.php/', NULL),
(1690, 'http://127.0.0.1/magento/index.php/', NULL),
(1691, 'http://127.0.0.1/magento/index.php/', NULL),
(1692, 'http://127.0.0.1/magento/index.php/', NULL),
(1693, 'http://127.0.0.1/magento/index.php/', NULL),
(1694, 'http://127.0.0.1/magento/index.php/', NULL),
(1695, 'http://127.0.0.1/magento/index.php/', NULL),
(1696, 'http://127.0.0.1/magento/index.php/', NULL),
(1697, 'http://127.0.0.1/magento/index.php/', NULL),
(1698, 'http://127.0.0.1/magento/index.php/', NULL),
(1699, 'http://127.0.0.1/magento/index.php/', NULL),
(1700, 'http://127.0.0.1/magento/index.php/', NULL),
(1701, 'http://127.0.0.1/magento/index.php/', NULL),
(1702, 'http://127.0.0.1/magento/index.php/', NULL),
(1703, 'http://127.0.0.1/magento/index.php/', NULL),
(1704, 'http://127.0.0.1/magento/index.php/', NULL),
(1705, 'http://127.0.0.1/magento/index.php/', NULL),
(1706, 'http://127.0.0.1/magento/index.php/', NULL),
(1707, 'http://127.0.0.1/magento/index.php/', NULL),
(1708, 'http://127.0.0.1/magento/index.php/', NULL),
(1709, 'http://127.0.0.1/magento/index.php/', NULL),
(1710, 'http://127.0.0.1/magento/index.php/', NULL),
(1711, 'http://127.0.0.1/magento/index.php/', NULL),
(1712, 'http://127.0.0.1/magento/index.php/', NULL),
(1713, 'http://127.0.0.1/magento/index.php/', NULL),
(1714, 'http://127.0.0.1/magento/index.php/', NULL),
(1715, 'http://127.0.0.1/magento/index.php/', NULL),
(1716, 'http://127.0.0.1/magento/index.php/', NULL),
(1717, 'http://127.0.0.1/magento/index.php/', NULL),
(1718, 'http://127.0.0.1/magento/index.php/', NULL),
(1719, 'http://127.0.0.1/magento/index.php/', NULL),
(1720, 'http://127.0.0.1/magento/index.php/', NULL),
(1721, 'http://127.0.0.1/magento/index.php/', NULL),
(1722, 'http://127.0.0.1/magento/index.php/catalog/product/view/id/4/category/36', 'http://127.0.0.1/magento/index.php/'),
(1723, 'http://127.0.0.1/magento/index.php/', NULL),
(1724, 'http://127.0.0.1/magento/index.php/catalog/product/view/id/4/category/36', 'http://127.0.0.1/magento/index.php/'),
(1725, 'http://127.0.0.1/magento/index.php/', NULL),
(1726, 'http://127.0.0.1/magento/index.php/', NULL),
(1727, 'http://127.0.0.1/magento/index.php/', NULL),
(1728, 'http://127.0.0.1/magento/index.php/', NULL),
(1729, 'http://127.0.0.1/magento/index.php/', NULL),
(1730, 'http://127.0.0.1/magento/index.php/', NULL),
(1731, 'http://127.0.0.1/magento/index.php/', NULL),
(1732, 'http://127.0.0.1/magento/index.php/', NULL),
(1733, 'http://127.0.0.1/magento/index.php/', NULL),
(1734, 'http://127.0.0.1/magento/index.php/', NULL),
(1735, 'http://127.0.0.1/magento/index.php/', NULL),
(1736, 'http://127.0.0.1/magento/index.php/', NULL),
(1737, 'http://127.0.0.1/magento/index.php/', NULL),
(1738, 'http://127.0.0.1/magento/index.php/', NULL),
(1739, 'http://127.0.0.1/magento/index.php/', NULL),
(1740, 'http://127.0.0.1/magento/index.php/', NULL),
(1741, 'http://127.0.0.1/magento/index.php/', NULL),
(1742, 'http://127.0.0.1/magento/index.php/', NULL),
(1743, 'http://127.0.0.1/magento/index.php/', NULL),
(1744, 'http://127.0.0.1/magento/index.php/', NULL),
(1745, 'http://127.0.0.1/magento/index.php/catalog/product/view/id/2/category/36', 'http://127.0.0.1/magento/index.php/'),
(1746, 'http://127.0.0.1/magento/index.php/', NULL),
(1747, 'http://127.0.0.1/magento/index.php/', NULL),
(1748, 'http://127.0.0.1/magento/index.php/', NULL),
(1749, 'http://127.0.0.1/magento/index.php/', NULL),
(1750, 'http://127.0.0.1/magento/index.php/', NULL),
(1751, 'http://127.0.0.1/magento/index.php/', NULL),
(1752, 'http://127.0.0.1/magento/index.php/', NULL),
(1753, 'http://127.0.0.1/magento/index.php/', NULL),
(1754, 'http://127.0.0.1/magento/index.php/', NULL),
(1755, 'http://127.0.0.1/magento/index.php/catalog/category/view/id/15', 'http://127.0.0.1/magento/index.php/'),
(1756, 'http://127.0.0.1/magento/index.php/catalog/category/view/id/15', 'http://127.0.0.1/magento/index.php/'),
(1757, 'http://127.0.0.1/magento/index.php/catalog/category/view/id/15', 'http://127.0.0.1/magento/index.php/'),
(1758, 'http://127.0.0.1/magento/index.php/catalog/category/view/id/15', 'http://127.0.0.1/magento/index.php/'),
(1759, 'http://127.0.0.1/magento/index.php/', NULL),
(1760, 'http://127.0.0.1/magento/index.php/catalog/category/view/id/7', 'http://127.0.0.1/magento/index.php/'),
(1761, 'http://127.0.0.1/magento/index.php/', NULL),
(1762, 'http://127.0.0.1/magento/index.php/', NULL),
(1763, 'http://127.0.0.1/magento/index.php/', NULL),
(1764, 'http://127.0.0.1/magento/index.php/', NULL),
(1765, 'http://127.0.0.1/magento/skin/frontend/default/default/img/bg_nav.png', 'http://127.0.0.1/magento/skin/frontend/default/default/css/style-nav.css'),
(1766, 'http://127.0.0.1/magento/index.php/', NULL),
(1767, 'http://127.0.0.1/magento/skin/frontend/default/default/img/bg_nav.png', 'http://127.0.0.1/magento/skin/frontend/default/default/css/style-nav.css'),
(1768, 'http://127.0.0.1/magento/skin/frontend/default/default/img/bg_nav.png', NULL),
(1769, 'http://127.0.0.1/magento/skin/frontend/default/default/img/bg_nav.png', NULL),
(1770, 'http://127.0.0.1/magento/index.php/', NULL),
(1771, 'http://127.0.0.1/magento/skin/frontend/default/default/css/img/bg_nav.png', 'http://127.0.0.1/magento/skin/frontend/default/default/css/style-nav.css'),
(1772, 'http://127.0.0.1/magento/index.php/', NULL),
(1773, 'http://127.0.0.1/magento/skin/frontend/default/default/img/bg_nav.png', 'http://127.0.0.1/magento/skin/frontend/default/default/css/style-nav.css'),
(1774, 'http://127.0.0.1/magento/skin/frontend/default/default/img/bg_nav.png', NULL),
(1775, 'http://127.0.0.1/magento/skin/frontend/default/default/img/bg_nav.png', NULL),
(1776, 'http://127.0.0.1/magento/index.php/', NULL),
(1777, 'http://127.0.0.1/magento/skin/frontend/default/default/css/img/bg_nav.png', 'http://127.0.0.1/magento/skin/frontend/default/default/css/style-nav.css'),
(1778, 'http://127.0.0.1/magento/index.php/', NULL),
(1779, 'http://127.0.0.1/magento/index.php/', NULL),
(1780, 'http://127.0.0.1/magento/index.php/', NULL),
(1781, 'http://127.0.0.1/magento/index.php/', NULL),
(1782, 'http://127.0.0.1/magento/index.php/', NULL),
(1783, 'http://127.0.0.1/magento/index.php/', NULL),
(1784, 'http://127.0.0.1/magento/index.php/', NULL),
(1785, 'http://127.0.0.1/magento/index.php/', NULL),
(1786, 'http://127.0.0.1/magento/index.php/', NULL),
(1787, 'http://127.0.0.1/magento/index.php/', NULL),
(1788, 'http://127.0.0.1/magento/index.php/', NULL),
(1789, 'http://127.0.0.1/magento/index.php/', NULL),
(1790, 'http://127.0.0.1/magento/index.php/', NULL),
(1791, 'http://127.0.0.1/magento/index.php/', NULL),
(1792, 'http://127.0.0.1/magento/index.php/', NULL),
(1793, 'http://127.0.0.1/magento/index.php/', NULL),
(1794, 'http://127.0.0.1/magento/index.php/', NULL),
(1795, 'http://127.0.0.1/magento/index.php/', NULL),
(1796, 'http://127.0.0.1/magento/index.php/', NULL),
(1797, 'http://127.0.0.1/magento/index.php/', NULL),
(1798, 'http://127.0.0.1/magento/index.php/', NULL),
(1799, 'http://127.0.0.1/magento/index.php/', NULL),
(1800, 'http://127.0.0.1/magento/index.php/', NULL),
(1801, 'http://127.0.0.1/magento/index.php/', NULL),
(1802, 'http://127.0.0.1/magento/index.php/', NULL),
(1803, 'http://127.0.0.1/magento/index.php/', NULL),
(1804, 'http://127.0.0.1/magento/index.php/', NULL),
(1805, 'http://127.0.0.1/magento/index.php/', NULL),
(1806, 'http://127.0.0.1/magento/index.php/', NULL),
(1807, 'http://127.0.0.1/magento/index.php/', NULL),
(1808, 'http://127.0.0.1/magento/index.php/', NULL),
(1809, 'http://127.0.0.1/magento/index.php/', NULL),
(1810, 'http://127.0.0.1/magento/index.php/', NULL),
(1811, 'http://127.0.0.1/magento/index.php/', NULL),
(1812, 'http://127.0.0.1/magento/index.php/', NULL),
(1813, 'http://127.0.0.1/magento/index.php/', NULL),
(1814, 'http://127.0.0.1/magento/index.php/', NULL),
(1815, 'http://127.0.0.1/magento/index.php/', NULL),
(1816, 'http://127.0.0.1/magento/index.php/', NULL),
(1817, 'http://127.0.0.1/magento/index.php/', NULL),
(1818, 'http://127.0.0.1/magento/index.php/', NULL),
(1819, 'http://127.0.0.1/magento/index.php/', NULL),
(1820, 'http://127.0.0.1/magento/index.php/', NULL),
(1821, 'http://127.0.0.1/magento/index.php/', NULL),
(1822, 'http://127.0.0.1/magento/index.php/', NULL),
(1823, 'http://127.0.0.1/magento/index.php/', NULL),
(1824, 'http://127.0.0.1/magento/index.php/', NULL),
(1825, 'http://127.0.0.1/magento/index.php/', NULL),
(1826, 'http://127.0.0.1/magento/index.php/', NULL),
(1827, 'http://127.0.0.1/magento/index.php/', NULL),
(1828, 'http://127.0.0.1/magento/index.php/', NULL),
(1829, 'http://127.0.0.1/magento/index.php/', NULL),
(1830, 'http://127.0.0.1/magento/index.php/', NULL),
(1831, 'http://127.0.0.1/magento/index.php/', NULL),
(1832, 'http://127.0.0.1/magento/index.php/', NULL),
(1833, 'http://127.0.0.1/magento/index.php/', NULL),
(1834, 'http://127.0.0.1/magento/index.php/', NULL),
(1835, 'http://127.0.0.1/magento/index.php/', NULL),
(1836, 'http://127.0.0.1/magento/index.php/', NULL),
(1837, 'http://127.0.0.1/magento/index.php/', NULL),
(1838, 'http://127.0.0.1/magento/index.php/', NULL),
(1839, 'http://127.0.0.1/magento/index.php/', NULL),
(1840, 'http://127.0.0.1/magento/index.php/', NULL),
(1841, 'http://127.0.0.1/magento/index.php/', NULL),
(1842, 'http://127.0.0.1/magento/index.php/catalog/category/view/id/5', 'http://127.0.0.1/magento/index.php/'),
(1843, 'http://127.0.0.1/magento/index.php/catalog/category/view/id/5', 'http://127.0.0.1/magento/index.php/'),
(1844, 'http://127.0.0.1/magento/index.php/catalog/category/view/id/5', 'http://127.0.0.1/magento/index.php/'),
(1845, 'http://127.0.0.1/magento/index.php/', NULL),
(1846, 'http://127.0.0.1/magento/index.php/', NULL),
(1847, 'http://127.0.0.1/magento/index.php/catalog/category/view/id/5', 'http://127.0.0.1/magento/index.php/'),
(1848, 'http://127.0.0.1/magento/index.php/checkout/cart/add/uenc/aHR0cDovLzEyNy4wLjAuMS9tYWdlbnRvL2luZGV4LnBocC9jb21wb25lbnRlbi5odG1s/product/1/', 'http://127.0.0.1/magento/index.php/componenten.html'),
(1849, 'http://127.0.0.1/magento/index.php/checkout/cart/', 'http://127.0.0.1/magento/index.php/componenten.html'),
(1850, 'http://127.0.0.1/magento/index.php/checkout/cart/delete/id/2/uenc/aHR0cDovLzEyNy4wLjAuMS9tYWdlbnRvL2luZGV4LnBocC9jaGVja291dC9jYXJ0Lw,,/', 'http://127.0.0.1/magento/index.php/checkout/cart/'),
(1851, 'http://127.0.0.1/magento/index.php/checkout/cart/', 'http://127.0.0.1/magento/index.php/checkout/cart/'),
(1852, 'http://127.0.0.1/magento/index.php/', NULL),
(1853, 'http://127.0.0.1/magento/index.php/checkout/cart/add/uenc/aHR0cDovLzEyNy4wLjAuMS9tYWdlbnRvL2luZGV4LnBocC8,/product/2/', 'http://127.0.0.1/magento/index.php/'),
(1854, 'http://127.0.0.1/magento/index.php/checkout/cart/', 'http://127.0.0.1/magento/index.php/'),
(1855, 'http://127.0.0.1/magento/index.php/checkout/cart/delete/id/3/uenc/aHR0cDovLzEyNy4wLjAuMS9tYWdlbnRvL2luZGV4LnBocC9jaGVja291dC9jYXJ0Lw,,/', 'http://127.0.0.1/magento/index.php/checkout/cart/'),
(1856, 'http://127.0.0.1/magento/index.php/checkout/cart/', 'http://127.0.0.1/magento/index.php/checkout/cart/'),
(1857, 'http://127.0.0.1/magento/index.php/', NULL),
(1858, 'http://127.0.0.1/magento/index.php/', NULL),
(1859, 'http://127.0.0.1/magento/index.php/', NULL),
(1860, 'http://127.0.0.1/magento/index.php/', NULL),
(1861, 'http://127.0.0.1/magento/index.php/', NULL),
(1862, 'http://127.0.0.1/magento/index.php/catalog/category/view/id/6', 'http://127.0.0.1/magento/index.php/'),
(1863, 'http://127.0.0.1/magento/index.php/', NULL),
(1864, 'http://127.0.0.1/magento/index.php/', NULL),
(1865, 'http://127.0.0.1/magento/index.php/catalog/product/view/id/1/category/36', 'http://127.0.0.1/magento/index.php/'),
(1866, 'http://127.0.0.1/magento/index.php/', NULL),
(1867, 'http://127.0.0.1/magento/index.php/checkout/cart/add/uenc/aHR0cDovLzEyNy4wLjAuMS9tYWdlbnRvL2luZGV4LnBocC8,/product/1/', 'http://127.0.0.1/magento/index.php/'),
(1868, 'http://127.0.0.1/magento/index.php/checkout/cart/', 'http://127.0.0.1/magento/index.php/'),
(1869, 'http://127.0.0.1/magento/', NULL),
(1870, 'http://127.0.0.1/magento/index.php/checkout/cart/', 'http://127.0.0.1/magento/'),
(1871, 'http://127.0.0.1/magento/', NULL),
(1872, 'http://127.0.0.1/magento/', NULL),
(1873, 'http://127.0.0.1/magento/', NULL),
(1874, 'http://127.0.0.1/magento/', NULL),
(1875, 'http://127.0.0.1/magento/index.php/checkout/cart/', 'http://127.0.0.1/magento/'),
(1876, 'http://127.0.0.1/magento/', NULL),
(1877, 'http://127.0.0.1/magento/index.php/checkout/cart/add/uenc/aHR0cDovLzEyNy4wLjAuMS9tYWdlbnRvLw,,/product/1/', 'http://127.0.0.1/magento/'),
(1878, 'http://127.0.0.1/magento/index.php/checkout/cart/', 'http://127.0.0.1/magento/'),
(1879, 'http://127.0.0.1/magento/index.php/', NULL),
(1880, 'http://127.0.0.1/magento/index.php/checkout/cart/', 'http://127.0.0.1/magento/index.php/'),
(1881, 'http://127.0.0.1/magento/index.php/checkout/cart/delete/id/4/uenc/aHR0cDovLzEyNy4wLjAuMS9tYWdlbnRvL2luZGV4LnBocC9jaGVja291dC9jYXJ0Lw,,/', 'http://127.0.0.1/magento/index.php/checkout/cart/'),
(1882, 'http://127.0.0.1/magento/index.php/checkout/cart/', 'http://127.0.0.1/magento/index.php/checkout/cart/'),
(1883, 'http://127.0.0.1/magento/index.php/', NULL),
(1884, 'http://127.0.0.1/magento/index.php/checkout/cart/add/uenc/aHR0cDovLzEyNy4wLjAuMS9tYWdlbnRvL2luZGV4LnBocC8,/product/2/', 'http://127.0.0.1/magento/index.php/'),
(1885, 'http://127.0.0.1/magento/index.php/checkout/cart/', 'http://127.0.0.1/magento/index.php/'),
(1886, 'http://127.0.0.1/magento/index.php/', NULL),
(1887, 'http://127.0.0.1/magento/index.php/', NULL),
(1888, 'http://127.0.0.1/magento/index.php/customer/account/login/', 'http://127.0.0.1/magento/index.php/'),
(1889, 'http://127.0.0.1/magento/index.php/customer/account/loginPost/', 'http://127.0.0.1/magento/index.php/customer/account/login/'),
(1890, 'http://127.0.0.1/magento/index.php/customer/account/login/', 'http://127.0.0.1/magento/index.php/customer/account/login/'),
(1891, 'http://127.0.0.1/magento/index.php/customer/account/loginPost/', 'http://127.0.0.1/magento/index.php/customer/account/login/'),
(1892, 'http://127.0.0.1/magento/index.php/customer/account/', 'http://127.0.0.1/magento/index.php/customer/account/login/'),
(1893, 'http://127.0.0.1/magento/index.php/', NULL),
(1894, 'http://127.0.0.1/magento/index.php/', NULL),
(1895, 'http://127.0.0.1/magento/index.php/', NULL),
(1896, 'http://127.0.0.1/magento/index.php/customer/account/logout/', 'http://127.0.0.1/magento/index.php/'),
(1897, 'http://127.0.0.1/magento/index.php/customer/account/logoutSuccess/', 'http://127.0.0.1/magento/index.php/'),
(1898, 'http://127.0.0.1/magento/index.php/', 'http://127.0.0.1/magento/index.php/customer/account/logoutSuccess/'),
(1899, 'http://127.0.0.1/magento/index.php/', 'http://127.0.0.1/magento/index.php/customer/account/logoutSuccess/'),
(1900, 'http://127.0.0.1/magento/index.php/', 'http://127.0.0.1/magento/index.php/customer/account/logoutSuccess/'),
(1901, 'http://127.0.0.1/magento/index.php/', 'http://127.0.0.1/magento/index.php/customer/account/logoutSuccess/'),
(1902, 'http://127.0.0.1/magento/index.php/', 'http://127.0.0.1/magento/index.php/customer/account/logoutSuccess/'),
(1903, 'http://127.0.0.1/magento/index.php/', 'http://127.0.0.1/magento/index.php/customer/account/logoutSuccess/'),
(1904, 'http://127.0.0.1/magento/index.php/', 'http://127.0.0.1/magento/index.php/customer/account/logoutSuccess/'),
(1905, 'http://127.0.0.1/magento/index.php/', 'http://127.0.0.1/magento/index.php/customer/account/logoutSuccess/'),
(1906, 'http://127.0.0.1/magento/index.php/', NULL),
(1907, 'http://127.0.0.1/magento/index.php/', 'http://127.0.0.1/magento/index.php/customer/account/logoutSuccess/'),
(1908, 'http://127.0.0.1/magento/index.php/', 'http://127.0.0.1/magento/index.php/customer/account/logoutSuccess/'),
(1909, 'http://127.0.0.1/magento/index.php/', NULL),
(1910, 'http://127.0.0.1/magento/index.php/', 'http://127.0.0.1/magento/index.php/customer/account/logoutSuccess/'),
(1911, 'http://127.0.0.1/magento/index.php/', 'http://127.0.0.1/magento/index.php/customer/account/logoutSuccess/'),
(1912, 'http://127.0.0.1/magento/index.php/', 'http://127.0.0.1/magento/index.php/customer/account/logoutSuccess/'),
(1913, 'http://127.0.0.1/magento/index.php/', 'http://127.0.0.1/magento/index.php/customer/account/logoutSuccess/'),
(1914, 'http://127.0.0.1/magento/index.php/', 'http://127.0.0.1/magento/index.php/customer/account/logoutSuccess/'),
(1915, 'http://127.0.0.1/magento/index.php/', 'http://127.0.0.1/magento/index.php/customer/account/logoutSuccess/'),
(1916, 'http://127.0.0.1/magento/index.php/', NULL),
(1917, 'http://127.0.0.1/magento/index.php/', 'http://127.0.0.1/magento/index.php/customer/account/logoutSuccess/'),
(1918, 'http://127.0.0.1/magento/index.php/', 'http://127.0.0.1/magento/index.php/customer/account/logoutSuccess/'),
(1919, 'http://127.0.0.1/magento/index.php/', 'http://127.0.0.1/magento/index.php/customer/account/logoutSuccess/'),
(1920, 'http://127.0.0.1/magento/index.php/', 'http://127.0.0.1/magento/index.php/customer/account/logoutSuccess/'),
(1921, 'http://127.0.0.1/magento/index.php/', 'http://127.0.0.1/magento/index.php/customer/account/logoutSuccess/'),
(1922, 'http://127.0.0.1/magento/index.php/', 'http://127.0.0.1/magento/index.php/customer/account/logoutSuccess/'),
(1923, 'http://127.0.0.1/magento/index.php/', 'http://127.0.0.1/magento/index.php/customer/account/logoutSuccess/'),
(1924, 'http://127.0.0.1/magento/index.php/', 'http://127.0.0.1/magento/index.php/customer/account/logoutSuccess/'),
(1925, 'http://127.0.0.1/magento/index.php/', 'http://127.0.0.1/magento/index.php/customer/account/logoutSuccess/'),
(1926, 'http://127.0.0.1/magento/index.php/', 'http://127.0.0.1/magento/index.php/customer/account/logoutSuccess/'),
(1927, 'http://127.0.0.1/magento/index.php/', 'http://127.0.0.1/magento/index.php/customer/account/logoutSuccess/'),
(1928, 'http://127.0.0.1/magento/index.php/', 'http://127.0.0.1/magento/index.php/customer/account/logoutSuccess/'),
(1929, 'http://127.0.0.1/magento/index.php/', 'http://127.0.0.1/magento/index.php/customer/account/logoutSuccess/'),
(1930, 'http://127.0.0.1/magento/index.php/', 'http://127.0.0.1/magento/index.php/customer/account/logoutSuccess/'),
(1931, 'http://127.0.0.1/magento/index.php/', 'http://127.0.0.1/magento/index.php/customer/account/logoutSuccess/'),
(1932, 'http://127.0.0.1/magento/index.php/', 'http://127.0.0.1/magento/index.php/customer/account/logoutSuccess/'),
(1933, 'http://127.0.0.1/magento/index.php/', 'http://127.0.0.1/magento/index.php/customer/account/logoutSuccess/'),
(1934, 'http://127.0.0.1/magento/index.php/', NULL),
(1935, 'http://127.0.0.1/magento/index.php/', NULL),
(1936, 'http://127.0.0.1/magento/index.php/', NULL),
(1937, 'http://127.0.0.1/magento/index.php/', 'http://127.0.0.1/magento/index.php/customer/account/logoutSuccess/'),
(1938, 'http://127.0.0.1/magento/index.php/', 'http://127.0.0.1/magento/index.php/customer/account/logoutSuccess/'),
(1939, 'http://127.0.0.1/magento/index.php/', 'http://127.0.0.1/magento/index.php/customer/account/logoutSuccess/'),
(1940, 'http://127.0.0.1/magento/index.php/', 'http://127.0.0.1/magento/index.php/customer/account/logoutSuccess/'),
(1941, 'http://127.0.0.1/magento/index.php/', 'http://127.0.0.1/magento/index.php/customer/account/logoutSuccess/'),
(1942, 'http://127.0.0.1/magento/index.php/', 'http://127.0.0.1/magento/index.php/customer/account/logoutSuccess/'),
(1943, 'http://127.0.0.1/magento/index.php/catalog/category/view/id/6', 'http://127.0.0.1/magento/index.php/'),
(1944, 'http://127.0.0.1/magento/index.php/', 'http://127.0.0.1/magento/index.php/customer/account/logoutSuccess/'),
(1945, 'http://127.0.0.1/magento/index.php/', 'http://127.0.0.1/magento/index.php/customer/account/logoutSuccess/'),
(1946, 'http://127.0.0.1/magento/index.php/', 'http://127.0.0.1/magento/index.php/customer/account/logoutSuccess/'),
(1947, 'http://127.0.0.1/magento/index.php/', 'http://127.0.0.1/magento/index.php/customer/account/logoutSuccess/'),
(1948, 'http://127.0.0.1/magento/index.php/', 'http://127.0.0.1/magento/index.php/customer/account/logoutSuccess/'),
(1949, 'http://127.0.0.1/magento/index.php/', 'http://127.0.0.1/magento/index.php/customer/account/logoutSuccess/'),
(1950, 'http://127.0.0.1/magento/index.php/', 'http://127.0.0.1/magento/index.php/customer/account/logoutSuccess/'),
(1951, 'http://127.0.0.1/magento/index.php/', 'http://127.0.0.1/magento/index.php/customer/account/logoutSuccess/'),
(1952, 'http://127.0.0.1/magento/index.php/', 'http://127.0.0.1/magento/index.php/customer/account/logoutSuccess/'),
(1953, 'http://127.0.0.1/magento/index.php/', 'http://127.0.0.1/magento/index.php/customer/account/logoutSuccess/'),
(1954, 'http://127.0.0.1/magento/index.php/', 'http://127.0.0.1/magento/index.php/customer/account/logoutSuccess/'),
(1955, 'http://127.0.0.1/magento/index.php/', 'http://127.0.0.1/magento/index.php/customer/account/logoutSuccess/'),
(1956, 'http://127.0.0.1/magento/index.php/', 'http://127.0.0.1/magento/index.php/customer/account/logoutSuccess/'),
(1957, 'http://127.0.0.1/magento/index.php/', 'http://127.0.0.1/magento/index.php/customer/account/logoutSuccess/'),
(1958, 'http://127.0.0.1/magento/index.php/', 'http://127.0.0.1/magento/index.php/customer/account/logoutSuccess/'),
(1959, 'http://127.0.0.1/magento/index.php/', 'http://127.0.0.1/magento/index.php/customer/account/logoutSuccess/'),
(1960, 'http://127.0.0.1/magento/index.php/catalog/category/view/id/7', 'http://127.0.0.1/magento/index.php/'),
(1961, 'http://127.0.0.1/magento/index.php/catalog/category/view/id/6', 'http://127.0.0.1/magento/index.php/componenten/moederborden.html'),
(1962, 'http://127.0.0.1/magento/index.php/catalog/category/view/id/7', 'http://127.0.0.1/magento/index.php/'),
(1963, 'http://127.0.0.1/magento/index.php/', NULL),
(1964, 'http://127.0.0.1/magento/index.php/catalog/category/view/id/8', 'http://127.0.0.1/magento/index.php/'),
(1965, 'http://127.0.0.1/magento/index.php/catalog/category/view/id/8', 'http://127.0.0.1/magento/index.php/'),
(1966, 'http://127.0.0.1/magento/index.php/', NULL),
(1967, 'http://127.0.0.1/magento/index.php/catalog/category/view/id/6', 'http://127.0.0.1/magento/index.php/'),
(1968, 'http://127.0.0.1/magento/index.php/catalog/category/view/id/6', 'http://127.0.0.1/magento/index.php/'),
(1969, 'http://127.0.0.1/magento/index.php/catalog/category/view/id/6', 'http://127.0.0.1/magento/index.php/componenten/behuizingen.html'),
(1970, 'http://127.0.0.1/magento/index.php/catalog/category/view/id/6', 'http://127.0.0.1/magento/index.php/componenten/behuizingen.html'),
(1971, 'http://127.0.0.1/magento/index.php/', NULL),
(1972, 'http://127.0.0.1/magento/index.php/', NULL),
(1973, 'http://127.0.0.1/magento/index.php/', NULL),
(1974, 'http://127.0.0.1/magento/index.php/', NULL),
(1975, 'http://127.0.0.1/magento/index.php/', NULL),
(1976, 'http://127.0.0.1/magento/index.php/', NULL),
(1977, 'http://127.0.0.1/magento/index.php/', NULL),
(1978, 'http://127.0.0.1/magento/index.php/', NULL),
(1979, 'http://127.0.0.1/magento/index.php/', NULL),
(1980, 'http://127.0.0.1/magento/index.php/catalog/category/view/id/6', 'http://127.0.0.1/magento/index.php/'),
(1981, 'http://127.0.0.1/magento/index.php/catalog/category/view/id/6', 'http://127.0.0.1/magento/index.php/'),
(1982, 'http://127.0.0.1/magento/index.php/', NULL),
(1983, 'http://127.0.0.1/magento/index.php/', NULL),
(1984, 'http://127.0.0.1/magento/index.php/', NULL),
(1985, 'http://127.0.0.1/magento/index.php/catalog/category/view/id/6', 'http://127.0.0.1/magento/index.php/'),
(1986, 'http://127.0.0.1/magento/index.php/catalog/category/view/id/6', 'http://127.0.0.1/magento/index.php/'),
(1987, 'http://127.0.0.1/magento/index.php/catalog/category/view/id/6', 'http://127.0.0.1/magento/index.php/'),
(1988, 'http://127.0.0.1/magento/index.php/catalog/category/view/id/6', 'http://127.0.0.1/magento/index.php/'),
(1989, 'http://127.0.0.1/magento/index.php/catalog/category/view/id/6', 'http://127.0.0.1/magento/index.php/'),
(1990, 'http://127.0.0.1/magento/index.php/', NULL),
(1991, 'http://127.0.0.1/magento/index.php/', NULL),
(1992, 'http://127.0.0.1/magento/index.php/catalog/category/view/id/6', 'http://127.0.0.1/magento/index.php/'),
(1993, 'http://127.0.0.1/magento/index.php/catalog/category/view/id/6', 'http://127.0.0.1/magento/index.php/'),
(1994, 'http://127.0.0.1/magento/index.php/catalog/category/view/id/6', 'http://127.0.0.1/magento/index.php/'),
(1995, 'http://127.0.0.1/magento/index.php/catalog/category/view/id/6', 'http://127.0.0.1/magento/index.php/'),
(1996, 'http://127.0.0.1/magento/index.php/catalog/category/view/id/6', 'http://127.0.0.1/magento/index.php/'),
(1997, 'http://127.0.0.1/magento/index.php/catalog/category/view/id/21', 'http://127.0.0.1/magento/index.php/componenten/behuizingen.html'),
(1998, 'http://127.0.0.1/magento/index.php/catalog/category/view/id/21', 'http://127.0.0.1/magento/index.php/componenten/behuizingen.html'),
(1999, 'http://127.0.0.1/magento/index.php/catalog/category/view/id/17', 'http://127.0.0.1/magento/index.php/printers.html'),
(2000, 'http://127.0.0.1/magento/index.php/catalog/category/view/id/18', 'http://127.0.0.1/magento/index.php/opslag.html'),
(2001, 'http://127.0.0.1/magento/index.php/catalog/category/view/id/18', 'http://127.0.0.1/magento/index.php/opslag.html'),
(2002, 'http://127.0.0.1/magento/index.php/catalog/category/view/id/18', 'http://127.0.0.1/magento/index.php/opslag.html'),
(2003, 'http://127.0.0.1/magento/index.php/catalog/category/view/id/18', 'http://127.0.0.1/magento/index.php/opslag.html'),
(2004, 'http://127.0.0.1/magento/index.php/catalog/category/view/id/6', 'http://127.0.0.1/magento/index.php/opslag/subcategorie-1.html'),
(2005, 'http://127.0.0.1/magento/index.php/catalog/category/view/id/18', 'http://127.0.0.1/magento/index.php/opslag.html'),
(2006, 'http://127.0.0.1/magento/index.php/catalog/category/view/id/18', 'http://127.0.0.1/magento/index.php/opslag.html'),
(2007, 'http://127.0.0.1/magento/index.php/', NULL),
(2008, 'http://127.0.0.1/magento/index.php/', NULL),
(2009, 'http://127.0.0.1/magento/index.php/', NULL),
(2010, 'http://127.0.0.1/magento/index.php/', NULL),
(2011, 'http://127.0.0.1/magento/index.php/', NULL),
(2012, 'http://127.0.0.1/magento/index.php/', NULL),
(2013, 'http://127.0.0.1/magento/index.php/', NULL),
(2014, 'http://127.0.0.1/magento/index.php/', NULL),
(2015, 'http://127.0.0.1/magento/index.php/', NULL),
(2016, 'http://127.0.0.1/magento/index.php/', NULL),
(2017, 'http://127.0.0.1/magento/index.php/', NULL),
(2018, 'http://127.0.0.1/magento/index.php/', NULL),
(2019, 'http://127.0.0.1/magento/index.php/', NULL),
(2020, 'http://127.0.0.1/magento/index.php/', NULL),
(2021, 'http://127.0.0.1/magento/index.php/', NULL),
(2022, 'http://127.0.0.1/magento/index.php/', NULL),
(2023, 'http://127.0.0.1/magento/index.php/', NULL),
(2024, 'http://127.0.0.1/magento/index.php/', NULL),
(2025, 'http://127.0.0.1/magento/index.php/', NULL),
(2026, 'http://127.0.0.1/magento/index.php/', NULL),
(2027, 'http://127.0.0.1/magento/index.php/', NULL),
(2028, 'http://127.0.0.1/magento/index.php/', NULL),
(2029, 'http://127.0.0.1/magento/index.php/', NULL),
(2030, 'http://127.0.0.1/magento/index.php/', NULL),
(2031, 'http://127.0.0.1/magento/index.php/', NULL),
(2032, 'http://127.0.0.1/magento/index.php/', NULL),
(2033, 'http://127.0.0.1/magento/index.php/', NULL),
(2034, 'http://127.0.0.1/magento/index.php/', NULL),
(2035, 'http://127.0.0.1/magento/index.php/catalog/category/view/id/6', 'http://127.0.0.1/magento/index.php/'),
(2036, 'http://127.0.0.1/magento/index.php/catalog/category/view/id/7', 'http://127.0.0.1/magento/index.php/componenten/behuizingen.html'),
(2037, 'http://127.0.0.1/magento/index.php/catalog/category/view/id/6', 'http://127.0.0.1/magento/index.php/componenten/moederborden.html'),
(2038, 'http://127.0.0.1/magento/index.php/catalog/category/view/id/7', 'http://127.0.0.1/magento/index.php/componenten/behuizingen.html'),
(2039, 'http://127.0.0.1/magento/index.php/', NULL),
(2040, 'http://127.0.0.1/magento/index.php/', NULL),
(2041, 'http://127.0.0.1/magento/index.php/', NULL),
(2042, 'http://127.0.0.1/magento/index.php/', NULL),
(2043, 'http://127.0.0.1/magento/index.php/', NULL),
(2044, 'http://127.0.0.1/magento/index.php/', NULL),
(2045, 'http://127.0.0.1/magento/index.php/', NULL),
(2046, 'http://127.0.0.1/magento/index.php/', NULL),
(2047, 'http://127.0.0.1/magento/index.php/', NULL),
(2048, 'http://127.0.0.1/magento/index.php/', NULL),
(2049, 'http://127.0.0.1/magento/index.php/', NULL),
(2050, 'http://127.0.0.1/magento/index.php/', NULL),
(2051, 'http://127.0.0.1/magento/index.php/', NULL),
(2052, 'http://127.0.0.1/magento/index.php/', NULL),
(2053, 'http://127.0.0.1/magento/index.php/', NULL),
(2054, 'http://127.0.0.1/magento/index.php/', NULL),
(2055, 'http://127.0.0.1/magento/index.php/', NULL),
(2056, 'http://127.0.0.1/magento/index.php/', NULL),
(2057, 'http://127.0.0.1/magento/index.php/catalog/category/view/id/6', 'http://127.0.0.1/magento/index.php/'),
(2058, 'http://127.0.0.1/magento/index.php/catalog/category/view/id/6', 'http://127.0.0.1/magento/index.php/'),
(2059, 'http://127.0.0.1/magento/index.php/catalog/category/view/id/6', 'http://127.0.0.1/magento/index.php/'),
(2060, 'http://127.0.0.1/magento/index.php/catalog/category/view/id/6', 'http://127.0.0.1/magento/index.php/'),
(2061, 'http://127.0.0.1/magento/index.php/catalog/category/view/id/6', 'http://127.0.0.1/magento/index.php/'),
(2062, 'http://127.0.0.1/magento/index.php/catalog/category/view/id/6', 'http://127.0.0.1/magento/index.php/'),
(2063, 'http://127.0.0.1/magento/index.php/catalog/category/view/id/6', 'http://127.0.0.1/magento/index.php/'),
(2064, 'http://127.0.0.1/magento/index.php/catalog/category/view/id/6', 'http://127.0.0.1/magento/index.php/'),
(2065, 'http://127.0.0.1/magento/index.php/catalog/category/view/id/6', 'http://127.0.0.1/magento/index.php/'),
(2066, 'http://127.0.0.1/magento/', NULL),
(2067, 'http://127.0.0.1/magento/index.php/', NULL),
(2068, 'http://127.0.0.1/magento/index.php/', NULL),
(2069, 'http://127.0.0.1/magento/index.php/', NULL),
(2070, 'http://127.0.0.1/magento/index.php/', NULL),
(2071, 'http://127.0.0.1/magento/index.php/', NULL),
(2072, 'http://127.0.0.1/magento/index.php/', NULL),
(2073, 'http://127.0.0.1/magento/index.php/', NULL),
(2074, 'http://127.0.0.1/magento/index.php/', NULL),
(2075, 'http://127.0.0.1/magento/index.php/', NULL),
(2076, 'http://127.0.0.1/magento/index.php/', NULL),
(2077, 'http://127.0.0.1/magento/index.php/', NULL),
(2078, 'http://127.0.0.1/magento/index.php/', NULL),
(2079, 'http://127.0.0.1/magento/index.php/', NULL),
(2080, 'http://127.0.0.1/magento/index.php/', NULL),
(2081, 'http://127.0.0.1/magento/index.php/', NULL),
(2082, 'http://127.0.0.1/magento/index.php/', NULL),
(2083, 'http://127.0.0.1/magento/index.php/', NULL),
(2084, 'http://127.0.0.1/magento/index.php/', NULL),
(2085, 'http://127.0.0.1/magento/index.php/', NULL),
(2086, 'http://127.0.0.1/magento/index.php/', NULL),
(2087, 'http://127.0.0.1/magento/index.php/', NULL),
(2088, 'http://127.0.0.1/magento/index.php/', NULL),
(2089, 'http://127.0.0.1/magento/index.php/', NULL),
(2090, 'http://127.0.0.1/magento/index.php/', NULL),
(2091, 'http://127.0.0.1/magento/index.php/', NULL),
(2092, 'http://127.0.0.1/magento/index.php/', NULL),
(2093, 'http://127.0.0.1/magento/index.php/', NULL),
(2094, 'http://127.0.0.1/magento/index.php/', NULL),
(2095, 'http://127.0.0.1/magento/index.php/', NULL),
(2096, 'http://127.0.0.1/magento/index.php/', NULL),
(2097, 'http://127.0.0.1/magento/index.php/catalog/category/view/id/26', 'http://127.0.0.1/magento/index.php/'),
(2098, 'http://127.0.0.1/magento/index.php/', NULL),
(2099, 'http://127.0.0.1/magento/index.php/catalog/category/view/id/7', 'http://127.0.0.1/magento/index.php/'),
(2100, 'http://127.0.0.1/magento/index.php/catalog/category/view/id/7', 'http://127.0.0.1/magento/index.php/'),
(2101, 'http://127.0.0.1/magento/index.php/catalog/category/view/id/22', 'http://127.0.0.1/magento/index.php/componenten/moederborden.html'),
(2102, 'http://127.0.0.1/magento/index.php/', NULL),
(2103, 'http://127.0.0.1/magento/index.php/catalog/category/view/id/7', 'http://127.0.0.1/magento/index.php/'),
(2104, 'http://127.0.0.1/magento/index.php/', NULL),
(2105, 'http://127.0.0.1/magento/index.php/catalog/category/view/id/7', 'http://127.0.0.1/magento/index.php/'),
(2106, 'http://127.0.0.1/magento/index.php/', NULL),
(2107, 'http://127.0.0.1/magento/index.php/catalog/category/view/id/7', 'http://127.0.0.1/magento/index.php/'),
(2108, 'http://127.0.0.1/magento/index.php/catalog/category/view/id/7', 'http://127.0.0.1/magento/index.php/componenten/moederborden.html'),
(2109, 'http://127.0.0.1/magento/index.php/catalog/category/view/id/7', 'http://127.0.0.1/magento/index.php/componenten/moederborden.html'),
(2110, 'http://127.0.0.1/magento/index.php/catalog/category/view/id/7', 'http://127.0.0.1/magento/index.php/componenten/moederborden.html'),
(2111, 'http://127.0.0.1/magento/index.php/', NULL),
(2112, 'http://127.0.0.1/magento/index.php/', NULL),
(2113, 'http://127.0.0.1/magento/index.php/', NULL),
(2114, 'http://127.0.0.1/magento/index.php/', NULL),
(2115, 'http://127.0.0.1/magento/index.php/', NULL),
(2116, 'http://127.0.0.1/magento/index.php/', NULL),
(2117, 'http://127.0.0.1/magento/index.php/catalog/category/view/id/7', 'http://127.0.0.1/magento/index.php/componenten/moederborden.html'),
(2118, 'http://127.0.0.1/magento/index.php/catalog/category/view/id/18', 'http://127.0.0.1/magento/index.php/componenten/moederborden.html'),
(2119, 'http://127.0.0.1/magento/index.php/catalog/category/view/id/22', 'http://127.0.0.1/magento/index.php/opslag/subcategorie-1.html'),
(2120, 'http://127.0.0.1/magento/index.php/catalog/category/view/id/15', 'http://127.0.0.1/magento/index.php/printers/laser.html'),
(2121, 'http://127.0.0.1/magento/index.php/catalog/category/view/id/19', 'http://127.0.0.1/magento/index.php/monitoren-1.html'),
(2122, 'http://127.0.0.1/magento/index.php/catalog/category/view/id/6', 'http://127.0.0.1/magento/index.php/pc-notebooks.html'),
(2123, 'http://127.0.0.1/magento/index.php/catalog/category/view/id/22', 'http://127.0.0.1/magento/index.php/componenten/behuizingen.html'),
(2124, 'http://127.0.0.1/magento/index.php/catalog/category/view/id/30', 'http://127.0.0.1/magento/index.php/printers/laser.html'),
(2125, 'http://127.0.0.1/magento/index.php/catalog/category/view/id/26', 'http://127.0.0.1/magento/index.php/media/media-recorders.html'),
(2126, 'http://127.0.0.1/magento/index.php/catalog/category/view/id/31', 'http://127.0.0.1/magento/index.php/software/antivirus-beveiliging.html'),
(2127, 'http://127.0.0.1/magento/index.php/catalog/category/view/id/33', 'http://127.0.0.1/magento/index.php/software/besturingssystemen.html'),
(2128, 'http://127.0.0.1/magento/index.php/catalog/category/view/id/33', 'http://127.0.0.1/magento/index.php/software/foto-video-muziek.html'),
(2129, 'http://127.0.0.1/magento/index.php/catalog/category/view/id/15', 'http://127.0.0.1/magento/index.php/software/foto-video-muziek.html'),
(2130, 'http://127.0.0.1/magento/index.php/catalog/category/view/id/19', 'http://127.0.0.1/magento/index.php/monitoren-1.html'),
(2131, 'http://127.0.0.1/magento/index.php/catalog/category/view/id/21', 'http://127.0.0.1/magento/index.php/pc-notebooks.html'),
(2132, 'http://127.0.0.1/magento/index.php/catalog/category/view/id/7', 'http://127.0.0.1/magento/index.php/printers.html'),
(2133, 'http://127.0.0.1/magento/index.php/catalog/category/view/id/7', 'http://127.0.0.1/magento/index.php/printers.html'),
(2134, 'http://127.0.0.1/magento/index.php/catalog/category/view/id/7', 'http://127.0.0.1/magento/index.php/printers.html'),
(2135, 'http://127.0.0.1/magento/index.php/catalog/category/view/id/7', 'http://127.0.0.1/magento/index.php/printers.html'),
(2136, 'http://127.0.0.1/magento/index.php/catalog/category/view/id/7', 'http://127.0.0.1/magento/index.php/printers.html'),
(2137, 'http://127.0.0.1/magento/index.php/', NULL),
(2138, 'http://127.0.0.1/magento/index.php/catalog/category/view/id/15', 'http://127.0.0.1/magento/index.php/'),
(2139, 'http://127.0.0.1/magento/index.php/catalog/category/view/id/23', 'http://127.0.0.1/magento/index.php/monitoren-1.html'),
(2140, 'http://127.0.0.1/magento/index.php/catalog/category/view/id/30', 'http://127.0.0.1/magento/index.php/media.html'),
(2141, 'http://127.0.0.1/magento/index.php/catalog/category/view/id/32', 'http://127.0.0.1/magento/index.php/media/media-recorders.html'),
(2142, 'http://127.0.0.1/magento/index.php/', NULL),
(2143, 'http://127.0.0.1/magento/index.php/', NULL),
(2144, 'http://127.0.0.1/magento/index.php/', NULL),
(2145, 'http://127.0.0.1/magento/index.php/', NULL),
(2146, 'http://127.0.0.1/magento/index.php/', NULL),
(2147, 'http://127.0.0.1/magento/index.php/', NULL),
(2148, 'http://127.0.0.1/magento/index.php/', NULL),
(2149, 'http://127.0.0.1/magento/index.php/', NULL),
(2150, 'http://127.0.0.1/magento/index.php/', NULL),
(2151, 'http://127.0.0.1/magento/index.php/', NULL),
(2152, 'http://127.0.0.1/magento/index.php/', NULL),
(2153, 'http://127.0.0.1/magento/index.php/', NULL),
(2154, 'http://127.0.0.1/magento/index.php/', NULL),
(2155, 'http://127.0.0.1/magento/index.php/', NULL),
(2156, 'http://127.0.0.1/magento/index.php/', NULL),
(2157, 'http://127.0.0.1/magento/index.php/', NULL),
(2158, 'http://127.0.0.1/magento/index.php/', NULL),
(2159, 'http://127.0.0.1/magento/index.php/', NULL),
(2160, 'http://127.0.0.1/magento/index.php/', NULL),
(2161, 'http://127.0.0.1/magento/index.php/', NULL),
(2162, 'http://127.0.0.1/magento/index.php/', NULL),
(2163, 'http://127.0.0.1/magento/index.php/', NULL),
(2164, 'http://127.0.0.1/magento/index.php/checkout/cart/add/uenc/aHR0cDovLzEyNy4wLjAuMS9tYWdlbnRvL2luZGV4LnBocC8,/product/2/', 'http://127.0.0.1/magento/index.php/'),
(2165, 'http://127.0.0.1/magento/index.php/enable-cookies', 'http://127.0.0.1/magento/index.php/'),
(2166, 'http://127.0.0.1/magento/index.php/', NULL),
(2167, 'http://127.0.0.1/magento/index.php/checkout/cart/add/uenc/aHR0cDovLzEyNy4wLjAuMS9tYWdlbnRvL2luZGV4LnBocC8,/product/2/', 'http://127.0.0.1/magento/index.php/'),
(2168, 'http://127.0.0.1/magento/index.php/checkout/cart/', 'http://127.0.0.1/magento/index.php/'),
(2169, 'http://127.0.0.1/magento/index.php/', 'http://127.0.0.1/magento/index.php/checkout/cart/'),
(2170, 'http://127.0.0.1/magento/index.php/checkout/cart/', 'http://127.0.0.1/magento/index.php/'),
(2171, 'http://127.0.0.1/magento/index.php/checkout/onepage/', 'http://127.0.0.1/magento/index.php/checkout/cart/'),
(2172, 'http://127.0.0.1/magento/index.php/checkout/', 'http://127.0.0.1/magento/index.php/checkout/onepage/'),
(2173, 'http://127.0.0.1/magento/index.php/checkout/onepage/', 'http://127.0.0.1/magento/index.php/checkout/onepage/'),
(2174, 'http://127.0.0.1/magento/index.php/', NULL),
(2175, 'http://127.0.0.1/magento/index.php/checkout/', 'http://127.0.0.1/magento/index.php/'),
(2176, 'http://127.0.0.1/magento/index.php/checkout/onepage/', 'http://127.0.0.1/magento/index.php/'),
(2177, 'http://127.0.0.1/magento/index.php/checkout/cart/', 'http://127.0.0.1/magento/index.php/'),
(2178, 'http://127.0.0.1/magento/index.php/', NULL),
(2179, 'http://127.0.0.1/magento/index.php/checkout/cart/add/uenc/aHR0cDovLzEyNy4wLjAuMS9tYWdlbnRvL2luZGV4LnBocC8,/product/3/', 'http://127.0.0.1/magento/index.php/'),
(2180, 'http://127.0.0.1/magento/index.php/checkout/cart/', 'http://127.0.0.1/magento/index.php/'),
(2181, 'http://127.0.0.1/magento/index.php/', NULL),
(2182, 'http://127.0.0.1/magento/index.php/', NULL),
(2183, 'http://127.0.0.1/magento/index.php/checkout/cart/', 'http://127.0.0.1/magento/index.php/'),
(2184, 'http://127.0.0.1/magento/index.php/checkout/cart/delete/id/8/uenc/aHR0cDovLzEyNy4wLjAuMS9tYWdlbnRvL2luZGV4LnBocC9jaGVja291dC9jYXJ0Lw,,/', 'http://127.0.0.1/magento/index.php/checkout/cart/'),
(2185, 'http://127.0.0.1/magento/index.php/checkout/cart/', 'http://127.0.0.1/magento/index.php/checkout/cart/'),
(2186, 'http://127.0.0.1/magento/index.php', NULL);
INSERT INTO `log_url_info` (`url_id`, `url`, `referer`) VALUES
(2187, 'http://127.0.0.1/magento/index.php/', NULL),
(2188, 'http://127.0.0.1/magento/index.php', NULL),
(2189, 'http://127.0.0.1/magento/index.php', NULL),
(2190, 'http://127.0.0.1/magento/skin/frontend/default/thebis/css/MetaPro-Norm.otf', 'http://127.0.0.1/magento/skin/frontend/default/thebis/css/styles.css'),
(2191, 'http://127.0.0.1/magento/index.php/catalog/category/view/id/7', 'http://127.0.0.1/magento/index.php/printers.html'),
(2192, 'http://127.0.0.1/magento/skin/frontend/default/thebis/css/MetaPro-Norm.otf', 'http://127.0.0.1/magento/index.php/componenten/moederborden.html'),
(2193, 'http://127.0.0.1/magento/index.php/', NULL),
(2194, 'http://127.0.0.1/magento/skin/frontend/default/thebis/css/MetaPro-Norm.otf', 'http://127.0.0.1/magento/index.php/'),
(2195, 'http://127.0.0.1/magento/index.php/', NULL),
(2196, 'http://127.0.0.1/magento/skin/frontend/default/thebis/css/MetaPro-Norm.otf', 'http://127.0.0.1/magento/index.php/'),
(2197, 'http://127.0.0.1/magento/skin/frontend/default/thebis/css/MetaPro-Norm.otf', 'http://127.0.0.1/magento/index.php/'),
(2198, 'http://127.0.0.1/magento/index.php', NULL),
(2199, 'http://127.0.0.1/magento/skin/frontend/default/thebis/css/MtNoLFRo.otf', 'http://127.0.0.1/magento/skin/frontend/default/thebis/css/styles.css'),
(2200, 'http://127.0.0.1/magento/index.php', NULL),
(2201, 'http://127.0.0.1/magento/skin/frontend/default/thebis/css/MtNoLFRo.otf', 'http://127.0.0.1/magento/skin/frontend/default/thebis/css/styles.css'),
(2202, 'http://127.0.0.1/magento/index.php', NULL),
(2203, 'http://127.0.0.1/magento/index.php', NULL),
(2204, 'http://127.0.0.1/magento/index.php/catalog/category/view/id/5', 'http://127.0.0.1/magento/index.php'),
(2205, 'http://127.0.0.1/magento/index.php/catalog/category/view/id/5', 'http://127.0.0.1/magento/index.php'),
(2206, 'http://127.0.0.1/magento/skin/frontend/default/thebis/css/MtNoLFRo.otf', 'http://127.0.0.1/magento/skin/frontend/default/thebis/css/styles.css'),
(2207, 'http://127.0.0.1/magento/index.php/', NULL),
(2208, 'http://127.0.0.1/magento/skin/frontend/default/thebis/css/MtNoLFRo.otf', 'http://127.0.0.1/magento/skin/frontend/default/thebis/css/styles.css'),
(2209, 'http://127.0.0.1/magento/index.php/', NULL),
(2210, 'http://127.0.0.1/magento/skin/frontend/default/thebis/css/MtNoLFRo.otf', 'http://127.0.0.1/magento/skin/frontend/default/thebis/css/styles.css'),
(2211, 'http://127.0.0.1/magento/index.php/', NULL),
(2212, 'http://127.0.0.1/magento/skin/frontend/default/thebis/css/MtNoLFRo.otf', 'http://127.0.0.1/magento/skin/frontend/default/thebis/css/styles.css'),
(2213, 'http://127.0.0.1/magento/index.php/', NULL),
(2214, 'http://127.0.0.1/magento/skin/frontend/default/thebis/css/MtNoLFRo.otf', 'http://127.0.0.1/magento/skin/frontend/default/thebis/css/styles.css'),
(2215, 'http://127.0.0.1/magento/index.php/', NULL),
(2216, 'http://127.0.0.1/magento/skin/frontend/default/thebis/css/MtNoLFRo.ttf', 'http://127.0.0.1/magento/skin/frontend/default/thebis/css/styles.css'),
(2217, 'http://127.0.0.1/magento/index.php/', NULL),
(2218, 'http://127.0.0.1/magento/skin/frontend/default/thebis/css/MtNoLFRo.ttf', 'http://127.0.0.1/magento/skin/frontend/default/thebis/css/styles.css'),
(2219, 'http://127.0.0.1/magento/index.php/', NULL),
(2220, 'http://127.0.0.1/magento/index.php/', NULL),
(2221, 'http://127.0.0.1/magento/index.php/catalog/category/view/id/18', 'http://127.0.0.1/magento/index.php/'),
(2222, 'http://127.0.0.1/magento/index.php/', NULL),
(2223, 'http://127.0.0.1/magento/index.php/', NULL),
(2224, 'http://127.0.0.1/magento/index.php/', NULL),
(2225, 'http://127.0.0.1/magento/index.php/', NULL),
(2226, 'http://127.0.0.1/magento/index.php/', NULL),
(2227, 'http://127.0.0.1/magento/index.php/', NULL),
(2228, 'http://127.0.0.1/magento/index.php/', NULL),
(2229, 'http://127.0.0.1/magento/index.php/', NULL),
(2230, 'http://127.0.0.1/magento/index.php/', NULL),
(2231, 'http://127.0.0.1/magento/skin/frontend/default/thebis/css/fonts/MtNoLFRo.ttf', 'http://127.0.0.1/magento/skin/frontend/default/thebis/css/styles.css'),
(2232, 'http://127.0.0.1/magento/index.php/', NULL),
(2233, 'http://127.0.0.1/magento/skin/frontend/default/thebis/css/fonts/MtNoLFRo.ttf', 'http://127.0.0.1/magento/skin/frontend/default/thebis/css/styles.css'),
(2234, 'http://127.0.0.1/magento/index.php/', NULL),
(2235, 'http://127.0.0.1/magento/index.php/', NULL),
(2236, 'http://127.0.0.1/magento/index.php/', NULL),
(2237, 'http://127.0.0.1/magento/index.php/', NULL),
(2238, 'http://127.0.0.1/magento/index.php/', NULL),
(2239, 'http://127.0.0.1/magento/index.php/', NULL),
(2240, 'http://127.0.0.1/magento/index.php/', NULL),
(2241, 'http://127.0.0.1/magento/index.php/', NULL),
(2242, 'http://127.0.0.1/magento/index.php/', NULL),
(2243, 'http://127.0.0.1/magento/index.php/', NULL),
(2244, 'http://127.0.0.1/magento/index.php/', NULL),
(2245, 'http://127.0.0.1/magento/index.php/', NULL),
(2246, 'http://127.0.0.1/magento/index.php/', NULL),
(2247, 'http://127.0.0.1/magento/index.php/', NULL),
(2248, 'http://127.0.0.1/magento/index.php/', NULL),
(2249, 'http://127.0.0.1/magento/index.php/', NULL),
(2250, 'http://127.0.0.1/magento/index.php/', NULL),
(2251, 'http://127.0.0.1/magento/index.php/', NULL),
(2252, 'http://127.0.0.1/magento/index.php/', NULL),
(2253, 'http://127.0.0.1/magento/index.php/', NULL),
(2254, 'http://127.0.0.1/magento/index.php/', NULL),
(2255, 'http://127.0.0.1/magento/index.php/', NULL),
(2256, 'http://127.0.0.1/magento/index.php/', NULL),
(2257, 'http://127.0.0.1/magento/index.php/', NULL),
(2258, 'http://127.0.0.1/magento/index.php/', NULL),
(2259, 'http://127.0.0.1/magento/index.php/', NULL),
(2260, 'http://127.0.0.1/magento/index.php/', NULL),
(2261, 'http://127.0.0.1/magento/index.php/', NULL),
(2262, 'http://127.0.0.1/magento/index.php/', NULL),
(2263, 'http://127.0.0.1/magento/index.php/', NULL),
(2264, 'http://127.0.0.1/magento/index.php/', NULL),
(2265, 'http://127.0.0.1/magento/index.php/catalog/category/view/id/5', 'http://127.0.0.1/magento/index.php/'),
(2266, 'http://127.0.0.1/magento/index.php/catalog/category/view/id/5', 'http://127.0.0.1/magento/index.php/'),
(2267, 'http://127.0.0.1/magento/index.php/catalog/category/view/id/5', 'http://127.0.0.1/magento/index.php/'),
(2268, 'http://127.0.0.1/magento/index.php/catalog/category/view/id/5', 'http://127.0.0.1/magento/index.php/'),
(2269, 'http://127.0.0.1/magento/index.php/catalog/category/view/id/5', 'http://127.0.0.1/magento/index.php/'),
(2270, 'http://127.0.0.1/magento/index.php/', NULL),
(2271, 'http://127.0.0.1/magento/index.php/', NULL),
(2272, 'http://127.0.0.1/magento/index.php/', NULL),
(2273, 'http://127.0.0.1/magento/index.php/', NULL),
(2274, 'http://127.0.0.1/magento/index.php/', NULL),
(2275, 'http://127.0.0.1/magento/index.php/', NULL),
(2276, 'http://127.0.0.1/magento/index.php/', NULL),
(2277, 'http://127.0.0.1/magento/index.php/', NULL),
(2278, 'http://127.0.0.1/magento/index.php/', NULL),
(2279, 'http://127.0.0.1/magento/index.php/', NULL),
(2280, 'http://127.0.0.1/magento/index.php/', NULL),
(2281, 'http://127.0.0.1/magento/index.php/', NULL),
(2282, 'http://127.0.0.1/magento/index.php/', NULL),
(2283, 'http://127.0.0.1/magento/index.php/', NULL),
(2284, 'http://127.0.0.1/magento/index.php/', NULL),
(2285, 'http://127.0.0.1/magento/index.php/', NULL),
(2286, 'http://127.0.0.1/magento/index.php/', NULL),
(2287, 'http://127.0.0.1/magento/index.php/', NULL),
(2288, 'http://127.0.0.1/magento/index.php/', NULL),
(2289, 'http://127.0.0.1/magento/index.php/', NULL),
(2290, 'http://127.0.0.1/magento/index.php/', NULL),
(2291, 'http://127.0.0.1/magento/index.php/', NULL),
(2292, 'http://127.0.0.1/magento/index.php/', NULL),
(2293, 'http://127.0.0.1/magento/index.php/', NULL),
(2294, 'http://127.0.0.1/magento/index.php/', NULL),
(2295, 'http://127.0.0.1/magento/index.php/catalog/category/view/id/17', 'http://127.0.0.1/magento/index.php/'),
(2296, 'http://127.0.0.1/magento/index.php/', NULL),
(2297, 'http://127.0.0.1/magento/index.php/', NULL),
(2298, 'http://127.0.0.1/magento/index.php/', NULL),
(2299, 'http://127.0.0.1/magento/index.php/', NULL),
(2300, 'http://127.0.0.1/magento/index.php/', NULL),
(2301, 'http://127.0.0.1/magento/index.php/', NULL),
(2302, 'http://127.0.0.1/magento/index.php/', NULL),
(2303, 'http://127.0.0.1/magento/index.php/', NULL),
(2304, 'http://127.0.0.1/magento/index.php/', NULL),
(2305, 'http://127.0.0.1/magento/index.php/', NULL),
(2306, 'http://127.0.0.1/magento/index.php/', NULL),
(2307, 'http://127.0.0.1/magento/index.php/', NULL),
(2308, 'http://127.0.0.1/magento/index.php/', NULL),
(2309, 'http://127.0.0.1/magento/index.php/', NULL),
(2310, 'http://127.0.0.1/magento/index.php/', NULL),
(2311, 'http://127.0.0.1/magento/index.php/', NULL),
(2312, 'http://127.0.0.1/magento/index.php/', NULL),
(2313, 'http://127.0.0.1/magento/index.php/', NULL),
(2314, 'http://127.0.0.1/magento/index.php/', NULL),
(2315, 'http://127.0.0.1/magento/index.php/', NULL),
(2316, 'http://127.0.0.1/magento/index.php/', NULL),
(2317, 'http://127.0.0.1/magento/index.php/', NULL),
(2318, 'http://127.0.0.1/magento/index.php/', NULL),
(2319, 'http://127.0.0.1/magento/index.php/', NULL),
(2320, 'http://127.0.0.1/magento/index.php/', NULL),
(2321, 'http://127.0.0.1/magento/index.php/', NULL),
(2322, 'http://127.0.0.1/magento/index.php/', NULL),
(2323, 'http://127.0.0.1/magento/index.php/', NULL),
(2324, 'http://127.0.0.1/magento/index.php/', NULL),
(2325, 'http://127.0.0.1/magento/index.php/', NULL),
(2326, 'http://127.0.0.1/magento/index.php/', NULL),
(2327, 'http://127.0.0.1/magento/index.php/', NULL),
(2328, 'http://127.0.0.1/magento/index.php/', NULL),
(2329, 'http://127.0.0.1/magento/index.php/', NULL),
(2330, 'http://127.0.0.1/magento/index.php/', NULL),
(2331, 'http://127.0.0.1/magento/index.php/', NULL),
(2332, 'http://127.0.0.1/magento/index.php/', NULL),
(2333, 'http://127.0.0.1/magento/index.php/', NULL),
(2334, 'http://127.0.0.1/magento/index.php/', NULL),
(2335, 'http://127.0.0.1/magento/index.php/', NULL),
(2336, 'http://127.0.0.1/magento/index.php/', NULL),
(2337, 'http://127.0.0.1/magento/index.php/', NULL),
(2338, 'http://127.0.0.1/magento/index.php/', NULL),
(2339, 'http://127.0.0.1/magento/index.php/', NULL),
(2340, 'http://127.0.0.1/magento/index.php/', NULL),
(2341, 'http://127.0.0.1/magento/index.php/', NULL),
(2342, 'http://127.0.0.1/magento/index.php/', NULL),
(2343, 'http://127.0.0.1/magento/index.php/', NULL),
(2344, 'http://127.0.0.1/magento/index.php/', NULL),
(2345, 'http://127.0.0.1/magento/index.php/', NULL),
(2346, 'http://127.0.0.1/magento/index.php/', NULL),
(2347, 'http://127.0.0.1/magento/index.php/', NULL),
(2348, 'http://127.0.0.1/magento/index.php/', NULL),
(2349, 'http://127.0.0.1/magento/index.php/', NULL),
(2350, 'http://127.0.0.1/magento/index.php/', NULL),
(2351, 'http://127.0.0.1/magento/index.php/', NULL),
(2352, 'http://127.0.0.1/magento/index.php/', NULL),
(2353, 'http://127.0.0.1/magento/index.php/', NULL),
(2354, 'http://127.0.0.1/magento/index.php/', NULL),
(2355, 'http://127.0.0.1/magento/index.php/', NULL),
(2356, 'http://127.0.0.1/magento/index.php/', NULL),
(2357, 'http://127.0.0.1/magento/index.php/', NULL),
(2358, 'http://127.0.0.1/magento/index.php/', NULL),
(2359, 'http://127.0.0.1/magento/index.php/', NULL),
(2360, 'http://127.0.0.1/magento/index.php/', NULL),
(2361, 'http://127.0.0.1/magento/index.php/', NULL),
(2362, 'http://127.0.0.1/magento/index.php/', NULL),
(2363, 'http://127.0.0.1/magento/index.php/', NULL),
(2364, 'http://127.0.0.1/magento/index.php/', NULL),
(2365, 'http://127.0.0.1/magento/index.php/', NULL),
(2366, 'http://127.0.0.1/magento/index.php/', NULL),
(2367, 'http://127.0.0.1/magento/index.php/', NULL),
(2368, 'http://127.0.0.1/magento/index.php/', NULL),
(2369, 'http://127.0.0.1/magento/index.php/', NULL),
(2370, 'http://127.0.0.1/magento/index.php/', NULL),
(2371, 'http://127.0.0.1/magento/index.php/', NULL),
(2372, 'http://127.0.0.1/magento/index.php/', NULL),
(2373, 'http://127.0.0.1/magento/index.php/', NULL),
(2374, 'http://127.0.0.1/magento/index.php/', NULL),
(2375, 'http://127.0.0.1/magento/skin/frontend/default/thebis/fonts/MtNoLFRo.woff', 'http://127.0.0.1/magento/skin/frontend/default/thebis/css/styles.css'),
(2376, 'http://127.0.0.1/magento/index.php/', NULL),
(2377, 'http://127.0.0.1/magento/skin/frontend/default/thebis/fonts/MtNoLFRo.woff', 'http://127.0.0.1/magento/skin/frontend/default/thebis/css/styles.css'),
(2378, 'http://127.0.0.1/magento/index.php/catalog/category/view/id/18', 'http://127.0.0.1/magento/index.php/'),
(2379, 'http://127.0.0.1/magento/skin/frontend/default/thebis/fonts/MtNoLFRo.woff', 'http://127.0.0.1/magento/skin/frontend/default/thebis/css/styles.css'),
(2380, 'http://127.0.0.1/magento/index.php/', NULL),
(2381, 'http://127.0.0.1/magento/skin/frontend/default/thebis/fonts/MtNoLFRo.woff', 'http://127.0.0.1/magento/skin/frontend/default/thebis/css/styles.css'),
(2382, 'http://127.0.0.1/magento/index.php/', NULL),
(2383, 'http://127.0.0.1/magento/index.php/', NULL),
(2384, 'http://127.0.0.1/magento/index.php/catalog/category/view/id/18', 'http://127.0.0.1/magento/index.php/'),
(2385, 'http://127.0.0.1/magento/index.php/', NULL),
(2386, 'http://127.0.0.1/magento/index.php/', NULL),
(2387, 'http://127.0.0.1/magento/index.php/', NULL),
(2388, 'http://127.0.0.1/magento/index.php/', NULL),
(2389, 'http://127.0.0.1/magento/index.php/', NULL),
(2390, 'http://127.0.0.1/magento/index.php/', NULL),
(2391, 'http://127.0.0.1/magento/index.php/', NULL),
(2392, 'http://127.0.0.1/magento/index.php/', NULL),
(2393, 'http://127.0.0.1/magento/index.php/', NULL),
(2394, 'http://127.0.0.1/magento/index.php/', NULL),
(2395, 'http://127.0.0.1/magento/index.php/', NULL),
(2396, 'http://127.0.0.1/magento/index.php/', NULL),
(2397, 'http://127.0.0.1/magento/index.php/', NULL),
(2398, 'http://127.0.0.1/magento/index.php/', NULL),
(2399, 'http://127.0.0.1/magento/index.php/', NULL),
(2400, 'http://127.0.0.1/magento/index.php/', NULL),
(2401, 'http://127.0.0.1/magento/index.php/', NULL),
(2402, 'http://127.0.0.1/magento/index.php/', NULL),
(2403, 'http://127.0.0.1/magento/index.php/', NULL),
(2404, 'http://127.0.0.1/magento/index.php/', NULL),
(2405, 'http://127.0.0.1/magento/index.php/', NULL),
(2406, 'http://127.0.0.1/magento/index.php/catalog/category/view/id/6', 'http://127.0.0.1/magento/index.php/'),
(2407, 'http://127.0.0.1/magento/index.php/', NULL),
(2408, 'http://127.0.0.1/magento/index.php/', NULL),
(2409, 'http://127.0.0.1/magento/index.php/', NULL),
(2410, 'http://127.0.0.1/magento/index.php/', NULL),
(2411, 'http://127.0.0.1/magento/index.php/', NULL),
(2412, 'http://127.0.0.1/magento/index.php/', NULL),
(2413, 'http://127.0.0.1/magento/index.php/', NULL),
(2414, 'http://127.0.0.1/magento/index.php/', NULL),
(2415, 'http://127.0.0.1/magento/index.php/', NULL),
(2416, 'http://127.0.0.1/magento/index.php/', NULL),
(2417, 'http://127.0.0.1/magento/index.php/', NULL),
(2418, 'http://127.0.0.1/magento/index.php/', NULL),
(2419, 'http://127.0.0.1/magento/index.php/', NULL),
(2420, 'http://127.0.0.1/magento/index.php/', NULL),
(2421, 'http://127.0.0.1/magento/index.php/', NULL),
(2422, 'http://127.0.0.1/magento/skin/frontend/default/thebis/fonts/MtNoLFRo.woff', 'http://127.0.0.1/magento/skin/frontend/default/thebis/css/styles.css'),
(2423, 'http://127.0.0.1/magento/index.php/', NULL),
(2424, 'http://127.0.0.1/magento/index.php/', NULL),
(2425, 'http://127.0.0.1/magento/index.php/', NULL),
(2426, 'http://127.0.0.1/magento/index.php/', NULL),
(2427, 'http://127.0.0.1/magento/index.php/', NULL),
(2428, 'http://127.0.0.1/magento/index.php/', NULL),
(2429, 'http://127.0.0.1/magento/index.php/', NULL),
(2430, 'http://127.0.0.1/magento/index.php/', NULL),
(2431, 'http://127.0.0.1/magento/index.php/', NULL),
(2432, 'http://127.0.0.1/magento/index.php/', NULL),
(2433, 'http://127.0.0.1/magento/index.php/', NULL),
(2434, 'http://127.0.0.1/magento/index.php/', NULL),
(2435, 'http://127.0.0.1/magento/index.php/', NULL),
(2436, 'http://127.0.0.1/magento/index.php/', NULL),
(2437, 'http://127.0.0.1/magento/index.php/', NULL),
(2438, 'http://127.0.0.1/magento/index.php/', NULL),
(2439, 'http://127.0.0.1/magento/index.php/', NULL),
(2440, 'http://127.0.0.1/magento/index.php/', NULL),
(2441, 'http://127.0.0.1/magento/index.php/', NULL),
(2442, 'http://127.0.0.1/magento/index.php/', NULL),
(2443, 'http://127.0.0.1/magento/index.php/', NULL),
(2444, 'http://127.0.0.1/magento/index.php/', NULL),
(2445, 'http://127.0.0.1/magento/index.php/', NULL),
(2446, 'http://127.0.0.1/magento/index.php/', NULL),
(2447, 'http://127.0.0.1/magento/', NULL),
(2448, 'http://127.0.0.1/magento/', NULL);

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `log_visitor`
--

CREATE TABLE IF NOT EXISTS `log_visitor` (
  `visitor_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Visitor ID',
  `session_id` varchar(64) NOT NULL DEFAULT '' COMMENT 'Session ID',
  `first_visit_at` timestamp NULL DEFAULT NULL COMMENT 'First Visit Time',
  `last_visit_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'Last Visit Time',
  `last_url_id` bigint(20) unsigned NOT NULL DEFAULT '0' COMMENT 'Last URL ID',
  `store_id` smallint(5) unsigned NOT NULL COMMENT 'Store ID',
  PRIMARY KEY (`visitor_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='Log Visitors Table' AUTO_INCREMENT=60 ;

--
-- Gegevens worden uitgevoerd voor tabel `log_visitor`
--

INSERT INTO `log_visitor` (`visitor_id`, `session_id`, `first_visit_at`, `last_visit_at`, `last_url_id`, `store_id`) VALUES
(1, '1gkse2ocsadm9gl4mvvdqol5h7', '2012-02-28 10:57:59', '2012-02-28 11:19:42', 46, 1),
(2, '9u3ucqhc8h8891vafisnt36s63', '2012-02-28 11:19:43', '2012-02-28 11:47:21', 60, 1),
(3, 'g3pien6ueomndn7islshp8ivb3', '2012-02-29 09:18:20', '2012-02-29 10:55:05', 78, 1),
(4, 'l3e8v4olf1bet3mej8hb7rlf51', '2012-02-29 11:07:19', '2012-02-29 14:50:53', 291, 1),
(5, 'tbr94eto18pkrev2od8gt3ign4', '2012-02-29 12:32:46', '2012-02-29 13:27:57', 173, 1),
(6, 'ig3aga202c9i8j0oq1o7h0mt46', '2012-02-29 22:54:56', '2012-02-29 23:07:09', 310, 1),
(7, 'h9ete1sqn1se5ccfj5p12uu0l0', '2012-02-29 22:56:09', '2012-02-29 22:56:10', 293, 1),
(8, 'ibsnine142flfv74soihsvc542', '2012-03-01 10:11:09', '2012-03-01 18:45:10', 703, 1),
(9, 'm8p50pmf9fpbl0f00of5u9cjt2', '2012-03-01 10:11:58', '2012-03-01 11:28:20', 357, 1),
(10, 'fb4u7nnr6bn1r8oo1cc24jnnh3', '2012-03-01 10:12:28', '2012-03-01 11:44:05', 364, 1),
(11, 'bbvpi9jgn8ven2g46816babpl2', '2012-03-01 12:29:23', '2012-03-01 12:29:24', 377, 1),
(12, '2ae3ktqlpo2lg8dclbhglsv2a7', '2012-03-01 12:29:26', '2012-03-01 13:28:37', 480, 1),
(13, 'c5getkn2vtp8hrkhpthqsbdmd0', '2012-03-01 13:28:42', '2012-03-01 14:27:05', 514, 1),
(14, 'ofh9h7iggmnp9pc3m0pdg65je6', '2012-03-01 14:09:42', '2012-03-01 14:17:27', 497, 1),
(15, 'l5jaqjh6edqvdm0c932sv9idn7', '2012-03-01 16:17:21', '2012-03-01 16:49:36', 654, 1),
(16, '5r8917h8camgufid80clstg732', '2012-03-01 16:17:30', '2012-03-01 16:39:25', 642, 1),
(17, '0nc14kvs5bku2pf3n9d9c603b1', '2012-03-01 16:39:17', '2012-03-01 16:39:18', 641, 1),
(18, 'dh1s9ud18mfpv5othckclkc4k7', '2012-03-02 08:41:06', '2012-03-02 08:41:07', 704, 1),
(19, 'p7fou0vk03mnfaob7kfra36h05', '2012-03-02 10:03:28', '2012-03-02 19:09:42', 1306, 1),
(20, 'g3vlbl9snab9aujluhqbgtdbp7', '2012-03-02 10:58:22', '2012-03-02 12:25:39', 978, 1),
(21, 'fft75n7ls4b6rhcbcqcm6oigk7', '2012-03-02 10:58:33', '2012-03-02 12:25:20', 972, 1),
(22, '1khpsukigm7a67d1pl7mio41k7', '2012-03-02 10:58:42', '2012-03-02 11:12:30', 836, 1),
(23, 'auotuqhecvl3heakqnhs2eve81', '2012-03-02 12:15:58', '2012-03-02 12:25:16', 971, 1),
(24, 'vfkmhmkt4e2j00j4sd7lm5s8o4', '2012-03-02 14:00:17', '2012-03-02 14:00:18', 1018, 1),
(25, 'rid40smquso9f5ni5u46o02o66', '2012-03-02 14:00:24', '2012-03-02 14:00:31', 1020, 1),
(26, 'fs4k87a23912ekuj0ks0h7p4c3', '2012-03-02 16:27:28', '2012-03-02 16:33:52', 1084, 1),
(27, '0rn8v7cij90mf4em34fdon5lo3', '2012-03-02 16:27:33', '2012-03-02 16:33:50', 1083, 1),
(28, '9jaro82jhn2s1mtph35aktbau7', '2012-03-02 16:27:38', '2012-03-02 16:33:57', 1085, 1),
(29, 'g8trk82vui6lrl78dji1geff24', '2012-03-02 17:58:23', '2012-03-02 18:26:40', 1222, 1),
(30, '6omsrps77tpbqcs6agjis3mnu1', '2012-03-03 10:39:13', '2012-03-03 12:58:42', 1420, 1),
(31, 'js1vt81ifc6f7qdcmkh2dfhga5', '2012-03-03 10:43:22', '2012-03-03 12:03:17', 1391, 1),
(32, '0iulitbbamm38ou204v5d31ns2', '2012-03-03 10:44:22', '2012-03-03 12:58:36', 1419, 1),
(33, 'uq90ajm4fnpr4ol63apkrc5o66', '2012-03-03 10:44:46', '2012-03-03 16:30:20', 1650, 1),
(34, 'i487tf9pn18brse5s2vboi2h14', '2012-03-03 12:09:23', '2012-03-03 12:09:23', 1396, 1),
(35, '5jcjl5j69aoseahs4bla9mggs3', '2012-03-03 12:09:27', '2012-03-03 12:58:54', 1421, 1),
(36, 'vjsfc8f81orc3r4lrd5mfdop45', '2012-03-03 14:23:22', '2012-03-03 16:12:09', 1618, 1),
(37, '8q89qos8md7rl4a1pv30338in1', '2012-03-03 14:23:27', '2012-03-03 16:12:18', 1620, 1),
(38, 'nqed4u4sn72bnh80o2rnpabq24', '2012-03-03 15:40:07', '2012-03-03 16:12:14', 1619, 1),
(39, '0lu9dgig2v5mnr6hm5chtg12v3', '2012-03-04 14:13:55', '2012-03-04 14:13:58', 1651, 1),
(40, '8n9esks47ks8mqmv2k1hejlh31', '2012-03-04 14:15:55', '2012-03-04 14:20:37', 1653, 1),
(41, 'kcnqc6otqoq0ero40o4pcspnn7', '2012-03-04 17:06:42', '2012-03-04 21:54:42', 1896, 1),
(42, 'ioaf4ug4odfi389a2stcucts86', '2012-03-04 17:08:43', '2012-03-04 19:27:15', 1802, 1),
(43, '1vm3otm91kood9ju67t0nihcf6', '2012-03-04 17:29:38', '2012-03-04 18:51:03', 1783, 1),
(44, 'un3t8v9l2gkllgp596m7qlrph0', '2012-03-04 18:18:38', '2012-03-04 18:51:07', 1784, 1),
(45, 'molfgs964tatrtg4ped2v70ek7', '2012-03-04 20:49:41', '2012-03-04 20:53:15', 1846, 1),
(46, 'se24eb4fushkat235hf7iin3c0', '2012-03-04 20:50:25', '2012-03-04 20:53:11', 1845, 1),
(47, 'mr54405p9q2rdh34lq0cnr5kp0', '2012-03-04 21:54:43', '2012-03-05 00:27:52', 2163, 1),
(48, '4dir0ue9n7s2qd1dk74oaaotp7', '2012-03-04 21:59:56', '2012-03-04 22:13:24', 1934, 1),
(49, 'muipnasdhdrbrs9r05236n5ub4', '2012-03-04 22:13:30', '2012-03-04 23:06:23', 1978, 1),
(50, '1j2isepa7s72hrmkpsheh81c17', '2012-03-04 22:13:40', '2012-03-04 22:13:42', 1936, 1),
(51, 'gbgmhk16d3agc0nqhut9m87cn6', '2012-03-04 23:38:48', '2012-03-05 00:10:46', 2104, 1),
(52, 'pbkhp0sho9jedd2i8clj7puqn1', '2012-03-04 23:38:56', '2012-03-05 00:11:00', 2106, 1),
(53, '7cikl30ffe8o4eor52h9pi86r2', '2012-03-05 00:07:33', '2012-03-05 00:15:44', 2136, 1),
(54, 'rk90uu9f8vgbq02eoqns85cce3', '2012-03-05 08:48:11', '2012-03-05 08:49:52', 2173, 1),
(55, 'i6cd54b8eu0h34qn4tpv72dht2', '2012-03-05 09:02:52', '2012-03-05 13:02:22', 2446, 1),
(56, 'fj4776j36crtsmth8ondtj5er5', '2012-03-05 09:39:18', '2012-03-05 09:39:19', 2187, 1),
(57, 'evf8j8hvupl5rqg6u6usn13cq2', '2012-03-05 10:09:51', '2012-03-05 12:47:42', 2442, 1),
(58, 'i1qjn5uimc3n0k57u38l9cige7', '2012-03-05 10:10:07', '2012-03-05 12:47:33', 2441, 1),
(59, 'rrhdpq5re24ar0a7lrusbn6gr0', '2012-03-05 11:19:24', '2012-03-05 12:47:25', 2440, 1);

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `log_visitor_info`
--

CREATE TABLE IF NOT EXISTS `log_visitor_info` (
  `visitor_id` bigint(20) unsigned NOT NULL DEFAULT '0' COMMENT 'Visitor ID',
  `http_referer` varchar(255) DEFAULT NULL COMMENT 'HTTP Referrer',
  `http_user_agent` varchar(255) DEFAULT NULL COMMENT 'HTTP User-Agent',
  `http_accept_charset` varchar(255) DEFAULT NULL COMMENT 'HTTP Accept-Charset',
  `http_accept_language` varchar(255) DEFAULT NULL COMMENT 'HTTP Accept-Language',
  `server_addr` bigint(20) DEFAULT NULL COMMENT 'Server Address',
  `remote_addr` bigint(20) DEFAULT NULL COMMENT 'Remote Address',
  PRIMARY KEY (`visitor_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Log Visitor Info Table';

--
-- Gegevens worden uitgevoerd voor tabel `log_visitor_info`
--

INSERT INTO `log_visitor_info` (`visitor_id`, `http_referer`, `http_user_agent`, `http_accept_charset`, `http_accept_language`, `server_addr`, `remote_addr`) VALUES
(1, 'http://127.0.0.1/magento/index.php/install/wizard/end/', 'Mozilla/5.0 (Windows NT 6.1; rv:10.0.2) Gecko/20100101 Firefox/10.0.2', NULL, 'nl,en-us;q=0.7,en;q=0.3', 2130706433, 2130706433),
(2, 'http://127.0.0.1/magento/index.php/', 'Mozilla/5.0 (Windows NT 6.1; rv:10.0.2) Gecko/20100101 Firefox/10.0.2', NULL, 'nl,en-us;q=0.7,en;q=0.3', 2130706433, 2130706433),
(3, 'http://127.0.0.1/', 'Mozilla/5.0 (Windows NT 6.1; rv:10.0.2) Gecko/20100101 Firefox/10.0.2', NULL, 'nl,en-us;q=0.7,en;q=0.3', 2130706433, 2130706433),
(4, 'http://127.0.0.1/magento/index.php/', 'Mozilla/5.0 (Windows NT 6.1; rv:10.0.2) Gecko/20100101 Firefox/10.0.2', NULL, 'nl,en-us;q=0.7,en;q=0.3', 2130706433, 2130706433),
(5, NULL, 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/535.11 (KHTML, like Gecko) Chrome/17.0.963.56 Safari/535.11', 'ISO-8859-1,utf-8;q=0.7,*;q=0.3', 'nl-NL,nl;q=0.8,en-US;q=0.6,en;q=0.4', 2130706433, 2130706433),
(6, NULL, 'Mozilla/5.0 (Windows NT 6.1; rv:10.0.2) Gecko/20100101 Firefox/10.0.2', NULL, 'nl,en-us;q=0.7,en;q=0.3', 2130706433, 2130706433),
(7, NULL, 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/535.11 (KHTML, like Gecko) Chrome/17.0.963.56 Safari/535.11', 'ISO-8859-1,utf-8;q=0.7,*;q=0.3', 'nl-NL,nl;q=0.8,en-US;q=0.6,en;q=0.4', 2130706433, 2130706433),
(8, 'http://127.0.0.1/magento/index.php/checkout/cart/', 'Mozilla/5.0 (Windows NT 6.1; rv:10.0.2) Gecko/20100101 Firefox/10.0.2', NULL, 'nl,en-us;q=0.7,en;q=0.3', 2130706433, 2130706433),
(9, NULL, 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/535.11 (KHTML, like Gecko) Chrome/17.0.963.56 Safari/535.11', 'ISO-8859-1,utf-8;q=0.7,*;q=0.3', 'nl-NL,nl;q=0.8,en-US;q=0.6,en;q=0.4', 2130706433, 2130706433),
(10, NULL, 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/534.52.7 (KHTML, like Gecko) Version/5.1.2 Safari/534.52.7', NULL, 'nl-NL', 2130706433, 2130706433),
(11, NULL, 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/534.52.7 (KHTML, like Gecko) Version/5.1.2 Safari/534.52.7', NULL, 'nl-NL', 2130706433, 2130706433),
(12, NULL, 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/534.52.7 (KHTML, like Gecko) Version/5.1.2 Safari/534.52.7', NULL, 'nl-NL', 2130706433, 2130706433),
(13, NULL, 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/535.11 (KHTML, like Gecko) Chrome/17.0.963.56 Safari/535.11', 'ISO-8859-1,utf-8;q=0.7,*;q=0.3', 'nl-NL,nl;q=0.8,en-US;q=0.6,en;q=0.4', 2130706433, 2130706433),
(14, NULL, 'Mozilla/5.0 (compatible; MSIE 9.0; Windows NT 6.1; Trident/5.0)', NULL, 'nl-NL', 2130706433, 2130706433),
(15, NULL, 'Mozilla/5.0 (compatible; MSIE 9.0; Windows NT 6.1; Trident/5.0)', NULL, 'nl-NL', 2130706433, 2130706433),
(16, NULL, 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/535.11 (KHTML, like Gecko) Chrome/17.0.963.56 Safari/535.11', 'ISO-8859-1,utf-8;q=0.7,*;q=0.3', 'nl-NL,nl;q=0.8,en-US;q=0.6,en;q=0.4', 2130706433, 2130706433),
(17, NULL, 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/534.52.7 (KHTML, like Gecko) Version/5.1.2 Safari/534.52.7', NULL, 'nl-NL', 2130706433, 2130706433),
(18, NULL, 'Mozilla/5.0 (compatible; MSIE 9.0; Windows NT 6.1; Trident/5.0)', NULL, 'nl-NL', 2130706433, 2130706433),
(19, NULL, 'Mozilla/5.0 (Windows NT 6.1; rv:10.0.2) Gecko/20100101 Firefox/10.0.2', NULL, 'nl,en-us;q=0.7,en;q=0.3', 2130706433, 2130706433),
(20, NULL, 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/535.11 (KHTML, like Gecko) Chrome/17.0.963.56 Safari/535.11', 'ISO-8859-1,utf-8;q=0.7,*;q=0.3', 'nl-NL,nl;q=0.8,en-US;q=0.6,en;q=0.4', 2130706433, 2130706433),
(21, NULL, 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/534.52.7 (KHTML, like Gecko) Version/5.1.2 Safari/534.52.7', NULL, 'nl-NL', 2130706433, 2130706433),
(22, NULL, 'Mozilla/5.0 (compatible; MSIE 9.0; Windows NT 6.1; Trident/5.0)', NULL, 'nl-NL', 2130706433, 2130706433),
(23, NULL, 'Mozilla/5.0 (compatible; MSIE 9.0; Windows NT 6.1; Trident/5.0)', NULL, 'nl-NL', 2130706433, 2130706433),
(24, NULL, 'Mozilla/5.0 (compatible; MSIE 9.0; Windows NT 6.1; Trident/5.0)', NULL, 'nl-NL', 2130706433, 2130706433),
(25, NULL, 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/535.11 (KHTML, like Gecko) Chrome/17.0.963.56 Safari/535.11', 'ISO-8859-1,utf-8;q=0.7,*;q=0.3', 'nl-NL,nl;q=0.8,en-US;q=0.6,en;q=0.4', 2130706433, 2130706433),
(26, NULL, 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/535.11 (KHTML, like Gecko) Chrome/17.0.963.56 Safari/535.11', 'ISO-8859-1,utf-8;q=0.7,*;q=0.3', 'nl-NL,nl;q=0.8,en-US;q=0.6,en;q=0.4', 2130706433, 2130706433),
(27, NULL, 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/534.52.7 (KHTML, like Gecko) Version/5.1.2 Safari/534.52.7', NULL, 'nl-NL', 2130706433, 2130706433),
(28, NULL, 'Mozilla/5.0 (compatible; MSIE 9.0; Windows NT 6.1; Trident/5.0)', NULL, 'nl-NL', 2130706433, 2130706433),
(29, NULL, 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/535.11 (KHTML, like Gecko) Chrome/17.0.963.56 Safari/535.11', 'ISO-8859-1,utf-8;q=0.7,*;q=0.3', 'nl-NL,nl;q=0.8,en-US;q=0.6,en;q=0.4', 2130706433, 2130706433),
(30, NULL, 'Mozilla/5.0 (compatible; MSIE 9.0; Windows NT 6.1; Trident/5.0)', NULL, 'nl-NL', 2130706433, 2130706433),
(31, NULL, 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/534.52.7 (KHTML, like Gecko) Version/5.1.2 Safari/534.52.7', NULL, 'nl-NL', 2130706433, 2130706433),
(32, NULL, 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/535.11 (KHTML, like Gecko) Chrome/17.0.963.56 Safari/535.11', 'ISO-8859-1,utf-8;q=0.7,*;q=0.3', 'nl-NL,nl;q=0.8,en-US;q=0.6,en;q=0.4', 2130706433, 2130706433),
(33, NULL, 'Mozilla/5.0 (Windows NT 6.1; rv:10.0.2) Gecko/20100101 Firefox/10.0.2', NULL, 'nl,en-us;q=0.7,en;q=0.3', 2130706433, 2130706433),
(34, NULL, 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/534.52.7 (KHTML, like Gecko) Version/5.1.2 Safari/534.52.7', NULL, 'nl-NL', 2130706433, 2130706433),
(35, NULL, 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/534.52.7 (KHTML, like Gecko) Version/5.1.2 Safari/534.52.7', NULL, 'nl-NL', 2130706433, 2130706433),
(36, NULL, 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/534.52.7 (KHTML, like Gecko) Version/5.1.2 Safari/534.52.7', NULL, 'nl-NL', 2130706433, 2130706433),
(37, NULL, 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/535.11 (KHTML, like Gecko) Chrome/17.0.963.56 Safari/535.11', 'ISO-8859-1,utf-8;q=0.7,*;q=0.3', 'nl-NL,nl;q=0.8,en-US;q=0.6,en;q=0.4', 2130706433, 2130706433),
(38, NULL, 'Mozilla/5.0 (compatible; MSIE 9.0; Windows NT 6.1; Trident/5.0)', NULL, 'nl-NL', 2130706433, 2130706433),
(39, NULL, 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/535.11 (KHTML, like Gecko) Chrome/17.0.963.56 Safari/535.11', 'ISO-8859-1,utf-8;q=0.7,*;q=0.3', 'nl-NL,nl;q=0.8,en-US;q=0.6,en;q=0.4', 2130706433, 2130706433),
(40, NULL, 'Mozilla/5.0 (Windows NT 6.1; rv:10.0.2) Gecko/20100101 Firefox/10.0.2', NULL, 'nl,en-us;q=0.7,en;q=0.3', 2130706433, 2130706433),
(41, NULL, 'Mozilla/5.0 (Windows NT 6.1; rv:10.0.2) Gecko/20100101 Firefox/10.0.2', NULL, 'nl,en-us;q=0.7,en;q=0.3', 2130706433, 2130706433),
(42, NULL, 'Mozilla/5.0 (compatible; MSIE 9.0; Windows NT 6.1; Trident/5.0)', NULL, 'nl-NL', 2130706433, 2130706433),
(43, NULL, 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/535.11 (KHTML, like Gecko) Chrome/17.0.963.56 Safari/535.11', 'ISO-8859-1,utf-8;q=0.7,*;q=0.3', 'nl-NL,nl;q=0.8,en-US;q=0.6,en;q=0.4', 2130706433, 2130706433),
(44, NULL, 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/534.52.7 (KHTML, like Gecko) Version/5.1.2 Safari/534.52.7', NULL, 'nl-NL', 2130706433, 2130706433),
(45, NULL, 'Mozilla/5.0 (compatible; MSIE 9.0; Windows NT 6.1; Trident/5.0)', NULL, 'nl-NL', 2130706433, 2130706433),
(46, NULL, 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/535.11 (KHTML, like Gecko) Chrome/17.0.963.56 Safari/535.11', 'ISO-8859-1,utf-8;q=0.7,*;q=0.3', 'nl-NL,nl;q=0.8,en-US;q=0.6,en;q=0.4', 2130706433, 2130706433),
(47, 'http://127.0.0.1/magento/index.php/', 'Mozilla/5.0 (Windows NT 6.1; rv:10.0.2) Gecko/20100101 Firefox/10.0.2', NULL, 'nl,en-us;q=0.7,en;q=0.3', 2130706433, 2130706433),
(48, NULL, 'Mozilla/5.0 (compatible; MSIE 9.0; Windows NT 6.1; Trident/5.0)', NULL, 'nl-NL', 2130706433, 2130706433),
(49, NULL, 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/535.11 (KHTML, like Gecko) Chrome/17.0.963.56 Safari/535.11', 'ISO-8859-1,utf-8;q=0.7,*;q=0.3', 'nl-NL,nl;q=0.8,en-US;q=0.6,en;q=0.4', 2130706433, 2130706433),
(50, NULL, 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/534.52.7 (KHTML, like Gecko) Version/5.1.2 Safari/534.52.7', NULL, 'nl-NL', 2130706433, 2130706433),
(51, NULL, 'Mozilla/5.0 (compatible; MSIE 9.0; Windows NT 6.1; Trident/5.0)', NULL, 'nl-NL', 2130706433, 2130706433),
(52, NULL, 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/534.52.7 (KHTML, like Gecko) Version/5.1.2 Safari/534.52.7', NULL, 'nl-NL', 2130706433, 2130706433),
(53, NULL, 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/535.11 (KHTML, like Gecko) Chrome/17.0.963.56 Safari/535.11', 'ISO-8859-1,utf-8;q=0.7,*;q=0.3', 'nl-NL,nl;q=0.8,en-US;q=0.6,en;q=0.4', 2130706433, 2130706433),
(54, 'http://127.0.0.1/magento/index.php/', 'Mozilla/5.0 (Windows NT 6.1; rv:10.0.2) Gecko/20100101 Firefox/10.0.2', NULL, 'nl,en-us;q=0.7,en;q=0.3', 2130706433, 2130706433),
(55, NULL, 'Mozilla/5.0 (Windows NT 6.1; rv:10.0.2) Gecko/20100101 Firefox/10.0.2', NULL, 'nl,en-us;q=0.7,en;q=0.3', 2130706433, 2130706433),
(56, NULL, 'Mozilla/5.0 (compatible; MSIE 9.0; Windows NT 6.1; Trident/5.0)', NULL, 'nl-NL', 2130706433, 2130706433),
(57, 'http://127.0.0.1/magento/index.php/printers.html', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/535.11 (KHTML, like Gecko) Chrome/17.0.963.56 Safari/535.11', 'ISO-8859-1,utf-8;q=0.7,*;q=0.3', 'nl-NL,nl;q=0.8,en-US;q=0.6,en;q=0.4', 2130706433, 2130706433),
(58, NULL, 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/534.52.7 (KHTML, like Gecko) Version/5.1.2 Safari/534.52.7', NULL, 'nl-NL', 2130706433, 2130706433),
(59, NULL, 'Mozilla/5.0 (compatible; MSIE 9.0; Windows NT 6.1; Trident/5.0)', NULL, 'nl-NL', 2130706433, 2130706433);

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `log_visitor_online`
--

CREATE TABLE IF NOT EXISTS `log_visitor_online` (
  `visitor_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Visitor ID',
  `visitor_type` varchar(1) NOT NULL COMMENT 'Visitor Type',
  `remote_addr` bigint(20) NOT NULL COMMENT 'Remote Address',
  `first_visit_at` timestamp NULL DEFAULT NULL COMMENT 'First Visit Time',
  `last_visit_at` timestamp NULL DEFAULT NULL COMMENT 'Last Visit Time',
  `customer_id` int(10) unsigned DEFAULT NULL COMMENT 'Customer ID',
  `last_url` varchar(255) DEFAULT NULL COMMENT 'Last URL',
  PRIMARY KEY (`visitor_id`),
  KEY `IDX_LOG_VISITOR_ONLINE_VISITOR_TYPE` (`visitor_type`),
  KEY `IDX_LOG_VISITOR_ONLINE_FIRST_VISIT_AT_LAST_VISIT_AT` (`first_visit_at`,`last_visit_at`),
  KEY `IDX_LOG_VISITOR_ONLINE_CUSTOMER_ID` (`customer_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Log Visitor Online Table' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `navadmin`
--

CREATE TABLE IF NOT EXISTS `navadmin` (
  `navadmin_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(11) DEFAULT NULL,
  `store_id` int(11) DEFAULT NULL,
  `title` varchar(255) NOT NULL DEFAULT '',
  `link` varchar(255) NOT NULL DEFAULT '',
  `target` varchar(255) NOT NULL DEFAULT '',
  `position` int(11) DEFAULT NULL,
  `status` smallint(6) NOT NULL DEFAULT '0',
  `created_time` datetime DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  PRIMARY KEY (`navadmin_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `newsletter_problem`
--

CREATE TABLE IF NOT EXISTS `newsletter_problem` (
  `problem_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Problem Id',
  `subscriber_id` int(10) unsigned DEFAULT NULL COMMENT 'Subscriber Id',
  `queue_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Queue Id',
  `problem_error_code` int(10) unsigned DEFAULT '0' COMMENT 'Problem Error Code',
  `problem_error_text` varchar(200) DEFAULT NULL COMMENT 'Problem Error Text',
  PRIMARY KEY (`problem_id`),
  KEY `IDX_NEWSLETTER_PROBLEM_SUBSCRIBER_ID` (`subscriber_id`),
  KEY `IDX_NEWSLETTER_PROBLEM_QUEUE_ID` (`queue_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Newsletter Problems' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `newsletter_queue`
--

CREATE TABLE IF NOT EXISTS `newsletter_queue` (
  `queue_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Queue Id',
  `template_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Template Id',
  `newsletter_type` int(11) DEFAULT NULL COMMENT 'Newsletter Type',
  `newsletter_text` text COMMENT 'Newsletter Text',
  `newsletter_styles` text COMMENT 'Newsletter Styles',
  `newsletter_subject` varchar(200) DEFAULT NULL COMMENT 'Newsletter Subject',
  `newsletter_sender_name` varchar(200) DEFAULT NULL COMMENT 'Newsletter Sender Name',
  `newsletter_sender_email` varchar(200) DEFAULT NULL COMMENT 'Newsletter Sender Email',
  `queue_status` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Queue Status',
  `queue_start_at` timestamp NULL DEFAULT NULL COMMENT 'Queue Start At',
  `queue_finish_at` timestamp NULL DEFAULT NULL COMMENT 'Queue Finish At',
  PRIMARY KEY (`queue_id`),
  KEY `IDX_NEWSLETTER_QUEUE_TEMPLATE_ID` (`template_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Newsletter Queue' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `newsletter_queue_link`
--

CREATE TABLE IF NOT EXISTS `newsletter_queue_link` (
  `queue_link_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Queue Link Id',
  `queue_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Queue Id',
  `subscriber_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Subscriber Id',
  `letter_sent_at` timestamp NULL DEFAULT NULL COMMENT 'Letter Sent At',
  PRIMARY KEY (`queue_link_id`),
  KEY `IDX_NEWSLETTER_QUEUE_LINK_SUBSCRIBER_ID` (`subscriber_id`),
  KEY `IDX_NEWSLETTER_QUEUE_LINK_QUEUE_ID` (`queue_id`),
  KEY `IDX_NEWSLETTER_QUEUE_LINK_QUEUE_ID_LETTER_SENT_AT` (`queue_id`,`letter_sent_at`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Newsletter Queue Link' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `newsletter_queue_store_link`
--

CREATE TABLE IF NOT EXISTS `newsletter_queue_store_link` (
  `queue_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Queue Id',
  `store_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Store Id',
  PRIMARY KEY (`queue_id`,`store_id`),
  KEY `IDX_NEWSLETTER_QUEUE_STORE_LINK_STORE_ID` (`store_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Newsletter Queue Store Link';

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `newsletter_subscriber`
--

CREATE TABLE IF NOT EXISTS `newsletter_subscriber` (
  `subscriber_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Subscriber Id',
  `store_id` smallint(5) unsigned DEFAULT '0' COMMENT 'Store Id',
  `change_status_at` timestamp NULL DEFAULT NULL COMMENT 'Change Status At',
  `customer_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Customer Id',
  `subscriber_email` varchar(150) NOT NULL DEFAULT '' COMMENT 'Subscriber Email',
  `subscriber_status` int(11) NOT NULL DEFAULT '0' COMMENT 'Subscriber Status',
  `subscriber_confirm_code` varchar(32) DEFAULT 'NULL' COMMENT 'Subscriber Confirm Code',
  PRIMARY KEY (`subscriber_id`),
  KEY `IDX_NEWSLETTER_SUBSCRIBER_CUSTOMER_ID` (`customer_id`),
  KEY `IDX_NEWSLETTER_SUBSCRIBER_STORE_ID` (`store_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Newsletter Subscriber' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `newsletter_template`
--

CREATE TABLE IF NOT EXISTS `newsletter_template` (
  `template_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Template Id',
  `template_code` varchar(150) DEFAULT NULL COMMENT 'Template Code',
  `template_text` text COMMENT 'Template Text',
  `template_text_preprocessed` text COMMENT 'Template Text Preprocessed',
  `template_styles` text COMMENT 'Template Styles',
  `template_type` int(10) unsigned DEFAULT NULL COMMENT 'Template Type',
  `template_subject` varchar(200) DEFAULT NULL COMMENT 'Template Subject',
  `template_sender_name` varchar(200) DEFAULT NULL COMMENT 'Template Sender Name',
  `template_sender_email` varchar(200) DEFAULT NULL COMMENT 'Template Sender Email',
  `template_actual` smallint(5) unsigned DEFAULT '1' COMMENT 'Template Actual',
  `added_at` timestamp NULL DEFAULT NULL COMMENT 'Added At',
  `modified_at` timestamp NULL DEFAULT NULL COMMENT 'Modified At',
  PRIMARY KEY (`template_id`),
  KEY `IDX_NEWSLETTER_TEMPLATE_TEMPLATE_ACTUAL` (`template_actual`),
  KEY `IDX_NEWSLETTER_TEMPLATE_ADDED_AT` (`added_at`),
  KEY `IDX_NEWSLETTER_TEMPLATE_MODIFIED_AT` (`modified_at`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Newsletter Template' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `paypal_cert`
--

CREATE TABLE IF NOT EXISTS `paypal_cert` (
  `cert_id` smallint(5) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Cert Id',
  `website_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Website Id',
  `content` text COMMENT 'Content',
  `updated_at` timestamp NULL DEFAULT NULL COMMENT 'Updated At',
  PRIMARY KEY (`cert_id`),
  KEY `IDX_PAYPAL_CERT_WEBSITE_ID` (`website_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Paypal Certificate Table' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `paypal_payment_transaction`
--

CREATE TABLE IF NOT EXISTS `paypal_payment_transaction` (
  `transaction_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Entity Id',
  `txn_id` varchar(100) DEFAULT NULL COMMENT 'Txn Id',
  `additional_information` blob COMMENT 'Additional Information',
  `created_at` timestamp NULL DEFAULT NULL COMMENT 'Created At',
  PRIMARY KEY (`transaction_id`),
  UNIQUE KEY `UNQ_PAYPAL_PAYMENT_TRANSACTION_TXN_ID` (`txn_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='PayPal Payflow Link Payment Transaction' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `paypal_settlement_report`
--

CREATE TABLE IF NOT EXISTS `paypal_settlement_report` (
  `report_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Report Id',
  `report_date` timestamp NULL DEFAULT NULL COMMENT 'Report Date',
  `account_id` varchar(64) DEFAULT NULL COMMENT 'Account Id',
  `filename` varchar(24) DEFAULT NULL COMMENT 'Filename',
  `last_modified` timestamp NULL DEFAULT NULL COMMENT 'Last Modified',
  PRIMARY KEY (`report_id`),
  UNIQUE KEY `UNQ_PAYPAL_SETTLEMENT_REPORT_REPORT_DATE_ACCOUNT_ID` (`report_date`,`account_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Paypal Settlement Report Table' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `paypal_settlement_report_row`
--

CREATE TABLE IF NOT EXISTS `paypal_settlement_report_row` (
  `row_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Row Id',
  `report_id` int(10) unsigned NOT NULL COMMENT 'Report Id',
  `transaction_id` varchar(19) DEFAULT NULL COMMENT 'Transaction Id',
  `invoice_id` varchar(127) DEFAULT NULL COMMENT 'Invoice Id',
  `paypal_reference_id` varchar(19) DEFAULT NULL COMMENT 'Paypal Reference Id',
  `paypal_reference_id_type` varchar(3) DEFAULT NULL COMMENT 'Paypal Reference Id Type',
  `transaction_event_code` varchar(5) DEFAULT NULL COMMENT 'Transaction Event Code',
  `transaction_initiation_date` timestamp NULL DEFAULT NULL COMMENT 'Transaction Initiation Date',
  `transaction_completion_date` timestamp NULL DEFAULT NULL COMMENT 'Transaction Completion Date',
  `transaction_debit_or_credit` varchar(2) NOT NULL DEFAULT 'CR' COMMENT 'Transaction Debit Or Credit',
  `gross_transaction_amount` decimal(20,6) NOT NULL DEFAULT '0.000000' COMMENT 'Gross Transaction Amount',
  `gross_transaction_currency` varchar(3) DEFAULT '' COMMENT 'Gross Transaction Currency',
  `fee_debit_or_credit` varchar(2) DEFAULT NULL COMMENT 'Fee Debit Or Credit',
  `fee_amount` decimal(20,6) NOT NULL DEFAULT '0.000000' COMMENT 'Fee Amount',
  `fee_currency` varchar(3) DEFAULT NULL COMMENT 'Fee Currency',
  `custom_field` varchar(255) DEFAULT NULL COMMENT 'Custom Field',
  `consumer_id` varchar(127) DEFAULT NULL COMMENT 'Consumer Id',
  `payment_tracking_id` varchar(255) DEFAULT NULL COMMENT 'Payment Tracking ID',
  PRIMARY KEY (`row_id`),
  KEY `IDX_PAYPAL_SETTLEMENT_REPORT_ROW_REPORT_ID` (`report_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Paypal Settlement Report Row Table' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `persistent_session`
--

CREATE TABLE IF NOT EXISTS `persistent_session` (
  `persistent_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Session id',
  `key` varchar(50) NOT NULL COMMENT 'Unique cookie key',
  `customer_id` int(10) unsigned DEFAULT NULL COMMENT 'Customer id',
  `website_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Website ID',
  `info` text COMMENT 'Session Data',
  `updated_at` timestamp NULL DEFAULT NULL COMMENT 'Updated At',
  PRIMARY KEY (`persistent_id`),
  UNIQUE KEY `IDX_PERSISTENT_SESSION_KEY` (`key`),
  UNIQUE KEY `IDX_PERSISTENT_SESSION_CUSTOMER_ID` (`customer_id`),
  KEY `IDX_PERSISTENT_SESSION_UPDATED_AT` (`updated_at`),
  KEY `FK_PERSISTENT_SESSION_WEBSITE_ID_CORE_WEBSITE_WEBSITE_ID` (`website_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Persistent Session' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `poll`
--

CREATE TABLE IF NOT EXISTS `poll` (
  `poll_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Poll Id',
  `poll_title` varchar(255) DEFAULT NULL COMMENT 'Poll title',
  `votes_count` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Votes Count',
  `store_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Store id',
  `date_posted` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Date posted',
  `date_closed` timestamp NULL DEFAULT NULL COMMENT 'Date closed',
  `active` smallint(6) NOT NULL DEFAULT '1' COMMENT 'Is active',
  `closed` smallint(6) NOT NULL DEFAULT '0' COMMENT 'Is closed',
  `answers_display` smallint(6) DEFAULT NULL COMMENT 'Answers display',
  PRIMARY KEY (`poll_id`),
  KEY `IDX_POLL_STORE_ID` (`store_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='Poll' AUTO_INCREMENT=2 ;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `poll_answer`
--

CREATE TABLE IF NOT EXISTS `poll_answer` (
  `answer_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Answer Id',
  `poll_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Poll Id',
  `answer_title` varchar(255) DEFAULT NULL COMMENT 'Answer title',
  `votes_count` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Votes Count',
  `answer_order` smallint(6) NOT NULL DEFAULT '0' COMMENT 'Answers display',
  PRIMARY KEY (`answer_id`),
  KEY `IDX_POLL_ANSWER_POLL_ID` (`poll_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='Poll Answers' AUTO_INCREMENT=5 ;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `poll_store`
--

CREATE TABLE IF NOT EXISTS `poll_store` (
  `poll_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Poll Id',
  `store_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Store id',
  PRIMARY KEY (`poll_id`,`store_id`),
  KEY `IDX_POLL_STORE_STORE_ID` (`store_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Poll Store';

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `poll_vote`
--

CREATE TABLE IF NOT EXISTS `poll_vote` (
  `vote_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Vote Id',
  `poll_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Poll Id',
  `poll_answer_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Poll answer id',
  `ip_address` bigint(20) DEFAULT NULL COMMENT 'Poll answer id',
  `customer_id` int(11) DEFAULT NULL COMMENT 'Customer id',
  `vote_time` timestamp NULL DEFAULT NULL COMMENT 'Date closed',
  PRIMARY KEY (`vote_id`),
  KEY `IDX_POLL_VOTE_POLL_ANSWER_ID` (`poll_answer_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='Poll Vote' AUTO_INCREMENT=2 ;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `product_alert_price`
--

CREATE TABLE IF NOT EXISTS `product_alert_price` (
  `alert_price_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Product alert price id',
  `customer_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Customer id',
  `product_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Product id',
  `price` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Price amount',
  `website_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Website id',
  `add_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Product alert add date',
  `last_send_date` timestamp NULL DEFAULT NULL COMMENT 'Product alert last send date',
  `send_count` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Product alert send count',
  `status` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Product alert status',
  PRIMARY KEY (`alert_price_id`),
  KEY `IDX_PRODUCT_ALERT_PRICE_CUSTOMER_ID` (`customer_id`),
  KEY `IDX_PRODUCT_ALERT_PRICE_PRODUCT_ID` (`product_id`),
  KEY `IDX_PRODUCT_ALERT_PRICE_WEBSITE_ID` (`website_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Product Alert Price' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `product_alert_stock`
--

CREATE TABLE IF NOT EXISTS `product_alert_stock` (
  `alert_stock_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Product alert stock id',
  `customer_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Customer id',
  `product_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Product id',
  `website_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Website id',
  `add_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Product alert add date',
  `send_date` timestamp NULL DEFAULT NULL COMMENT 'Product alert send date',
  `send_count` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Send Count',
  `status` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Product alert status',
  PRIMARY KEY (`alert_stock_id`),
  KEY `IDX_PRODUCT_ALERT_STOCK_CUSTOMER_ID` (`customer_id`),
  KEY `IDX_PRODUCT_ALERT_STOCK_PRODUCT_ID` (`product_id`),
  KEY `IDX_PRODUCT_ALERT_STOCK_WEBSITE_ID` (`website_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Product Alert Stock' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `rating`
--

CREATE TABLE IF NOT EXISTS `rating` (
  `rating_id` smallint(5) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Rating Id',
  `entity_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Entity Id',
  `rating_code` varchar(64) NOT NULL COMMENT 'Rating Code',
  `position` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Rating Position On Frontend',
  PRIMARY KEY (`rating_id`),
  UNIQUE KEY `UNQ_RATING_RATING_CODE` (`rating_code`),
  KEY `IDX_RATING_ENTITY_ID` (`entity_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='Ratings' AUTO_INCREMENT=4 ;

--
-- Gegevens worden uitgevoerd voor tabel `rating`
--

INSERT INTO `rating` (`rating_id`, `entity_id`, `rating_code`, `position`) VALUES
(1, 1, 'Quality', 0),
(2, 1, 'Value', 0),
(3, 1, 'Price', 0);

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `rating_entity`
--

CREATE TABLE IF NOT EXISTS `rating_entity` (
  `entity_id` smallint(5) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Entity Id',
  `entity_code` varchar(64) NOT NULL COMMENT 'Entity Code',
  PRIMARY KEY (`entity_id`),
  UNIQUE KEY `UNQ_RATING_ENTITY_ENTITY_CODE` (`entity_code`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='Rating entities' AUTO_INCREMENT=4 ;

--
-- Gegevens worden uitgevoerd voor tabel `rating_entity`
--

INSERT INTO `rating_entity` (`entity_id`, `entity_code`) VALUES
(1, 'product'),
(2, 'product_review'),
(3, 'review');

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `rating_option`
--

CREATE TABLE IF NOT EXISTS `rating_option` (
  `option_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Rating Option Id',
  `rating_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Rating Id',
  `code` varchar(32) NOT NULL COMMENT 'Rating Option Code',
  `value` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Rating Option Value',
  `position` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Ration option position on frontend',
  PRIMARY KEY (`option_id`),
  KEY `IDX_RATING_OPTION_RATING_ID` (`rating_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='Rating options' AUTO_INCREMENT=16 ;

--
-- Gegevens worden uitgevoerd voor tabel `rating_option`
--

INSERT INTO `rating_option` (`option_id`, `rating_id`, `code`, `value`, `position`) VALUES
(1, 1, '1', 1, 1),
(2, 1, '2', 2, 2),
(3, 1, '3', 3, 3),
(4, 1, '4', 4, 4),
(5, 1, '5', 5, 5),
(6, 2, '1', 1, 1),
(7, 2, '2', 2, 2),
(8, 2, '3', 3, 3),
(9, 2, '4', 4, 4),
(10, 2, '5', 5, 5),
(11, 3, '1', 1, 1),
(12, 3, '2', 2, 2),
(13, 3, '3', 3, 3),
(14, 3, '4', 4, 4),
(15, 3, '5', 5, 5);

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `rating_option_vote`
--

CREATE TABLE IF NOT EXISTS `rating_option_vote` (
  `vote_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Vote id',
  `option_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Vote option id',
  `remote_ip` varchar(16) NOT NULL COMMENT 'Customer IP',
  `remote_ip_long` bigint(20) NOT NULL DEFAULT '0' COMMENT 'Customer IP converted to long integer format',
  `customer_id` int(10) unsigned DEFAULT '0' COMMENT 'Customer Id',
  `entity_pk_value` bigint(20) unsigned NOT NULL DEFAULT '0' COMMENT 'Product id',
  `rating_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Rating id',
  `review_id` bigint(20) unsigned DEFAULT NULL COMMENT 'Review id',
  `percent` smallint(6) NOT NULL DEFAULT '0' COMMENT 'Percent amount',
  `value` smallint(6) NOT NULL DEFAULT '0' COMMENT 'Vote option value',
  PRIMARY KEY (`vote_id`),
  KEY `IDX_RATING_OPTION_VOTE_OPTION_ID` (`option_id`),
  KEY `FK_RATING_OPTION_VOTE_REVIEW_ID_REVIEW_REVIEW_ID` (`review_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Rating option values' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `rating_option_vote_aggregated`
--

CREATE TABLE IF NOT EXISTS `rating_option_vote_aggregated` (
  `primary_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Vote aggregation id',
  `rating_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Rating id',
  `entity_pk_value` bigint(20) unsigned NOT NULL DEFAULT '0' COMMENT 'Product id',
  `vote_count` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Vote dty',
  `vote_value_sum` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'General vote sum',
  `percent` smallint(6) NOT NULL DEFAULT '0' COMMENT 'Vote percent',
  `percent_approved` smallint(6) DEFAULT '0' COMMENT 'Vote percent approved by admin',
  `store_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Store Id',
  PRIMARY KEY (`primary_id`),
  KEY `IDX_RATING_OPTION_VOTE_AGGREGATED_RATING_ID` (`rating_id`),
  KEY `IDX_RATING_OPTION_VOTE_AGGREGATED_STORE_ID` (`store_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Rating vote aggregated' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `rating_store`
--

CREATE TABLE IF NOT EXISTS `rating_store` (
  `rating_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Rating id',
  `store_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Store id',
  PRIMARY KEY (`rating_id`,`store_id`),
  KEY `IDX_RATING_STORE_STORE_ID` (`store_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Rating Store';

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `rating_title`
--

CREATE TABLE IF NOT EXISTS `rating_title` (
  `rating_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Rating Id',
  `store_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Store Id',
  `value` varchar(255) NOT NULL COMMENT 'Rating Label',
  PRIMARY KEY (`rating_id`,`store_id`),
  KEY `IDX_RATING_TITLE_STORE_ID` (`store_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Rating Title';

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `report_compared_product_index`
--

CREATE TABLE IF NOT EXISTS `report_compared_product_index` (
  `index_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Index Id',
  `visitor_id` int(10) unsigned DEFAULT NULL COMMENT 'Visitor Id',
  `customer_id` int(10) unsigned DEFAULT NULL COMMENT 'Customer Id',
  `product_id` int(10) unsigned NOT NULL COMMENT 'Product Id',
  `store_id` smallint(5) unsigned DEFAULT NULL COMMENT 'Store Id',
  `added_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Added At',
  PRIMARY KEY (`index_id`),
  UNIQUE KEY `UNQ_REPORT_COMPARED_PRODUCT_INDEX_VISITOR_ID_PRODUCT_ID` (`visitor_id`,`product_id`),
  UNIQUE KEY `UNQ_REPORT_COMPARED_PRODUCT_INDEX_CUSTOMER_ID_PRODUCT_ID` (`customer_id`,`product_id`),
  KEY `IDX_REPORT_COMPARED_PRODUCT_INDEX_STORE_ID` (`store_id`),
  KEY `IDX_REPORT_COMPARED_PRODUCT_INDEX_ADDED_AT` (`added_at`),
  KEY `IDX_REPORT_COMPARED_PRODUCT_INDEX_PRODUCT_ID` (`product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Reports Compared Product Index Table' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `report_event`
--

CREATE TABLE IF NOT EXISTS `report_event` (
  `event_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Event Id',
  `logged_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Logged At',
  `event_type_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Event Type Id',
  `object_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Object Id',
  `subject_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Subject Id',
  `subtype` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Subtype',
  `store_id` smallint(5) unsigned NOT NULL COMMENT 'Store Id',
  PRIMARY KEY (`event_id`),
  KEY `IDX_REPORT_EVENT_EVENT_TYPE_ID` (`event_type_id`),
  KEY `IDX_REPORT_EVENT_SUBJECT_ID` (`subject_id`),
  KEY `IDX_REPORT_EVENT_OBJECT_ID` (`object_id`),
  KEY `IDX_REPORT_EVENT_SUBTYPE` (`subtype`),
  KEY `IDX_REPORT_EVENT_STORE_ID` (`store_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='Reports Event Table' AUTO_INCREMENT=14 ;

--
-- Gegevens worden uitgevoerd voor tabel `report_event`
--

INSERT INTO `report_event` (`event_id`, `logged_at`, `event_type_id`, `object_id`, `subject_id`, `subtype`, `store_id`) VALUES
(1, '2012-03-03 14:08:53', 1, 4, 33, 1, 1),
(2, '2012-03-03 14:55:23', 4, 1, 33, 1, 1),
(3, '2012-03-04 18:07:33', 1, 4, 41, 1, 1),
(4, '2012-03-04 18:07:42', 1, 4, 41, 1, 1),
(5, '2012-03-04 18:17:45', 1, 2, 41, 1, 1),
(6, '2012-03-04 20:54:06', 4, 1, 41, 1, 1),
(7, '2012-03-04 20:54:32', 4, 2, 41, 1, 1),
(8, '2012-03-04 21:05:24', 1, 1, 41, 1, 1),
(9, '2012-03-04 21:05:44', 4, 1, 41, 1, 1),
(10, '2012-03-04 21:51:02', 4, 2, 41, 1, 1),
(11, '2012-03-04 21:52:29', 4, 2, 1, 0, 1),
(12, '2012-03-05 08:48:29', 4, 2, 54, 1, 1),
(13, '2012-03-05 09:03:15', 4, 3, 55, 1, 1);

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `report_event_types`
--

CREATE TABLE IF NOT EXISTS `report_event_types` (
  `event_type_id` smallint(5) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Event Type Id',
  `event_name` varchar(64) NOT NULL COMMENT 'Event Name',
  `customer_login` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Customer Login',
  PRIMARY KEY (`event_type_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='Reports Event Type Table' AUTO_INCREMENT=7 ;

--
-- Gegevens worden uitgevoerd voor tabel `report_event_types`
--

INSERT INTO `report_event_types` (`event_type_id`, `event_name`, `customer_login`) VALUES
(1, 'catalog_product_view', 0),
(2, 'sendfriend_product', 0),
(3, 'catalog_product_compare_add_product', 0),
(4, 'checkout_cart_add_product', 0),
(5, 'wishlist_add_product', 0),
(6, 'wishlist_share', 0);

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `report_viewed_product_index`
--

CREATE TABLE IF NOT EXISTS `report_viewed_product_index` (
  `index_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Index Id',
  `visitor_id` int(10) unsigned DEFAULT NULL COMMENT 'Visitor Id',
  `customer_id` int(10) unsigned DEFAULT NULL COMMENT 'Customer Id',
  `product_id` int(10) unsigned NOT NULL COMMENT 'Product Id',
  `store_id` smallint(5) unsigned DEFAULT NULL COMMENT 'Store Id',
  `added_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Added At',
  PRIMARY KEY (`index_id`),
  UNIQUE KEY `UNQ_REPORT_VIEWED_PRODUCT_INDEX_VISITOR_ID_PRODUCT_ID` (`visitor_id`,`product_id`),
  UNIQUE KEY `UNQ_REPORT_VIEWED_PRODUCT_INDEX_CUSTOMER_ID_PRODUCT_ID` (`customer_id`,`product_id`),
  KEY `IDX_REPORT_VIEWED_PRODUCT_INDEX_STORE_ID` (`store_id`),
  KEY `IDX_REPORT_VIEWED_PRODUCT_INDEX_ADDED_AT` (`added_at`),
  KEY `IDX_REPORT_VIEWED_PRODUCT_INDEX_PRODUCT_ID` (`product_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='Reports Viewed Product Index Table' AUTO_INCREMENT=6 ;

--
-- Gegevens worden uitgevoerd voor tabel `report_viewed_product_index`
--

INSERT INTO `report_viewed_product_index` (`index_id`, `visitor_id`, `customer_id`, `product_id`, `store_id`, `added_at`) VALUES
(1, 33, NULL, 4, 1, '2012-03-03 14:08:53'),
(2, NULL, 1, 4, 1, '2012-03-04 22:54:42'),
(4, NULL, 1, 2, 1, '2012-03-04 22:54:42'),
(5, NULL, 1, 1, 1, '2012-03-04 22:54:42');

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `review`
--

CREATE TABLE IF NOT EXISTS `review` (
  `review_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Review id',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Review create date',
  `entity_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Entity id',
  `entity_pk_value` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Product id',
  `status_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Status code',
  PRIMARY KEY (`review_id`),
  KEY `IDX_REVIEW_ENTITY_ID` (`entity_id`),
  KEY `IDX_REVIEW_STATUS_ID` (`status_id`),
  KEY `IDX_REVIEW_ENTITY_PK_VALUE` (`entity_pk_value`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Review base information' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `review_detail`
--

CREATE TABLE IF NOT EXISTS `review_detail` (
  `detail_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Review detail id',
  `review_id` bigint(20) unsigned NOT NULL DEFAULT '0' COMMENT 'Review id',
  `store_id` smallint(5) unsigned DEFAULT '0' COMMENT 'Store id',
  `title` varchar(255) NOT NULL COMMENT 'Title',
  `detail` text NOT NULL COMMENT 'Detail description',
  `nickname` varchar(128) NOT NULL COMMENT 'User nickname',
  `customer_id` int(10) unsigned DEFAULT NULL COMMENT 'Customer Id',
  PRIMARY KEY (`detail_id`),
  KEY `IDX_REVIEW_DETAIL_REVIEW_ID` (`review_id`),
  KEY `IDX_REVIEW_DETAIL_STORE_ID` (`store_id`),
  KEY `IDX_REVIEW_DETAIL_CUSTOMER_ID` (`customer_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Review detail information' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `review_entity`
--

CREATE TABLE IF NOT EXISTS `review_entity` (
  `entity_id` smallint(5) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Review entity id',
  `entity_code` varchar(32) NOT NULL COMMENT 'Review entity code',
  PRIMARY KEY (`entity_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='Review entities' AUTO_INCREMENT=4 ;

--
-- Gegevens worden uitgevoerd voor tabel `review_entity`
--

INSERT INTO `review_entity` (`entity_id`, `entity_code`) VALUES
(1, 'product'),
(2, 'customer'),
(3, 'category');

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `review_entity_summary`
--

CREATE TABLE IF NOT EXISTS `review_entity_summary` (
  `primary_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'Summary review entity id',
  `entity_pk_value` bigint(20) NOT NULL DEFAULT '0' COMMENT 'Product id',
  `entity_type` smallint(6) NOT NULL DEFAULT '0' COMMENT 'Entity type id',
  `reviews_count` smallint(6) NOT NULL DEFAULT '0' COMMENT 'Qty of reviews',
  `rating_summary` smallint(6) NOT NULL DEFAULT '0' COMMENT 'Summarized rating',
  `store_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Store id',
  PRIMARY KEY (`primary_id`),
  KEY `IDX_REVIEW_ENTITY_SUMMARY_STORE_ID` (`store_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Review aggregates' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `review_status`
--

CREATE TABLE IF NOT EXISTS `review_status` (
  `status_id` smallint(5) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Status id',
  `status_code` varchar(32) NOT NULL COMMENT 'Status code',
  PRIMARY KEY (`status_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='Review statuses' AUTO_INCREMENT=4 ;

--
-- Gegevens worden uitgevoerd voor tabel `review_status`
--

INSERT INTO `review_status` (`status_id`, `status_code`) VALUES
(1, 'Approved'),
(2, 'Pending'),
(3, 'Not Approved');

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `review_store`
--

CREATE TABLE IF NOT EXISTS `review_store` (
  `review_id` bigint(20) unsigned NOT NULL COMMENT 'Review Id',
  `store_id` smallint(5) unsigned NOT NULL COMMENT 'Store Id',
  PRIMARY KEY (`review_id`,`store_id`),
  KEY `IDX_REVIEW_STORE_STORE_ID` (`store_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Review Store';

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `salesrule`
--

CREATE TABLE IF NOT EXISTS `salesrule` (
  `rule_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Rule Id',
  `name` varchar(255) DEFAULT NULL COMMENT 'Name',
  `description` text COMMENT 'Description',
  `from_date` date DEFAULT NULL COMMENT 'From Date',
  `to_date` date DEFAULT NULL COMMENT 'To Date',
  `uses_per_customer` int(11) NOT NULL DEFAULT '0' COMMENT 'Uses Per Customer',
  `customer_group_ids` text COMMENT 'Customer Group Ids',
  `is_active` smallint(6) NOT NULL DEFAULT '0' COMMENT 'Is Active',
  `conditions_serialized` mediumtext COMMENT 'Conditions Serialized',
  `actions_serialized` mediumtext COMMENT 'Actions Serialized',
  `stop_rules_processing` smallint(6) NOT NULL DEFAULT '1' COMMENT 'Stop Rules Processing',
  `is_advanced` smallint(5) unsigned NOT NULL DEFAULT '1' COMMENT 'Is Advanced',
  `product_ids` text COMMENT 'Product Ids',
  `sort_order` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Sort Order',
  `simple_action` varchar(32) DEFAULT NULL COMMENT 'Simple Action',
  `discount_amount` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Discount Amount',
  `discount_qty` decimal(12,4) DEFAULT NULL COMMENT 'Discount Qty',
  `discount_step` int(10) unsigned NOT NULL COMMENT 'Discount Step',
  `simple_free_shipping` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Simple Free Shipping',
  `apply_to_shipping` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Apply To Shipping',
  `times_used` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Times Used',
  `is_rss` smallint(6) NOT NULL DEFAULT '0' COMMENT 'Is Rss',
  `website_ids` text COMMENT 'Website Ids',
  `coupon_type` smallint(5) unsigned NOT NULL DEFAULT '1' COMMENT 'Coupon Type',
  PRIMARY KEY (`rule_id`),
  KEY `IDX_SALESRULE_IS_ACTIVE_SORT_ORDER_TO_DATE_FROM_DATE` (`is_active`,`sort_order`,`to_date`,`from_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Salesrule' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `salesrule_coupon`
--

CREATE TABLE IF NOT EXISTS `salesrule_coupon` (
  `coupon_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Coupon Id',
  `rule_id` int(10) unsigned NOT NULL COMMENT 'Rule Id',
  `code` varchar(255) DEFAULT NULL COMMENT 'Code',
  `usage_limit` int(10) unsigned DEFAULT NULL COMMENT 'Usage Limit',
  `usage_per_customer` int(10) unsigned DEFAULT NULL COMMENT 'Usage Per Customer',
  `times_used` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Times Used',
  `expiration_date` timestamp NULL DEFAULT NULL COMMENT 'Expiration Date',
  `is_primary` smallint(5) unsigned DEFAULT NULL COMMENT 'Is Primary',
  PRIMARY KEY (`coupon_id`),
  UNIQUE KEY `UNQ_SALESRULE_COUPON_CODE` (`code`),
  UNIQUE KEY `UNQ_SALESRULE_COUPON_RULE_ID_IS_PRIMARY` (`rule_id`,`is_primary`),
  KEY `IDX_SALESRULE_COUPON_RULE_ID` (`rule_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Salesrule Coupon' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `salesrule_coupon_usage`
--

CREATE TABLE IF NOT EXISTS `salesrule_coupon_usage` (
  `coupon_id` int(10) unsigned NOT NULL COMMENT 'Coupon Id',
  `customer_id` int(10) unsigned NOT NULL COMMENT 'Customer Id',
  `times_used` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Times Used',
  PRIMARY KEY (`coupon_id`,`customer_id`),
  KEY `IDX_SALESRULE_COUPON_USAGE_COUPON_ID` (`coupon_id`),
  KEY `IDX_SALESRULE_COUPON_USAGE_CUSTOMER_ID` (`customer_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Salesrule Coupon Usage';

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `salesrule_customer`
--

CREATE TABLE IF NOT EXISTS `salesrule_customer` (
  `rule_customer_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Rule Customer Id',
  `rule_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Rule Id',
  `customer_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Customer Id',
  `times_used` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Times Used',
  PRIMARY KEY (`rule_customer_id`),
  KEY `IDX_SALESRULE_CUSTOMER_RULE_ID_CUSTOMER_ID` (`rule_id`,`customer_id`),
  KEY `IDX_SALESRULE_CUSTOMER_CUSTOMER_ID_RULE_ID` (`customer_id`,`rule_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Salesrule Customer' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `salesrule_label`
--

CREATE TABLE IF NOT EXISTS `salesrule_label` (
  `label_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Label Id',
  `rule_id` int(10) unsigned NOT NULL COMMENT 'Rule Id',
  `store_id` smallint(5) unsigned NOT NULL COMMENT 'Store Id',
  `label` varchar(255) DEFAULT NULL COMMENT 'Label',
  PRIMARY KEY (`label_id`),
  UNIQUE KEY `UNQ_SALESRULE_LABEL_RULE_ID_STORE_ID` (`rule_id`,`store_id`),
  KEY `IDX_SALESRULE_LABEL_STORE_ID` (`store_id`),
  KEY `IDX_SALESRULE_LABEL_RULE_ID` (`rule_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Salesrule Label' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `salesrule_product_attribute`
--

CREATE TABLE IF NOT EXISTS `salesrule_product_attribute` (
  `rule_id` int(10) unsigned NOT NULL COMMENT 'Rule Id',
  `website_id` smallint(5) unsigned NOT NULL COMMENT 'Website Id',
  `customer_group_id` smallint(5) unsigned NOT NULL COMMENT 'Customer Group Id',
  `attribute_id` smallint(5) unsigned NOT NULL COMMENT 'Attribute Id',
  PRIMARY KEY (`rule_id`,`website_id`,`customer_group_id`,`attribute_id`),
  KEY `IDX_SALESRULE_PRODUCT_ATTRIBUTE_WEBSITE_ID` (`website_id`),
  KEY `IDX_SALESRULE_PRODUCT_ATTRIBUTE_CUSTOMER_GROUP_ID` (`customer_group_id`),
  KEY `IDX_SALESRULE_PRODUCT_ATTRIBUTE_ATTRIBUTE_ID` (`attribute_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Salesrule Product Attribute';

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `sales_bestsellers_aggregated_daily`
--

CREATE TABLE IF NOT EXISTS `sales_bestsellers_aggregated_daily` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Id',
  `period` date DEFAULT NULL COMMENT 'Period',
  `store_id` smallint(5) unsigned DEFAULT NULL COMMENT 'Store Id',
  `product_id` int(10) unsigned DEFAULT NULL COMMENT 'Product Id',
  `product_name` varchar(255) DEFAULT NULL COMMENT 'Product Name',
  `product_price` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Product Price',
  `qty_ordered` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Qty Ordered',
  `rating_pos` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Rating Pos',
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNQ_SALES_BESTSELLERS_AGGRED_DAILY_PERIOD_STORE_ID_PRD_ID` (`period`,`store_id`,`product_id`),
  KEY `IDX_SALES_BESTSELLERS_AGGREGATED_DAILY_STORE_ID` (`store_id`),
  KEY `IDX_SALES_BESTSELLERS_AGGREGATED_DAILY_PRODUCT_ID` (`product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Sales Bestsellers Aggregated Daily' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `sales_bestsellers_aggregated_monthly`
--

CREATE TABLE IF NOT EXISTS `sales_bestsellers_aggregated_monthly` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Id',
  `period` date DEFAULT NULL COMMENT 'Period',
  `store_id` smallint(5) unsigned DEFAULT NULL COMMENT 'Store Id',
  `product_id` int(10) unsigned DEFAULT NULL COMMENT 'Product Id',
  `product_name` varchar(255) DEFAULT NULL COMMENT 'Product Name',
  `product_price` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Product Price',
  `qty_ordered` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Qty Ordered',
  `rating_pos` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Rating Pos',
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNQ_SALES_BESTSELLERS_AGGRED_MONTHLY_PERIOD_STORE_ID_PRD_ID` (`period`,`store_id`,`product_id`),
  KEY `IDX_SALES_BESTSELLERS_AGGREGATED_MONTHLY_STORE_ID` (`store_id`),
  KEY `IDX_SALES_BESTSELLERS_AGGREGATED_MONTHLY_PRODUCT_ID` (`product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Sales Bestsellers Aggregated Monthly' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `sales_bestsellers_aggregated_yearly`
--

CREATE TABLE IF NOT EXISTS `sales_bestsellers_aggregated_yearly` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Id',
  `period` date DEFAULT NULL COMMENT 'Period',
  `store_id` smallint(5) unsigned DEFAULT NULL COMMENT 'Store Id',
  `product_id` int(10) unsigned DEFAULT NULL COMMENT 'Product Id',
  `product_name` varchar(255) DEFAULT NULL COMMENT 'Product Name',
  `product_price` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Product Price',
  `qty_ordered` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Qty Ordered',
  `rating_pos` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Rating Pos',
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNQ_SALES_BESTSELLERS_AGGRED_YEARLY_PERIOD_STORE_ID_PRD_ID` (`period`,`store_id`,`product_id`),
  KEY `IDX_SALES_BESTSELLERS_AGGREGATED_YEARLY_STORE_ID` (`store_id`),
  KEY `IDX_SALES_BESTSELLERS_AGGREGATED_YEARLY_PRODUCT_ID` (`product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Sales Bestsellers Aggregated Yearly' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `sales_billing_agreement`
--

CREATE TABLE IF NOT EXISTS `sales_billing_agreement` (
  `agreement_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Agreement Id',
  `customer_id` int(10) unsigned NOT NULL COMMENT 'Customer Id',
  `method_code` varchar(32) NOT NULL COMMENT 'Method Code',
  `reference_id` varchar(32) NOT NULL COMMENT 'Reference Id',
  `status` varchar(20) NOT NULL COMMENT 'Status',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Created At',
  `updated_at` timestamp NULL DEFAULT NULL COMMENT 'Updated At',
  `store_id` smallint(5) unsigned DEFAULT NULL COMMENT 'Store Id',
  `agreement_label` varchar(255) DEFAULT NULL COMMENT 'Agreement Label',
  PRIMARY KEY (`agreement_id`),
  KEY `IDX_SALES_BILLING_AGREEMENT_CUSTOMER_ID` (`customer_id`),
  KEY `IDX_SALES_BILLING_AGREEMENT_STORE_ID` (`store_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Sales Billing Agreement' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `sales_billing_agreement_order`
--

CREATE TABLE IF NOT EXISTS `sales_billing_agreement_order` (
  `agreement_id` int(10) unsigned NOT NULL COMMENT 'Agreement Id',
  `order_id` int(10) unsigned NOT NULL COMMENT 'Order Id',
  PRIMARY KEY (`agreement_id`,`order_id`),
  KEY `IDX_SALES_BILLING_AGREEMENT_ORDER_ORDER_ID` (`order_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Sales Billing Agreement Order';

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `sales_flat_creditmemo`
--

CREATE TABLE IF NOT EXISTS `sales_flat_creditmemo` (
  `entity_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Entity Id',
  `store_id` smallint(5) unsigned DEFAULT NULL COMMENT 'Store Id',
  `adjustment_positive` decimal(12,4) DEFAULT NULL COMMENT 'Adjustment Positive',
  `base_shipping_tax_amount` decimal(12,4) DEFAULT NULL COMMENT 'Base Shipping Tax Amount',
  `store_to_order_rate` decimal(12,4) DEFAULT NULL COMMENT 'Store To Order Rate',
  `base_discount_amount` decimal(12,4) DEFAULT NULL COMMENT 'Base Discount Amount',
  `base_to_order_rate` decimal(12,4) DEFAULT NULL COMMENT 'Base To Order Rate',
  `grand_total` decimal(12,4) DEFAULT NULL COMMENT 'Grand Total',
  `base_adjustment_negative` decimal(12,4) DEFAULT NULL COMMENT 'Base Adjustment Negative',
  `base_subtotal_incl_tax` decimal(12,4) DEFAULT NULL COMMENT 'Base Subtotal Incl Tax',
  `shipping_amount` decimal(12,4) DEFAULT NULL COMMENT 'Shipping Amount',
  `subtotal_incl_tax` decimal(12,4) DEFAULT NULL COMMENT 'Subtotal Incl Tax',
  `adjustment_negative` decimal(12,4) DEFAULT NULL COMMENT 'Adjustment Negative',
  `base_shipping_amount` decimal(12,4) DEFAULT NULL COMMENT 'Base Shipping Amount',
  `store_to_base_rate` decimal(12,4) DEFAULT NULL COMMENT 'Store To Base Rate',
  `base_to_global_rate` decimal(12,4) DEFAULT NULL COMMENT 'Base To Global Rate',
  `base_adjustment` decimal(12,4) DEFAULT NULL COMMENT 'Base Adjustment',
  `base_subtotal` decimal(12,4) DEFAULT NULL COMMENT 'Base Subtotal',
  `discount_amount` decimal(12,4) DEFAULT NULL COMMENT 'Discount Amount',
  `subtotal` decimal(12,4) DEFAULT NULL COMMENT 'Subtotal',
  `adjustment` decimal(12,4) DEFAULT NULL COMMENT 'Adjustment',
  `base_grand_total` decimal(12,4) DEFAULT NULL COMMENT 'Base Grand Total',
  `base_adjustment_positive` decimal(12,4) DEFAULT NULL COMMENT 'Base Adjustment Positive',
  `base_tax_amount` decimal(12,4) DEFAULT NULL COMMENT 'Base Tax Amount',
  `shipping_tax_amount` decimal(12,4) DEFAULT NULL COMMENT 'Shipping Tax Amount',
  `tax_amount` decimal(12,4) DEFAULT NULL COMMENT 'Tax Amount',
  `order_id` int(10) unsigned NOT NULL COMMENT 'Order Id',
  `email_sent` smallint(5) unsigned DEFAULT NULL COMMENT 'Email Sent',
  `creditmemo_status` int(11) DEFAULT NULL COMMENT 'Creditmemo Status',
  `state` int(11) DEFAULT NULL COMMENT 'State',
  `shipping_address_id` int(11) DEFAULT NULL COMMENT 'Shipping Address Id',
  `billing_address_id` int(11) DEFAULT NULL COMMENT 'Billing Address Id',
  `invoice_id` int(11) DEFAULT NULL COMMENT 'Invoice Id',
  `store_currency_code` varchar(3) DEFAULT NULL COMMENT 'Store Currency Code',
  `order_currency_code` varchar(3) DEFAULT NULL COMMENT 'Order Currency Code',
  `base_currency_code` varchar(3) DEFAULT NULL COMMENT 'Base Currency Code',
  `global_currency_code` varchar(3) DEFAULT NULL COMMENT 'Global Currency Code',
  `transaction_id` varchar(255) DEFAULT NULL COMMENT 'Transaction Id',
  `increment_id` varchar(50) DEFAULT NULL COMMENT 'Increment Id',
  `created_at` timestamp NULL DEFAULT NULL COMMENT 'Created At',
  `updated_at` timestamp NULL DEFAULT NULL COMMENT 'Updated At',
  `hidden_tax_amount` decimal(12,4) DEFAULT NULL COMMENT 'Hidden Tax Amount',
  `base_hidden_tax_amount` decimal(12,4) DEFAULT NULL COMMENT 'Base Hidden Tax Amount',
  `shipping_hidden_tax_amount` decimal(12,4) DEFAULT NULL COMMENT 'Shipping Hidden Tax Amount',
  `base_shipping_hidden_tax_amnt` decimal(12,4) DEFAULT NULL COMMENT 'Base Shipping Hidden Tax Amount',
  `shipping_incl_tax` decimal(12,4) DEFAULT NULL COMMENT 'Shipping Incl Tax',
  `base_shipping_incl_tax` decimal(12,4) DEFAULT NULL COMMENT 'Base Shipping Incl Tax',
  PRIMARY KEY (`entity_id`),
  UNIQUE KEY `UNQ_SALES_FLAT_CREDITMEMO_INCREMENT_ID` (`increment_id`),
  KEY `IDX_SALES_FLAT_CREDITMEMO_STORE_ID` (`store_id`),
  KEY `IDX_SALES_FLAT_CREDITMEMO_ORDER_ID` (`order_id`),
  KEY `IDX_SALES_FLAT_CREDITMEMO_CREDITMEMO_STATUS` (`creditmemo_status`),
  KEY `IDX_SALES_FLAT_CREDITMEMO_STATE` (`state`),
  KEY `IDX_SALES_FLAT_CREDITMEMO_CREATED_AT` (`created_at`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Sales Flat Creditmemo' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `sales_flat_creditmemo_comment`
--

CREATE TABLE IF NOT EXISTS `sales_flat_creditmemo_comment` (
  `entity_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Entity Id',
  `parent_id` int(10) unsigned NOT NULL COMMENT 'Parent Id',
  `is_customer_notified` int(11) DEFAULT NULL COMMENT 'Is Customer Notified',
  `is_visible_on_front` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Is Visible On Front',
  `comment` text COMMENT 'Comment',
  `created_at` timestamp NULL DEFAULT NULL COMMENT 'Created At',
  PRIMARY KEY (`entity_id`),
  KEY `IDX_SALES_FLAT_CREDITMEMO_COMMENT_CREATED_AT` (`created_at`),
  KEY `IDX_SALES_FLAT_CREDITMEMO_COMMENT_PARENT_ID` (`parent_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Sales Flat Creditmemo Comment' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `sales_flat_creditmemo_grid`
--

CREATE TABLE IF NOT EXISTS `sales_flat_creditmemo_grid` (
  `entity_id` int(10) unsigned NOT NULL COMMENT 'Entity Id',
  `store_id` smallint(5) unsigned DEFAULT NULL COMMENT 'Store Id',
  `store_to_order_rate` decimal(12,4) DEFAULT NULL COMMENT 'Store To Order Rate',
  `base_to_order_rate` decimal(12,4) DEFAULT NULL COMMENT 'Base To Order Rate',
  `grand_total` decimal(12,4) DEFAULT NULL COMMENT 'Grand Total',
  `store_to_base_rate` decimal(12,4) DEFAULT NULL COMMENT 'Store To Base Rate',
  `base_to_global_rate` decimal(12,4) DEFAULT NULL COMMENT 'Base To Global Rate',
  `base_grand_total` decimal(12,4) DEFAULT NULL COMMENT 'Base Grand Total',
  `order_id` int(10) unsigned NOT NULL COMMENT 'Order Id',
  `creditmemo_status` int(11) DEFAULT NULL COMMENT 'Creditmemo Status',
  `state` int(11) DEFAULT NULL COMMENT 'State',
  `invoice_id` int(11) DEFAULT NULL COMMENT 'Invoice Id',
  `store_currency_code` varchar(3) DEFAULT NULL COMMENT 'Store Currency Code',
  `order_currency_code` varchar(3) DEFAULT NULL COMMENT 'Order Currency Code',
  `base_currency_code` varchar(3) DEFAULT NULL COMMENT 'Base Currency Code',
  `global_currency_code` varchar(3) DEFAULT NULL COMMENT 'Global Currency Code',
  `increment_id` varchar(50) DEFAULT NULL COMMENT 'Increment Id',
  `order_increment_id` varchar(50) DEFAULT NULL COMMENT 'Order Increment Id',
  `created_at` timestamp NULL DEFAULT NULL COMMENT 'Created At',
  `order_created_at` timestamp NULL DEFAULT NULL COMMENT 'Order Created At',
  `billing_name` varchar(255) DEFAULT NULL COMMENT 'Billing Name',
  PRIMARY KEY (`entity_id`),
  UNIQUE KEY `UNQ_SALES_FLAT_CREDITMEMO_GRID_INCREMENT_ID` (`increment_id`),
  KEY `IDX_SALES_FLAT_CREDITMEMO_GRID_STORE_ID` (`store_id`),
  KEY `IDX_SALES_FLAT_CREDITMEMO_GRID_GRAND_TOTAL` (`grand_total`),
  KEY `IDX_SALES_FLAT_CREDITMEMO_GRID_BASE_GRAND_TOTAL` (`base_grand_total`),
  KEY `IDX_SALES_FLAT_CREDITMEMO_GRID_ORDER_ID` (`order_id`),
  KEY `IDX_SALES_FLAT_CREDITMEMO_GRID_CREDITMEMO_STATUS` (`creditmemo_status`),
  KEY `IDX_SALES_FLAT_CREDITMEMO_GRID_STATE` (`state`),
  KEY `IDX_SALES_FLAT_CREDITMEMO_GRID_ORDER_INCREMENT_ID` (`order_increment_id`),
  KEY `IDX_SALES_FLAT_CREDITMEMO_GRID_CREATED_AT` (`created_at`),
  KEY `IDX_SALES_FLAT_CREDITMEMO_GRID_ORDER_CREATED_AT` (`order_created_at`),
  KEY `IDX_SALES_FLAT_CREDITMEMO_GRID_BILLING_NAME` (`billing_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Sales Flat Creditmemo Grid';

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `sales_flat_creditmemo_item`
--

CREATE TABLE IF NOT EXISTS `sales_flat_creditmemo_item` (
  `entity_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Entity Id',
  `parent_id` int(10) unsigned NOT NULL COMMENT 'Parent Id',
  `base_price` decimal(12,4) DEFAULT NULL COMMENT 'Base Price',
  `tax_amount` decimal(12,4) DEFAULT NULL COMMENT 'Tax Amount',
  `base_row_total` decimal(12,4) DEFAULT NULL COMMENT 'Base Row Total',
  `discount_amount` decimal(12,4) DEFAULT NULL COMMENT 'Discount Amount',
  `row_total` decimal(12,4) DEFAULT NULL COMMENT 'Row Total',
  `base_discount_amount` decimal(12,4) DEFAULT NULL COMMENT 'Base Discount Amount',
  `price_incl_tax` decimal(12,4) DEFAULT NULL COMMENT 'Price Incl Tax',
  `base_tax_amount` decimal(12,4) DEFAULT NULL COMMENT 'Base Tax Amount',
  `base_price_incl_tax` decimal(12,4) DEFAULT NULL COMMENT 'Base Price Incl Tax',
  `qty` decimal(12,4) DEFAULT NULL COMMENT 'Qty',
  `base_cost` decimal(12,4) DEFAULT NULL COMMENT 'Base Cost',
  `price` decimal(12,4) DEFAULT NULL COMMENT 'Price',
  `base_row_total_incl_tax` decimal(12,4) DEFAULT NULL COMMENT 'Base Row Total Incl Tax',
  `row_total_incl_tax` decimal(12,4) DEFAULT NULL COMMENT 'Row Total Incl Tax',
  `product_id` int(11) DEFAULT NULL COMMENT 'Product Id',
  `order_item_id` int(11) DEFAULT NULL COMMENT 'Order Item Id',
  `additional_data` text COMMENT 'Additional Data',
  `description` text COMMENT 'Description',
  `sku` varchar(255) DEFAULT NULL COMMENT 'Sku',
  `name` varchar(255) DEFAULT NULL COMMENT 'Name',
  `hidden_tax_amount` decimal(12,4) DEFAULT NULL COMMENT 'Hidden Tax Amount',
  `base_hidden_tax_amount` decimal(12,4) DEFAULT NULL COMMENT 'Base Hidden Tax Amount',
  `weee_tax_disposition` decimal(12,4) DEFAULT NULL COMMENT 'Weee Tax Disposition',
  `weee_tax_row_disposition` decimal(12,4) DEFAULT NULL COMMENT 'Weee Tax Row Disposition',
  `base_weee_tax_disposition` decimal(12,4) DEFAULT NULL COMMENT 'Base Weee Tax Disposition',
  `base_weee_tax_row_disposition` decimal(12,4) DEFAULT NULL COMMENT 'Base Weee Tax Row Disposition',
  `weee_tax_applied` text COMMENT 'Weee Tax Applied',
  `base_weee_tax_applied_amount` decimal(12,4) DEFAULT NULL COMMENT 'Base Weee Tax Applied Amount',
  `base_weee_tax_applied_row_amnt` decimal(12,4) DEFAULT NULL COMMENT 'Base Weee Tax Applied Row Amnt',
  `weee_tax_applied_amount` decimal(12,4) DEFAULT NULL COMMENT 'Weee Tax Applied Amount',
  `weee_tax_applied_row_amount` decimal(12,4) DEFAULT NULL COMMENT 'Weee Tax Applied Row Amount',
  PRIMARY KEY (`entity_id`),
  KEY `IDX_SALES_FLAT_CREDITMEMO_ITEM_PARENT_ID` (`parent_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Sales Flat Creditmemo Item' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `sales_flat_invoice`
--

CREATE TABLE IF NOT EXISTS `sales_flat_invoice` (
  `entity_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Entity Id',
  `store_id` smallint(5) unsigned DEFAULT NULL COMMENT 'Store Id',
  `base_grand_total` decimal(12,4) DEFAULT NULL COMMENT 'Base Grand Total',
  `shipping_tax_amount` decimal(12,4) DEFAULT NULL COMMENT 'Shipping Tax Amount',
  `tax_amount` decimal(12,4) DEFAULT NULL COMMENT 'Tax Amount',
  `base_tax_amount` decimal(12,4) DEFAULT NULL COMMENT 'Base Tax Amount',
  `store_to_order_rate` decimal(12,4) DEFAULT NULL COMMENT 'Store To Order Rate',
  `base_shipping_tax_amount` decimal(12,4) DEFAULT NULL COMMENT 'Base Shipping Tax Amount',
  `base_discount_amount` decimal(12,4) DEFAULT NULL COMMENT 'Base Discount Amount',
  `base_to_order_rate` decimal(12,4) DEFAULT NULL COMMENT 'Base To Order Rate',
  `grand_total` decimal(12,4) DEFAULT NULL COMMENT 'Grand Total',
  `shipping_amount` decimal(12,4) DEFAULT NULL COMMENT 'Shipping Amount',
  `subtotal_incl_tax` decimal(12,4) DEFAULT NULL COMMENT 'Subtotal Incl Tax',
  `base_subtotal_incl_tax` decimal(12,4) DEFAULT NULL COMMENT 'Base Subtotal Incl Tax',
  `store_to_base_rate` decimal(12,4) DEFAULT NULL COMMENT 'Store To Base Rate',
  `base_shipping_amount` decimal(12,4) DEFAULT NULL COMMENT 'Base Shipping Amount',
  `total_qty` decimal(12,4) DEFAULT NULL COMMENT 'Total Qty',
  `base_to_global_rate` decimal(12,4) DEFAULT NULL COMMENT 'Base To Global Rate',
  `subtotal` decimal(12,4) DEFAULT NULL COMMENT 'Subtotal',
  `base_subtotal` decimal(12,4) DEFAULT NULL COMMENT 'Base Subtotal',
  `discount_amount` decimal(12,4) DEFAULT NULL COMMENT 'Discount Amount',
  `billing_address_id` int(11) DEFAULT NULL COMMENT 'Billing Address Id',
  `is_used_for_refund` smallint(5) unsigned DEFAULT NULL COMMENT 'Is Used For Refund',
  `order_id` int(10) unsigned NOT NULL COMMENT 'Order Id',
  `email_sent` smallint(5) unsigned DEFAULT NULL COMMENT 'Email Sent',
  `can_void_flag` smallint(5) unsigned DEFAULT NULL COMMENT 'Can Void Flag',
  `state` int(11) DEFAULT NULL COMMENT 'State',
  `shipping_address_id` int(11) DEFAULT NULL COMMENT 'Shipping Address Id',
  `store_currency_code` varchar(3) DEFAULT NULL COMMENT 'Store Currency Code',
  `transaction_id` varchar(255) DEFAULT NULL COMMENT 'Transaction Id',
  `order_currency_code` varchar(3) DEFAULT NULL COMMENT 'Order Currency Code',
  `base_currency_code` varchar(3) DEFAULT NULL COMMENT 'Base Currency Code',
  `global_currency_code` varchar(3) DEFAULT NULL COMMENT 'Global Currency Code',
  `increment_id` varchar(50) DEFAULT NULL COMMENT 'Increment Id',
  `created_at` timestamp NULL DEFAULT NULL COMMENT 'Created At',
  `updated_at` timestamp NULL DEFAULT NULL COMMENT 'Updated At',
  `hidden_tax_amount` decimal(12,4) DEFAULT NULL COMMENT 'Hidden Tax Amount',
  `base_hidden_tax_amount` decimal(12,4) DEFAULT NULL COMMENT 'Base Hidden Tax Amount',
  `shipping_hidden_tax_amount` decimal(12,4) DEFAULT NULL COMMENT 'Shipping Hidden Tax Amount',
  `base_shipping_hidden_tax_amnt` decimal(12,4) DEFAULT NULL COMMENT 'Base Shipping Hidden Tax Amount',
  `shipping_incl_tax` decimal(12,4) DEFAULT NULL COMMENT 'Shipping Incl Tax',
  `base_shipping_incl_tax` decimal(12,4) DEFAULT NULL COMMENT 'Base Shipping Incl Tax',
  `base_total_refunded` decimal(12,4) DEFAULT NULL COMMENT 'Base Total Refunded',
  PRIMARY KEY (`entity_id`),
  UNIQUE KEY `UNQ_SALES_FLAT_INVOICE_INCREMENT_ID` (`increment_id`),
  KEY `IDX_SALES_FLAT_INVOICE_STORE_ID` (`store_id`),
  KEY `IDX_SALES_FLAT_INVOICE_GRAND_TOTAL` (`grand_total`),
  KEY `IDX_SALES_FLAT_INVOICE_ORDER_ID` (`order_id`),
  KEY `IDX_SALES_FLAT_INVOICE_STATE` (`state`),
  KEY `IDX_SALES_FLAT_INVOICE_CREATED_AT` (`created_at`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Sales Flat Invoice' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `sales_flat_invoice_comment`
--

CREATE TABLE IF NOT EXISTS `sales_flat_invoice_comment` (
  `entity_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Entity Id',
  `parent_id` int(10) unsigned NOT NULL COMMENT 'Parent Id',
  `is_customer_notified` smallint(5) unsigned DEFAULT NULL COMMENT 'Is Customer Notified',
  `is_visible_on_front` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Is Visible On Front',
  `comment` text COMMENT 'Comment',
  `created_at` timestamp NULL DEFAULT NULL COMMENT 'Created At',
  PRIMARY KEY (`entity_id`),
  KEY `IDX_SALES_FLAT_INVOICE_COMMENT_CREATED_AT` (`created_at`),
  KEY `IDX_SALES_FLAT_INVOICE_COMMENT_PARENT_ID` (`parent_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Sales Flat Invoice Comment' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `sales_flat_invoice_grid`
--

CREATE TABLE IF NOT EXISTS `sales_flat_invoice_grid` (
  `entity_id` int(10) unsigned NOT NULL COMMENT 'Entity Id',
  `store_id` smallint(5) unsigned DEFAULT NULL COMMENT 'Store Id',
  `base_grand_total` decimal(12,4) DEFAULT NULL COMMENT 'Base Grand Total',
  `grand_total` decimal(12,4) DEFAULT NULL COMMENT 'Grand Total',
  `order_id` int(10) unsigned NOT NULL COMMENT 'Order Id',
  `state` int(11) DEFAULT NULL COMMENT 'State',
  `store_currency_code` varchar(3) DEFAULT NULL COMMENT 'Store Currency Code',
  `order_currency_code` varchar(3) DEFAULT NULL COMMENT 'Order Currency Code',
  `base_currency_code` varchar(3) DEFAULT NULL COMMENT 'Base Currency Code',
  `global_currency_code` varchar(3) DEFAULT NULL COMMENT 'Global Currency Code',
  `increment_id` varchar(50) DEFAULT NULL COMMENT 'Increment Id',
  `order_increment_id` varchar(50) DEFAULT NULL COMMENT 'Order Increment Id',
  `created_at` timestamp NULL DEFAULT NULL COMMENT 'Created At',
  `order_created_at` timestamp NULL DEFAULT NULL COMMENT 'Order Created At',
  `billing_name` varchar(255) DEFAULT NULL COMMENT 'Billing Name',
  PRIMARY KEY (`entity_id`),
  UNIQUE KEY `UNQ_SALES_FLAT_INVOICE_GRID_INCREMENT_ID` (`increment_id`),
  KEY `IDX_SALES_FLAT_INVOICE_GRID_STORE_ID` (`store_id`),
  KEY `IDX_SALES_FLAT_INVOICE_GRID_GRAND_TOTAL` (`grand_total`),
  KEY `IDX_SALES_FLAT_INVOICE_GRID_ORDER_ID` (`order_id`),
  KEY `IDX_SALES_FLAT_INVOICE_GRID_STATE` (`state`),
  KEY `IDX_SALES_FLAT_INVOICE_GRID_ORDER_INCREMENT_ID` (`order_increment_id`),
  KEY `IDX_SALES_FLAT_INVOICE_GRID_CREATED_AT` (`created_at`),
  KEY `IDX_SALES_FLAT_INVOICE_GRID_ORDER_CREATED_AT` (`order_created_at`),
  KEY `IDX_SALES_FLAT_INVOICE_GRID_BILLING_NAME` (`billing_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Sales Flat Invoice Grid';

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `sales_flat_invoice_item`
--

CREATE TABLE IF NOT EXISTS `sales_flat_invoice_item` (
  `entity_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Entity Id',
  `parent_id` int(10) unsigned NOT NULL COMMENT 'Parent Id',
  `base_price` decimal(12,4) DEFAULT NULL COMMENT 'Base Price',
  `tax_amount` decimal(12,4) DEFAULT NULL COMMENT 'Tax Amount',
  `base_row_total` decimal(12,4) DEFAULT NULL COMMENT 'Base Row Total',
  `discount_amount` decimal(12,4) DEFAULT NULL COMMENT 'Discount Amount',
  `row_total` decimal(12,4) DEFAULT NULL COMMENT 'Row Total',
  `base_discount_amount` decimal(12,4) DEFAULT NULL COMMENT 'Base Discount Amount',
  `price_incl_tax` decimal(12,4) DEFAULT NULL COMMENT 'Price Incl Tax',
  `base_tax_amount` decimal(12,4) DEFAULT NULL COMMENT 'Base Tax Amount',
  `base_price_incl_tax` decimal(12,4) DEFAULT NULL COMMENT 'Base Price Incl Tax',
  `qty` decimal(12,4) DEFAULT NULL COMMENT 'Qty',
  `base_cost` decimal(12,4) DEFAULT NULL COMMENT 'Base Cost',
  `price` decimal(12,4) DEFAULT NULL COMMENT 'Price',
  `base_row_total_incl_tax` decimal(12,4) DEFAULT NULL COMMENT 'Base Row Total Incl Tax',
  `row_total_incl_tax` decimal(12,4) DEFAULT NULL COMMENT 'Row Total Incl Tax',
  `product_id` int(11) DEFAULT NULL COMMENT 'Product Id',
  `order_item_id` int(11) DEFAULT NULL COMMENT 'Order Item Id',
  `additional_data` text COMMENT 'Additional Data',
  `description` text COMMENT 'Description',
  `sku` varchar(255) DEFAULT NULL COMMENT 'Sku',
  `name` varchar(255) DEFAULT NULL COMMENT 'Name',
  `hidden_tax_amount` decimal(12,4) DEFAULT NULL COMMENT 'Hidden Tax Amount',
  `base_hidden_tax_amount` decimal(12,4) DEFAULT NULL COMMENT 'Base Hidden Tax Amount',
  `base_weee_tax_applied_amount` decimal(12,4) DEFAULT NULL COMMENT 'Base Weee Tax Applied Amount',
  `base_weee_tax_applied_row_amnt` decimal(12,4) DEFAULT NULL COMMENT 'Base Weee Tax Applied Row Amnt',
  `weee_tax_applied_amount` decimal(12,4) DEFAULT NULL COMMENT 'Weee Tax Applied Amount',
  `weee_tax_applied_row_amount` decimal(12,4) DEFAULT NULL COMMENT 'Weee Tax Applied Row Amount',
  `weee_tax_applied` text COMMENT 'Weee Tax Applied',
  `weee_tax_disposition` decimal(12,4) DEFAULT NULL COMMENT 'Weee Tax Disposition',
  `weee_tax_row_disposition` decimal(12,4) DEFAULT NULL COMMENT 'Weee Tax Row Disposition',
  `base_weee_tax_disposition` decimal(12,4) DEFAULT NULL COMMENT 'Base Weee Tax Disposition',
  `base_weee_tax_row_disposition` decimal(12,4) DEFAULT NULL COMMENT 'Base Weee Tax Row Disposition',
  PRIMARY KEY (`entity_id`),
  KEY `IDX_SALES_FLAT_INVOICE_ITEM_PARENT_ID` (`parent_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Sales Flat Invoice Item' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `sales_flat_order`
--

CREATE TABLE IF NOT EXISTS `sales_flat_order` (
  `entity_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Entity Id',
  `state` varchar(32) DEFAULT NULL COMMENT 'State',
  `status` varchar(32) DEFAULT NULL COMMENT 'Status',
  `coupon_code` varchar(255) DEFAULT NULL COMMENT 'Coupon Code',
  `protect_code` varchar(255) DEFAULT NULL COMMENT 'Protect Code',
  `shipping_description` varchar(255) DEFAULT NULL COMMENT 'Shipping Description',
  `is_virtual` smallint(5) unsigned DEFAULT NULL COMMENT 'Is Virtual',
  `store_id` smallint(5) unsigned DEFAULT NULL COMMENT 'Store Id',
  `customer_id` int(10) unsigned DEFAULT NULL COMMENT 'Customer Id',
  `base_discount_amount` decimal(12,4) DEFAULT NULL COMMENT 'Base Discount Amount',
  `base_discount_canceled` decimal(12,4) DEFAULT NULL COMMENT 'Base Discount Canceled',
  `base_discount_invoiced` decimal(12,4) DEFAULT NULL COMMENT 'Base Discount Invoiced',
  `base_discount_refunded` decimal(12,4) DEFAULT NULL COMMENT 'Base Discount Refunded',
  `base_grand_total` decimal(12,4) DEFAULT NULL COMMENT 'Base Grand Total',
  `base_shipping_amount` decimal(12,4) DEFAULT NULL COMMENT 'Base Shipping Amount',
  `base_shipping_canceled` decimal(12,4) DEFAULT NULL COMMENT 'Base Shipping Canceled',
  `base_shipping_invoiced` decimal(12,4) DEFAULT NULL COMMENT 'Base Shipping Invoiced',
  `base_shipping_refunded` decimal(12,4) DEFAULT NULL COMMENT 'Base Shipping Refunded',
  `base_shipping_tax_amount` decimal(12,4) DEFAULT NULL COMMENT 'Base Shipping Tax Amount',
  `base_shipping_tax_refunded` decimal(12,4) DEFAULT NULL COMMENT 'Base Shipping Tax Refunded',
  `base_subtotal` decimal(12,4) DEFAULT NULL COMMENT 'Base Subtotal',
  `base_subtotal_canceled` decimal(12,4) DEFAULT NULL COMMENT 'Base Subtotal Canceled',
  `base_subtotal_invoiced` decimal(12,4) DEFAULT NULL COMMENT 'Base Subtotal Invoiced',
  `base_subtotal_refunded` decimal(12,4) DEFAULT NULL COMMENT 'Base Subtotal Refunded',
  `base_tax_amount` decimal(12,4) DEFAULT NULL COMMENT 'Base Tax Amount',
  `base_tax_canceled` decimal(12,4) DEFAULT NULL COMMENT 'Base Tax Canceled',
  `base_tax_invoiced` decimal(12,4) DEFAULT NULL COMMENT 'Base Tax Invoiced',
  `base_tax_refunded` decimal(12,4) DEFAULT NULL COMMENT 'Base Tax Refunded',
  `base_to_global_rate` decimal(12,4) DEFAULT NULL COMMENT 'Base To Global Rate',
  `base_to_order_rate` decimal(12,4) DEFAULT NULL COMMENT 'Base To Order Rate',
  `base_total_canceled` decimal(12,4) DEFAULT NULL COMMENT 'Base Total Canceled',
  `base_total_invoiced` decimal(12,4) DEFAULT NULL COMMENT 'Base Total Invoiced',
  `base_total_invoiced_cost` decimal(12,4) DEFAULT NULL COMMENT 'Base Total Invoiced Cost',
  `base_total_offline_refunded` decimal(12,4) DEFAULT NULL COMMENT 'Base Total Offline Refunded',
  `base_total_online_refunded` decimal(12,4) DEFAULT NULL COMMENT 'Base Total Online Refunded',
  `base_total_paid` decimal(12,4) DEFAULT NULL COMMENT 'Base Total Paid',
  `base_total_qty_ordered` decimal(12,4) DEFAULT NULL COMMENT 'Base Total Qty Ordered',
  `base_total_refunded` decimal(12,4) DEFAULT NULL COMMENT 'Base Total Refunded',
  `discount_amount` decimal(12,4) DEFAULT NULL COMMENT 'Discount Amount',
  `discount_canceled` decimal(12,4) DEFAULT NULL COMMENT 'Discount Canceled',
  `discount_invoiced` decimal(12,4) DEFAULT NULL COMMENT 'Discount Invoiced',
  `discount_refunded` decimal(12,4) DEFAULT NULL COMMENT 'Discount Refunded',
  `grand_total` decimal(12,4) DEFAULT NULL COMMENT 'Grand Total',
  `shipping_amount` decimal(12,4) DEFAULT NULL COMMENT 'Shipping Amount',
  `shipping_canceled` decimal(12,4) DEFAULT NULL COMMENT 'Shipping Canceled',
  `shipping_invoiced` decimal(12,4) DEFAULT NULL COMMENT 'Shipping Invoiced',
  `shipping_refunded` decimal(12,4) DEFAULT NULL COMMENT 'Shipping Refunded',
  `shipping_tax_amount` decimal(12,4) DEFAULT NULL COMMENT 'Shipping Tax Amount',
  `shipping_tax_refunded` decimal(12,4) DEFAULT NULL COMMENT 'Shipping Tax Refunded',
  `store_to_base_rate` decimal(12,4) DEFAULT NULL COMMENT 'Store To Base Rate',
  `store_to_order_rate` decimal(12,4) DEFAULT NULL COMMENT 'Store To Order Rate',
  `subtotal` decimal(12,4) DEFAULT NULL COMMENT 'Subtotal',
  `subtotal_canceled` decimal(12,4) DEFAULT NULL COMMENT 'Subtotal Canceled',
  `subtotal_invoiced` decimal(12,4) DEFAULT NULL COMMENT 'Subtotal Invoiced',
  `subtotal_refunded` decimal(12,4) DEFAULT NULL COMMENT 'Subtotal Refunded',
  `tax_amount` decimal(12,4) DEFAULT NULL COMMENT 'Tax Amount',
  `tax_canceled` decimal(12,4) DEFAULT NULL COMMENT 'Tax Canceled',
  `tax_invoiced` decimal(12,4) DEFAULT NULL COMMENT 'Tax Invoiced',
  `tax_refunded` decimal(12,4) DEFAULT NULL COMMENT 'Tax Refunded',
  `total_canceled` decimal(12,4) DEFAULT NULL COMMENT 'Total Canceled',
  `total_invoiced` decimal(12,4) DEFAULT NULL COMMENT 'Total Invoiced',
  `total_offline_refunded` decimal(12,4) DEFAULT NULL COMMENT 'Total Offline Refunded',
  `total_online_refunded` decimal(12,4) DEFAULT NULL COMMENT 'Total Online Refunded',
  `total_paid` decimal(12,4) DEFAULT NULL COMMENT 'Total Paid',
  `total_qty_ordered` decimal(12,4) DEFAULT NULL COMMENT 'Total Qty Ordered',
  `total_refunded` decimal(12,4) DEFAULT NULL COMMENT 'Total Refunded',
  `can_ship_partially` smallint(5) unsigned DEFAULT NULL COMMENT 'Can Ship Partially',
  `can_ship_partially_item` smallint(5) unsigned DEFAULT NULL COMMENT 'Can Ship Partially Item',
  `customer_is_guest` smallint(5) unsigned DEFAULT NULL COMMENT 'Customer Is Guest',
  `customer_note_notify` smallint(5) unsigned DEFAULT NULL COMMENT 'Customer Note Notify',
  `billing_address_id` int(11) DEFAULT NULL COMMENT 'Billing Address Id',
  `customer_group_id` smallint(6) DEFAULT NULL COMMENT 'Customer Group Id',
  `edit_increment` int(11) DEFAULT NULL COMMENT 'Edit Increment',
  `email_sent` smallint(5) unsigned DEFAULT NULL COMMENT 'Email Sent',
  `forced_shipment_with_invoice` smallint(5) unsigned DEFAULT NULL COMMENT 'Forced Do Shipment With Invoice',
  `payment_auth_expiration` int(11) DEFAULT NULL COMMENT 'Payment Authorization Expiration',
  `quote_address_id` int(11) DEFAULT NULL COMMENT 'Quote Address Id',
  `quote_id` int(11) DEFAULT NULL COMMENT 'Quote Id',
  `shipping_address_id` int(11) DEFAULT NULL COMMENT 'Shipping Address Id',
  `adjustment_negative` decimal(12,4) DEFAULT NULL COMMENT 'Adjustment Negative',
  `adjustment_positive` decimal(12,4) DEFAULT NULL COMMENT 'Adjustment Positive',
  `base_adjustment_negative` decimal(12,4) DEFAULT NULL COMMENT 'Base Adjustment Negative',
  `base_adjustment_positive` decimal(12,4) DEFAULT NULL COMMENT 'Base Adjustment Positive',
  `base_shipping_discount_amount` decimal(12,4) DEFAULT NULL COMMENT 'Base Shipping Discount Amount',
  `base_subtotal_incl_tax` decimal(12,4) DEFAULT NULL COMMENT 'Base Subtotal Incl Tax',
  `base_total_due` decimal(12,4) DEFAULT NULL COMMENT 'Base Total Due',
  `payment_authorization_amount` decimal(12,4) DEFAULT NULL COMMENT 'Payment Authorization Amount',
  `shipping_discount_amount` decimal(12,4) DEFAULT NULL COMMENT 'Shipping Discount Amount',
  `subtotal_incl_tax` decimal(12,4) DEFAULT NULL COMMENT 'Subtotal Incl Tax',
  `total_due` decimal(12,4) DEFAULT NULL COMMENT 'Total Due',
  `weight` decimal(12,4) DEFAULT NULL COMMENT 'Weight',
  `customer_dob` datetime DEFAULT NULL COMMENT 'Customer Dob',
  `increment_id` varchar(50) DEFAULT NULL COMMENT 'Increment Id',
  `applied_rule_ids` varchar(255) DEFAULT NULL COMMENT 'Applied Rule Ids',
  `base_currency_code` varchar(3) DEFAULT NULL COMMENT 'Base Currency Code',
  `customer_email` varchar(255) DEFAULT NULL COMMENT 'Customer Email',
  `customer_firstname` varchar(255) DEFAULT NULL COMMENT 'Customer Firstname',
  `customer_lastname` varchar(255) DEFAULT NULL COMMENT 'Customer Lastname',
  `customer_middlename` varchar(255) DEFAULT NULL COMMENT 'Customer Middlename',
  `customer_prefix` varchar(255) DEFAULT NULL COMMENT 'Customer Prefix',
  `customer_suffix` varchar(255) DEFAULT NULL COMMENT 'Customer Suffix',
  `customer_taxvat` varchar(255) DEFAULT NULL COMMENT 'Customer Taxvat',
  `discount_description` varchar(255) DEFAULT NULL COMMENT 'Discount Description',
  `ext_customer_id` varchar(255) DEFAULT NULL COMMENT 'Ext Customer Id',
  `ext_order_id` varchar(255) DEFAULT NULL COMMENT 'Ext Order Id',
  `global_currency_code` varchar(3) DEFAULT NULL COMMENT 'Global Currency Code',
  `hold_before_state` varchar(255) DEFAULT NULL COMMENT 'Hold Before State',
  `hold_before_status` varchar(255) DEFAULT NULL COMMENT 'Hold Before Status',
  `order_currency_code` varchar(255) DEFAULT NULL COMMENT 'Order Currency Code',
  `original_increment_id` varchar(50) DEFAULT NULL COMMENT 'Original Increment Id',
  `relation_child_id` varchar(32) DEFAULT NULL COMMENT 'Relation Child Id',
  `relation_child_real_id` varchar(32) DEFAULT NULL COMMENT 'Relation Child Real Id',
  `relation_parent_id` varchar(32) DEFAULT NULL COMMENT 'Relation Parent Id',
  `relation_parent_real_id` varchar(32) DEFAULT NULL COMMENT 'Relation Parent Real Id',
  `remote_ip` varchar(255) DEFAULT NULL COMMENT 'Remote Ip',
  `shipping_method` varchar(255) DEFAULT NULL COMMENT 'Shipping Method',
  `store_currency_code` varchar(3) DEFAULT NULL COMMENT 'Store Currency Code',
  `store_name` varchar(255) DEFAULT NULL COMMENT 'Store Name',
  `x_forwarded_for` varchar(255) DEFAULT NULL COMMENT 'X Forwarded For',
  `customer_note` text COMMENT 'Customer Note',
  `created_at` timestamp NULL DEFAULT NULL COMMENT 'Created At',
  `updated_at` timestamp NULL DEFAULT NULL COMMENT 'Updated At',
  `total_item_count` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Total Item Count',
  `customer_gender` int(11) DEFAULT NULL COMMENT 'Customer Gender',
  `hidden_tax_amount` decimal(12,4) DEFAULT NULL COMMENT 'Hidden Tax Amount',
  `base_hidden_tax_amount` decimal(12,4) DEFAULT NULL COMMENT 'Base Hidden Tax Amount',
  `shipping_hidden_tax_amount` decimal(12,4) DEFAULT NULL COMMENT 'Shipping Hidden Tax Amount',
  `base_shipping_hidden_tax_amnt` decimal(12,4) DEFAULT NULL COMMENT 'Base Shipping Hidden Tax Amount',
  `hidden_tax_invoiced` decimal(12,4) DEFAULT NULL COMMENT 'Hidden Tax Invoiced',
  `base_hidden_tax_invoiced` decimal(12,4) DEFAULT NULL COMMENT 'Base Hidden Tax Invoiced',
  `hidden_tax_refunded` decimal(12,4) DEFAULT NULL COMMENT 'Hidden Tax Refunded',
  `base_hidden_tax_refunded` decimal(12,4) DEFAULT NULL COMMENT 'Base Hidden Tax Refunded',
  `shipping_incl_tax` decimal(12,4) DEFAULT NULL COMMENT 'Shipping Incl Tax',
  `base_shipping_incl_tax` decimal(12,4) DEFAULT NULL COMMENT 'Base Shipping Incl Tax',
  `paypal_ipn_customer_notified` int(11) DEFAULT '0' COMMENT 'Paypal Ipn Customer Notified',
  `gift_message_id` int(11) DEFAULT NULL COMMENT 'Gift Message Id',
  PRIMARY KEY (`entity_id`),
  UNIQUE KEY `UNQ_SALES_FLAT_ORDER_INCREMENT_ID` (`increment_id`),
  KEY `IDX_SALES_FLAT_ORDER_STATUS` (`status`),
  KEY `IDX_SALES_FLAT_ORDER_STATE` (`state`),
  KEY `IDX_SALES_FLAT_ORDER_STORE_ID` (`store_id`),
  KEY `IDX_SALES_FLAT_ORDER_CREATED_AT` (`created_at`),
  KEY `IDX_SALES_FLAT_ORDER_CUSTOMER_ID` (`customer_id`),
  KEY `IDX_SALES_FLAT_ORDER_EXT_ORDER_ID` (`ext_order_id`),
  KEY `IDX_SALES_FLAT_ORDER_QUOTE_ID` (`quote_id`),
  KEY `IDX_SALES_FLAT_ORDER_UPDATED_AT` (`updated_at`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Sales Flat Order' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `sales_flat_order_address`
--

CREATE TABLE IF NOT EXISTS `sales_flat_order_address` (
  `entity_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Entity Id',
  `parent_id` int(10) unsigned DEFAULT NULL COMMENT 'Parent Id',
  `customer_address_id` int(11) DEFAULT NULL COMMENT 'Customer Address Id',
  `quote_address_id` int(11) DEFAULT NULL COMMENT 'Quote Address Id',
  `region_id` int(11) DEFAULT NULL COMMENT 'Region Id',
  `customer_id` int(11) DEFAULT NULL COMMENT 'Customer Id',
  `fax` varchar(255) DEFAULT NULL COMMENT 'Fax',
  `region` varchar(255) DEFAULT NULL COMMENT 'Region',
  `postcode` varchar(255) DEFAULT NULL COMMENT 'Postcode',
  `lastname` varchar(255) DEFAULT NULL COMMENT 'Lastname',
  `street` varchar(255) DEFAULT NULL COMMENT 'Street',
  `city` varchar(255) DEFAULT NULL COMMENT 'City',
  `email` varchar(255) DEFAULT NULL COMMENT 'Email',
  `telephone` varchar(255) DEFAULT NULL COMMENT 'Telephone',
  `country_id` varchar(2) DEFAULT NULL COMMENT 'Country Id',
  `firstname` varchar(255) DEFAULT NULL COMMENT 'Firstname',
  `address_type` varchar(255) DEFAULT NULL COMMENT 'Address Type',
  `prefix` varchar(255) DEFAULT NULL COMMENT 'Prefix',
  `middlename` varchar(255) DEFAULT NULL COMMENT 'Middlename',
  `suffix` varchar(255) DEFAULT NULL COMMENT 'Suffix',
  `company` varchar(255) DEFAULT NULL COMMENT 'Company',
  PRIMARY KEY (`entity_id`),
  KEY `IDX_SALES_FLAT_ORDER_ADDRESS_PARENT_ID` (`parent_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Sales Flat Order Address' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `sales_flat_order_grid`
--

CREATE TABLE IF NOT EXISTS `sales_flat_order_grid` (
  `entity_id` int(10) unsigned NOT NULL COMMENT 'Entity Id',
  `status` varchar(32) DEFAULT NULL COMMENT 'Status',
  `store_id` smallint(5) unsigned DEFAULT NULL COMMENT 'Store Id',
  `store_name` varchar(255) DEFAULT NULL COMMENT 'Store Name',
  `customer_id` int(10) unsigned DEFAULT NULL COMMENT 'Customer Id',
  `base_grand_total` decimal(12,4) DEFAULT NULL COMMENT 'Base Grand Total',
  `base_total_paid` decimal(12,4) DEFAULT NULL COMMENT 'Base Total Paid',
  `grand_total` decimal(12,4) DEFAULT NULL COMMENT 'Grand Total',
  `total_paid` decimal(12,4) DEFAULT NULL COMMENT 'Total Paid',
  `increment_id` varchar(50) DEFAULT NULL COMMENT 'Increment Id',
  `base_currency_code` varchar(3) DEFAULT NULL COMMENT 'Base Currency Code',
  `order_currency_code` varchar(255) DEFAULT NULL COMMENT 'Order Currency Code',
  `shipping_name` varchar(255) DEFAULT NULL COMMENT 'Shipping Name',
  `billing_name` varchar(255) DEFAULT NULL COMMENT 'Billing Name',
  `created_at` timestamp NULL DEFAULT NULL COMMENT 'Created At',
  `updated_at` timestamp NULL DEFAULT NULL COMMENT 'Updated At',
  PRIMARY KEY (`entity_id`),
  UNIQUE KEY `UNQ_SALES_FLAT_ORDER_GRID_INCREMENT_ID` (`increment_id`),
  KEY `IDX_SALES_FLAT_ORDER_GRID_STATUS` (`status`),
  KEY `IDX_SALES_FLAT_ORDER_GRID_STORE_ID` (`store_id`),
  KEY `IDX_SALES_FLAT_ORDER_GRID_BASE_GRAND_TOTAL` (`base_grand_total`),
  KEY `IDX_SALES_FLAT_ORDER_GRID_BASE_TOTAL_PAID` (`base_total_paid`),
  KEY `IDX_SALES_FLAT_ORDER_GRID_GRAND_TOTAL` (`grand_total`),
  KEY `IDX_SALES_FLAT_ORDER_GRID_TOTAL_PAID` (`total_paid`),
  KEY `IDX_SALES_FLAT_ORDER_GRID_SHIPPING_NAME` (`shipping_name`),
  KEY `IDX_SALES_FLAT_ORDER_GRID_BILLING_NAME` (`billing_name`),
  KEY `IDX_SALES_FLAT_ORDER_GRID_CREATED_AT` (`created_at`),
  KEY `IDX_SALES_FLAT_ORDER_GRID_CUSTOMER_ID` (`customer_id`),
  KEY `IDX_SALES_FLAT_ORDER_GRID_UPDATED_AT` (`updated_at`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Sales Flat Order Grid';

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `sales_flat_order_item`
--

CREATE TABLE IF NOT EXISTS `sales_flat_order_item` (
  `item_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Item Id',
  `order_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Order Id',
  `parent_item_id` int(10) unsigned DEFAULT NULL COMMENT 'Parent Item Id',
  `quote_item_id` int(10) unsigned DEFAULT NULL COMMENT 'Quote Item Id',
  `store_id` smallint(5) unsigned DEFAULT NULL COMMENT 'Store Id',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Created At',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'Updated At',
  `product_id` int(10) unsigned DEFAULT NULL COMMENT 'Product Id',
  `product_type` varchar(255) DEFAULT NULL COMMENT 'Product Type',
  `product_options` text COMMENT 'Product Options',
  `weight` decimal(12,4) DEFAULT '0.0000' COMMENT 'Weight',
  `is_virtual` smallint(5) unsigned DEFAULT NULL COMMENT 'Is Virtual',
  `sku` varchar(255) DEFAULT NULL COMMENT 'Sku',
  `name` varchar(255) DEFAULT NULL COMMENT 'Name',
  `description` text COMMENT 'Description',
  `applied_rule_ids` text COMMENT 'Applied Rule Ids',
  `additional_data` text COMMENT 'Additional Data',
  `free_shipping` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Free Shipping',
  `is_qty_decimal` smallint(5) unsigned DEFAULT NULL COMMENT 'Is Qty Decimal',
  `no_discount` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'No Discount',
  `qty_backordered` decimal(12,4) DEFAULT '0.0000' COMMENT 'Qty Backordered',
  `qty_canceled` decimal(12,4) DEFAULT '0.0000' COMMENT 'Qty Canceled',
  `qty_invoiced` decimal(12,4) DEFAULT '0.0000' COMMENT 'Qty Invoiced',
  `qty_ordered` decimal(12,4) DEFAULT '0.0000' COMMENT 'Qty Ordered',
  `qty_refunded` decimal(12,4) DEFAULT '0.0000' COMMENT 'Qty Refunded',
  `qty_shipped` decimal(12,4) DEFAULT '0.0000' COMMENT 'Qty Shipped',
  `base_cost` decimal(12,4) DEFAULT '0.0000' COMMENT 'Base Cost',
  `price` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Price',
  `base_price` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Base Price',
  `original_price` decimal(12,4) DEFAULT NULL COMMENT 'Original Price',
  `base_original_price` decimal(12,4) DEFAULT NULL COMMENT 'Base Original Price',
  `tax_percent` decimal(12,4) DEFAULT '0.0000' COMMENT 'Tax Percent',
  `tax_amount` decimal(12,4) DEFAULT '0.0000' COMMENT 'Tax Amount',
  `base_tax_amount` decimal(12,4) DEFAULT '0.0000' COMMENT 'Base Tax Amount',
  `tax_invoiced` decimal(12,4) DEFAULT '0.0000' COMMENT 'Tax Invoiced',
  `base_tax_invoiced` decimal(12,4) DEFAULT '0.0000' COMMENT 'Base Tax Invoiced',
  `discount_percent` decimal(12,4) DEFAULT '0.0000' COMMENT 'Discount Percent',
  `discount_amount` decimal(12,4) DEFAULT '0.0000' COMMENT 'Discount Amount',
  `base_discount_amount` decimal(12,4) DEFAULT '0.0000' COMMENT 'Base Discount Amount',
  `discount_invoiced` decimal(12,4) DEFAULT '0.0000' COMMENT 'Discount Invoiced',
  `base_discount_invoiced` decimal(12,4) DEFAULT '0.0000' COMMENT 'Base Discount Invoiced',
  `amount_refunded` decimal(12,4) DEFAULT '0.0000' COMMENT 'Amount Refunded',
  `base_amount_refunded` decimal(12,4) DEFAULT '0.0000' COMMENT 'Base Amount Refunded',
  `row_total` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Row Total',
  `base_row_total` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Base Row Total',
  `row_invoiced` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Row Invoiced',
  `base_row_invoiced` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Base Row Invoiced',
  `row_weight` decimal(12,4) DEFAULT '0.0000' COMMENT 'Row Weight',
  `base_tax_before_discount` decimal(12,4) DEFAULT NULL COMMENT 'Base Tax Before Discount',
  `tax_before_discount` decimal(12,4) DEFAULT NULL COMMENT 'Tax Before Discount',
  `ext_order_item_id` varchar(255) DEFAULT NULL COMMENT 'Ext Order Item Id',
  `locked_do_invoice` smallint(5) unsigned DEFAULT NULL COMMENT 'Locked Do Invoice',
  `locked_do_ship` smallint(5) unsigned DEFAULT NULL COMMENT 'Locked Do Ship',
  `price_incl_tax` decimal(12,4) DEFAULT NULL COMMENT 'Price Incl Tax',
  `base_price_incl_tax` decimal(12,4) DEFAULT NULL COMMENT 'Base Price Incl Tax',
  `row_total_incl_tax` decimal(12,4) DEFAULT NULL COMMENT 'Row Total Incl Tax',
  `base_row_total_incl_tax` decimal(12,4) DEFAULT NULL COMMENT 'Base Row Total Incl Tax',
  `hidden_tax_amount` decimal(12,4) DEFAULT NULL COMMENT 'Hidden Tax Amount',
  `base_hidden_tax_amount` decimal(12,4) DEFAULT NULL COMMENT 'Base Hidden Tax Amount',
  `hidden_tax_invoiced` decimal(12,4) DEFAULT NULL COMMENT 'Hidden Tax Invoiced',
  `base_hidden_tax_invoiced` decimal(12,4) DEFAULT NULL COMMENT 'Base Hidden Tax Invoiced',
  `hidden_tax_refunded` decimal(12,4) DEFAULT NULL COMMENT 'Hidden Tax Refunded',
  `base_hidden_tax_refunded` decimal(12,4) DEFAULT NULL COMMENT 'Base Hidden Tax Refunded',
  `is_nominal` int(11) NOT NULL DEFAULT '0' COMMENT 'Is Nominal',
  `tax_canceled` decimal(12,4) DEFAULT NULL COMMENT 'Tax Canceled',
  `hidden_tax_canceled` decimal(12,4) DEFAULT NULL COMMENT 'Hidden Tax Canceled',
  `tax_refunded` decimal(12,4) DEFAULT NULL COMMENT 'Tax Refunded',
  `gift_message_id` int(11) DEFAULT NULL COMMENT 'Gift Message Id',
  `gift_message_available` int(11) DEFAULT NULL COMMENT 'Gift Message Available',
  `base_weee_tax_applied_amount` decimal(12,4) DEFAULT NULL COMMENT 'Base Weee Tax Applied Amount',
  `base_weee_tax_applied_row_amnt` decimal(12,4) DEFAULT NULL COMMENT 'Base Weee Tax Applied Row Amnt',
  `weee_tax_applied_amount` decimal(12,4) DEFAULT NULL COMMENT 'Weee Tax Applied Amount',
  `weee_tax_applied_row_amount` decimal(12,4) DEFAULT NULL COMMENT 'Weee Tax Applied Row Amount',
  `weee_tax_applied` text COMMENT 'Weee Tax Applied',
  `weee_tax_disposition` decimal(12,4) DEFAULT NULL COMMENT 'Weee Tax Disposition',
  `weee_tax_row_disposition` decimal(12,4) DEFAULT NULL COMMENT 'Weee Tax Row Disposition',
  `base_weee_tax_disposition` decimal(12,4) DEFAULT NULL COMMENT 'Base Weee Tax Disposition',
  `base_weee_tax_row_disposition` decimal(12,4) DEFAULT NULL COMMENT 'Base Weee Tax Row Disposition',
  PRIMARY KEY (`item_id`),
  KEY `IDX_SALES_FLAT_ORDER_ITEM_ORDER_ID` (`order_id`),
  KEY `IDX_SALES_FLAT_ORDER_ITEM_STORE_ID` (`store_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Sales Flat Order Item' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `sales_flat_order_payment`
--

CREATE TABLE IF NOT EXISTS `sales_flat_order_payment` (
  `entity_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Entity Id',
  `parent_id` int(10) unsigned NOT NULL COMMENT 'Parent Id',
  `base_shipping_captured` decimal(12,4) DEFAULT NULL COMMENT 'Base Shipping Captured',
  `shipping_captured` decimal(12,4) DEFAULT NULL COMMENT 'Shipping Captured',
  `amount_refunded` decimal(12,4) DEFAULT NULL COMMENT 'Amount Refunded',
  `base_amount_paid` decimal(12,4) DEFAULT NULL COMMENT 'Base Amount Paid',
  `amount_canceled` decimal(12,4) DEFAULT NULL COMMENT 'Amount Canceled',
  `base_amount_authorized` decimal(12,4) DEFAULT NULL COMMENT 'Base Amount Authorized',
  `base_amount_paid_online` decimal(12,4) DEFAULT NULL COMMENT 'Base Amount Paid Online',
  `base_amount_refunded_online` decimal(12,4) DEFAULT NULL COMMENT 'Base Amount Refunded Online',
  `base_shipping_amount` decimal(12,4) DEFAULT NULL COMMENT 'Base Shipping Amount',
  `shipping_amount` decimal(12,4) DEFAULT NULL COMMENT 'Shipping Amount',
  `amount_paid` decimal(12,4) DEFAULT NULL COMMENT 'Amount Paid',
  `amount_authorized` decimal(12,4) DEFAULT NULL COMMENT 'Amount Authorized',
  `base_amount_ordered` decimal(12,4) DEFAULT NULL COMMENT 'Base Amount Ordered',
  `base_shipping_refunded` decimal(12,4) DEFAULT NULL COMMENT 'Base Shipping Refunded',
  `shipping_refunded` decimal(12,4) DEFAULT NULL COMMENT 'Shipping Refunded',
  `base_amount_refunded` decimal(12,4) DEFAULT NULL COMMENT 'Base Amount Refunded',
  `amount_ordered` decimal(12,4) DEFAULT NULL COMMENT 'Amount Ordered',
  `base_amount_canceled` decimal(12,4) DEFAULT NULL COMMENT 'Base Amount Canceled',
  `quote_payment_id` int(11) DEFAULT NULL COMMENT 'Quote Payment Id',
  `additional_data` text COMMENT 'Additional Data',
  `cc_exp_month` varchar(255) DEFAULT NULL COMMENT 'Cc Exp Month',
  `cc_ss_start_year` varchar(255) DEFAULT NULL COMMENT 'Cc Ss Start Year',
  `echeck_bank_name` varchar(255) DEFAULT NULL COMMENT 'Echeck Bank Name',
  `method` varchar(255) DEFAULT NULL COMMENT 'Method',
  `cc_debug_request_body` varchar(255) DEFAULT NULL COMMENT 'Cc Debug Request Body',
  `cc_secure_verify` varchar(255) DEFAULT NULL COMMENT 'Cc Secure Verify',
  `protection_eligibility` varchar(255) DEFAULT NULL COMMENT 'Protection Eligibility',
  `cc_approval` varchar(255) DEFAULT NULL COMMENT 'Cc Approval',
  `cc_last4` varchar(255) DEFAULT NULL COMMENT 'Cc Last4',
  `cc_status_description` varchar(255) DEFAULT NULL COMMENT 'Cc Status Description',
  `echeck_type` varchar(255) DEFAULT NULL COMMENT 'Echeck Type',
  `cc_debug_response_serialized` varchar(255) DEFAULT NULL COMMENT 'Cc Debug Response Serialized',
  `cc_ss_start_month` varchar(255) DEFAULT NULL COMMENT 'Cc Ss Start Month',
  `echeck_account_type` varchar(255) DEFAULT NULL COMMENT 'Echeck Account Type',
  `last_trans_id` varchar(255) DEFAULT NULL COMMENT 'Last Trans Id',
  `cc_cid_status` varchar(255) DEFAULT NULL COMMENT 'Cc Cid Status',
  `cc_owner` varchar(255) DEFAULT NULL COMMENT 'Cc Owner',
  `cc_type` varchar(255) DEFAULT NULL COMMENT 'Cc Type',
  `po_number` varchar(255) DEFAULT NULL COMMENT 'Po Number',
  `cc_exp_year` varchar(255) DEFAULT NULL COMMENT 'Cc Exp Year',
  `cc_status` varchar(255) DEFAULT NULL COMMENT 'Cc Status',
  `echeck_routing_number` varchar(255) DEFAULT NULL COMMENT 'Echeck Routing Number',
  `account_status` varchar(255) DEFAULT NULL COMMENT 'Account Status',
  `anet_trans_method` varchar(255) DEFAULT NULL COMMENT 'Anet Trans Method',
  `cc_debug_response_body` varchar(255) DEFAULT NULL COMMENT 'Cc Debug Response Body',
  `cc_ss_issue` varchar(255) DEFAULT NULL COMMENT 'Cc Ss Issue',
  `echeck_account_name` varchar(255) DEFAULT NULL COMMENT 'Echeck Account Name',
  `cc_avs_status` varchar(255) DEFAULT NULL COMMENT 'Cc Avs Status',
  `cc_number_enc` varchar(255) DEFAULT NULL COMMENT 'Cc Number Enc',
  `cc_trans_id` varchar(255) DEFAULT NULL COMMENT 'Cc Trans Id',
  `paybox_request_number` varchar(255) DEFAULT NULL COMMENT 'Paybox Request Number',
  `address_status` varchar(255) DEFAULT NULL COMMENT 'Address Status',
  `additional_information` text COMMENT 'Additional Information',
  PRIMARY KEY (`entity_id`),
  KEY `IDX_SALES_FLAT_ORDER_PAYMENT_PARENT_ID` (`parent_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Sales Flat Order Payment' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `sales_flat_order_status_history`
--

CREATE TABLE IF NOT EXISTS `sales_flat_order_status_history` (
  `entity_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Entity Id',
  `parent_id` int(10) unsigned NOT NULL COMMENT 'Parent Id',
  `is_customer_notified` int(11) DEFAULT NULL COMMENT 'Is Customer Notified',
  `is_visible_on_front` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Is Visible On Front',
  `comment` text COMMENT 'Comment',
  `status` varchar(32) DEFAULT NULL COMMENT 'Status',
  `created_at` timestamp NULL DEFAULT NULL COMMENT 'Created At',
  `entity_name` varchar(32) DEFAULT NULL COMMENT 'Shows what entity history is bind to.',
  PRIMARY KEY (`entity_id`),
  KEY `IDX_SALES_FLAT_ORDER_STATUS_HISTORY_PARENT_ID` (`parent_id`),
  KEY `IDX_SALES_FLAT_ORDER_STATUS_HISTORY_CREATED_AT` (`created_at`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Sales Flat Order Status History' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `sales_flat_quote`
--

CREATE TABLE IF NOT EXISTS `sales_flat_quote` (
  `entity_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Entity Id',
  `store_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Store Id',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Created At',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'Updated At',
  `converted_at` timestamp NULL DEFAULT NULL COMMENT 'Converted At',
  `is_active` smallint(5) unsigned DEFAULT '1' COMMENT 'Is Active',
  `is_virtual` smallint(5) unsigned DEFAULT '0' COMMENT 'Is Virtual',
  `is_multi_shipping` smallint(5) unsigned DEFAULT '0' COMMENT 'Is Multi Shipping',
  `items_count` int(10) unsigned DEFAULT '0' COMMENT 'Items Count',
  `items_qty` decimal(12,4) DEFAULT '0.0000' COMMENT 'Items Qty',
  `orig_order_id` int(10) unsigned DEFAULT '0' COMMENT 'Orig Order Id',
  `store_to_base_rate` decimal(12,4) DEFAULT '0.0000' COMMENT 'Store To Base Rate',
  `store_to_quote_rate` decimal(12,4) DEFAULT '0.0000' COMMENT 'Store To Quote Rate',
  `base_currency_code` varchar(255) DEFAULT NULL COMMENT 'Base Currency Code',
  `store_currency_code` varchar(255) DEFAULT NULL COMMENT 'Store Currency Code',
  `quote_currency_code` varchar(255) DEFAULT NULL COMMENT 'Quote Currency Code',
  `grand_total` decimal(12,4) DEFAULT '0.0000' COMMENT 'Grand Total',
  `base_grand_total` decimal(12,4) DEFAULT '0.0000' COMMENT 'Base Grand Total',
  `checkout_method` varchar(255) DEFAULT NULL COMMENT 'Checkout Method',
  `customer_id` int(10) unsigned DEFAULT '0' COMMENT 'Customer Id',
  `customer_tax_class_id` int(10) unsigned DEFAULT '0' COMMENT 'Customer Tax Class Id',
  `customer_group_id` int(10) unsigned DEFAULT '0' COMMENT 'Customer Group Id',
  `customer_email` varchar(255) DEFAULT NULL COMMENT 'Customer Email',
  `customer_prefix` varchar(40) DEFAULT NULL COMMENT 'Customer Prefix',
  `customer_firstname` varchar(255) DEFAULT NULL COMMENT 'Customer Firstname',
  `customer_middlename` varchar(40) DEFAULT NULL COMMENT 'Customer Middlename',
  `customer_lastname` varchar(255) DEFAULT NULL COMMENT 'Customer Lastname',
  `customer_suffix` varchar(40) DEFAULT NULL COMMENT 'Customer Suffix',
  `customer_dob` datetime DEFAULT NULL COMMENT 'Customer Dob',
  `customer_note` varchar(255) DEFAULT NULL COMMENT 'Customer Note',
  `customer_note_notify` smallint(5) unsigned DEFAULT '1' COMMENT 'Customer Note Notify',
  `customer_is_guest` smallint(5) unsigned DEFAULT '0' COMMENT 'Customer Is Guest',
  `remote_ip` varchar(32) DEFAULT NULL COMMENT 'Remote Ip',
  `applied_rule_ids` varchar(255) DEFAULT NULL COMMENT 'Applied Rule Ids',
  `reserved_order_id` varchar(64) DEFAULT NULL COMMENT 'Reserved Order Id',
  `password_hash` varchar(255) DEFAULT NULL COMMENT 'Password Hash',
  `coupon_code` varchar(255) DEFAULT NULL COMMENT 'Coupon Code',
  `global_currency_code` varchar(255) DEFAULT NULL COMMENT 'Global Currency Code',
  `base_to_global_rate` decimal(12,4) DEFAULT NULL COMMENT 'Base To Global Rate',
  `base_to_quote_rate` decimal(12,4) DEFAULT NULL COMMENT 'Base To Quote Rate',
  `customer_taxvat` varchar(255) DEFAULT NULL COMMENT 'Customer Taxvat',
  `customer_gender` varchar(255) DEFAULT NULL COMMENT 'Customer Gender',
  `subtotal` decimal(12,4) DEFAULT NULL COMMENT 'Subtotal',
  `base_subtotal` decimal(12,4) DEFAULT NULL COMMENT 'Base Subtotal',
  `subtotal_with_discount` decimal(12,4) DEFAULT NULL COMMENT 'Subtotal With Discount',
  `base_subtotal_with_discount` decimal(12,4) DEFAULT NULL COMMENT 'Base Subtotal With Discount',
  `is_changed` int(10) unsigned DEFAULT NULL COMMENT 'Is Changed',
  `trigger_recollect` smallint(6) NOT NULL DEFAULT '0' COMMENT 'Trigger Recollect',
  `ext_shipping_info` text COMMENT 'Ext Shipping Info',
  `gift_message_id` int(11) DEFAULT NULL COMMENT 'Gift Message Id',
  `is_persistent` smallint(5) unsigned DEFAULT '0' COMMENT 'Is Quote Persistent',
  PRIMARY KEY (`entity_id`),
  KEY `IDX_SALES_FLAT_QUOTE_CUSTOMER_ID_STORE_ID_IS_ACTIVE` (`customer_id`,`store_id`,`is_active`),
  KEY `IDX_SALES_FLAT_QUOTE_STORE_ID` (`store_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='Sales Flat Quote' AUTO_INCREMENT=6 ;

--
-- Gegevens worden uitgevoerd voor tabel `sales_flat_quote`
--

INSERT INTO `sales_flat_quote` (`entity_id`, `store_id`, `created_at`, `updated_at`, `converted_at`, `is_active`, `is_virtual`, `is_multi_shipping`, `items_count`, `items_qty`, `orig_order_id`, `store_to_base_rate`, `store_to_quote_rate`, `base_currency_code`, `store_currency_code`, `quote_currency_code`, `grand_total`, `base_grand_total`, `checkout_method`, `customer_id`, `customer_tax_class_id`, `customer_group_id`, `customer_email`, `customer_prefix`, `customer_firstname`, `customer_middlename`, `customer_lastname`, `customer_suffix`, `customer_dob`, `customer_note`, `customer_note_notify`, `customer_is_guest`, `remote_ip`, `applied_rule_ids`, `reserved_order_id`, `password_hash`, `coupon_code`, `global_currency_code`, `base_to_global_rate`, `base_to_quote_rate`, `customer_taxvat`, `customer_gender`, `subtotal`, `base_subtotal`, `subtotal_with_discount`, `base_subtotal_with_discount`, `is_changed`, `trigger_recollect`, `ext_shipping_info`, `gift_message_id`, `is_persistent`) VALUES
(1, 1, '2012-02-28 11:19:24', '2012-03-04 21:52:29', NULL, 1, 0, 0, 1, '1.0000', 0, '1.0000', '1.0000', 'EUR', 'EUR', 'EUR', '147.9000', '147.9000', NULL, 1, 3, 1, 'stan_mel@hotmail.com', NULL, 'Stan', NULL, 'Mel', NULL, NULL, NULL, 1, 0, '127.0.0.1', NULL, NULL, NULL, NULL, 'EUR', '1.0000', '1.0000', NULL, '1', '147.9000', '147.9000', '147.9000', '147.9000', 1, 0, NULL, NULL, 0),
(2, 1, '2012-03-03 14:55:23', '2012-03-03 15:18:07', NULL, 1, 0, 0, 0, '0.0000', 0, '1.0000', '1.0000', 'EUR', 'EUR', 'EUR', '0.0000', '0.0000', NULL, NULL, 3, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, '127.0.0.1', NULL, NULL, NULL, NULL, 'EUR', '1.0000', '1.0000', NULL, NULL, '0.0000', '0.0000', '0.0000', '0.0000', 1, 0, NULL, NULL, 0),
(4, 1, '2012-03-05 08:48:29', '2012-03-05 08:49:51', NULL, 1, 0, 0, 1, '1.0000', 0, '1.0000', '1.0000', 'EUR', 'EUR', 'EUR', '147.9000', '147.9000', NULL, NULL, 3, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, '127.0.0.1', NULL, NULL, NULL, NULL, 'EUR', '1.0000', '1.0000', NULL, NULL, '147.9000', '147.9000', '147.9000', '147.9000', 1, 0, NULL, NULL, 0),
(5, 1, '2012-03-05 09:03:15', '2012-03-05 09:38:59', NULL, 1, 0, 0, 0, '0.0000', 0, '1.0000', '1.0000', 'EUR', 'EUR', 'EUR', '0.0000', '0.0000', NULL, NULL, 3, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, '127.0.0.1', NULL, NULL, NULL, NULL, 'EUR', '1.0000', '1.0000', NULL, NULL, '0.0000', '0.0000', '0.0000', '0.0000', 1, 0, NULL, NULL, 0);

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `sales_flat_quote_address`
--

CREATE TABLE IF NOT EXISTS `sales_flat_quote_address` (
  `address_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Address Id',
  `quote_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Quote Id',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Created At',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'Updated At',
  `customer_id` int(10) unsigned DEFAULT NULL COMMENT 'Customer Id',
  `save_in_address_book` smallint(6) DEFAULT '0' COMMENT 'Save In Address Book',
  `customer_address_id` int(10) unsigned DEFAULT NULL COMMENT 'Customer Address Id',
  `address_type` varchar(255) DEFAULT NULL COMMENT 'Address Type',
  `email` varchar(255) DEFAULT NULL COMMENT 'Email',
  `prefix` varchar(40) DEFAULT NULL COMMENT 'Prefix',
  `firstname` varchar(255) DEFAULT NULL COMMENT 'Firstname',
  `middlename` varchar(40) DEFAULT NULL COMMENT 'Middlename',
  `lastname` varchar(255) DEFAULT NULL COMMENT 'Lastname',
  `suffix` varchar(40) DEFAULT NULL COMMENT 'Suffix',
  `company` varchar(255) DEFAULT NULL COMMENT 'Company',
  `street` varchar(255) DEFAULT NULL COMMENT 'Street',
  `city` varchar(255) DEFAULT NULL COMMENT 'City',
  `region` varchar(255) DEFAULT NULL COMMENT 'Region',
  `region_id` int(10) unsigned DEFAULT NULL COMMENT 'Region Id',
  `postcode` varchar(255) DEFAULT NULL COMMENT 'Postcode',
  `country_id` varchar(255) DEFAULT NULL COMMENT 'Country Id',
  `telephone` varchar(255) DEFAULT NULL COMMENT 'Telephone',
  `fax` varchar(255) DEFAULT NULL COMMENT 'Fax',
  `same_as_billing` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Same As Billing',
  `free_shipping` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Free Shipping',
  `collect_shipping_rates` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Collect Shipping Rates',
  `shipping_method` varchar(255) DEFAULT NULL COMMENT 'Shipping Method',
  `shipping_description` varchar(255) DEFAULT NULL COMMENT 'Shipping Description',
  `weight` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Weight',
  `subtotal` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Subtotal',
  `base_subtotal` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Base Subtotal',
  `subtotal_with_discount` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Subtotal With Discount',
  `base_subtotal_with_discount` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Base Subtotal With Discount',
  `tax_amount` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Tax Amount',
  `base_tax_amount` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Base Tax Amount',
  `shipping_amount` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Shipping Amount',
  `base_shipping_amount` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Base Shipping Amount',
  `shipping_tax_amount` decimal(12,4) DEFAULT NULL COMMENT 'Shipping Tax Amount',
  `base_shipping_tax_amount` decimal(12,4) DEFAULT NULL COMMENT 'Base Shipping Tax Amount',
  `discount_amount` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Discount Amount',
  `base_discount_amount` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Base Discount Amount',
  `grand_total` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Grand Total',
  `base_grand_total` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Base Grand Total',
  `customer_notes` text COMMENT 'Customer Notes',
  `applied_taxes` text COMMENT 'Applied Taxes',
  `discount_description` varchar(255) DEFAULT NULL COMMENT 'Discount Description',
  `shipping_discount_amount` decimal(12,4) DEFAULT NULL COMMENT 'Shipping Discount Amount',
  `base_shipping_discount_amount` decimal(12,4) DEFAULT NULL COMMENT 'Base Shipping Discount Amount',
  `subtotal_incl_tax` decimal(12,4) DEFAULT NULL COMMENT 'Subtotal Incl Tax',
  `base_subtotal_total_incl_tax` decimal(12,4) DEFAULT NULL COMMENT 'Base Subtotal Total Incl Tax',
  `hidden_tax_amount` decimal(12,4) DEFAULT NULL COMMENT 'Hidden Tax Amount',
  `base_hidden_tax_amount` decimal(12,4) DEFAULT NULL COMMENT 'Base Hidden Tax Amount',
  `shipping_hidden_tax_amount` decimal(12,4) DEFAULT NULL COMMENT 'Shipping Hidden Tax Amount',
  `base_shipping_hidden_tax_amnt` decimal(12,4) DEFAULT NULL COMMENT 'Base Shipping Hidden Tax Amount',
  `shipping_incl_tax` decimal(12,4) DEFAULT NULL COMMENT 'Shipping Incl Tax',
  `base_shipping_incl_tax` decimal(12,4) DEFAULT NULL COMMENT 'Base Shipping Incl Tax',
  `gift_message_id` int(11) DEFAULT NULL COMMENT 'Gift Message Id',
  PRIMARY KEY (`address_id`),
  KEY `IDX_SALES_FLAT_QUOTE_ADDRESS_QUOTE_ID` (`quote_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='Sales Flat Quote Address' AUTO_INCREMENT=19 ;

--
-- Gegevens worden uitgevoerd voor tabel `sales_flat_quote_address`
--

INSERT INTO `sales_flat_quote_address` (`address_id`, `quote_id`, `created_at`, `updated_at`, `customer_id`, `save_in_address_book`, `customer_address_id`, `address_type`, `email`, `prefix`, `firstname`, `middlename`, `lastname`, `suffix`, `company`, `street`, `city`, `region`, `region_id`, `postcode`, `country_id`, `telephone`, `fax`, `same_as_billing`, `free_shipping`, `collect_shipping_rates`, `shipping_method`, `shipping_description`, `weight`, `subtotal`, `base_subtotal`, `subtotal_with_discount`, `base_subtotal_with_discount`, `tax_amount`, `base_tax_amount`, `shipping_amount`, `base_shipping_amount`, `shipping_tax_amount`, `base_shipping_tax_amount`, `discount_amount`, `base_discount_amount`, `grand_total`, `base_grand_total`, `customer_notes`, `applied_taxes`, `discount_description`, `shipping_discount_amount`, `base_shipping_discount_amount`, `subtotal_incl_tax`, `base_subtotal_total_incl_tax`, `hidden_tax_amount`, `base_hidden_tax_amount`, `shipping_hidden_tax_amount`, `base_shipping_hidden_tax_amnt`, `shipping_incl_tax`, `base_shipping_incl_tax`, `gift_message_id`) VALUES
(1, 1, '2012-02-28 11:19:24', '2012-03-04 21:52:29', 1, 0, NULL, 'billing', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, NULL, NULL, '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', NULL, 'a:0:{}', NULL, NULL, NULL, '0.0000', NULL, NULL, NULL, NULL, NULL, '0.0000', '0.0000', NULL),
(2, 1, '2012-02-28 11:19:24', '2012-03-04 21:52:29', 1, 0, NULL, 'shipping', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, 0, NULL, NULL, '2.0000', '147.9000', '147.9000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '147.9000', '147.9000', NULL, 'a:0:{}', NULL, '0.0000', '0.0000', '147.9000', NULL, '0.0000', '0.0000', '0.0000', NULL, '0.0000', '0.0000', NULL),
(5, 2, '2012-03-03 14:55:25', '2012-03-03 15:18:07', NULL, 0, NULL, 'billing', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, NULL, NULL, '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', NULL, 'a:0:{}', NULL, NULL, NULL, '0.0000', NULL, NULL, NULL, NULL, NULL, '0.0000', '0.0000', NULL),
(6, 2, '2012-03-03 14:55:25', '2012-03-03 15:18:07', NULL, 0, NULL, 'shipping', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, 1, NULL, NULL, '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', NULL, 'a:0:{}', NULL, '0.0000', '0.0000', '0.0000', NULL, '0.0000', '0.0000', '0.0000', NULL, '0.0000', '0.0000', NULL),
(13, 4, '2012-03-05 08:48:31', '2012-03-05 08:49:51', NULL, 0, NULL, 'billing', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, NULL, NULL, '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', NULL, 'a:0:{}', NULL, NULL, NULL, '0.0000', NULL, NULL, NULL, NULL, NULL, '0.0000', '0.0000', NULL),
(14, 4, '2012-03-05 08:48:31', '2012-03-05 08:49:51', NULL, 0, NULL, 'shipping', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, 0, NULL, NULL, '2.0000', '147.9000', '147.9000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '147.9000', '147.9000', NULL, 'a:0:{}', NULL, '0.0000', '0.0000', '147.9000', NULL, '0.0000', '0.0000', '0.0000', NULL, '0.0000', '0.0000', NULL),
(17, 5, '2012-03-05 09:03:17', '2012-03-05 09:38:59', NULL, 0, NULL, 'billing', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, NULL, NULL, '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', NULL, 'a:0:{}', NULL, NULL, NULL, '0.0000', NULL, NULL, NULL, NULL, NULL, '0.0000', '0.0000', NULL),
(18, 5, '2012-03-05 09:03:17', '2012-03-05 09:38:59', NULL, 0, NULL, 'shipping', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, 1, NULL, NULL, '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', NULL, 'a:0:{}', NULL, '0.0000', '0.0000', '0.0000', NULL, '0.0000', '0.0000', '0.0000', NULL, '0.0000', '0.0000', NULL);

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `sales_flat_quote_address_item`
--

CREATE TABLE IF NOT EXISTS `sales_flat_quote_address_item` (
  `address_item_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Address Item Id',
  `parent_item_id` int(10) unsigned DEFAULT NULL COMMENT 'Parent Item Id',
  `quote_address_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Quote Address Id',
  `quote_item_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Quote Item Id',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Created At',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'Updated At',
  `applied_rule_ids` text COMMENT 'Applied Rule Ids',
  `additional_data` text COMMENT 'Additional Data',
  `weight` decimal(12,4) DEFAULT '0.0000' COMMENT 'Weight',
  `qty` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Qty',
  `discount_amount` decimal(12,4) DEFAULT '0.0000' COMMENT 'Discount Amount',
  `tax_amount` decimal(12,4) DEFAULT '0.0000' COMMENT 'Tax Amount',
  `row_total` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Row Total',
  `base_row_total` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Base Row Total',
  `row_total_with_discount` decimal(12,4) DEFAULT '0.0000' COMMENT 'Row Total With Discount',
  `base_discount_amount` decimal(12,4) DEFAULT '0.0000' COMMENT 'Base Discount Amount',
  `base_tax_amount` decimal(12,4) DEFAULT '0.0000' COMMENT 'Base Tax Amount',
  `row_weight` decimal(12,4) DEFAULT '0.0000' COMMENT 'Row Weight',
  `product_id` int(10) unsigned DEFAULT NULL COMMENT 'Product Id',
  `super_product_id` int(10) unsigned DEFAULT NULL COMMENT 'Super Product Id',
  `parent_product_id` int(10) unsigned DEFAULT NULL COMMENT 'Parent Product Id',
  `sku` varchar(255) DEFAULT NULL COMMENT 'Sku',
  `image` varchar(255) DEFAULT NULL COMMENT 'Image',
  `name` varchar(255) DEFAULT NULL COMMENT 'Name',
  `description` text COMMENT 'Description',
  `free_shipping` int(10) unsigned DEFAULT NULL COMMENT 'Free Shipping',
  `is_qty_decimal` int(10) unsigned DEFAULT NULL COMMENT 'Is Qty Decimal',
  `price` decimal(12,4) DEFAULT NULL COMMENT 'Price',
  `discount_percent` decimal(12,4) DEFAULT NULL COMMENT 'Discount Percent',
  `no_discount` int(10) unsigned DEFAULT NULL COMMENT 'No Discount',
  `tax_percent` decimal(12,4) DEFAULT NULL COMMENT 'Tax Percent',
  `base_price` decimal(12,4) DEFAULT NULL COMMENT 'Base Price',
  `base_cost` decimal(12,4) DEFAULT NULL COMMENT 'Base Cost',
  `price_incl_tax` decimal(12,4) DEFAULT NULL COMMENT 'Price Incl Tax',
  `base_price_incl_tax` decimal(12,4) DEFAULT NULL COMMENT 'Base Price Incl Tax',
  `row_total_incl_tax` decimal(12,4) DEFAULT NULL COMMENT 'Row Total Incl Tax',
  `base_row_total_incl_tax` decimal(12,4) DEFAULT NULL COMMENT 'Base Row Total Incl Tax',
  `hidden_tax_amount` decimal(12,4) DEFAULT NULL COMMENT 'Hidden Tax Amount',
  `base_hidden_tax_amount` decimal(12,4) DEFAULT NULL COMMENT 'Base Hidden Tax Amount',
  `gift_message_id` int(11) DEFAULT NULL COMMENT 'Gift Message Id',
  PRIMARY KEY (`address_item_id`),
  KEY `IDX_SALES_FLAT_QUOTE_ADDRESS_ITEM_QUOTE_ADDRESS_ID` (`quote_address_id`),
  KEY `IDX_SALES_FLAT_QUOTE_ADDRESS_ITEM_PARENT_ITEM_ID` (`parent_item_id`),
  KEY `IDX_SALES_FLAT_QUOTE_ADDRESS_ITEM_QUOTE_ITEM_ID` (`quote_item_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Sales Flat Quote Address Item' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `sales_flat_quote_item`
--

CREATE TABLE IF NOT EXISTS `sales_flat_quote_item` (
  `item_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Item Id',
  `quote_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Quote Id',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Created At',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'Updated At',
  `product_id` int(10) unsigned DEFAULT NULL COMMENT 'Product Id',
  `store_id` smallint(5) unsigned DEFAULT NULL COMMENT 'Store Id',
  `parent_item_id` int(10) unsigned DEFAULT NULL COMMENT 'Parent Item Id',
  `is_virtual` smallint(5) unsigned DEFAULT NULL COMMENT 'Is Virtual',
  `sku` varchar(255) DEFAULT NULL COMMENT 'Sku',
  `name` varchar(255) DEFAULT NULL COMMENT 'Name',
  `description` text COMMENT 'Description',
  `applied_rule_ids` text COMMENT 'Applied Rule Ids',
  `additional_data` text COMMENT 'Additional Data',
  `free_shipping` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Free Shipping',
  `is_qty_decimal` smallint(5) unsigned DEFAULT NULL COMMENT 'Is Qty Decimal',
  `no_discount` smallint(5) unsigned DEFAULT '0' COMMENT 'No Discount',
  `weight` decimal(12,4) DEFAULT '0.0000' COMMENT 'Weight',
  `qty` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Qty',
  `price` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Price',
  `base_price` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Base Price',
  `custom_price` decimal(12,4) DEFAULT NULL COMMENT 'Custom Price',
  `discount_percent` decimal(12,4) DEFAULT '0.0000' COMMENT 'Discount Percent',
  `discount_amount` decimal(12,4) DEFAULT '0.0000' COMMENT 'Discount Amount',
  `base_discount_amount` decimal(12,4) DEFAULT '0.0000' COMMENT 'Base Discount Amount',
  `tax_percent` decimal(12,4) DEFAULT '0.0000' COMMENT 'Tax Percent',
  `tax_amount` decimal(12,4) DEFAULT '0.0000' COMMENT 'Tax Amount',
  `base_tax_amount` decimal(12,4) DEFAULT '0.0000' COMMENT 'Base Tax Amount',
  `row_total` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Row Total',
  `base_row_total` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Base Row Total',
  `row_total_with_discount` decimal(12,4) DEFAULT '0.0000' COMMENT 'Row Total With Discount',
  `row_weight` decimal(12,4) DEFAULT '0.0000' COMMENT 'Row Weight',
  `product_type` varchar(255) DEFAULT NULL COMMENT 'Product Type',
  `base_tax_before_discount` decimal(12,4) DEFAULT NULL COMMENT 'Base Tax Before Discount',
  `tax_before_discount` decimal(12,4) DEFAULT NULL COMMENT 'Tax Before Discount',
  `original_custom_price` decimal(12,4) DEFAULT NULL COMMENT 'Original Custom Price',
  `redirect_url` varchar(255) DEFAULT NULL COMMENT 'Redirect Url',
  `base_cost` decimal(12,4) DEFAULT NULL COMMENT 'Base Cost',
  `price_incl_tax` decimal(12,4) DEFAULT NULL COMMENT 'Price Incl Tax',
  `base_price_incl_tax` decimal(12,4) DEFAULT NULL COMMENT 'Base Price Incl Tax',
  `row_total_incl_tax` decimal(12,4) DEFAULT NULL COMMENT 'Row Total Incl Tax',
  `base_row_total_incl_tax` decimal(12,4) DEFAULT NULL COMMENT 'Base Row Total Incl Tax',
  `hidden_tax_amount` decimal(12,4) DEFAULT NULL COMMENT 'Hidden Tax Amount',
  `base_hidden_tax_amount` decimal(12,4) DEFAULT NULL COMMENT 'Base Hidden Tax Amount',
  `gift_message_id` int(11) DEFAULT NULL COMMENT 'Gift Message Id',
  `weee_tax_disposition` decimal(12,4) DEFAULT NULL COMMENT 'Weee Tax Disposition',
  `weee_tax_row_disposition` decimal(12,4) DEFAULT NULL COMMENT 'Weee Tax Row Disposition',
  `base_weee_tax_disposition` decimal(12,4) DEFAULT NULL COMMENT 'Base Weee Tax Disposition',
  `base_weee_tax_row_disposition` decimal(12,4) DEFAULT NULL COMMENT 'Base Weee Tax Row Disposition',
  `weee_tax_applied` text COMMENT 'Weee Tax Applied',
  `weee_tax_applied_amount` decimal(12,4) DEFAULT NULL COMMENT 'Weee Tax Applied Amount',
  `weee_tax_applied_row_amount` decimal(12,4) DEFAULT NULL COMMENT 'Weee Tax Applied Row Amount',
  `base_weee_tax_applied_amount` decimal(12,4) DEFAULT NULL COMMENT 'Base Weee Tax Applied Amount',
  `base_weee_tax_applied_row_amnt` decimal(12,4) DEFAULT NULL COMMENT 'Base Weee Tax Applied Row Amnt',
  PRIMARY KEY (`item_id`),
  KEY `IDX_SALES_FLAT_QUOTE_ITEM_PARENT_ITEM_ID` (`parent_item_id`),
  KEY `IDX_SALES_FLAT_QUOTE_ITEM_PRODUCT_ID` (`product_id`),
  KEY `IDX_SALES_FLAT_QUOTE_ITEM_QUOTE_ID` (`quote_id`),
  KEY `IDX_SALES_FLAT_QUOTE_ITEM_STORE_ID` (`store_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='Sales Flat Quote Item' AUTO_INCREMENT=9 ;

--
-- Gegevens worden uitgevoerd voor tabel `sales_flat_quote_item`
--

INSERT INTO `sales_flat_quote_item` (`item_id`, `quote_id`, `created_at`, `updated_at`, `product_id`, `store_id`, `parent_item_id`, `is_virtual`, `sku`, `name`, `description`, `applied_rule_ids`, `additional_data`, `free_shipping`, `is_qty_decimal`, `no_discount`, `weight`, `qty`, `price`, `base_price`, `custom_price`, `discount_percent`, `discount_amount`, `base_discount_amount`, `tax_percent`, `tax_amount`, `base_tax_amount`, `row_total`, `base_row_total`, `row_total_with_discount`, `row_weight`, `product_type`, `base_tax_before_discount`, `tax_before_discount`, `original_custom_price`, `redirect_url`, `base_cost`, `price_incl_tax`, `base_price_incl_tax`, `row_total_incl_tax`, `base_row_total_incl_tax`, `hidden_tax_amount`, `base_hidden_tax_amount`, `gift_message_id`, `weee_tax_disposition`, `weee_tax_row_disposition`, `base_weee_tax_disposition`, `base_weee_tax_row_disposition`, `weee_tax_applied`, `weee_tax_applied_amount`, `weee_tax_applied_row_amount`, `base_weee_tax_applied_amount`, `base_weee_tax_applied_row_amnt`) VALUES
(6, 1, '2012-03-04 21:51:02', '2012-03-04 21:52:29', 2, 1, NULL, 0, 'CLRS', 'Cooler Master Silent Pro', NULL, NULL, NULL, 0, 0, 0, '2.0000', '1.0000', '147.9000', '147.9000', NULL, '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '147.9000', '147.9000', '0.0000', '2.0000', 'simple', NULL, NULL, NULL, NULL, NULL, '147.9000', '147.9000', '147.9000', '147.9000', NULL, NULL, NULL, '0.0000', '0.0000', '0.0000', '0.0000', 'a:0:{}', '0.0000', '0.0000', '0.0000', NULL),
(7, 4, '2012-03-05 08:48:29', '2012-03-05 08:48:29', 2, 1, NULL, 0, 'CLRS', 'Cooler Master Silent Pro', NULL, NULL, NULL, 0, 0, 0, '2.0000', '1.0000', '147.9000', '147.9000', NULL, '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '147.9000', '147.9000', '0.0000', '2.0000', 'simple', NULL, NULL, NULL, NULL, NULL, '147.9000', '147.9000', '147.9000', '147.9000', NULL, NULL, NULL, '0.0000', '0.0000', '0.0000', '0.0000', 'a:0:{}', '0.0000', '0.0000', '0.0000', NULL);

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `sales_flat_quote_item_option`
--

CREATE TABLE IF NOT EXISTS `sales_flat_quote_item_option` (
  `option_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Option Id',
  `item_id` int(10) unsigned NOT NULL COMMENT 'Item Id',
  `product_id` int(10) unsigned NOT NULL COMMENT 'Product Id',
  `code` varchar(255) NOT NULL COMMENT 'Code',
  `value` text COMMENT 'Value',
  PRIMARY KEY (`option_id`),
  KEY `IDX_SALES_FLAT_QUOTE_ITEM_OPTION_ITEM_ID` (`item_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='Sales Flat Quote Item Option' AUTO_INCREMENT=9 ;

--
-- Gegevens worden uitgevoerd voor tabel `sales_flat_quote_item_option`
--

INSERT INTO `sales_flat_quote_item_option` (`option_id`, `item_id`, `product_id`, `code`, `value`) VALUES
(6, 6, 2, 'info_buyRequest', 'a:3:{s:4:"uenc";s:48:"aHR0cDovLzEyNy4wLjAuMS9tYWdlbnRvL2luZGV4LnBocC8,";s:7:"product";s:1:"2";s:3:"qty";i:1;}'),
(7, 7, 2, 'info_buyRequest', 'a:3:{s:4:"uenc";s:48:"aHR0cDovLzEyNy4wLjAuMS9tYWdlbnRvL2luZGV4LnBocC8,";s:7:"product";s:1:"2";s:3:"qty";i:1;}');

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `sales_flat_quote_payment`
--

CREATE TABLE IF NOT EXISTS `sales_flat_quote_payment` (
  `payment_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Payment Id',
  `quote_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Quote Id',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Created At',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'Updated At',
  `method` varchar(255) DEFAULT NULL COMMENT 'Method',
  `cc_type` varchar(255) DEFAULT NULL COMMENT 'Cc Type',
  `cc_number_enc` varchar(255) DEFAULT NULL COMMENT 'Cc Number Enc',
  `cc_last4` varchar(255) DEFAULT NULL COMMENT 'Cc Last4',
  `cc_cid_enc` varchar(255) DEFAULT NULL COMMENT 'Cc Cid Enc',
  `cc_owner` varchar(255) DEFAULT NULL COMMENT 'Cc Owner',
  `cc_exp_month` smallint(5) unsigned DEFAULT '0' COMMENT 'Cc Exp Month',
  `cc_exp_year` smallint(5) unsigned DEFAULT '0' COMMENT 'Cc Exp Year',
  `cc_ss_owner` varchar(255) DEFAULT NULL COMMENT 'Cc Ss Owner',
  `cc_ss_start_month` smallint(5) unsigned DEFAULT '0' COMMENT 'Cc Ss Start Month',
  `cc_ss_start_year` smallint(5) unsigned DEFAULT '0' COMMENT 'Cc Ss Start Year',
  `po_number` varchar(255) DEFAULT NULL COMMENT 'Po Number',
  `additional_data` text COMMENT 'Additional Data',
  `cc_ss_issue` varchar(255) DEFAULT NULL COMMENT 'Cc Ss Issue',
  `additional_information` text COMMENT 'Additional Information',
  `paypal_payer_id` varchar(255) DEFAULT NULL COMMENT 'Paypal Payer Id',
  `paypal_payer_status` varchar(255) DEFAULT NULL COMMENT 'Paypal Payer Status',
  `paypal_correlation_id` varchar(255) DEFAULT NULL COMMENT 'Paypal Correlation Id',
  PRIMARY KEY (`payment_id`),
  KEY `IDX_SALES_FLAT_QUOTE_PAYMENT_QUOTE_ID` (`quote_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='Sales Flat Quote Payment' AUTO_INCREMENT=2 ;

--
-- Gegevens worden uitgevoerd voor tabel `sales_flat_quote_payment`
--

INSERT INTO `sales_flat_quote_payment` (`payment_id`, `quote_id`, `created_at`, `updated_at`, `method`, `cc_type`, `cc_number_enc`, `cc_last4`, `cc_cid_enc`, `cc_owner`, `cc_exp_month`, `cc_exp_year`, `cc_ss_owner`, `cc_ss_start_month`, `cc_ss_start_year`, `po_number`, `additional_data`, `cc_ss_issue`, `additional_information`, `paypal_payer_id`, `paypal_payer_status`, `paypal_correlation_id`) VALUES
(1, 4, '2012-03-05 08:48:52', '2012-03-05 08:49:51', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `sales_flat_quote_shipping_rate`
--

CREATE TABLE IF NOT EXISTS `sales_flat_quote_shipping_rate` (
  `rate_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Rate Id',
  `address_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Address Id',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Created At',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'Updated At',
  `carrier` varchar(255) DEFAULT NULL COMMENT 'Carrier',
  `carrier_title` varchar(255) DEFAULT NULL COMMENT 'Carrier Title',
  `code` varchar(255) DEFAULT NULL COMMENT 'Code',
  `method` varchar(255) DEFAULT NULL COMMENT 'Method',
  `method_description` text COMMENT 'Method Description',
  `price` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Price',
  `error_message` text COMMENT 'Error Message',
  `method_title` text COMMENT 'Method Title',
  PRIMARY KEY (`rate_id`),
  KEY `IDX_SALES_FLAT_QUOTE_SHIPPING_RATE_ADDRESS_ID` (`address_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Sales Flat Quote Shipping Rate' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `sales_flat_shipment`
--

CREATE TABLE IF NOT EXISTS `sales_flat_shipment` (
  `entity_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Entity Id',
  `store_id` smallint(5) unsigned DEFAULT NULL COMMENT 'Store Id',
  `total_weight` decimal(12,4) DEFAULT NULL COMMENT 'Total Weight',
  `total_qty` decimal(12,4) DEFAULT NULL COMMENT 'Total Qty',
  `email_sent` smallint(5) unsigned DEFAULT NULL COMMENT 'Email Sent',
  `order_id` int(10) unsigned NOT NULL COMMENT 'Order Id',
  `customer_id` int(11) DEFAULT NULL COMMENT 'Customer Id',
  `shipping_address_id` int(11) DEFAULT NULL COMMENT 'Shipping Address Id',
  `billing_address_id` int(11) DEFAULT NULL COMMENT 'Billing Address Id',
  `shipment_status` int(11) DEFAULT NULL COMMENT 'Shipment Status',
  `increment_id` varchar(50) DEFAULT NULL COMMENT 'Increment Id',
  `created_at` timestamp NULL DEFAULT NULL COMMENT 'Created At',
  `updated_at` timestamp NULL DEFAULT NULL COMMENT 'Updated At',
  `packages` text COMMENT 'Packed Products in Packages',
  `shipping_label` mediumblob COMMENT 'Shipping Label Content',
  PRIMARY KEY (`entity_id`),
  UNIQUE KEY `UNQ_SALES_FLAT_SHIPMENT_INCREMENT_ID` (`increment_id`),
  KEY `IDX_SALES_FLAT_SHIPMENT_STORE_ID` (`store_id`),
  KEY `IDX_SALES_FLAT_SHIPMENT_TOTAL_QTY` (`total_qty`),
  KEY `IDX_SALES_FLAT_SHIPMENT_ORDER_ID` (`order_id`),
  KEY `IDX_SALES_FLAT_SHIPMENT_CREATED_AT` (`created_at`),
  KEY `IDX_SALES_FLAT_SHIPMENT_UPDATED_AT` (`updated_at`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Sales Flat Shipment' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `sales_flat_shipment_comment`
--

CREATE TABLE IF NOT EXISTS `sales_flat_shipment_comment` (
  `entity_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Entity Id',
  `parent_id` int(10) unsigned NOT NULL COMMENT 'Parent Id',
  `is_customer_notified` int(11) DEFAULT NULL COMMENT 'Is Customer Notified',
  `is_visible_on_front` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Is Visible On Front',
  `comment` text COMMENT 'Comment',
  `created_at` timestamp NULL DEFAULT NULL COMMENT 'Created At',
  PRIMARY KEY (`entity_id`),
  KEY `IDX_SALES_FLAT_SHIPMENT_COMMENT_CREATED_AT` (`created_at`),
  KEY `IDX_SALES_FLAT_SHIPMENT_COMMENT_PARENT_ID` (`parent_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Sales Flat Shipment Comment' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `sales_flat_shipment_grid`
--

CREATE TABLE IF NOT EXISTS `sales_flat_shipment_grid` (
  `entity_id` int(10) unsigned NOT NULL COMMENT 'Entity Id',
  `store_id` smallint(5) unsigned DEFAULT NULL COMMENT 'Store Id',
  `total_qty` decimal(12,4) DEFAULT NULL COMMENT 'Total Qty',
  `order_id` int(10) unsigned NOT NULL COMMENT 'Order Id',
  `shipment_status` int(11) DEFAULT NULL COMMENT 'Shipment Status',
  `increment_id` varchar(50) DEFAULT NULL COMMENT 'Increment Id',
  `order_increment_id` varchar(50) DEFAULT NULL COMMENT 'Order Increment Id',
  `created_at` timestamp NULL DEFAULT NULL COMMENT 'Created At',
  `order_created_at` timestamp NULL DEFAULT NULL COMMENT 'Order Created At',
  `shipping_name` varchar(255) DEFAULT NULL COMMENT 'Shipping Name',
  PRIMARY KEY (`entity_id`),
  UNIQUE KEY `UNQ_SALES_FLAT_SHIPMENT_GRID_INCREMENT_ID` (`increment_id`),
  KEY `IDX_SALES_FLAT_SHIPMENT_GRID_STORE_ID` (`store_id`),
  KEY `IDX_SALES_FLAT_SHIPMENT_GRID_TOTAL_QTY` (`total_qty`),
  KEY `IDX_SALES_FLAT_SHIPMENT_GRID_ORDER_ID` (`order_id`),
  KEY `IDX_SALES_FLAT_SHIPMENT_GRID_SHIPMENT_STATUS` (`shipment_status`),
  KEY `IDX_SALES_FLAT_SHIPMENT_GRID_ORDER_INCREMENT_ID` (`order_increment_id`),
  KEY `IDX_SALES_FLAT_SHIPMENT_GRID_CREATED_AT` (`created_at`),
  KEY `IDX_SALES_FLAT_SHIPMENT_GRID_ORDER_CREATED_AT` (`order_created_at`),
  KEY `IDX_SALES_FLAT_SHIPMENT_GRID_SHIPPING_NAME` (`shipping_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Sales Flat Shipment Grid';

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `sales_flat_shipment_item`
--

CREATE TABLE IF NOT EXISTS `sales_flat_shipment_item` (
  `entity_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Entity Id',
  `parent_id` int(10) unsigned NOT NULL COMMENT 'Parent Id',
  `row_total` decimal(12,4) DEFAULT NULL COMMENT 'Row Total',
  `price` decimal(12,4) DEFAULT NULL COMMENT 'Price',
  `weight` decimal(12,4) DEFAULT NULL COMMENT 'Weight',
  `qty` decimal(12,4) DEFAULT NULL COMMENT 'Qty',
  `product_id` int(11) DEFAULT NULL COMMENT 'Product Id',
  `order_item_id` int(11) DEFAULT NULL COMMENT 'Order Item Id',
  `additional_data` text COMMENT 'Additional Data',
  `description` text COMMENT 'Description',
  `name` varchar(255) DEFAULT NULL COMMENT 'Name',
  `sku` varchar(255) DEFAULT NULL COMMENT 'Sku',
  PRIMARY KEY (`entity_id`),
  KEY `IDX_SALES_FLAT_SHIPMENT_ITEM_PARENT_ID` (`parent_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Sales Flat Shipment Item' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `sales_flat_shipment_track`
--

CREATE TABLE IF NOT EXISTS `sales_flat_shipment_track` (
  `entity_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Entity Id',
  `parent_id` int(10) unsigned NOT NULL COMMENT 'Parent Id',
  `weight` decimal(12,4) DEFAULT NULL COMMENT 'Weight',
  `qty` decimal(12,4) DEFAULT NULL COMMENT 'Qty',
  `order_id` int(10) unsigned NOT NULL COMMENT 'Order Id',
  `track_number` text COMMENT 'Number',
  `description` text COMMENT 'Description',
  `title` varchar(255) DEFAULT NULL COMMENT 'Title',
  `carrier_code` varchar(32) DEFAULT NULL COMMENT 'Carrier Code',
  `created_at` timestamp NULL DEFAULT NULL COMMENT 'Created At',
  `updated_at` timestamp NULL DEFAULT NULL COMMENT 'Updated At',
  PRIMARY KEY (`entity_id`),
  KEY `IDX_SALES_FLAT_SHIPMENT_TRACK_PARENT_ID` (`parent_id`),
  KEY `IDX_SALES_FLAT_SHIPMENT_TRACK_ORDER_ID` (`order_id`),
  KEY `IDX_SALES_FLAT_SHIPMENT_TRACK_CREATED_AT` (`created_at`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Sales Flat Shipment Track' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `sales_invoiced_aggregated`
--

CREATE TABLE IF NOT EXISTS `sales_invoiced_aggregated` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Id',
  `period` date DEFAULT NULL COMMENT 'Period',
  `store_id` smallint(5) unsigned DEFAULT NULL COMMENT 'Store Id',
  `order_status` varchar(50) DEFAULT NULL COMMENT 'Order Status',
  `orders_count` int(11) NOT NULL DEFAULT '0' COMMENT 'Orders Count',
  `orders_invoiced` decimal(12,4) DEFAULT NULL COMMENT 'Orders Invoiced',
  `invoiced` decimal(12,4) DEFAULT NULL COMMENT 'Invoiced',
  `invoiced_captured` decimal(12,4) DEFAULT NULL COMMENT 'Invoiced Captured',
  `invoiced_not_captured` decimal(12,4) DEFAULT NULL COMMENT 'Invoiced Not Captured',
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNQ_SALES_INVOICED_AGGREGATED_PERIOD_STORE_ID_ORDER_STATUS` (`period`,`store_id`,`order_status`),
  KEY `IDX_SALES_INVOICED_AGGREGATED_STORE_ID` (`store_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Sales Invoiced Aggregated' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `sales_invoiced_aggregated_order`
--

CREATE TABLE IF NOT EXISTS `sales_invoiced_aggregated_order` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Id',
  `period` date DEFAULT NULL COMMENT 'Period',
  `store_id` smallint(5) unsigned DEFAULT NULL COMMENT 'Store Id',
  `order_status` varchar(50) NOT NULL DEFAULT '' COMMENT 'Order Status',
  `orders_count` int(11) NOT NULL DEFAULT '0' COMMENT 'Orders Count',
  `orders_invoiced` decimal(12,4) DEFAULT NULL COMMENT 'Orders Invoiced',
  `invoiced` decimal(12,4) DEFAULT NULL COMMENT 'Invoiced',
  `invoiced_captured` decimal(12,4) DEFAULT NULL COMMENT 'Invoiced Captured',
  `invoiced_not_captured` decimal(12,4) DEFAULT NULL COMMENT 'Invoiced Not Captured',
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNQ_SALES_INVOICED_AGGREGATED_ORDER_PERIOD_STORE_ID_ORDER_STATUS` (`period`,`store_id`,`order_status`),
  KEY `IDX_SALES_INVOICED_AGGREGATED_ORDER_STORE_ID` (`store_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Sales Invoiced Aggregated Order' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `sales_order_aggregated_created`
--

CREATE TABLE IF NOT EXISTS `sales_order_aggregated_created` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Id',
  `period` date DEFAULT NULL COMMENT 'Period',
  `store_id` smallint(5) unsigned DEFAULT NULL COMMENT 'Store Id',
  `order_status` varchar(50) NOT NULL DEFAULT '' COMMENT 'Order Status',
  `orders_count` int(11) NOT NULL DEFAULT '0' COMMENT 'Orders Count',
  `total_qty_ordered` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Total Qty Ordered',
  `total_qty_invoiced` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Total Qty Invoiced',
  `total_income_amount` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Total Income Amount',
  `total_revenue_amount` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Total Revenue Amount',
  `total_profit_amount` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Total Profit Amount',
  `total_invoiced_amount` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Total Invoiced Amount',
  `total_canceled_amount` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Total Canceled Amount',
  `total_paid_amount` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Total Paid Amount',
  `total_refunded_amount` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Total Refunded Amount',
  `total_tax_amount` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Total Tax Amount',
  `total_tax_amount_actual` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Total Tax Amount Actual',
  `total_shipping_amount` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Total Shipping Amount',
  `total_shipping_amount_actual` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Total Shipping Amount Actual',
  `total_discount_amount` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Total Discount Amount',
  `total_discount_amount_actual` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Total Discount Amount Actual',
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNQ_SALES_ORDER_AGGREGATED_CREATED_PERIOD_STORE_ID_ORDER_STATUS` (`period`,`store_id`,`order_status`),
  KEY `IDX_SALES_ORDER_AGGREGATED_CREATED_STORE_ID` (`store_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Sales Order Aggregated Created' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `sales_order_aggregated_updated`
--

CREATE TABLE IF NOT EXISTS `sales_order_aggregated_updated` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Id',
  `period` date DEFAULT NULL COMMENT 'Period',
  `store_id` smallint(5) unsigned DEFAULT NULL COMMENT 'Store Id',
  `order_status` varchar(50) NOT NULL COMMENT 'Order Status',
  `orders_count` int(11) NOT NULL DEFAULT '0' COMMENT 'Orders Count',
  `total_qty_ordered` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Total Qty Ordered',
  `total_qty_invoiced` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Total Qty Invoiced',
  `total_income_amount` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Total Income Amount',
  `total_revenue_amount` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Total Revenue Amount',
  `total_profit_amount` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Total Profit Amount',
  `total_invoiced_amount` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Total Invoiced Amount',
  `total_canceled_amount` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Total Canceled Amount',
  `total_paid_amount` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Total Paid Amount',
  `total_refunded_amount` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Total Refunded Amount',
  `total_tax_amount` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Total Tax Amount',
  `total_tax_amount_actual` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Total Tax Amount Actual',
  `total_shipping_amount` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Total Shipping Amount',
  `total_shipping_amount_actual` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Total Shipping Amount Actual',
  `total_discount_amount` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Total Discount Amount',
  `total_discount_amount_actual` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Total Discount Amount Actual',
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNQ_SALES_ORDER_AGGREGATED_UPDATED_PERIOD_STORE_ID_ORDER_STATUS` (`period`,`store_id`,`order_status`),
  KEY `IDX_SALES_ORDER_AGGREGATED_UPDATED_STORE_ID` (`store_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Sales Order Aggregated Updated' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `sales_order_status`
--

CREATE TABLE IF NOT EXISTS `sales_order_status` (
  `status` varchar(32) NOT NULL COMMENT 'Status',
  `label` varchar(128) NOT NULL COMMENT 'Label',
  PRIMARY KEY (`status`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Sales Order Status Table';

--
-- Gegevens worden uitgevoerd voor tabel `sales_order_status`
--

INSERT INTO `sales_order_status` (`status`, `label`) VALUES
('canceled', 'Canceled'),
('closed', 'Closed'),
('complete', 'Complete'),
('fraud', 'Suspected Fraud'),
('holded', 'On Hold'),
('payment_review', 'Payment Review'),
('pending', 'Pending'),
('pending_payment', 'Pending Payment'),
('pending_paypal', 'Pending PayPal'),
('processing', 'Processing');

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `sales_order_status_label`
--

CREATE TABLE IF NOT EXISTS `sales_order_status_label` (
  `status` varchar(32) NOT NULL COMMENT 'Status',
  `store_id` smallint(5) unsigned NOT NULL COMMENT 'Store Id',
  `label` varchar(128) NOT NULL COMMENT 'Label',
  PRIMARY KEY (`status`,`store_id`),
  KEY `IDX_SALES_ORDER_STATUS_LABEL_STORE_ID` (`store_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Sales Order Status Label Table';

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `sales_order_status_state`
--

CREATE TABLE IF NOT EXISTS `sales_order_status_state` (
  `status` varchar(32) NOT NULL COMMENT 'Status',
  `state` varchar(32) NOT NULL COMMENT 'Label',
  `is_default` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Is Default',
  PRIMARY KEY (`status`,`state`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Sales Order Status Table';

--
-- Gegevens worden uitgevoerd voor tabel `sales_order_status_state`
--

INSERT INTO `sales_order_status_state` (`status`, `state`, `is_default`) VALUES
('canceled', 'canceled', 1),
('closed', 'closed', 1),
('complete', 'complete', 1),
('fraud', 'payment_review', 0),
('holded', 'holded', 1),
('payment_review', 'payment_review', 1),
('pending', 'new', 1),
('pending_payment', 'pending_payment', 1),
('processing', 'processing', 1);

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `sales_order_tax`
--

CREATE TABLE IF NOT EXISTS `sales_order_tax` (
  `tax_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Tax Id',
  `order_id` int(10) unsigned NOT NULL COMMENT 'Order Id',
  `code` varchar(255) DEFAULT NULL COMMENT 'Code',
  `title` varchar(255) DEFAULT NULL COMMENT 'Title',
  `percent` decimal(12,4) DEFAULT NULL COMMENT 'Percent',
  `amount` decimal(12,4) DEFAULT NULL COMMENT 'Amount',
  `priority` int(11) NOT NULL COMMENT 'Priority',
  `position` int(11) NOT NULL COMMENT 'Position',
  `base_amount` decimal(12,4) DEFAULT NULL COMMENT 'Base Amount',
  `process` smallint(6) NOT NULL COMMENT 'Process',
  `base_real_amount` decimal(12,4) DEFAULT NULL COMMENT 'Base Real Amount',
  `hidden` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Hidden',
  PRIMARY KEY (`tax_id`),
  KEY `IDX_SALES_ORDER_TAX_ORDER_ID_PRIORITY_POSITION` (`order_id`,`priority`,`position`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Sales Order Tax Table' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `sales_order_tax_item`
--

CREATE TABLE IF NOT EXISTS `sales_order_tax_item` (
  `tax_item_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Tax Item Id',
  `tax_id` int(10) unsigned NOT NULL COMMENT 'Tax Id',
  `item_id` int(10) unsigned NOT NULL COMMENT 'Item Id',
  `tax_percent` decimal(12,4) NOT NULL COMMENT 'Real Tax Percent For Item',
  PRIMARY KEY (`tax_item_id`),
  UNIQUE KEY `UNQ_SALES_ORDER_TAX_ITEM_TAX_ID_ITEM_ID` (`tax_id`,`item_id`),
  KEY `IDX_SALES_ORDER_TAX_ITEM_TAX_ID` (`tax_id`),
  KEY `IDX_SALES_ORDER_TAX_ITEM_ITEM_ID` (`item_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Sales Order Tax Item' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `sales_payment_transaction`
--

CREATE TABLE IF NOT EXISTS `sales_payment_transaction` (
  `transaction_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Transaction Id',
  `parent_id` int(10) unsigned DEFAULT NULL COMMENT 'Parent Id',
  `order_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Order Id',
  `payment_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Payment Id',
  `txn_id` varchar(100) DEFAULT NULL COMMENT 'Txn Id',
  `parent_txn_id` varchar(100) DEFAULT NULL COMMENT 'Parent Txn Id',
  `txn_type` varchar(15) DEFAULT NULL COMMENT 'Txn Type',
  `is_closed` smallint(5) unsigned NOT NULL DEFAULT '1' COMMENT 'Is Closed',
  `additional_information` blob COMMENT 'Additional Information',
  `created_at` timestamp NULL DEFAULT NULL COMMENT 'Created At',
  PRIMARY KEY (`transaction_id`),
  UNIQUE KEY `UNQ_SALES_PAYMENT_TRANSACTION_ORDER_ID_PAYMENT_ID_TXN_ID` (`order_id`,`payment_id`,`txn_id`),
  KEY `IDX_SALES_PAYMENT_TRANSACTION_ORDER_ID` (`order_id`),
  KEY `IDX_SALES_PAYMENT_TRANSACTION_PARENT_ID` (`parent_id`),
  KEY `IDX_SALES_PAYMENT_TRANSACTION_PAYMENT_ID` (`payment_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Sales Payment Transaction' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `sales_recurring_profile`
--

CREATE TABLE IF NOT EXISTS `sales_recurring_profile` (
  `profile_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Profile Id',
  `state` varchar(20) NOT NULL COMMENT 'State',
  `customer_id` int(10) unsigned DEFAULT NULL COMMENT 'Customer Id',
  `store_id` smallint(5) unsigned DEFAULT NULL COMMENT 'Store Id',
  `method_code` varchar(32) NOT NULL COMMENT 'Method Code',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Created At',
  `updated_at` timestamp NULL DEFAULT NULL COMMENT 'Updated At',
  `reference_id` varchar(32) DEFAULT NULL COMMENT 'Reference Id',
  `subscriber_name` varchar(150) DEFAULT NULL COMMENT 'Subscriber Name',
  `start_datetime` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'Start Datetime',
  `internal_reference_id` varchar(42) NOT NULL COMMENT 'Internal Reference Id',
  `schedule_description` varchar(255) NOT NULL COMMENT 'Schedule Description',
  `suspension_threshold` smallint(5) unsigned DEFAULT NULL COMMENT 'Suspension Threshold',
  `bill_failed_later` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Bill Failed Later',
  `period_unit` varchar(20) NOT NULL COMMENT 'Period Unit',
  `period_frequency` smallint(5) unsigned DEFAULT NULL COMMENT 'Period Frequency',
  `period_max_cycles` smallint(5) unsigned DEFAULT NULL COMMENT 'Period Max Cycles',
  `billing_amount` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Billing Amount',
  `trial_period_unit` varchar(20) DEFAULT NULL COMMENT 'Trial Period Unit',
  `trial_period_frequency` smallint(5) unsigned DEFAULT NULL COMMENT 'Trial Period Frequency',
  `trial_period_max_cycles` smallint(5) unsigned DEFAULT NULL COMMENT 'Trial Period Max Cycles',
  `trial_billing_amount` text COMMENT 'Trial Billing Amount',
  `currency_code` varchar(3) NOT NULL COMMENT 'Currency Code',
  `shipping_amount` decimal(12,4) DEFAULT NULL COMMENT 'Shipping Amount',
  `tax_amount` decimal(12,4) DEFAULT NULL COMMENT 'Tax Amount',
  `init_amount` decimal(12,4) DEFAULT NULL COMMENT 'Init Amount',
  `init_may_fail` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Init May Fail',
  `order_info` text NOT NULL COMMENT 'Order Info',
  `order_item_info` text NOT NULL COMMENT 'Order Item Info',
  `billing_address_info` text NOT NULL COMMENT 'Billing Address Info',
  `shipping_address_info` text COMMENT 'Shipping Address Info',
  `profile_vendor_info` text COMMENT 'Profile Vendor Info',
  `additional_info` text COMMENT 'Additional Info',
  PRIMARY KEY (`profile_id`),
  UNIQUE KEY `UNQ_SALES_RECURRING_PROFILE_INTERNAL_REFERENCE_ID` (`internal_reference_id`),
  KEY `IDX_SALES_RECURRING_PROFILE_CUSTOMER_ID` (`customer_id`),
  KEY `IDX_SALES_RECURRING_PROFILE_STORE_ID` (`store_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Sales Recurring Profile' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `sales_recurring_profile_order`
--

CREATE TABLE IF NOT EXISTS `sales_recurring_profile_order` (
  `link_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Link Id',
  `profile_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Profile Id',
  `order_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Order Id',
  PRIMARY KEY (`link_id`),
  UNIQUE KEY `UNQ_SALES_RECURRING_PROFILE_ORDER_PROFILE_ID_ORDER_ID` (`profile_id`,`order_id`),
  KEY `IDX_SALES_RECURRING_PROFILE_ORDER_ORDER_ID` (`order_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Sales Recurring Profile Order' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `sales_refunded_aggregated`
--

CREATE TABLE IF NOT EXISTS `sales_refunded_aggregated` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Id',
  `period` date DEFAULT NULL COMMENT 'Period',
  `store_id` smallint(5) unsigned DEFAULT NULL COMMENT 'Store Id',
  `order_status` varchar(50) NOT NULL DEFAULT '' COMMENT 'Order Status',
  `orders_count` int(11) NOT NULL DEFAULT '0' COMMENT 'Orders Count',
  `refunded` decimal(12,4) DEFAULT NULL COMMENT 'Refunded',
  `online_refunded` decimal(12,4) DEFAULT NULL COMMENT 'Online Refunded',
  `offline_refunded` decimal(12,4) DEFAULT NULL COMMENT 'Offline Refunded',
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNQ_SALES_REFUNDED_AGGREGATED_PERIOD_STORE_ID_ORDER_STATUS` (`period`,`store_id`,`order_status`),
  KEY `IDX_SALES_REFUNDED_AGGREGATED_STORE_ID` (`store_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Sales Refunded Aggregated' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `sales_refunded_aggregated_order`
--

CREATE TABLE IF NOT EXISTS `sales_refunded_aggregated_order` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Id',
  `period` date DEFAULT NULL COMMENT 'Period',
  `store_id` smallint(5) unsigned DEFAULT NULL COMMENT 'Store Id',
  `order_status` varchar(50) DEFAULT NULL COMMENT 'Order Status',
  `orders_count` int(11) NOT NULL DEFAULT '0' COMMENT 'Orders Count',
  `refunded` decimal(12,4) DEFAULT NULL COMMENT 'Refunded',
  `online_refunded` decimal(12,4) DEFAULT NULL COMMENT 'Online Refunded',
  `offline_refunded` decimal(12,4) DEFAULT NULL COMMENT 'Offline Refunded',
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNQ_SALES_REFUNDED_AGGREGATED_ORDER_PERIOD_STORE_ID_ORDER_STATUS` (`period`,`store_id`,`order_status`),
  KEY `IDX_SALES_REFUNDED_AGGREGATED_ORDER_STORE_ID` (`store_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Sales Refunded Aggregated Order' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `sales_shipping_aggregated`
--

CREATE TABLE IF NOT EXISTS `sales_shipping_aggregated` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Id',
  `period` date DEFAULT NULL COMMENT 'Period',
  `store_id` smallint(5) unsigned DEFAULT NULL COMMENT 'Store Id',
  `order_status` varchar(50) DEFAULT NULL COMMENT 'Order Status',
  `shipping_description` varchar(255) DEFAULT NULL COMMENT 'Shipping Description',
  `orders_count` int(11) NOT NULL DEFAULT '0' COMMENT 'Orders Count',
  `total_shipping` decimal(12,4) DEFAULT NULL COMMENT 'Total Shipping',
  `total_shipping_actual` decimal(12,4) DEFAULT NULL COMMENT 'Total Shipping Actual',
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNQ_SALES_SHPP_AGGRED_PERIOD_STORE_ID_ORDER_STS_SHPP_DESCRIPTION` (`period`,`store_id`,`order_status`,`shipping_description`),
  KEY `IDX_SALES_SHIPPING_AGGREGATED_STORE_ID` (`store_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Sales Shipping Aggregated' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `sales_shipping_aggregated_order`
--

CREATE TABLE IF NOT EXISTS `sales_shipping_aggregated_order` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Id',
  `period` date DEFAULT NULL COMMENT 'Period',
  `store_id` smallint(5) unsigned DEFAULT NULL COMMENT 'Store Id',
  `order_status` varchar(50) DEFAULT NULL COMMENT 'Order Status',
  `shipping_description` varchar(255) DEFAULT NULL COMMENT 'Shipping Description',
  `orders_count` int(11) NOT NULL DEFAULT '0' COMMENT 'Orders Count',
  `total_shipping` decimal(12,4) DEFAULT NULL COMMENT 'Total Shipping',
  `total_shipping_actual` decimal(12,4) DEFAULT NULL COMMENT 'Total Shipping Actual',
  PRIMARY KEY (`id`),
  UNIQUE KEY `C05FAE47282EEA68654D0924E946761F` (`period`,`store_id`,`order_status`,`shipping_description`),
  KEY `IDX_SALES_SHIPPING_AGGREGATED_ORDER_STORE_ID` (`store_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Sales Shipping Aggregated Order' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `sendfriend_log`
--

CREATE TABLE IF NOT EXISTS `sendfriend_log` (
  `log_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Log ID',
  `ip` bigint(20) unsigned NOT NULL DEFAULT '0' COMMENT 'Customer IP address',
  `time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Log time',
  `website_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Website ID',
  PRIMARY KEY (`log_id`),
  KEY `IDX_SENDFRIEND_LOG_IP` (`ip`),
  KEY `IDX_SENDFRIEND_LOG_TIME` (`time`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Send to friend function log storage table' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `shipping_tablerate`
--

CREATE TABLE IF NOT EXISTS `shipping_tablerate` (
  `pk` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Primary key',
  `website_id` int(11) NOT NULL DEFAULT '0' COMMENT 'Website Id',
  `dest_country_id` varchar(4) NOT NULL DEFAULT '0' COMMENT 'Destination coutry ISO/2 or ISO/3 code',
  `dest_region_id` int(11) NOT NULL DEFAULT '0' COMMENT 'Destination Region Id',
  `dest_zip` varchar(10) NOT NULL DEFAULT '*' COMMENT 'Destination Post Code (Zip)',
  `condition_name` varchar(20) NOT NULL COMMENT 'Rate Condition name',
  `condition_value` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Rate condition value',
  `price` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Price',
  `cost` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Cost',
  PRIMARY KEY (`pk`),
  UNIQUE KEY `D60821CDB2AFACEE1566CFC02D0D4CAA` (`website_id`,`dest_country_id`,`dest_region_id`,`dest_zip`,`condition_name`,`condition_value`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Shipping Tablerate' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `sitemap`
--

CREATE TABLE IF NOT EXISTS `sitemap` (
  `sitemap_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Sitemap Id',
  `sitemap_type` varchar(32) DEFAULT NULL COMMENT 'Sitemap Type',
  `sitemap_filename` varchar(32) DEFAULT NULL COMMENT 'Sitemap Filename',
  `sitemap_path` varchar(255) DEFAULT NULL COMMENT 'Sitemap Path',
  `sitemap_time` timestamp NULL DEFAULT NULL COMMENT 'Sitemap Time',
  `store_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Store id',
  PRIMARY KEY (`sitemap_id`),
  KEY `IDX_SITEMAP_STORE_ID` (`store_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Google Sitemap' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `tag`
--

CREATE TABLE IF NOT EXISTS `tag` (
  `tag_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Tag Id',
  `name` varchar(255) DEFAULT NULL COMMENT 'Name',
  `status` smallint(6) NOT NULL DEFAULT '0' COMMENT 'Status',
  `first_customer_id` int(10) unsigned DEFAULT NULL COMMENT 'First Customer Id',
  `first_store_id` smallint(5) unsigned DEFAULT NULL COMMENT 'First Store Id',
  PRIMARY KEY (`tag_id`),
  KEY `FK_TAG_FIRST_CUSTOMER_ID_CUSTOMER_ENTITY_ENTITY_ID` (`first_customer_id`),
  KEY `FK_TAG_FIRST_STORE_ID_CORE_STORE_STORE_ID` (`first_store_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Tag' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `tag_properties`
--

CREATE TABLE IF NOT EXISTS `tag_properties` (
  `tag_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Tag Id',
  `store_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Store Id',
  `base_popularity` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Base Popularity',
  PRIMARY KEY (`tag_id`,`store_id`),
  KEY `IDX_TAG_PROPERTIES_STORE_ID` (`store_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Tag Properties';

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `tag_relation`
--

CREATE TABLE IF NOT EXISTS `tag_relation` (
  `tag_relation_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Tag Relation Id',
  `tag_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Tag Id',
  `customer_id` int(10) unsigned DEFAULT NULL COMMENT 'Customer Id',
  `product_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Product Id',
  `store_id` smallint(5) unsigned NOT NULL DEFAULT '1' COMMENT 'Store Id',
  `active` smallint(5) unsigned NOT NULL DEFAULT '1' COMMENT 'Active',
  `created_at` timestamp NULL DEFAULT NULL COMMENT 'Created At',
  PRIMARY KEY (`tag_relation_id`),
  UNIQUE KEY `UNQ_TAG_RELATION_TAG_ID_CUSTOMER_ID_PRODUCT_ID_STORE_ID` (`tag_id`,`customer_id`,`product_id`,`store_id`),
  KEY `IDX_TAG_RELATION_PRODUCT_ID` (`product_id`),
  KEY `IDX_TAG_RELATION_TAG_ID` (`tag_id`),
  KEY `IDX_TAG_RELATION_CUSTOMER_ID` (`customer_id`),
  KEY `IDX_TAG_RELATION_STORE_ID` (`store_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Tag Relation' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `tag_summary`
--

CREATE TABLE IF NOT EXISTS `tag_summary` (
  `tag_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Tag Id',
  `store_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Store Id',
  `customers` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Customers',
  `products` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Products',
  `uses` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Uses',
  `historical_uses` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Historical Uses',
  `popularity` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Popularity',
  `base_popularity` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Base Popularity',
  PRIMARY KEY (`tag_id`,`store_id`),
  KEY `IDX_TAG_SUMMARY_STORE_ID` (`store_id`),
  KEY `IDX_TAG_SUMMARY_TAG_ID` (`tag_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Tag Summary';

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `tax_calculation`
--

CREATE TABLE IF NOT EXISTS `tax_calculation` (
  `tax_calculation_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Tax Calculation Id',
  `tax_calculation_rate_id` int(11) NOT NULL COMMENT 'Tax Calculation Rate Id',
  `tax_calculation_rule_id` int(11) NOT NULL COMMENT 'Tax Calculation Rule Id',
  `customer_tax_class_id` smallint(6) NOT NULL COMMENT 'Customer Tax Class Id',
  `product_tax_class_id` smallint(6) NOT NULL COMMENT 'Product Tax Class Id',
  PRIMARY KEY (`tax_calculation_id`),
  KEY `IDX_TAX_CALCULATION_TAX_CALCULATION_RULE_ID` (`tax_calculation_rule_id`),
  KEY `IDX_TAX_CALCULATION_TAX_CALCULATION_RATE_ID` (`tax_calculation_rate_id`),
  KEY `IDX_TAX_CALCULATION_CUSTOMER_TAX_CLASS_ID` (`customer_tax_class_id`),
  KEY `IDX_TAX_CALCULATION_PRODUCT_TAX_CLASS_ID` (`product_tax_class_id`),
  KEY `IDX_TAX_CALC_TAX_CALC_RATE_ID_CSTR_TAX_CLASS_ID_PRD_TAX_CLASS_ID` (`tax_calculation_rate_id`,`customer_tax_class_id`,`product_tax_class_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='Tax Calculation' AUTO_INCREMENT=3 ;

--
-- Gegevens worden uitgevoerd voor tabel `tax_calculation`
--

INSERT INTO `tax_calculation` (`tax_calculation_id`, `tax_calculation_rate_id`, `tax_calculation_rule_id`, `customer_tax_class_id`, `product_tax_class_id`) VALUES
(1, 1, 1, 3, 2),
(2, 2, 1, 3, 2);

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `tax_calculation_rate`
--

CREATE TABLE IF NOT EXISTS `tax_calculation_rate` (
  `tax_calculation_rate_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Tax Calculation Rate Id',
  `tax_country_id` varchar(2) NOT NULL COMMENT 'Tax Country Id',
  `tax_region_id` int(11) NOT NULL COMMENT 'Tax Region Id',
  `tax_postcode` varchar(21) DEFAULT NULL COMMENT 'Tax Postcode',
  `code` varchar(255) NOT NULL COMMENT 'Code',
  `rate` decimal(12,4) NOT NULL COMMENT 'Rate',
  `zip_is_range` smallint(6) DEFAULT NULL COMMENT 'Zip Is Range',
  `zip_from` int(10) unsigned DEFAULT NULL COMMENT 'Zip From',
  `zip_to` int(10) unsigned DEFAULT NULL COMMENT 'Zip To',
  PRIMARY KEY (`tax_calculation_rate_id`),
  KEY `IDX_TAX_CALC_RATE_TAX_COUNTRY_ID_TAX_REGION_ID_TAX_POSTCODE` (`tax_country_id`,`tax_region_id`,`tax_postcode`),
  KEY `IDX_TAX_CALCULATION_RATE_CODE` (`code`),
  KEY `CA799F1E2CB843495F601E56C84A626D` (`tax_calculation_rate_id`,`tax_country_id`,`tax_region_id`,`zip_is_range`,`tax_postcode`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='Tax Calculation Rate' AUTO_INCREMENT=3 ;

--
-- Gegevens worden uitgevoerd voor tabel `tax_calculation_rate`
--

INSERT INTO `tax_calculation_rate` (`tax_calculation_rate_id`, `tax_country_id`, `tax_region_id`, `tax_postcode`, `code`, `rate`, `zip_is_range`, `zip_from`, `zip_to`) VALUES
(1, 'US', 12, '*', 'US-CA-*-Rate 1', '8.2500', NULL, NULL, NULL),
(2, 'US', 43, '*', 'US-NY-*-Rate 1', '8.3750', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `tax_calculation_rate_title`
--

CREATE TABLE IF NOT EXISTS `tax_calculation_rate_title` (
  `tax_calculation_rate_title_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Tax Calculation Rate Title Id',
  `tax_calculation_rate_id` int(11) NOT NULL COMMENT 'Tax Calculation Rate Id',
  `store_id` smallint(5) unsigned NOT NULL COMMENT 'Store Id',
  `value` varchar(255) NOT NULL COMMENT 'Value',
  PRIMARY KEY (`tax_calculation_rate_title_id`),
  KEY `IDX_TAX_CALCULATION_RATE_TITLE_TAX_CALCULATION_RATE_ID_STORE_ID` (`tax_calculation_rate_id`,`store_id`),
  KEY `IDX_TAX_CALCULATION_RATE_TITLE_TAX_CALCULATION_RATE_ID` (`tax_calculation_rate_id`),
  KEY `IDX_TAX_CALCULATION_RATE_TITLE_STORE_ID` (`store_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Tax Calculation Rate Title' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `tax_calculation_rule`
--

CREATE TABLE IF NOT EXISTS `tax_calculation_rule` (
  `tax_calculation_rule_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Tax Calculation Rule Id',
  `code` varchar(255) NOT NULL COMMENT 'Code',
  `priority` int(11) NOT NULL COMMENT 'Priority',
  `position` int(11) NOT NULL COMMENT 'Position',
  PRIMARY KEY (`tax_calculation_rule_id`),
  KEY `IDX_TAX_CALC_RULE_PRIORITY_POSITION_TAX_CALC_RULE_ID` (`priority`,`position`,`tax_calculation_rule_id`),
  KEY `IDX_TAX_CALCULATION_RULE_CODE` (`code`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='Tax Calculation Rule' AUTO_INCREMENT=2 ;

--
-- Gegevens worden uitgevoerd voor tabel `tax_calculation_rule`
--

INSERT INTO `tax_calculation_rule` (`tax_calculation_rule_id`, `code`, `priority`, `position`) VALUES
(1, 'Retail Customer-Taxable Goods-Rate 1', 1, 1);

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `tax_class`
--

CREATE TABLE IF NOT EXISTS `tax_class` (
  `class_id` smallint(6) NOT NULL AUTO_INCREMENT COMMENT 'Class Id',
  `class_name` varchar(255) NOT NULL COMMENT 'Class Name',
  `class_type` varchar(8) NOT NULL DEFAULT 'CUSTOMER' COMMENT 'Class Type',
  PRIMARY KEY (`class_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='Tax Class' AUTO_INCREMENT=5 ;

--
-- Gegevens worden uitgevoerd voor tabel `tax_class`
--

INSERT INTO `tax_class` (`class_id`, `class_name`, `class_type`) VALUES
(2, 'Taxable Goods', 'PRODUCT'),
(3, 'Retail Customer', 'CUSTOMER'),
(4, 'Shipping', 'PRODUCT');

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `tax_order_aggregated_created`
--

CREATE TABLE IF NOT EXISTS `tax_order_aggregated_created` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Id',
  `period` date DEFAULT NULL COMMENT 'Period',
  `store_id` smallint(5) unsigned DEFAULT NULL COMMENT 'Store Id',
  `code` varchar(255) NOT NULL COMMENT 'Code',
  `order_status` varchar(50) NOT NULL COMMENT 'Order Status',
  `percent` float DEFAULT NULL COMMENT 'Percent',
  `orders_count` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Orders Count',
  `tax_base_amount_sum` float DEFAULT NULL COMMENT 'Tax Base Amount Sum',
  PRIMARY KEY (`id`),
  UNIQUE KEY `FCA5E2C02689EB2641B30580D7AACF12` (`period`,`store_id`,`code`,`percent`,`order_status`),
  KEY `IDX_TAX_ORDER_AGGREGATED_CREATED_STORE_ID` (`store_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Tax Order Aggregation' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `tax_order_aggregated_updated`
--

CREATE TABLE IF NOT EXISTS `tax_order_aggregated_updated` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Id',
  `period` date DEFAULT NULL COMMENT 'Period',
  `store_id` smallint(5) unsigned DEFAULT NULL COMMENT 'Store Id',
  `code` varchar(255) NOT NULL COMMENT 'Code',
  `order_status` varchar(50) NOT NULL COMMENT 'Order Status',
  `percent` float DEFAULT NULL COMMENT 'Percent',
  `orders_count` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Orders Count',
  `tax_base_amount_sum` float DEFAULT NULL COMMENT 'Tax Base Amount Sum',
  PRIMARY KEY (`id`),
  UNIQUE KEY `DB0AF14011199AA6CD31D5078B90AA8D` (`period`,`store_id`,`code`,`percent`,`order_status`),
  KEY `IDX_TAX_ORDER_AGGREGATED_UPDATED_STORE_ID` (`store_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Tax Order Aggregated Updated' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `weee_discount`
--

CREATE TABLE IF NOT EXISTS `weee_discount` (
  `entity_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Entity Id',
  `website_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Website Id',
  `customer_group_id` smallint(5) unsigned NOT NULL COMMENT 'Customer Group Id',
  `value` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Value',
  KEY `IDX_WEEE_DISCOUNT_WEBSITE_ID` (`website_id`),
  KEY `IDX_WEEE_DISCOUNT_ENTITY_ID` (`entity_id`),
  KEY `IDX_WEEE_DISCOUNT_CUSTOMER_GROUP_ID` (`customer_group_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Weee Discount';

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `weee_tax`
--

CREATE TABLE IF NOT EXISTS `weee_tax` (
  `value_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Value Id',
  `website_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Website Id',
  `entity_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Entity Id',
  `country` varchar(2) DEFAULT NULL COMMENT 'Country',
  `value` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Value',
  `state` varchar(255) NOT NULL DEFAULT '*' COMMENT 'State',
  `attribute_id` smallint(5) unsigned NOT NULL COMMENT 'Attribute Id',
  `entity_type_id` smallint(5) unsigned NOT NULL COMMENT 'Entity Type Id',
  PRIMARY KEY (`value_id`),
  KEY `IDX_WEEE_TAX_WEBSITE_ID` (`website_id`),
  KEY `IDX_WEEE_TAX_ENTITY_ID` (`entity_id`),
  KEY `IDX_WEEE_TAX_COUNTRY` (`country`),
  KEY `IDX_WEEE_TAX_ATTRIBUTE_ID` (`attribute_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Weee Tax' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `widget`
--

CREATE TABLE IF NOT EXISTS `widget` (
  `widget_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Widget Id',
  `widget_code` varchar(255) DEFAULT NULL COMMENT 'Widget code for template directive',
  `widget_type` varchar(255) DEFAULT NULL COMMENT 'Widget Type',
  `parameters` text COMMENT 'Parameters',
  PRIMARY KEY (`widget_id`),
  KEY `IDX_WIDGET_WIDGET_CODE` (`widget_code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Preconfigured Widgets' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `widget_instance`
--

CREATE TABLE IF NOT EXISTS `widget_instance` (
  `instance_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Instance Id',
  `instance_type` varchar(255) DEFAULT NULL COMMENT 'Instance Type',
  `package_theme` varchar(255) DEFAULT NULL COMMENT 'Package Theme',
  `title` varchar(255) DEFAULT NULL COMMENT 'Widget Title',
  `store_ids` varchar(255) NOT NULL DEFAULT '0' COMMENT 'Store ids',
  `widget_parameters` text COMMENT 'Widget parameters',
  `sort_order` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Sort order',
  PRIMARY KEY (`instance_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Instances of Widget for Package Theme' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `widget_instance_page`
--

CREATE TABLE IF NOT EXISTS `widget_instance_page` (
  `page_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Page Id',
  `instance_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Instance Id',
  `page_group` varchar(25) DEFAULT NULL COMMENT 'Block Group Type',
  `layout_handle` varchar(255) DEFAULT NULL COMMENT 'Layout Handle',
  `block_reference` varchar(255) DEFAULT NULL COMMENT 'Block Reference',
  `page_for` varchar(25) DEFAULT NULL COMMENT 'For instance entities',
  `entities` text COMMENT 'Catalog entities (comma separated)',
  `page_template` varchar(255) DEFAULT NULL COMMENT 'Path to widget template',
  PRIMARY KEY (`page_id`),
  KEY `IDX_WIDGET_INSTANCE_PAGE_INSTANCE_ID` (`instance_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Instance of Widget on Page' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `widget_instance_page_layout`
--

CREATE TABLE IF NOT EXISTS `widget_instance_page_layout` (
  `page_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Page Id',
  `layout_update_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Layout Update Id',
  UNIQUE KEY `UNQ_WIDGET_INSTANCE_PAGE_LAYOUT_LAYOUT_UPDATE_ID_PAGE_ID` (`layout_update_id`,`page_id`),
  KEY `IDX_WIDGET_INSTANCE_PAGE_LAYOUT_PAGE_ID` (`page_id`),
  KEY `IDX_WIDGET_INSTANCE_PAGE_LAYOUT_LAYOUT_UPDATE_ID` (`layout_update_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Layout updates';

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `wishlist`
--

CREATE TABLE IF NOT EXISTS `wishlist` (
  `wishlist_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Wishlist ID',
  `customer_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Customer ID',
  `shared` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Sharing flag (0 or 1)',
  `sharing_code` varchar(32) DEFAULT NULL COMMENT 'Sharing encrypted code',
  `updated_at` timestamp NULL DEFAULT NULL COMMENT 'Last updated date',
  PRIMARY KEY (`wishlist_id`),
  UNIQUE KEY `UNQ_WISHLIST_CUSTOMER_ID` (`customer_id`),
  KEY `IDX_WISHLIST_SHARED` (`shared`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='Wishlist main Table' AUTO_INCREMENT=2 ;

--
-- Gegevens worden uitgevoerd voor tabel `wishlist`
--

INSERT INTO `wishlist` (`wishlist_id`, `customer_id`, `shared`, `sharing_code`, `updated_at`) VALUES
(1, 1, 0, 'bd602d061e8fc8c51041d5e26ca18a08', '2012-02-28 11:19:24');

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `wishlist_item`
--

CREATE TABLE IF NOT EXISTS `wishlist_item` (
  `wishlist_item_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Wishlist item ID',
  `wishlist_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Wishlist ID',
  `product_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Product ID',
  `store_id` smallint(5) unsigned DEFAULT NULL COMMENT 'Store ID',
  `added_at` timestamp NULL DEFAULT NULL COMMENT 'Add date and time',
  `description` text COMMENT 'Short description of wish list item',
  `qty` decimal(12,4) NOT NULL COMMENT 'Qty',
  PRIMARY KEY (`wishlist_item_id`),
  KEY `IDX_WISHLIST_ITEM_WISHLIST_ID` (`wishlist_id`),
  KEY `IDX_WISHLIST_ITEM_PRODUCT_ID` (`product_id`),
  KEY `IDX_WISHLIST_ITEM_STORE_ID` (`store_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Wishlist items' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `wishlist_item_option`
--

CREATE TABLE IF NOT EXISTS `wishlist_item_option` (
  `option_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Option Id',
  `wishlist_item_id` int(10) unsigned NOT NULL COMMENT 'Wishlist Item Id',
  `product_id` int(10) unsigned NOT NULL COMMENT 'Product Id',
  `code` varchar(255) NOT NULL COMMENT 'Code',
  `value` text COMMENT 'Value',
  PRIMARY KEY (`option_id`),
  KEY `FK_A014B30B04B72DD0EAB3EECD779728D6` (`wishlist_item_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Wishlist Item Option Table' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `xmlconnect_application`
--

CREATE TABLE IF NOT EXISTS `xmlconnect_application` (
  `application_id` smallint(5) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Application Id',
  `name` varchar(255) NOT NULL COMMENT 'Application Name',
  `code` varchar(32) NOT NULL COMMENT 'Application Code',
  `type` varchar(32) NOT NULL COMMENT 'Device Type',
  `store_id` smallint(5) unsigned DEFAULT NULL COMMENT 'Store Id',
  `active_from` date DEFAULT NULL COMMENT 'Active From',
  `active_to` date DEFAULT NULL COMMENT 'Active To',
  `updated_at` timestamp NULL DEFAULT NULL COMMENT 'Updated At',
  `status` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Status',
  `browsing_mode` smallint(5) unsigned DEFAULT '0' COMMENT 'Browsing Mode',
  PRIMARY KEY (`application_id`),
  UNIQUE KEY `UNQ_XMLCONNECT_APPLICATION_CODE` (`code`),
  KEY `FK_XMLCONNECT_APPLICATION_STORE_ID_CORE_STORE_STORE_ID` (`store_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Xmlconnect Application' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `xmlconnect_config_data`
--

CREATE TABLE IF NOT EXISTS `xmlconnect_config_data` (
  `application_id` smallint(5) unsigned NOT NULL COMMENT 'Application Id',
  `category` varchar(60) NOT NULL DEFAULT 'default' COMMENT 'Category',
  `path` varchar(250) NOT NULL COMMENT 'Path',
  `value` text NOT NULL COMMENT 'Value',
  UNIQUE KEY `UNQ_XMLCONNECT_CONFIG_DATA_APPLICATION_ID_CATEGORY_PATH` (`application_id`,`category`,`path`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Xmlconnect Configuration Data';

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `xmlconnect_history`
--

CREATE TABLE IF NOT EXISTS `xmlconnect_history` (
  `history_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'History Id',
  `application_id` smallint(5) unsigned NOT NULL COMMENT 'Application Id',
  `created_at` timestamp NULL DEFAULT NULL COMMENT 'Created At',
  `store_id` smallint(5) unsigned DEFAULT NULL COMMENT 'Store Id',
  `params` blob COMMENT 'Params',
  `title` varchar(200) NOT NULL COMMENT 'Title',
  `activation_key` varchar(255) NOT NULL COMMENT 'Activation Key',
  `name` varchar(255) NOT NULL COMMENT 'Application Name',
  `code` varchar(32) NOT NULL COMMENT 'Application Code',
  PRIMARY KEY (`history_id`),
  KEY `FK_8F08B9513373BC19F49EE3EF8340E270` (`application_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Xmlconnect History' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `xmlconnect_notification_template`
--

CREATE TABLE IF NOT EXISTS `xmlconnect_notification_template` (
  `template_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Template Id',
  `name` varchar(255) NOT NULL COMMENT 'Template Name',
  `push_title` varchar(140) NOT NULL COMMENT 'Push Notification Title',
  `message_title` varchar(255) NOT NULL COMMENT 'Message Title',
  `content` text NOT NULL COMMENT 'Message Content',
  `created_at` timestamp NULL DEFAULT NULL COMMENT 'Created At',
  `modified_at` timestamp NULL DEFAULT NULL COMMENT 'Modified At',
  `application_id` smallint(5) unsigned NOT NULL COMMENT 'Application Id',
  PRIMARY KEY (`template_id`),
  KEY `FK_F9927C7518A907CF5C350942FD296DC3` (`application_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Xmlconnect Notification Template' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `xmlconnect_queue`
--

CREATE TABLE IF NOT EXISTS `xmlconnect_queue` (
  `queue_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Queue Id',
  `create_time` timestamp NULL DEFAULT NULL COMMENT 'Created At',
  `exec_time` timestamp NULL DEFAULT NULL COMMENT 'Scheduled Execution Time',
  `template_id` int(10) unsigned NOT NULL COMMENT 'Template Id',
  `push_title` varchar(140) NOT NULL COMMENT 'Push Notification Title',
  `message_title` varchar(255) DEFAULT '' COMMENT 'Message Title',
  `content` text COMMENT 'Message Content',
  `status` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Status',
  `type` varchar(12) NOT NULL COMMENT 'Type of Notification',
  PRIMARY KEY (`queue_id`),
  KEY `FK_2019AEC5FC55A516965583447CA26B14` (`template_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Xmlconnect Notification Queue' AUTO_INCREMENT=1 ;

--
-- Beperkingen voor gedumpte tabellen
--

--
-- Beperkingen voor tabel `admin_rule`
--
ALTER TABLE `admin_rule`
  ADD CONSTRAINT `FK_ADMIN_RULE_ROLE_ID_ADMIN_ROLE_ROLE_ID` FOREIGN KEY (`role_id`) REFERENCES `admin_role` (`role_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Beperkingen voor tabel `api_rule`
--
ALTER TABLE `api_rule`
  ADD CONSTRAINT `FK_API_RULE_ROLE_ID_API_ROLE_ROLE_ID` FOREIGN KEY (`role_id`) REFERENCES `api_role` (`role_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Beperkingen voor tabel `api_session`
--
ALTER TABLE `api_session`
  ADD CONSTRAINT `FK_API_SESSION_USER_ID_API_USER_USER_ID` FOREIGN KEY (`user_id`) REFERENCES `api_user` (`user_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Beperkingen voor tabel `cataloginventory_stock_item`
--
ALTER TABLE `cataloginventory_stock_item`
  ADD CONSTRAINT `FK_CATINV_STOCK_ITEM_PRD_ID_CAT_PRD_ENTT_ENTT_ID` FOREIGN KEY (`product_id`) REFERENCES `catalog_product_entity` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_CATINV_STOCK_ITEM_STOCK_ID_CATINV_STOCK_STOCK_ID` FOREIGN KEY (`stock_id`) REFERENCES `cataloginventory_stock` (`stock_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Beperkingen voor tabel `cataloginventory_stock_status`
--
ALTER TABLE `cataloginventory_stock_status`
  ADD CONSTRAINT `FK_CATINV_STOCK_STS_STOCK_ID_CATINV_STOCK_STOCK_ID` FOREIGN KEY (`stock_id`) REFERENCES `cataloginventory_stock` (`stock_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_CATINV_STOCK_STS_PRD_ID_CAT_PRD_ENTT_ENTT_ID` FOREIGN KEY (`product_id`) REFERENCES `catalog_product_entity` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_CATINV_STOCK_STS_WS_ID_CORE_WS_WS_ID` FOREIGN KEY (`website_id`) REFERENCES `core_website` (`website_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Beperkingen voor tabel `catalogrule_group_website`
--
ALTER TABLE `catalogrule_group_website`
  ADD CONSTRAINT `FK_CATRULE_GROUP_WS_CSTR_GROUP_ID_CSTR_GROUP_CSTR_GROUP_ID` FOREIGN KEY (`customer_group_id`) REFERENCES `customer_group` (`customer_group_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_CATALOGRULE_GROUP_WEBSITE_RULE_ID_CATALOGRULE_RULE_ID` FOREIGN KEY (`rule_id`) REFERENCES `catalogrule` (`rule_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_CATALOGRULE_GROUP_WEBSITE_WEBSITE_ID_CORE_WEBSITE_WEBSITE_ID` FOREIGN KEY (`website_id`) REFERENCES `core_website` (`website_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Beperkingen voor tabel `catalogrule_product`
--
ALTER TABLE `catalogrule_product`
  ADD CONSTRAINT `FK_CATRULE_PRD_PRD_ID_CAT_PRD_ENTT_ENTT_ID` FOREIGN KEY (`product_id`) REFERENCES `catalog_product_entity` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_CATRULE_PRD_CSTR_GROUP_ID_CSTR_GROUP_CSTR_GROUP_ID` FOREIGN KEY (`customer_group_id`) REFERENCES `customer_group` (`customer_group_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_CATALOGRULE_PRODUCT_RULE_ID_CATALOGRULE_RULE_ID` FOREIGN KEY (`rule_id`) REFERENCES `catalogrule` (`rule_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_CATALOGRULE_PRODUCT_WEBSITE_ID_CORE_WEBSITE_WEBSITE_ID` FOREIGN KEY (`website_id`) REFERENCES `core_website` (`website_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Beperkingen voor tabel `catalogrule_product_price`
--
ALTER TABLE `catalogrule_product_price`
  ADD CONSTRAINT `FK_CATRULE_PRD_PRICE_PRD_ID_CAT_PRD_ENTT_ENTT_ID` FOREIGN KEY (`product_id`) REFERENCES `catalog_product_entity` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_CATRULE_PRD_PRICE_CSTR_GROUP_ID_CSTR_GROUP_CSTR_GROUP_ID` FOREIGN KEY (`customer_group_id`) REFERENCES `customer_group` (`customer_group_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_CATALOGRULE_PRODUCT_PRICE_WEBSITE_ID_CORE_WEBSITE_WEBSITE_ID` FOREIGN KEY (`website_id`) REFERENCES `core_website` (`website_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Beperkingen voor tabel `catalogsearch_query`
--
ALTER TABLE `catalogsearch_query`
  ADD CONSTRAINT `FK_CATALOGSEARCH_QUERY_STORE_ID_CORE_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `core_store` (`store_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Beperkingen voor tabel `catalogsearch_result`
--
ALTER TABLE `catalogsearch_result`
  ADD CONSTRAINT `FK_CATALOGSEARCH_RESULT_QUERY_ID_CATALOGSEARCH_QUERY_QUERY_ID` FOREIGN KEY (`query_id`) REFERENCES `catalogsearch_query` (`query_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_CATSRCH_RESULT_PRD_ID_CAT_PRD_ENTT_ENTT_ID` FOREIGN KEY (`product_id`) REFERENCES `catalog_product_entity` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Beperkingen voor tabel `catalog_category_entity_datetime`
--
ALTER TABLE `catalog_category_entity_datetime`
  ADD CONSTRAINT `FK_CAT_CTGR_ENTT_DTIME_ATTR_ID_EAV_ATTR_ATTR_ID` FOREIGN KEY (`attribute_id`) REFERENCES `eav_attribute` (`attribute_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_CAT_CTGR_ENTT_DTIME_ENTT_ID_CAT_CTGR_ENTT_ENTT_ID` FOREIGN KEY (`entity_id`) REFERENCES `catalog_category_entity` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_CATALOG_CATEGORY_ENTITY_DATETIME_STORE_ID_CORE_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `core_store` (`store_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Beperkingen voor tabel `catalog_category_entity_decimal`
--
ALTER TABLE `catalog_category_entity_decimal`
  ADD CONSTRAINT `FK_CAT_CTGR_ENTT_DEC_ATTR_ID_EAV_ATTR_ATTR_ID` FOREIGN KEY (`attribute_id`) REFERENCES `eav_attribute` (`attribute_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_CAT_CTGR_ENTT_DEC_ENTT_ID_CAT_CTGR_ENTT_ENTT_ID` FOREIGN KEY (`entity_id`) REFERENCES `catalog_category_entity` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_CATALOG_CATEGORY_ENTITY_DECIMAL_STORE_ID_CORE_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `core_store` (`store_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Beperkingen voor tabel `catalog_category_entity_int`
--
ALTER TABLE `catalog_category_entity_int`
  ADD CONSTRAINT `FK_CAT_CTGR_ENTT_INT_ATTR_ID_EAV_ATTR_ATTR_ID` FOREIGN KEY (`attribute_id`) REFERENCES `eav_attribute` (`attribute_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_CAT_CTGR_ENTT_INT_ENTT_ID_CAT_CTGR_ENTT_ENTT_ID` FOREIGN KEY (`entity_id`) REFERENCES `catalog_category_entity` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_CATALOG_CATEGORY_ENTITY_INT_STORE_ID_CORE_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `core_store` (`store_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Beperkingen voor tabel `catalog_category_entity_text`
--
ALTER TABLE `catalog_category_entity_text`
  ADD CONSTRAINT `FK_CAT_CTGR_ENTT_TEXT_ATTR_ID_EAV_ATTR_ATTR_ID` FOREIGN KEY (`attribute_id`) REFERENCES `eav_attribute` (`attribute_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_CAT_CTGR_ENTT_TEXT_ENTT_ID_CAT_CTGR_ENTT_ENTT_ID` FOREIGN KEY (`entity_id`) REFERENCES `catalog_category_entity` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_CATALOG_CATEGORY_ENTITY_TEXT_STORE_ID_CORE_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `core_store` (`store_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Beperkingen voor tabel `catalog_category_entity_varchar`
--
ALTER TABLE `catalog_category_entity_varchar`
  ADD CONSTRAINT `FK_CAT_CTGR_ENTT_VCHR_ATTR_ID_EAV_ATTR_ATTR_ID` FOREIGN KEY (`attribute_id`) REFERENCES `eav_attribute` (`attribute_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_CAT_CTGR_ENTT_VCHR_ENTT_ID_CAT_CTGR_ENTT_ENTT_ID` FOREIGN KEY (`entity_id`) REFERENCES `catalog_category_entity` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_CATALOG_CATEGORY_ENTITY_VARCHAR_STORE_ID_CORE_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `core_store` (`store_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Beperkingen voor tabel `catalog_category_flat_store_1`
--
ALTER TABLE `catalog_category_flat_store_1`
  ADD CONSTRAINT `FK_CAT_CTGR_FLAT_STORE_1_ENTT_ID_CAT_CTGR_ENTT_ENTT_ID` FOREIGN KEY (`entity_id`) REFERENCES `catalog_category_entity` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_CATALOG_CATEGORY_FLAT_STORE_1_STORE_ID_CORE_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `core_store` (`store_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Beperkingen voor tabel `catalog_category_product`
--
ALTER TABLE `catalog_category_product`
  ADD CONSTRAINT `FK_CAT_CTGR_PRD_CTGR_ID_CAT_CTGR_ENTT_ENTT_ID` FOREIGN KEY (`category_id`) REFERENCES `catalog_category_entity` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_CAT_CTGR_PRD_PRD_ID_CAT_PRD_ENTT_ENTT_ID` FOREIGN KEY (`product_id`) REFERENCES `catalog_product_entity` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Beperkingen voor tabel `catalog_category_product_index`
--
ALTER TABLE `catalog_category_product_index`
  ADD CONSTRAINT `FK_CATALOG_CATEGORY_PRODUCT_INDEX_STORE_ID_CORE_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `core_store` (`store_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_CAT_CTGR_PRD_IDX_CTGR_ID_CAT_CTGR_ENTT_ENTT_ID` FOREIGN KEY (`category_id`) REFERENCES `catalog_category_entity` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_CAT_CTGR_PRD_IDX_PRD_ID_CAT_PRD_ENTT_ENTT_ID` FOREIGN KEY (`product_id`) REFERENCES `catalog_product_entity` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Beperkingen voor tabel `catalog_compare_item`
--
ALTER TABLE `catalog_compare_item`
  ADD CONSTRAINT `FK_CATALOG_COMPARE_ITEM_CUSTOMER_ID_CUSTOMER_ENTITY_ENTITY_ID` FOREIGN KEY (`customer_id`) REFERENCES `customer_entity` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_CAT_CMP_ITEM_PRD_ID_CAT_PRD_ENTT_ENTT_ID` FOREIGN KEY (`product_id`) REFERENCES `catalog_product_entity` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_CATALOG_COMPARE_ITEM_STORE_ID_CORE_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `core_store` (`store_id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Beperkingen voor tabel `catalog_eav_attribute`
--
ALTER TABLE `catalog_eav_attribute`
  ADD CONSTRAINT `FK_CATALOG_EAV_ATTRIBUTE_ATTRIBUTE_ID_EAV_ATTRIBUTE_ATTRIBUTE_ID` FOREIGN KEY (`attribute_id`) REFERENCES `eav_attribute` (`attribute_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Beperkingen voor tabel `catalog_product_bundle_option`
--
ALTER TABLE `catalog_product_bundle_option`
  ADD CONSTRAINT `FK_CAT_PRD_BNDL_OPT_PARENT_ID_CAT_PRD_ENTT_ENTT_ID` FOREIGN KEY (`parent_id`) REFERENCES `catalog_product_entity` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Beperkingen voor tabel `catalog_product_bundle_option_value`
--
ALTER TABLE `catalog_product_bundle_option_value`
  ADD CONSTRAINT `FK_CAT_PRD_BNDL_OPT_VAL_OPT_ID_CAT_PRD_BNDL_OPT_OPT_ID` FOREIGN KEY (`option_id`) REFERENCES `catalog_product_bundle_option` (`option_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Beperkingen voor tabel `catalog_product_bundle_price_index`
--
ALTER TABLE `catalog_product_bundle_price_index`
  ADD CONSTRAINT `FK_CAT_PRD_BNDL_PRICE_IDX_CSTR_GROUP_ID_CSTR_GROUP_CSTR_GROUP_ID` FOREIGN KEY (`customer_group_id`) REFERENCES `customer_group` (`customer_group_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_CAT_PRD_BNDL_PRICE_IDX_ENTT_ID_CAT_PRD_ENTT_ENTT_ID` FOREIGN KEY (`entity_id`) REFERENCES `catalog_product_entity` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_CAT_PRD_BNDL_PRICE_IDX_WS_ID_CORE_WS_WS_ID` FOREIGN KEY (`website_id`) REFERENCES `core_website` (`website_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Beperkingen voor tabel `catalog_product_bundle_selection`
--
ALTER TABLE `catalog_product_bundle_selection`
  ADD CONSTRAINT `FK_CAT_PRD_BNDL_SELECTION_OPT_ID_CAT_PRD_BNDL_OPT_OPT_ID` FOREIGN KEY (`option_id`) REFERENCES `catalog_product_bundle_option` (`option_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_CAT_PRD_BNDL_SELECTION_PRD_ID_CAT_PRD_ENTT_ENTT_ID` FOREIGN KEY (`product_id`) REFERENCES `catalog_product_entity` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Beperkingen voor tabel `catalog_product_bundle_selection_price`
--
ALTER TABLE `catalog_product_bundle_selection_price`
  ADD CONSTRAINT `FK_CAT_PRD_BNDL_SELECTION_PRICE_WS_ID_CORE_WS_WS_ID` FOREIGN KEY (`website_id`) REFERENCES `core_website` (`website_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_DCF37523AA05D770A70AA4ED7C2616E4` FOREIGN KEY (`selection_id`) REFERENCES `catalog_product_bundle_selection` (`selection_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Beperkingen voor tabel `catalog_product_enabled_index`
--
ALTER TABLE `catalog_product_enabled_index`
  ADD CONSTRAINT `FK_CAT_PRD_ENABLED_IDX_PRD_ID_CAT_PRD_ENTT_ENTT_ID` FOREIGN KEY (`product_id`) REFERENCES `catalog_product_entity` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_CATALOG_PRODUCT_ENABLED_INDEX_STORE_ID_CORE_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `core_store` (`store_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Beperkingen voor tabel `catalog_product_entity`
--
ALTER TABLE `catalog_product_entity`
  ADD CONSTRAINT `FK_CAT_PRD_ENTT_ATTR_SET_ID_EAV_ATTR_SET_ATTR_SET_ID` FOREIGN KEY (`attribute_set_id`) REFERENCES `eav_attribute_set` (`attribute_set_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_CAT_PRD_ENTT_ENTT_TYPE_ID_EAV_ENTT_TYPE_ENTT_TYPE_ID` FOREIGN KEY (`entity_type_id`) REFERENCES `eav_entity_type` (`entity_type_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Beperkingen voor tabel `catalog_product_entity_datetime`
--
ALTER TABLE `catalog_product_entity_datetime`
  ADD CONSTRAINT `FK_CAT_PRD_ENTT_DTIME_ATTR_ID_EAV_ATTR_ATTR_ID` FOREIGN KEY (`attribute_id`) REFERENCES `eav_attribute` (`attribute_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_CAT_PRD_ENTT_DTIME_ENTT_ID_CAT_PRD_ENTT_ENTT_ID` FOREIGN KEY (`entity_id`) REFERENCES `catalog_product_entity` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_CATALOG_PRODUCT_ENTITY_DATETIME_STORE_ID_CORE_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `core_store` (`store_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Beperkingen voor tabel `catalog_product_entity_decimal`
--
ALTER TABLE `catalog_product_entity_decimal`
  ADD CONSTRAINT `FK_CAT_PRD_ENTT_DEC_ATTR_ID_EAV_ATTR_ATTR_ID` FOREIGN KEY (`attribute_id`) REFERENCES `eav_attribute` (`attribute_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_CAT_PRD_ENTT_DEC_ENTT_ID_CAT_PRD_ENTT_ENTT_ID` FOREIGN KEY (`entity_id`) REFERENCES `catalog_product_entity` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_CATALOG_PRODUCT_ENTITY_DECIMAL_STORE_ID_CORE_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `core_store` (`store_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Beperkingen voor tabel `catalog_product_entity_gallery`
--
ALTER TABLE `catalog_product_entity_gallery`
  ADD CONSTRAINT `FK_CAT_PRD_ENTT_GLR_ATTR_ID_EAV_ATTR_ATTR_ID` FOREIGN KEY (`attribute_id`) REFERENCES `eav_attribute` (`attribute_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_CAT_PRD_ENTT_GLR_ENTT_ID_CAT_PRD_ENTT_ENTT_ID` FOREIGN KEY (`entity_id`) REFERENCES `catalog_product_entity` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_CATALOG_PRODUCT_ENTITY_GALLERY_STORE_ID_CORE_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `core_store` (`store_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Beperkingen voor tabel `catalog_product_entity_int`
--
ALTER TABLE `catalog_product_entity_int`
  ADD CONSTRAINT `FK_CAT_PRD_ENTT_INT_ATTR_ID_EAV_ATTR_ATTR_ID` FOREIGN KEY (`attribute_id`) REFERENCES `eav_attribute` (`attribute_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_CAT_PRD_ENTT_INT_ENTT_ID_CAT_PRD_ENTT_ENTT_ID` FOREIGN KEY (`entity_id`) REFERENCES `catalog_product_entity` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_CATALOG_PRODUCT_ENTITY_INT_STORE_ID_CORE_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `core_store` (`store_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Beperkingen voor tabel `catalog_product_entity_media_gallery`
--
ALTER TABLE `catalog_product_entity_media_gallery`
  ADD CONSTRAINT `FK_CAT_PRD_ENTT_MDA_GLR_ATTR_ID_EAV_ATTR_ATTR_ID` FOREIGN KEY (`attribute_id`) REFERENCES `eav_attribute` (`attribute_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_CAT_PRD_ENTT_MDA_GLR_ENTT_ID_CAT_PRD_ENTT_ENTT_ID` FOREIGN KEY (`entity_id`) REFERENCES `catalog_product_entity` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Beperkingen voor tabel `catalog_product_entity_media_gallery_value`
--
ALTER TABLE `catalog_product_entity_media_gallery_value`
  ADD CONSTRAINT `FK_CAT_PRD_ENTT_MDA_GLR_VAL_VAL_ID_CAT_PRD_ENTT_MDA_GLR_VAL_ID` FOREIGN KEY (`value_id`) REFERENCES `catalog_product_entity_media_gallery` (`value_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_CAT_PRD_ENTT_MDA_GLR_VAL_STORE_ID_CORE_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `core_store` (`store_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Beperkingen voor tabel `catalog_product_entity_text`
--
ALTER TABLE `catalog_product_entity_text`
  ADD CONSTRAINT `FK_CAT_PRD_ENTT_TEXT_ATTR_ID_EAV_ATTR_ATTR_ID` FOREIGN KEY (`attribute_id`) REFERENCES `eav_attribute` (`attribute_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_CAT_PRD_ENTT_TEXT_ENTT_ID_CAT_PRD_ENTT_ENTT_ID` FOREIGN KEY (`entity_id`) REFERENCES `catalog_product_entity` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_CATALOG_PRODUCT_ENTITY_TEXT_STORE_ID_CORE_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `core_store` (`store_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Beperkingen voor tabel `catalog_product_entity_tier_price`
--
ALTER TABLE `catalog_product_entity_tier_price`
  ADD CONSTRAINT `FK_6E08D719F0501DD1D8E6D4EFF2511C85` FOREIGN KEY (`customer_group_id`) REFERENCES `customer_group` (`customer_group_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_CAT_PRD_ENTT_TIER_PRICE_ENTT_ID_CAT_PRD_ENTT_ENTT_ID` FOREIGN KEY (`entity_id`) REFERENCES `catalog_product_entity` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_CAT_PRD_ENTT_TIER_PRICE_WS_ID_CORE_WS_WS_ID` FOREIGN KEY (`website_id`) REFERENCES `core_website` (`website_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Beperkingen voor tabel `catalog_product_entity_varchar`
--
ALTER TABLE `catalog_product_entity_varchar`
  ADD CONSTRAINT `FK_CAT_PRD_ENTT_VCHR_ATTR_ID_EAV_ATTR_ATTR_ID` FOREIGN KEY (`attribute_id`) REFERENCES `eav_attribute` (`attribute_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_CAT_PRD_ENTT_VCHR_ENTT_ID_CAT_PRD_ENTT_ENTT_ID` FOREIGN KEY (`entity_id`) REFERENCES `catalog_product_entity` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_CATALOG_PRODUCT_ENTITY_VARCHAR_STORE_ID_CORE_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `core_store` (`store_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Beperkingen voor tabel `catalog_product_flat_1`
--
ALTER TABLE `catalog_product_flat_1`
  ADD CONSTRAINT `FK_CAT_PRD_FLAT_1_ENTT_ID_CAT_PRD_ENTT_ENTT_ID` FOREIGN KEY (`entity_id`) REFERENCES `catalog_product_entity` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Beperkingen voor tabel `catalog_product_index_eav`
--
ALTER TABLE `catalog_product_index_eav`
  ADD CONSTRAINT `FK_CAT_PRD_IDX_EAV_ATTR_ID_EAV_ATTR_ATTR_ID` FOREIGN KEY (`attribute_id`) REFERENCES `eav_attribute` (`attribute_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_CAT_PRD_IDX_EAV_ENTT_ID_CAT_PRD_ENTT_ENTT_ID` FOREIGN KEY (`entity_id`) REFERENCES `catalog_product_entity` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_CATALOG_PRODUCT_INDEX_EAV_STORE_ID_CORE_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `core_store` (`store_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Beperkingen voor tabel `catalog_product_index_eav_decimal`
--
ALTER TABLE `catalog_product_index_eav_decimal`
  ADD CONSTRAINT `FK_CAT_PRD_IDX_EAV_DEC_ATTR_ID_EAV_ATTR_ATTR_ID` FOREIGN KEY (`attribute_id`) REFERENCES `eav_attribute` (`attribute_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_CAT_PRD_IDX_EAV_DEC_ENTT_ID_CAT_PRD_ENTT_ENTT_ID` FOREIGN KEY (`entity_id`) REFERENCES `catalog_product_entity` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_CAT_PRD_IDX_EAV_DEC_STORE_ID_CORE_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `core_store` (`store_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Beperkingen voor tabel `catalog_product_index_price`
--
ALTER TABLE `catalog_product_index_price`
  ADD CONSTRAINT `FK_CAT_PRD_IDX_PRICE_CSTR_GROUP_ID_CSTR_GROUP_CSTR_GROUP_ID` FOREIGN KEY (`customer_group_id`) REFERENCES `customer_group` (`customer_group_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_CAT_PRD_IDX_PRICE_ENTT_ID_CAT_PRD_ENTT_ENTT_ID` FOREIGN KEY (`entity_id`) REFERENCES `catalog_product_entity` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_CAT_PRD_IDX_PRICE_WS_ID_CORE_WS_WS_ID` FOREIGN KEY (`website_id`) REFERENCES `core_website` (`website_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Beperkingen voor tabel `catalog_product_index_tier_price`
--
ALTER TABLE `catalog_product_index_tier_price`
  ADD CONSTRAINT `FK_CAT_PRD_IDX_TIER_PRICE_CSTR_GROUP_ID_CSTR_GROUP_CSTR_GROUP_ID` FOREIGN KEY (`customer_group_id`) REFERENCES `customer_group` (`customer_group_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_CAT_PRD_IDX_TIER_PRICE_ENTT_ID_CAT_PRD_ENTT_ENTT_ID` FOREIGN KEY (`entity_id`) REFERENCES `catalog_product_entity` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_CAT_PRD_IDX_TIER_PRICE_WS_ID_CORE_WS_WS_ID` FOREIGN KEY (`website_id`) REFERENCES `core_website` (`website_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Beperkingen voor tabel `catalog_product_index_website`
--
ALTER TABLE `catalog_product_index_website`
  ADD CONSTRAINT `FK_CAT_PRD_IDX_WS_WS_ID_CORE_WS_WS_ID` FOREIGN KEY (`website_id`) REFERENCES `core_website` (`website_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Beperkingen voor tabel `catalog_product_link`
--
ALTER TABLE `catalog_product_link`
  ADD CONSTRAINT `FK_CAT_PRD_LNK_LNKED_PRD_ID_CAT_PRD_ENTT_ENTT_ID` FOREIGN KEY (`linked_product_id`) REFERENCES `catalog_product_entity` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_CAT_PRD_LNK_PRD_ID_CAT_PRD_ENTT_ENTT_ID` FOREIGN KEY (`product_id`) REFERENCES `catalog_product_entity` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_CAT_PRD_LNK_LNK_TYPE_ID_CAT_PRD_LNK_TYPE_LNK_TYPE_ID` FOREIGN KEY (`link_type_id`) REFERENCES `catalog_product_link_type` (`link_type_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Beperkingen voor tabel `catalog_product_link_attribute`
--
ALTER TABLE `catalog_product_link_attribute`
  ADD CONSTRAINT `FK_CAT_PRD_LNK_ATTR_LNK_TYPE_ID_CAT_PRD_LNK_TYPE_LNK_TYPE_ID` FOREIGN KEY (`link_type_id`) REFERENCES `catalog_product_link_type` (`link_type_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Beperkingen voor tabel `catalog_product_link_attribute_decimal`
--
ALTER TABLE `catalog_product_link_attribute_decimal`
  ADD CONSTRAINT `FK_CAT_PRD_LNK_ATTR_DEC_LNK_ID_CAT_PRD_LNK_LNK_ID` FOREIGN KEY (`link_id`) REFERENCES `catalog_product_link` (`link_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_AB2EFA9A14F7BCF1D5400056203D14B6` FOREIGN KEY (`product_link_attribute_id`) REFERENCES `catalog_product_link_attribute` (`product_link_attribute_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Beperkingen voor tabel `catalog_product_link_attribute_int`
--
ALTER TABLE `catalog_product_link_attribute_int`
  ADD CONSTRAINT `FK_D6D878F8BA2A4282F8DDED7E6E3DE35C` FOREIGN KEY (`product_link_attribute_id`) REFERENCES `catalog_product_link_attribute` (`product_link_attribute_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_CAT_PRD_LNK_ATTR_INT_LNK_ID_CAT_PRD_LNK_LNK_ID` FOREIGN KEY (`link_id`) REFERENCES `catalog_product_link` (`link_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Beperkingen voor tabel `catalog_product_link_attribute_varchar`
--
ALTER TABLE `catalog_product_link_attribute_varchar`
  ADD CONSTRAINT `FK_CAT_PRD_LNK_ATTR_VCHR_LNK_ID_CAT_PRD_LNK_LNK_ID` FOREIGN KEY (`link_id`) REFERENCES `catalog_product_link` (`link_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_DEE9C4DA61CFCC01DFCF50F0D79CEA51` FOREIGN KEY (`product_link_attribute_id`) REFERENCES `catalog_product_link_attribute` (`product_link_attribute_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Beperkingen voor tabel `catalog_product_option`
--
ALTER TABLE `catalog_product_option`
  ADD CONSTRAINT `FK_CAT_PRD_OPT_PRD_ID_CAT_PRD_ENTT_ENTT_ID` FOREIGN KEY (`product_id`) REFERENCES `catalog_product_entity` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Beperkingen voor tabel `catalog_product_option_price`
--
ALTER TABLE `catalog_product_option_price`
  ADD CONSTRAINT `FK_CAT_PRD_OPT_PRICE_OPT_ID_CAT_PRD_OPT_OPT_ID` FOREIGN KEY (`option_id`) REFERENCES `catalog_product_option` (`option_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_CATALOG_PRODUCT_OPTION_PRICE_STORE_ID_CORE_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `core_store` (`store_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Beperkingen voor tabel `catalog_product_option_title`
--
ALTER TABLE `catalog_product_option_title`
  ADD CONSTRAINT `FK_CAT_PRD_OPT_TTL_OPT_ID_CAT_PRD_OPT_OPT_ID` FOREIGN KEY (`option_id`) REFERENCES `catalog_product_option` (`option_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_CATALOG_PRODUCT_OPTION_TITLE_STORE_ID_CORE_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `core_store` (`store_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Beperkingen voor tabel `catalog_product_option_type_price`
--
ALTER TABLE `catalog_product_option_type_price`
  ADD CONSTRAINT `FK_B523E3378E8602F376CC415825576B7F` FOREIGN KEY (`option_type_id`) REFERENCES `catalog_product_option_type_value` (`option_type_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_CAT_PRD_OPT_TYPE_PRICE_STORE_ID_CORE_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `core_store` (`store_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Beperkingen voor tabel `catalog_product_option_type_title`
--
ALTER TABLE `catalog_product_option_type_title`
  ADD CONSTRAINT `FK_C085B9CF2C2A302E8043FDEA1937D6A2` FOREIGN KEY (`option_type_id`) REFERENCES `catalog_product_option_type_value` (`option_type_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_CAT_PRD_OPT_TYPE_TTL_STORE_ID_CORE_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `core_store` (`store_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Beperkingen voor tabel `catalog_product_option_type_value`
--
ALTER TABLE `catalog_product_option_type_value`
  ADD CONSTRAINT `FK_CAT_PRD_OPT_TYPE_VAL_OPT_ID_CAT_PRD_OPT_OPT_ID` FOREIGN KEY (`option_id`) REFERENCES `catalog_product_option` (`option_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Beperkingen voor tabel `catalog_product_relation`
--
ALTER TABLE `catalog_product_relation`
  ADD CONSTRAINT `FK_CAT_PRD_RELATION_CHILD_ID_CAT_PRD_ENTT_ENTT_ID` FOREIGN KEY (`child_id`) REFERENCES `catalog_product_entity` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_CAT_PRD_RELATION_PARENT_ID_CAT_PRD_ENTT_ENTT_ID` FOREIGN KEY (`parent_id`) REFERENCES `catalog_product_entity` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Beperkingen voor tabel `catalog_product_super_attribute`
--
ALTER TABLE `catalog_product_super_attribute`
  ADD CONSTRAINT `FK_CAT_PRD_SPR_ATTR_PRD_ID_CAT_PRD_ENTT_ENTT_ID` FOREIGN KEY (`product_id`) REFERENCES `catalog_product_entity` (`entity_id`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- Beperkingen voor tabel `catalog_product_super_attribute_label`
--
ALTER TABLE `catalog_product_super_attribute_label`
  ADD CONSTRAINT `FK_309442281DF7784210ED82B2CC51E5D5` FOREIGN KEY (`product_super_attribute_id`) REFERENCES `catalog_product_super_attribute` (`product_super_attribute_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_CAT_PRD_SPR_ATTR_LBL_STORE_ID_CORE_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `core_store` (`store_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Beperkingen voor tabel `catalog_product_super_attribute_pricing`
--
ALTER TABLE `catalog_product_super_attribute_pricing`
  ADD CONSTRAINT `FK_CAT_PRD_SPR_ATTR_PRICING_WS_ID_CORE_WS_WS_ID` FOREIGN KEY (`website_id`) REFERENCES `core_website` (`website_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_CDE8813117106CFAA3AD209358F66332` FOREIGN KEY (`product_super_attribute_id`) REFERENCES `catalog_product_super_attribute` (`product_super_attribute_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Beperkingen voor tabel `catalog_product_super_link`
--
ALTER TABLE `catalog_product_super_link`
  ADD CONSTRAINT `FK_CAT_PRD_SPR_LNK_PRD_ID_CAT_PRD_ENTT_ENTT_ID` FOREIGN KEY (`product_id`) REFERENCES `catalog_product_entity` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_CAT_PRD_SPR_LNK_PARENT_ID_CAT_PRD_ENTT_ENTT_ID` FOREIGN KEY (`parent_id`) REFERENCES `catalog_product_entity` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Beperkingen voor tabel `catalog_product_website`
--
ALTER TABLE `catalog_product_website`
  ADD CONSTRAINT `FK_CATALOG_PRODUCT_WEBSITE_WEBSITE_ID_CORE_WEBSITE_WEBSITE_ID` FOREIGN KEY (`website_id`) REFERENCES `core_website` (`website_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_CAT_PRD_WS_PRD_ID_CAT_PRD_ENTT_ENTT_ID` FOREIGN KEY (`product_id`) REFERENCES `catalog_product_entity` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Beperkingen voor tabel `checkout_agreement_store`
--
ALTER TABLE `checkout_agreement_store`
  ADD CONSTRAINT `FK_CHKT_AGRT_STORE_AGRT_ID_CHKT_AGRT_AGRT_ID` FOREIGN KEY (`agreement_id`) REFERENCES `checkout_agreement` (`agreement_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_CHECKOUT_AGREEMENT_STORE_STORE_ID_CORE_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `core_store` (`store_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Beperkingen voor tabel `cms_block_store`
--
ALTER TABLE `cms_block_store`
  ADD CONSTRAINT `FK_CMS_BLOCK_STORE_BLOCK_ID_CMS_BLOCK_BLOCK_ID` FOREIGN KEY (`block_id`) REFERENCES `cms_block` (`block_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_CMS_BLOCK_STORE_STORE_ID_CORE_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `core_store` (`store_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Beperkingen voor tabel `cms_page_store`
--
ALTER TABLE `cms_page_store`
  ADD CONSTRAINT `FK_CMS_PAGE_STORE_PAGE_ID_CMS_PAGE_PAGE_ID` FOREIGN KEY (`page_id`) REFERENCES `cms_page` (`page_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_CMS_PAGE_STORE_STORE_ID_CORE_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `core_store` (`store_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Beperkingen voor tabel `core_layout_link`
--
ALTER TABLE `core_layout_link`
  ADD CONSTRAINT `FK_CORE_LAYOUT_LINK_STORE_ID_CORE_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `core_store` (`store_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_CORE_LYT_LNK_LYT_UPDATE_ID_CORE_LYT_UPDATE_LYT_UPDATE_ID` FOREIGN KEY (`layout_update_id`) REFERENCES `core_layout_update` (`layout_update_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Beperkingen voor tabel `core_store`
--
ALTER TABLE `core_store`
  ADD CONSTRAINT `FK_CORE_STORE_GROUP_ID_CORE_STORE_GROUP_GROUP_ID` FOREIGN KEY (`group_id`) REFERENCES `core_store_group` (`group_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_CORE_STORE_WEBSITE_ID_CORE_WEBSITE_WEBSITE_ID` FOREIGN KEY (`website_id`) REFERENCES `core_website` (`website_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Beperkingen voor tabel `core_store_group`
--
ALTER TABLE `core_store_group`
  ADD CONSTRAINT `FK_CORE_STORE_GROUP_WEBSITE_ID_CORE_WEBSITE_WEBSITE_ID` FOREIGN KEY (`website_id`) REFERENCES `core_website` (`website_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Beperkingen voor tabel `core_translate`
--
ALTER TABLE `core_translate`
  ADD CONSTRAINT `FK_CORE_TRANSLATE_STORE_ID_CORE_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `core_store` (`store_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Beperkingen voor tabel `core_url_rewrite`
--
ALTER TABLE `core_url_rewrite`
  ADD CONSTRAINT `FK_CORE_URL_REWRITE_PRODUCT_ID_CATALOG_CATEGORY_ENTITY_ENTITY_ID` FOREIGN KEY (`product_id`) REFERENCES `catalog_product_entity` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_CORE_URL_REWRITE_CTGR_ID_CAT_CTGR_ENTT_ENTT_ID` FOREIGN KEY (`category_id`) REFERENCES `catalog_category_entity` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_CORE_URL_REWRITE_STORE_ID_CORE_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `core_store` (`store_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Beperkingen voor tabel `core_variable_value`
--
ALTER TABLE `core_variable_value`
  ADD CONSTRAINT `FK_CORE_VARIABLE_VALUE_STORE_ID_CORE_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `core_store` (`store_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_CORE_VARIABLE_VALUE_VARIABLE_ID_CORE_VARIABLE_VARIABLE_ID` FOREIGN KEY (`variable_id`) REFERENCES `core_variable` (`variable_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Beperkingen voor tabel `coupon_aggregated`
--
ALTER TABLE `coupon_aggregated`
  ADD CONSTRAINT `FK_COUPON_AGGREGATED_STORE_ID_CORE_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `core_store` (`store_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Beperkingen voor tabel `coupon_aggregated_order`
--
ALTER TABLE `coupon_aggregated_order`
  ADD CONSTRAINT `FK_COUPON_AGGREGATED_ORDER_STORE_ID_CORE_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `core_store` (`store_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Beperkingen voor tabel `coupon_aggregated_updated`
--
ALTER TABLE `coupon_aggregated_updated`
  ADD CONSTRAINT `FK_COUPON_AGGREGATED_UPDATED_STORE_ID_CORE_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `core_store` (`store_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Beperkingen voor tabel `customer_address_entity`
--
ALTER TABLE `customer_address_entity`
  ADD CONSTRAINT `FK_CUSTOMER_ADDRESS_ENTITY_PARENT_ID_CUSTOMER_ENTITY_ENTITY_ID` FOREIGN KEY (`parent_id`) REFERENCES `customer_entity` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Beperkingen voor tabel `customer_address_entity_datetime`
--
ALTER TABLE `customer_address_entity_datetime`
  ADD CONSTRAINT `FK_CSTR_ADDR_ENTT_DTIME_ATTR_ID_EAV_ATTR_ATTR_ID` FOREIGN KEY (`attribute_id`) REFERENCES `eav_attribute` (`attribute_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_CSTR_ADDR_ENTT_DTIME_ENTT_ID_CSTR_ADDR_ENTT_ENTT_ID` FOREIGN KEY (`entity_id`) REFERENCES `customer_address_entity` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_CSTR_ADDR_ENTT_DTIME_ENTT_TYPE_ID_EAV_ENTT_TYPE_ENTT_TYPE_ID` FOREIGN KEY (`entity_type_id`) REFERENCES `eav_entity_type` (`entity_type_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Beperkingen voor tabel `customer_address_entity_decimal`
--
ALTER TABLE `customer_address_entity_decimal`
  ADD CONSTRAINT `FK_CSTR_ADDR_ENTT_DEC_ATTR_ID_EAV_ATTR_ATTR_ID` FOREIGN KEY (`attribute_id`) REFERENCES `eav_attribute` (`attribute_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_CSTR_ADDR_ENTT_DEC_ENTT_ID_CSTR_ADDR_ENTT_ENTT_ID` FOREIGN KEY (`entity_id`) REFERENCES `customer_address_entity` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_CSTR_ADDR_ENTT_DEC_ENTT_TYPE_ID_EAV_ENTT_TYPE_ENTT_TYPE_ID` FOREIGN KEY (`entity_type_id`) REFERENCES `eav_entity_type` (`entity_type_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Beperkingen voor tabel `customer_address_entity_int`
--
ALTER TABLE `customer_address_entity_int`
  ADD CONSTRAINT `FK_CSTR_ADDR_ENTT_INT_ATTR_ID_EAV_ATTR_ATTR_ID` FOREIGN KEY (`attribute_id`) REFERENCES `eav_attribute` (`attribute_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_CSTR_ADDR_ENTT_INT_ENTT_ID_CSTR_ADDR_ENTT_ENTT_ID` FOREIGN KEY (`entity_id`) REFERENCES `customer_address_entity` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_CSTR_ADDR_ENTT_INT_ENTT_TYPE_ID_EAV_ENTT_TYPE_ENTT_TYPE_ID` FOREIGN KEY (`entity_type_id`) REFERENCES `eav_entity_type` (`entity_type_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Beperkingen voor tabel `customer_address_entity_text`
--
ALTER TABLE `customer_address_entity_text`
  ADD CONSTRAINT `FK_CSTR_ADDR_ENTT_TEXT_ATTR_ID_EAV_ATTR_ATTR_ID` FOREIGN KEY (`attribute_id`) REFERENCES `eav_attribute` (`attribute_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_CSTR_ADDR_ENTT_TEXT_ENTT_ID_CSTR_ADDR_ENTT_ENTT_ID` FOREIGN KEY (`entity_id`) REFERENCES `customer_address_entity` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_CSTR_ADDR_ENTT_TEXT_ENTT_TYPE_ID_EAV_ENTT_TYPE_ENTT_TYPE_ID` FOREIGN KEY (`entity_type_id`) REFERENCES `eav_entity_type` (`entity_type_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Beperkingen voor tabel `customer_address_entity_varchar`
--
ALTER TABLE `customer_address_entity_varchar`
  ADD CONSTRAINT `FK_CSTR_ADDR_ENTT_VCHR_ATTR_ID_EAV_ATTR_ATTR_ID` FOREIGN KEY (`attribute_id`) REFERENCES `eav_attribute` (`attribute_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_CSTR_ADDR_ENTT_VCHR_ENTT_ID_CSTR_ADDR_ENTT_ENTT_ID` FOREIGN KEY (`entity_id`) REFERENCES `customer_address_entity` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_CSTR_ADDR_ENTT_VCHR_ENTT_TYPE_ID_EAV_ENTT_TYPE_ENTT_TYPE_ID` FOREIGN KEY (`entity_type_id`) REFERENCES `eav_entity_type` (`entity_type_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Beperkingen voor tabel `customer_eav_attribute`
--
ALTER TABLE `customer_eav_attribute`
  ADD CONSTRAINT `FK_CSTR_EAV_ATTR_ATTR_ID_EAV_ATTR_ATTR_ID` FOREIGN KEY (`attribute_id`) REFERENCES `eav_attribute` (`attribute_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Beperkingen voor tabel `customer_eav_attribute_website`
--
ALTER TABLE `customer_eav_attribute_website`
  ADD CONSTRAINT `FK_CSTR_EAV_ATTR_WS_ATTR_ID_EAV_ATTR_ATTR_ID` FOREIGN KEY (`attribute_id`) REFERENCES `eav_attribute` (`attribute_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_CSTR_EAV_ATTR_WS_WS_ID_CORE_WS_WS_ID` FOREIGN KEY (`website_id`) REFERENCES `core_website` (`website_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Beperkingen voor tabel `customer_entity`
--
ALTER TABLE `customer_entity`
  ADD CONSTRAINT `FK_CUSTOMER_ENTITY_STORE_ID_CORE_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `core_store` (`store_id`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_CUSTOMER_ENTITY_WEBSITE_ID_CORE_WEBSITE_WEBSITE_ID` FOREIGN KEY (`website_id`) REFERENCES `core_website` (`website_id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Beperkingen voor tabel `customer_entity_datetime`
--
ALTER TABLE `customer_entity_datetime`
  ADD CONSTRAINT `FK_CSTR_ENTT_DTIME_ATTR_ID_EAV_ATTR_ATTR_ID` FOREIGN KEY (`attribute_id`) REFERENCES `eav_attribute` (`attribute_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_CUSTOMER_ENTITY_DATETIME_ENTITY_ID_CUSTOMER_ENTITY_ENTITY_ID` FOREIGN KEY (`entity_id`) REFERENCES `customer_entity` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_CSTR_ENTT_DTIME_ENTT_TYPE_ID_EAV_ENTT_TYPE_ENTT_TYPE_ID` FOREIGN KEY (`entity_type_id`) REFERENCES `eav_entity_type` (`entity_type_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Beperkingen voor tabel `customer_entity_decimal`
--
ALTER TABLE `customer_entity_decimal`
  ADD CONSTRAINT `FK_CSTR_ENTT_DEC_ATTR_ID_EAV_ATTR_ATTR_ID` FOREIGN KEY (`attribute_id`) REFERENCES `eav_attribute` (`attribute_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_CUSTOMER_ENTITY_DECIMAL_ENTITY_ID_CUSTOMER_ENTITY_ENTITY_ID` FOREIGN KEY (`entity_id`) REFERENCES `customer_entity` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_CSTR_ENTT_DEC_ENTT_TYPE_ID_EAV_ENTT_TYPE_ENTT_TYPE_ID` FOREIGN KEY (`entity_type_id`) REFERENCES `eav_entity_type` (`entity_type_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Beperkingen voor tabel `customer_entity_int`
--
ALTER TABLE `customer_entity_int`
  ADD CONSTRAINT `FK_CUSTOMER_ENTITY_INT_ATTRIBUTE_ID_EAV_ATTRIBUTE_ATTRIBUTE_ID` FOREIGN KEY (`attribute_id`) REFERENCES `eav_attribute` (`attribute_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_CUSTOMER_ENTITY_INT_ENTITY_ID_CUSTOMER_ENTITY_ENTITY_ID` FOREIGN KEY (`entity_id`) REFERENCES `customer_entity` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_CSTR_ENTT_INT_ENTT_TYPE_ID_EAV_ENTT_TYPE_ENTT_TYPE_ID` FOREIGN KEY (`entity_type_id`) REFERENCES `eav_entity_type` (`entity_type_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Beperkingen voor tabel `customer_entity_text`
--
ALTER TABLE `customer_entity_text`
  ADD CONSTRAINT `FK_CUSTOMER_ENTITY_TEXT_ATTRIBUTE_ID_EAV_ATTRIBUTE_ATTRIBUTE_ID` FOREIGN KEY (`attribute_id`) REFERENCES `eav_attribute` (`attribute_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_CUSTOMER_ENTITY_TEXT_ENTITY_ID_CUSTOMER_ENTITY_ENTITY_ID` FOREIGN KEY (`entity_id`) REFERENCES `customer_entity` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_CSTR_ENTT_TEXT_ENTT_TYPE_ID_EAV_ENTT_TYPE_ENTT_TYPE_ID` FOREIGN KEY (`entity_type_id`) REFERENCES `eav_entity_type` (`entity_type_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Beperkingen voor tabel `customer_entity_varchar`
--
ALTER TABLE `customer_entity_varchar`
  ADD CONSTRAINT `FK_CSTR_ENTT_VCHR_ATTR_ID_EAV_ATTR_ATTR_ID` FOREIGN KEY (`attribute_id`) REFERENCES `eav_attribute` (`attribute_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_CUSTOMER_ENTITY_VARCHAR_ENTITY_ID_CUSTOMER_ENTITY_ENTITY_ID` FOREIGN KEY (`entity_id`) REFERENCES `customer_entity` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_CSTR_ENTT_VCHR_ENTT_TYPE_ID_EAV_ENTT_TYPE_ENTT_TYPE_ID` FOREIGN KEY (`entity_type_id`) REFERENCES `eav_entity_type` (`entity_type_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Beperkingen voor tabel `customer_form_attribute`
--
ALTER TABLE `customer_form_attribute`
  ADD CONSTRAINT `FK_CSTR_FORM_ATTR_ATTR_ID_EAV_ATTR_ATTR_ID` FOREIGN KEY (`attribute_id`) REFERENCES `eav_attribute` (`attribute_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Beperkingen voor tabel `dataflow_batch`
--
ALTER TABLE `dataflow_batch`
  ADD CONSTRAINT `FK_DATAFLOW_BATCH_PROFILE_ID_DATAFLOW_PROFILE_PROFILE_ID` FOREIGN KEY (`profile_id`) REFERENCES `dataflow_profile` (`profile_id`) ON DELETE CASCADE ON UPDATE NO ACTION,
  ADD CONSTRAINT `FK_DATAFLOW_BATCH_STORE_ID_CORE_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `core_store` (`store_id`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- Beperkingen voor tabel `dataflow_batch_export`
--
ALTER TABLE `dataflow_batch_export`
  ADD CONSTRAINT `FK_DATAFLOW_BATCH_EXPORT_BATCH_ID_DATAFLOW_BATCH_BATCH_ID` FOREIGN KEY (`batch_id`) REFERENCES `dataflow_batch` (`batch_id`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- Beperkingen voor tabel `dataflow_batch_import`
--
ALTER TABLE `dataflow_batch_import`
  ADD CONSTRAINT `FK_DATAFLOW_BATCH_IMPORT_BATCH_ID_DATAFLOW_BATCH_BATCH_ID` FOREIGN KEY (`batch_id`) REFERENCES `dataflow_batch` (`batch_id`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- Beperkingen voor tabel `dataflow_import_data`
--
ALTER TABLE `dataflow_import_data`
  ADD CONSTRAINT `FK_DATAFLOW_IMPORT_DATA_SESSION_ID_DATAFLOW_SESSION_SESSION_ID` FOREIGN KEY (`session_id`) REFERENCES `dataflow_session` (`session_id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Beperkingen voor tabel `dataflow_profile_history`
--
ALTER TABLE `dataflow_profile_history`
  ADD CONSTRAINT `FK_AEA06B0C500063D3CE6EA671AE776645` FOREIGN KEY (`profile_id`) REFERENCES `dataflow_profile` (`profile_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Beperkingen voor tabel `design_change`
--
ALTER TABLE `design_change`
  ADD CONSTRAINT `FK_DESIGN_CHANGE_STORE_ID_CORE_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `core_store` (`store_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Beperkingen voor tabel `directory_country_region_name`
--
ALTER TABLE `directory_country_region_name`
  ADD CONSTRAINT `FK_D7CFDEB379F775328EB6F62695E2B3E1` FOREIGN KEY (`region_id`) REFERENCES `directory_country_region` (`region_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Beperkingen voor tabel `downloadable_link`
--
ALTER TABLE `downloadable_link`
  ADD CONSTRAINT `FK_DOWNLOADABLE_LINK_PRODUCT_ID_CATALOG_PRODUCT_ENTITY_ENTITY_ID` FOREIGN KEY (`product_id`) REFERENCES `catalog_product_entity` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Beperkingen voor tabel `downloadable_link_price`
--
ALTER TABLE `downloadable_link_price`
  ADD CONSTRAINT `FK_DOWNLOADABLE_LINK_PRICE_LINK_ID_DOWNLOADABLE_LINK_LINK_ID` FOREIGN KEY (`link_id`) REFERENCES `downloadable_link` (`link_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_DOWNLOADABLE_LINK_PRICE_WEBSITE_ID_CORE_WEBSITE_WEBSITE_ID` FOREIGN KEY (`website_id`) REFERENCES `core_website` (`website_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Beperkingen voor tabel `downloadable_link_purchased`
--
ALTER TABLE `downloadable_link_purchased`
  ADD CONSTRAINT `FK_DL_LNK_PURCHASED_CSTR_ID_CSTR_ENTT_ENTT_ID` FOREIGN KEY (`customer_id`) REFERENCES `customer_entity` (`entity_id`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_DL_LNK_PURCHASED_ORDER_ID_SALES_FLAT_ORDER_ENTT_ID` FOREIGN KEY (`order_id`) REFERENCES `sales_flat_order` (`entity_id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Beperkingen voor tabel `downloadable_link_purchased_item`
--
ALTER TABLE `downloadable_link_purchased_item`
  ADD CONSTRAINT `FK_46CC8E252307CE62F00A8F1887512A39` FOREIGN KEY (`purchased_id`) REFERENCES `downloadable_link_purchased` (`purchased_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_B219BF25756700DEE44550B21220ECCE` FOREIGN KEY (`order_item_id`) REFERENCES `sales_flat_order_item` (`item_id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Beperkingen voor tabel `downloadable_link_title`
--
ALTER TABLE `downloadable_link_title`
  ADD CONSTRAINT `FK_DOWNLOADABLE_LINK_TITLE_LINK_ID_DOWNLOADABLE_LINK_LINK_ID` FOREIGN KEY (`link_id`) REFERENCES `downloadable_link` (`link_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_DOWNLOADABLE_LINK_TITLE_STORE_ID_CORE_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `core_store` (`store_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Beperkingen voor tabel `downloadable_sample`
--
ALTER TABLE `downloadable_sample`
  ADD CONSTRAINT `FK_DL_SAMPLE_PRD_ID_CAT_PRD_ENTT_ENTT_ID` FOREIGN KEY (`product_id`) REFERENCES `catalog_product_entity` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Beperkingen voor tabel `downloadable_sample_title`
--
ALTER TABLE `downloadable_sample_title`
  ADD CONSTRAINT `FK_DL_SAMPLE_TTL_SAMPLE_ID_DL_SAMPLE_SAMPLE_ID` FOREIGN KEY (`sample_id`) REFERENCES `downloadable_sample` (`sample_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_DOWNLOADABLE_SAMPLE_TITLE_STORE_ID_CORE_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `core_store` (`store_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Beperkingen voor tabel `eav_attribute`
--
ALTER TABLE `eav_attribute`
  ADD CONSTRAINT `FK_EAV_ATTRIBUTE_ENTITY_TYPE_ID_EAV_ENTITY_TYPE_ENTITY_TYPE_ID` FOREIGN KEY (`entity_type_id`) REFERENCES `eav_entity_type` (`entity_type_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Beperkingen voor tabel `eav_attribute_group`
--
ALTER TABLE `eav_attribute_group`
  ADD CONSTRAINT `FK_EAV_ATTR_GROUP_ATTR_SET_ID_EAV_ATTR_SET_ATTR_SET_ID` FOREIGN KEY (`attribute_set_id`) REFERENCES `eav_attribute_set` (`attribute_set_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Beperkingen voor tabel `eav_attribute_label`
--
ALTER TABLE `eav_attribute_label`
  ADD CONSTRAINT `FK_EAV_ATTRIBUTE_LABEL_ATTRIBUTE_ID_EAV_ATTRIBUTE_ATTRIBUTE_ID` FOREIGN KEY (`attribute_id`) REFERENCES `eav_attribute` (`attribute_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_EAV_ATTRIBUTE_LABEL_STORE_ID_CORE_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `core_store` (`store_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Beperkingen voor tabel `eav_attribute_option`
--
ALTER TABLE `eav_attribute_option`
  ADD CONSTRAINT `FK_EAV_ATTRIBUTE_OPTION_ATTRIBUTE_ID_EAV_ATTRIBUTE_ATTRIBUTE_ID` FOREIGN KEY (`attribute_id`) REFERENCES `eav_attribute` (`attribute_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Beperkingen voor tabel `eav_attribute_option_value`
--
ALTER TABLE `eav_attribute_option_value`
  ADD CONSTRAINT `FK_EAV_ATTR_OPT_VAL_OPT_ID_EAV_ATTR_OPT_OPT_ID` FOREIGN KEY (`option_id`) REFERENCES `eav_attribute_option` (`option_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_EAV_ATTRIBUTE_OPTION_VALUE_STORE_ID_CORE_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `core_store` (`store_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Beperkingen voor tabel `eav_attribute_set`
--
ALTER TABLE `eav_attribute_set`
  ADD CONSTRAINT `FK_EAV_ATTR_SET_ENTT_TYPE_ID_EAV_ENTT_TYPE_ENTT_TYPE_ID` FOREIGN KEY (`entity_type_id`) REFERENCES `eav_entity_type` (`entity_type_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Beperkingen voor tabel `eav_entity`
--
ALTER TABLE `eav_entity`
  ADD CONSTRAINT `FK_EAV_ENTITY_ENTITY_TYPE_ID_EAV_ENTITY_TYPE_ENTITY_TYPE_ID` FOREIGN KEY (`entity_type_id`) REFERENCES `eav_entity_type` (`entity_type_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_EAV_ENTITY_STORE_ID_CORE_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `core_store` (`store_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Beperkingen voor tabel `eav_entity_attribute`
--
ALTER TABLE `eav_entity_attribute`
  ADD CONSTRAINT `FK_EAV_ENTITY_ATTRIBUTE_ATTRIBUTE_ID_EAV_ATTRIBUTE_ATTRIBUTE_ID` FOREIGN KEY (`attribute_id`) REFERENCES `eav_attribute` (`attribute_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_EAV_ENTT_ATTR_ATTR_GROUP_ID_EAV_ATTR_GROUP_ATTR_GROUP_ID` FOREIGN KEY (`attribute_group_id`) REFERENCES `eav_attribute_group` (`attribute_group_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Beperkingen voor tabel `eav_entity_datetime`
--
ALTER TABLE `eav_entity_datetime`
  ADD CONSTRAINT `FK_EAV_ENTITY_DATETIME_ENTITY_ID_EAV_ENTITY_ENTITY_ID` FOREIGN KEY (`entity_id`) REFERENCES `eav_entity` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_EAV_ENTT_DTIME_ENTT_TYPE_ID_EAV_ENTT_TYPE_ENTT_TYPE_ID` FOREIGN KEY (`entity_type_id`) REFERENCES `eav_entity_type` (`entity_type_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_EAV_ENTITY_DATETIME_STORE_ID_CORE_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `core_store` (`store_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Beperkingen voor tabel `eav_entity_decimal`
--
ALTER TABLE `eav_entity_decimal`
  ADD CONSTRAINT `FK_EAV_ENTITY_DECIMAL_ENTITY_ID_EAV_ENTITY_ENTITY_ID` FOREIGN KEY (`entity_id`) REFERENCES `eav_entity` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_EAV_ENTT_DEC_ENTT_TYPE_ID_EAV_ENTT_TYPE_ENTT_TYPE_ID` FOREIGN KEY (`entity_type_id`) REFERENCES `eav_entity_type` (`entity_type_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_EAV_ENTITY_DECIMAL_STORE_ID_CORE_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `core_store` (`store_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Beperkingen voor tabel `eav_entity_int`
--
ALTER TABLE `eav_entity_int`
  ADD CONSTRAINT `FK_EAV_ENTITY_INT_ENTITY_ID_EAV_ENTITY_ENTITY_ID` FOREIGN KEY (`entity_id`) REFERENCES `eav_entity` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_EAV_ENTITY_INT_ENTITY_TYPE_ID_EAV_ENTITY_TYPE_ENTITY_TYPE_ID` FOREIGN KEY (`entity_type_id`) REFERENCES `eav_entity_type` (`entity_type_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_EAV_ENTITY_INT_STORE_ID_CORE_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `core_store` (`store_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Beperkingen voor tabel `eav_entity_store`
--
ALTER TABLE `eav_entity_store`
  ADD CONSTRAINT `FK_EAV_ENTT_STORE_ENTT_TYPE_ID_EAV_ENTT_TYPE_ENTT_TYPE_ID` FOREIGN KEY (`entity_type_id`) REFERENCES `eav_entity_type` (`entity_type_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_EAV_ENTITY_STORE_STORE_ID_CORE_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `core_store` (`store_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Beperkingen voor tabel `eav_entity_text`
--
ALTER TABLE `eav_entity_text`
  ADD CONSTRAINT `FK_EAV_ENTITY_TEXT_ENTITY_ID_EAV_ENTITY_ENTITY_ID` FOREIGN KEY (`entity_id`) REFERENCES `eav_entity` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_EAV_ENTITY_TEXT_ENTITY_TYPE_ID_EAV_ENTITY_TYPE_ENTITY_TYPE_ID` FOREIGN KEY (`entity_type_id`) REFERENCES `eav_entity_type` (`entity_type_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_EAV_ENTITY_TEXT_STORE_ID_CORE_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `core_store` (`store_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Beperkingen voor tabel `eav_entity_varchar`
--
ALTER TABLE `eav_entity_varchar`
  ADD CONSTRAINT `FK_EAV_ENTITY_VARCHAR_ENTITY_ID_EAV_ENTITY_ENTITY_ID` FOREIGN KEY (`entity_id`) REFERENCES `eav_entity` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_EAV_ENTT_VCHR_ENTT_TYPE_ID_EAV_ENTT_TYPE_ENTT_TYPE_ID` FOREIGN KEY (`entity_type_id`) REFERENCES `eav_entity_type` (`entity_type_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_EAV_ENTITY_VARCHAR_STORE_ID_CORE_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `core_store` (`store_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Beperkingen voor tabel `eav_form_element`
--
ALTER TABLE `eav_form_element`
  ADD CONSTRAINT `FK_EAV_FORM_ELEMENT_ATTRIBUTE_ID_EAV_ATTRIBUTE_ATTRIBUTE_ID` FOREIGN KEY (`attribute_id`) REFERENCES `eav_attribute` (`attribute_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_EAV_FORM_ELEMENT_FIELDSET_ID_EAV_FORM_FIELDSET_FIELDSET_ID` FOREIGN KEY (`fieldset_id`) REFERENCES `eav_form_fieldset` (`fieldset_id`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_EAV_FORM_ELEMENT_TYPE_ID_EAV_FORM_TYPE_TYPE_ID` FOREIGN KEY (`type_id`) REFERENCES `eav_form_type` (`type_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Beperkingen voor tabel `eav_form_fieldset`
--
ALTER TABLE `eav_form_fieldset`
  ADD CONSTRAINT `FK_EAV_FORM_FIELDSET_TYPE_ID_EAV_FORM_TYPE_TYPE_ID` FOREIGN KEY (`type_id`) REFERENCES `eav_form_type` (`type_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Beperkingen voor tabel `eav_form_fieldset_label`
--
ALTER TABLE `eav_form_fieldset_label`
  ADD CONSTRAINT `FK_EAV_FORM_FSET_LBL_FSET_ID_EAV_FORM_FSET_FSET_ID` FOREIGN KEY (`fieldset_id`) REFERENCES `eav_form_fieldset` (`fieldset_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_EAV_FORM_FIELDSET_LABEL_STORE_ID_CORE_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `core_store` (`store_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Beperkingen voor tabel `eav_form_type`
--
ALTER TABLE `eav_form_type`
  ADD CONSTRAINT `FK_EAV_FORM_TYPE_STORE_ID_CORE_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `core_store` (`store_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Beperkingen voor tabel `eav_form_type_entity`
--
ALTER TABLE `eav_form_type_entity`
  ADD CONSTRAINT `FK_EAV_FORM_TYPE_ENTT_ENTT_TYPE_ID_EAV_ENTT_TYPE_ENTT_TYPE_ID` FOREIGN KEY (`entity_type_id`) REFERENCES `eav_entity_type` (`entity_type_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_EAV_FORM_TYPE_ENTITY_TYPE_ID_EAV_FORM_TYPE_TYPE_ID` FOREIGN KEY (`type_id`) REFERENCES `eav_form_type` (`type_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Beperkingen voor tabel `index_process_event`
--
ALTER TABLE `index_process_event`
  ADD CONSTRAINT `FK_INDEX_PROCESS_EVENT_EVENT_ID_INDEX_EVENT_EVENT_ID` FOREIGN KEY (`event_id`) REFERENCES `index_event` (`event_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_INDEX_PROCESS_EVENT_PROCESS_ID_INDEX_PROCESS_PROCESS_ID` FOREIGN KEY (`process_id`) REFERENCES `index_process` (`process_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Beperkingen voor tabel `newsletter_problem`
--
ALTER TABLE `newsletter_problem`
  ADD CONSTRAINT `FK_NEWSLETTER_PROBLEM_QUEUE_ID_NEWSLETTER_QUEUE_QUEUE_ID` FOREIGN KEY (`queue_id`) REFERENCES `newsletter_queue` (`queue_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_NLTTR_PROBLEM_SUBSCRIBER_ID_NLTTR_SUBSCRIBER_SUBSCRIBER_ID` FOREIGN KEY (`subscriber_id`) REFERENCES `newsletter_subscriber` (`subscriber_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Beperkingen voor tabel `newsletter_queue`
--
ALTER TABLE `newsletter_queue`
  ADD CONSTRAINT `FK_NEWSLETTER_QUEUE_TEMPLATE_ID_NEWSLETTER_TEMPLATE_TEMPLATE_ID` FOREIGN KEY (`template_id`) REFERENCES `newsletter_template` (`template_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Beperkingen voor tabel `newsletter_queue_link`
--
ALTER TABLE `newsletter_queue_link`
  ADD CONSTRAINT `FK_NEWSLETTER_QUEUE_LINK_QUEUE_ID_NEWSLETTER_QUEUE_QUEUE_ID` FOREIGN KEY (`queue_id`) REFERENCES `newsletter_queue` (`queue_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_NLTTR_QUEUE_LNK_SUBSCRIBER_ID_NLTTR_SUBSCRIBER_SUBSCRIBER_ID` FOREIGN KEY (`subscriber_id`) REFERENCES `newsletter_subscriber` (`subscriber_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Beperkingen voor tabel `newsletter_queue_store_link`
--
ALTER TABLE `newsletter_queue_store_link`
  ADD CONSTRAINT `FK_NLTTR_QUEUE_STORE_LNK_QUEUE_ID_NLTTR_QUEUE_QUEUE_ID` FOREIGN KEY (`queue_id`) REFERENCES `newsletter_queue` (`queue_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_NEWSLETTER_QUEUE_STORE_LINK_STORE_ID_CORE_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `core_store` (`store_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Beperkingen voor tabel `newsletter_subscriber`
--
ALTER TABLE `newsletter_subscriber`
  ADD CONSTRAINT `FK_NEWSLETTER_SUBSCRIBER_STORE_ID_CORE_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `core_store` (`store_id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Beperkingen voor tabel `paypal_cert`
--
ALTER TABLE `paypal_cert`
  ADD CONSTRAINT `FK_PAYPAL_CERT_WEBSITE_ID_CORE_WEBSITE_WEBSITE_ID` FOREIGN KEY (`website_id`) REFERENCES `core_website` (`website_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Beperkingen voor tabel `paypal_settlement_report_row`
--
ALTER TABLE `paypal_settlement_report_row`
  ADD CONSTRAINT `FK_E183E488F593E0DE10C6EBFFEBAC9B55` FOREIGN KEY (`report_id`) REFERENCES `paypal_settlement_report` (`report_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Beperkingen voor tabel `persistent_session`
--
ALTER TABLE `persistent_session`
  ADD CONSTRAINT `FK_PERSISTENT_SESSION_CUSTOMER_ID_CUSTOMER_ENTITY_ENTITY_ID` FOREIGN KEY (`customer_id`) REFERENCES `customer_entity` (`entity_id`) ON DELETE CASCADE ON UPDATE NO ACTION,
  ADD CONSTRAINT `FK_PERSISTENT_SESSION_WEBSITE_ID_CORE_WEBSITE_WEBSITE_ID` FOREIGN KEY (`website_id`) REFERENCES `core_website` (`website_id`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- Beperkingen voor tabel `poll`
--
ALTER TABLE `poll`
  ADD CONSTRAINT `FK_POLL_STORE_ID_CORE_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `core_store` (`store_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Beperkingen voor tabel `poll_answer`
--
ALTER TABLE `poll_answer`
  ADD CONSTRAINT `FK_POLL_ANSWER_POLL_ID_POLL_POLL_ID` FOREIGN KEY (`poll_id`) REFERENCES `poll` (`poll_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Beperkingen voor tabel `poll_store`
--
ALTER TABLE `poll_store`
  ADD CONSTRAINT `FK_POLL_STORE_POLL_ID_POLL_POLL_ID` FOREIGN KEY (`poll_id`) REFERENCES `poll` (`poll_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_POLL_STORE_STORE_ID_CORE_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `core_store` (`store_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Beperkingen voor tabel `poll_vote`
--
ALTER TABLE `poll_vote`
  ADD CONSTRAINT `FK_POLL_VOTE_POLL_ANSWER_ID_POLL_ANSWER_ANSWER_ID` FOREIGN KEY (`poll_answer_id`) REFERENCES `poll_answer` (`answer_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Beperkingen voor tabel `product_alert_price`
--
ALTER TABLE `product_alert_price`
  ADD CONSTRAINT `FK_PRODUCT_ALERT_PRICE_CUSTOMER_ID_CUSTOMER_ENTITY_ENTITY_ID` FOREIGN KEY (`customer_id`) REFERENCES `customer_entity` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_PRD_ALERT_PRICE_PRD_ID_CAT_PRD_ENTT_ENTT_ID` FOREIGN KEY (`product_id`) REFERENCES `catalog_product_entity` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_PRODUCT_ALERT_PRICE_WEBSITE_ID_CORE_WEBSITE_WEBSITE_ID` FOREIGN KEY (`website_id`) REFERENCES `core_website` (`website_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Beperkingen voor tabel `product_alert_stock`
--
ALTER TABLE `product_alert_stock`
  ADD CONSTRAINT `FK_PRODUCT_ALERT_STOCK_WEBSITE_ID_CORE_WEBSITE_WEBSITE_ID` FOREIGN KEY (`website_id`) REFERENCES `core_website` (`website_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_PRODUCT_ALERT_STOCK_CUSTOMER_ID_CUSTOMER_ENTITY_ENTITY_ID` FOREIGN KEY (`customer_id`) REFERENCES `customer_entity` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_PRD_ALERT_STOCK_PRD_ID_CAT_PRD_ENTT_ENTT_ID` FOREIGN KEY (`product_id`) REFERENCES `catalog_product_entity` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Beperkingen voor tabel `rating`
--
ALTER TABLE `rating`
  ADD CONSTRAINT `FK_RATING_ENTITY_ID_RATING_ENTITY_ENTITY_ID` FOREIGN KEY (`entity_id`) REFERENCES `rating_entity` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Beperkingen voor tabel `rating_option`
--
ALTER TABLE `rating_option`
  ADD CONSTRAINT `FK_RATING_OPTION_RATING_ID_RATING_RATING_ID` FOREIGN KEY (`rating_id`) REFERENCES `rating` (`rating_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Beperkingen voor tabel `rating_option_vote`
--
ALTER TABLE `rating_option_vote`
  ADD CONSTRAINT `FK_RATING_OPTION_VOTE_REVIEW_ID_REVIEW_REVIEW_ID` FOREIGN KEY (`review_id`) REFERENCES `review` (`review_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_RATING_OPTION_VOTE_OPTION_ID_RATING_OPTION_OPTION_ID` FOREIGN KEY (`option_id`) REFERENCES `rating_option` (`option_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Beperkingen voor tabel `rating_option_vote_aggregated`
--
ALTER TABLE `rating_option_vote_aggregated`
  ADD CONSTRAINT `FK_RATING_OPTION_VOTE_AGGREGATED_RATING_ID_RATING_RATING_ID` FOREIGN KEY (`rating_id`) REFERENCES `rating` (`rating_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_RATING_OPTION_VOTE_AGGREGATED_STORE_ID_CORE_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `core_store` (`store_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Beperkingen voor tabel `rating_store`
--
ALTER TABLE `rating_store`
  ADD CONSTRAINT `FK_RATING_STORE_STORE_ID_CORE_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `core_store` (`store_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_RATING_STORE_RATING_ID_RATING_RATING_ID` FOREIGN KEY (`rating_id`) REFERENCES `rating` (`rating_id`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- Beperkingen voor tabel `rating_title`
--
ALTER TABLE `rating_title`
  ADD CONSTRAINT `FK_RATING_TITLE_RATING_ID_RATING_RATING_ID` FOREIGN KEY (`rating_id`) REFERENCES `rating` (`rating_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_RATING_TITLE_STORE_ID_CORE_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `core_store` (`store_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Beperkingen voor tabel `report_compared_product_index`
--
ALTER TABLE `report_compared_product_index`
  ADD CONSTRAINT `FK_REPORT_CMPD_PRD_IDX_CSTR_ID_CSTR_ENTT_ENTT_ID` FOREIGN KEY (`customer_id`) REFERENCES `customer_entity` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_REPORT_CMPD_PRD_IDX_PRD_ID_CAT_PRD_ENTT_ENTT_ID` FOREIGN KEY (`product_id`) REFERENCES `catalog_product_entity` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_REPORT_COMPARED_PRODUCT_INDEX_STORE_ID_CORE_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `core_store` (`store_id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Beperkingen voor tabel `report_event`
--
ALTER TABLE `report_event`
  ADD CONSTRAINT `FK_REPORT_EVENT_STORE_ID_CORE_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `core_store` (`store_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_REPORT_EVENT_EVENT_TYPE_ID_REPORT_EVENT_TYPES_EVENT_TYPE_ID` FOREIGN KEY (`event_type_id`) REFERENCES `report_event_types` (`event_type_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Beperkingen voor tabel `report_viewed_product_index`
--
ALTER TABLE `report_viewed_product_index`
  ADD CONSTRAINT `FK_REPORT_VIEWED_PRD_IDX_CSTR_ID_CSTR_ENTT_ENTT_ID` FOREIGN KEY (`customer_id`) REFERENCES `customer_entity` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_REPORT_VIEWED_PRD_IDX_PRD_ID_CAT_PRD_ENTT_ENTT_ID` FOREIGN KEY (`product_id`) REFERENCES `catalog_product_entity` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_REPORT_VIEWED_PRODUCT_INDEX_STORE_ID_CORE_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `core_store` (`store_id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Beperkingen voor tabel `review`
--
ALTER TABLE `review`
  ADD CONSTRAINT `FK_REVIEW_ENTITY_ID_REVIEW_ENTITY_ENTITY_ID` FOREIGN KEY (`entity_id`) REFERENCES `review_entity` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_REVIEW_STATUS_ID_REVIEW_STATUS_STATUS_ID` FOREIGN KEY (`status_id`) REFERENCES `review_status` (`status_id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Beperkingen voor tabel `review_detail`
--
ALTER TABLE `review_detail`
  ADD CONSTRAINT `FK_REVIEW_DETAIL_CUSTOMER_ID_CUSTOMER_ENTITY_ENTITY_ID` FOREIGN KEY (`customer_id`) REFERENCES `customer_entity` (`entity_id`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_REVIEW_DETAIL_REVIEW_ID_REVIEW_REVIEW_ID` FOREIGN KEY (`review_id`) REFERENCES `review` (`review_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_REVIEW_DETAIL_STORE_ID_CORE_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `core_store` (`store_id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Beperkingen voor tabel `review_entity_summary`
--
ALTER TABLE `review_entity_summary`
  ADD CONSTRAINT `FK_REVIEW_ENTITY_SUMMARY_STORE_ID_CORE_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `core_store` (`store_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Beperkingen voor tabel `review_store`
--
ALTER TABLE `review_store`
  ADD CONSTRAINT `FK_REVIEW_STORE_REVIEW_ID_REVIEW_REVIEW_ID` FOREIGN KEY (`review_id`) REFERENCES `review` (`review_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_REVIEW_STORE_STORE_ID_CORE_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `core_store` (`store_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Beperkingen voor tabel `salesrule_coupon`
--
ALTER TABLE `salesrule_coupon`
  ADD CONSTRAINT `FK_SALESRULE_COUPON_RULE_ID_SALESRULE_RULE_ID` FOREIGN KEY (`rule_id`) REFERENCES `salesrule` (`rule_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Beperkingen voor tabel `salesrule_coupon_usage`
--
ALTER TABLE `salesrule_coupon_usage`
  ADD CONSTRAINT `FK_SALESRULE_COUPON_USAGE_COUPON_ID_SALESRULE_COUPON_COUPON_ID` FOREIGN KEY (`coupon_id`) REFERENCES `salesrule_coupon` (`coupon_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_SALESRULE_COUPON_USAGE_CUSTOMER_ID_CUSTOMER_ENTITY_ENTITY_ID` FOREIGN KEY (`customer_id`) REFERENCES `customer_entity` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Beperkingen voor tabel `salesrule_customer`
--
ALTER TABLE `salesrule_customer`
  ADD CONSTRAINT `FK_SALESRULE_CUSTOMER_CUSTOMER_ID_CUSTOMER_ENTITY_ENTITY_ID` FOREIGN KEY (`customer_id`) REFERENCES `customer_entity` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_SALESRULE_CUSTOMER_RULE_ID_SALESRULE_RULE_ID` FOREIGN KEY (`rule_id`) REFERENCES `salesrule` (`rule_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Beperkingen voor tabel `salesrule_label`
--
ALTER TABLE `salesrule_label`
  ADD CONSTRAINT `FK_SALESRULE_LABEL_RULE_ID_SALESRULE_RULE_ID` FOREIGN KEY (`rule_id`) REFERENCES `salesrule` (`rule_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_SALESRULE_LABEL_STORE_ID_CORE_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `core_store` (`store_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Beperkingen voor tabel `salesrule_product_attribute`
--
ALTER TABLE `salesrule_product_attribute`
  ADD CONSTRAINT `FK_SALESRULE_PRD_ATTR_ATTR_ID_EAV_ATTR_ATTR_ID` FOREIGN KEY (`attribute_id`) REFERENCES `eav_attribute` (`attribute_id`) ON DELETE CASCADE ON UPDATE NO ACTION,
  ADD CONSTRAINT `FK_SALESRULE_PRD_ATTR_CSTR_GROUP_ID_CSTR_GROUP_CSTR_GROUP_ID` FOREIGN KEY (`customer_group_id`) REFERENCES `customer_group` (`customer_group_id`) ON DELETE CASCADE ON UPDATE NO ACTION,
  ADD CONSTRAINT `FK_SALESRULE_PRODUCT_ATTRIBUTE_RULE_ID_SALESRULE_RULE_ID` FOREIGN KEY (`rule_id`) REFERENCES `salesrule` (`rule_id`) ON DELETE CASCADE ON UPDATE NO ACTION,
  ADD CONSTRAINT `FK_SALESRULE_PRD_ATTR_WS_ID_CORE_WS_WS_ID` FOREIGN KEY (`website_id`) REFERENCES `core_website` (`website_id`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- Beperkingen voor tabel `sales_bestsellers_aggregated_daily`
--
ALTER TABLE `sales_bestsellers_aggregated_daily`
  ADD CONSTRAINT `FK_SALES_BESTSELLERS_AGGRED_DAILY_STORE_ID_CORE_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `core_store` (`store_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_SALES_BESTSELLERS_AGGRED_DAILY_PRD_ID_CAT_PRD_ENTT_ENTT_ID` FOREIGN KEY (`product_id`) REFERENCES `catalog_product_entity` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Beperkingen voor tabel `sales_bestsellers_aggregated_monthly`
--
ALTER TABLE `sales_bestsellers_aggregated_monthly`
  ADD CONSTRAINT `FK_SALES_BESTSELLERS_AGGRED_MONTHLY_STORE_ID_CORE_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `core_store` (`store_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_SALES_BESTSELLERS_AGGRED_MONTHLY_PRD_ID_CAT_PRD_ENTT_ENTT_ID` FOREIGN KEY (`product_id`) REFERENCES `catalog_product_entity` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Beperkingen voor tabel `sales_bestsellers_aggregated_yearly`
--
ALTER TABLE `sales_bestsellers_aggregated_yearly`
  ADD CONSTRAINT `FK_SALES_BESTSELLERS_AGGRED_YEARLY_STORE_ID_CORE_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `core_store` (`store_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_SALES_BESTSELLERS_AGGRED_YEARLY_PRD_ID_CAT_PRD_ENTT_ENTT_ID` FOREIGN KEY (`product_id`) REFERENCES `catalog_product_entity` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Beperkingen voor tabel `sales_billing_agreement`
--
ALTER TABLE `sales_billing_agreement`
  ADD CONSTRAINT `FK_SALES_BILLING_AGREEMENT_CUSTOMER_ID_CUSTOMER_ENTITY_ENTITY_ID` FOREIGN KEY (`customer_id`) REFERENCES `customer_entity` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_SALES_BILLING_AGREEMENT_STORE_ID_CORE_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `core_store` (`store_id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Beperkingen voor tabel `sales_billing_agreement_order`
--
ALTER TABLE `sales_billing_agreement_order`
  ADD CONSTRAINT `FK_SALES_BILLING_AGRT_ORDER_AGRT_ID_SALES_BILLING_AGRT_AGRT_ID` FOREIGN KEY (`agreement_id`) REFERENCES `sales_billing_agreement` (`agreement_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_SALES_BILLING_AGRT_ORDER_ORDER_ID_SALES_FLAT_ORDER_ENTT_ID` FOREIGN KEY (`order_id`) REFERENCES `sales_flat_order` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Beperkingen voor tabel `sales_flat_creditmemo`
--
ALTER TABLE `sales_flat_creditmemo`
  ADD CONSTRAINT `FK_SALES_FLAT_CREDITMEMO_ORDER_ID_SALES_FLAT_ORDER_ENTITY_ID` FOREIGN KEY (`order_id`) REFERENCES `sales_flat_order` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_SALES_FLAT_CREDITMEMO_STORE_ID_CORE_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `core_store` (`store_id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Beperkingen voor tabel `sales_flat_creditmemo_comment`
--
ALTER TABLE `sales_flat_creditmemo_comment`
  ADD CONSTRAINT `FK_B0FCB0B5467075BE63D474F2CD5F7804` FOREIGN KEY (`parent_id`) REFERENCES `sales_flat_creditmemo` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Beperkingen voor tabel `sales_flat_creditmemo_grid`
--
ALTER TABLE `sales_flat_creditmemo_grid`
  ADD CONSTRAINT `FK_78C711B225167A11CC077B03D1C8E1CC` FOREIGN KEY (`entity_id`) REFERENCES `sales_flat_creditmemo` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_SALES_FLAT_CREDITMEMO_GRID_STORE_ID_CORE_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `core_store` (`store_id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Beperkingen voor tabel `sales_flat_creditmemo_item`
--
ALTER TABLE `sales_flat_creditmemo_item`
  ADD CONSTRAINT `FK_306DAC836C699F0B5E13BE486557AC8A` FOREIGN KEY (`parent_id`) REFERENCES `sales_flat_creditmemo` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Beperkingen voor tabel `sales_flat_invoice`
--
ALTER TABLE `sales_flat_invoice`
  ADD CONSTRAINT `FK_SALES_FLAT_INVOICE_ORDER_ID_SALES_FLAT_ORDER_ENTITY_ID` FOREIGN KEY (`order_id`) REFERENCES `sales_flat_order` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_SALES_FLAT_INVOICE_STORE_ID_CORE_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `core_store` (`store_id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Beperkingen voor tabel `sales_flat_invoice_comment`
--
ALTER TABLE `sales_flat_invoice_comment`
  ADD CONSTRAINT `FK_5C4B36BBE5231A76AB8018B281ED50BC` FOREIGN KEY (`parent_id`) REFERENCES `sales_flat_invoice` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Beperkingen voor tabel `sales_flat_invoice_grid`
--
ALTER TABLE `sales_flat_invoice_grid`
  ADD CONSTRAINT `FK_SALES_FLAT_INVOICE_GRID_ENTT_ID_SALES_FLAT_INVOICE_ENTT_ID` FOREIGN KEY (`entity_id`) REFERENCES `sales_flat_invoice` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_SALES_FLAT_INVOICE_GRID_STORE_ID_CORE_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `core_store` (`store_id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Beperkingen voor tabel `sales_flat_invoice_item`
--
ALTER TABLE `sales_flat_invoice_item`
  ADD CONSTRAINT `FK_SALES_FLAT_INVOICE_ITEM_PARENT_ID_SALES_FLAT_INVOICE_ENTT_ID` FOREIGN KEY (`parent_id`) REFERENCES `sales_flat_invoice` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Beperkingen voor tabel `sales_flat_order`
--
ALTER TABLE `sales_flat_order`
  ADD CONSTRAINT `FK_SALES_FLAT_ORDER_CUSTOMER_ID_CUSTOMER_ENTITY_ENTITY_ID` FOREIGN KEY (`customer_id`) REFERENCES `customer_entity` (`entity_id`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_SALES_FLAT_ORDER_STORE_ID_CORE_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `core_store` (`store_id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Beperkingen voor tabel `sales_flat_order_address`
--
ALTER TABLE `sales_flat_order_address`
  ADD CONSTRAINT `FK_SALES_FLAT_ORDER_ADDRESS_PARENT_ID_SALES_FLAT_ORDER_ENTITY_ID` FOREIGN KEY (`parent_id`) REFERENCES `sales_flat_order` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Beperkingen voor tabel `sales_flat_order_grid`
--
ALTER TABLE `sales_flat_order_grid`
  ADD CONSTRAINT `FK_SALES_FLAT_ORDER_GRID_CUSTOMER_ID_CUSTOMER_ENTITY_ENTITY_ID` FOREIGN KEY (`customer_id`) REFERENCES `customer_entity` (`entity_id`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_SALES_FLAT_ORDER_GRID_ENTITY_ID_SALES_FLAT_ORDER_ENTITY_ID` FOREIGN KEY (`entity_id`) REFERENCES `sales_flat_order` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_SALES_FLAT_ORDER_GRID_STORE_ID_CORE_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `core_store` (`store_id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Beperkingen voor tabel `sales_flat_order_item`
--
ALTER TABLE `sales_flat_order_item`
  ADD CONSTRAINT `FK_SALES_FLAT_ORDER_ITEM_ORDER_ID_SALES_FLAT_ORDER_ENTITY_ID` FOREIGN KEY (`order_id`) REFERENCES `sales_flat_order` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_SALES_FLAT_ORDER_ITEM_STORE_ID_CORE_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `core_store` (`store_id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Beperkingen voor tabel `sales_flat_order_payment`
--
ALTER TABLE `sales_flat_order_payment`
  ADD CONSTRAINT `FK_SALES_FLAT_ORDER_PAYMENT_PARENT_ID_SALES_FLAT_ORDER_ENTITY_ID` FOREIGN KEY (`parent_id`) REFERENCES `sales_flat_order` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Beperkingen voor tabel `sales_flat_order_status_history`
--
ALTER TABLE `sales_flat_order_status_history`
  ADD CONSTRAINT `FK_CE7C71E74CB74DDACED337CEE6753D5E` FOREIGN KEY (`parent_id`) REFERENCES `sales_flat_order` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Beperkingen voor tabel `sales_flat_quote`
--
ALTER TABLE `sales_flat_quote`
  ADD CONSTRAINT `FK_SALES_FLAT_QUOTE_STORE_ID_CORE_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `core_store` (`store_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Beperkingen voor tabel `sales_flat_quote_address`
--
ALTER TABLE `sales_flat_quote_address`
  ADD CONSTRAINT `FK_SALES_FLAT_QUOTE_ADDRESS_QUOTE_ID_SALES_FLAT_QUOTE_ENTITY_ID` FOREIGN KEY (`quote_id`) REFERENCES `sales_flat_quote` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Beperkingen voor tabel `sales_flat_quote_address_item`
--
ALTER TABLE `sales_flat_quote_address_item`
  ADD CONSTRAINT `FK_2EF8E28181D666D94D4E30DC2B0F80BF` FOREIGN KEY (`quote_item_id`) REFERENCES `sales_flat_quote_item` (`item_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_A345FC758F20C314169CE27DCE53477F` FOREIGN KEY (`parent_item_id`) REFERENCES `sales_flat_quote_address_item` (`address_item_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_B521389746C00700D1B2B76EBBE53854` FOREIGN KEY (`quote_address_id`) REFERENCES `sales_flat_quote_address` (`address_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Beperkingen voor tabel `sales_flat_quote_item`
--
ALTER TABLE `sales_flat_quote_item`
  ADD CONSTRAINT `FK_B201DEB5DE51B791AF5C5BF87053C5A7` FOREIGN KEY (`parent_item_id`) REFERENCES `sales_flat_quote_item` (`item_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_SALES_FLAT_QUOTE_ITEM_PRD_ID_CAT_PRD_ENTT_ENTT_ID` FOREIGN KEY (`product_id`) REFERENCES `catalog_product_entity` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_SALES_FLAT_QUOTE_ITEM_QUOTE_ID_SALES_FLAT_QUOTE_ENTITY_ID` FOREIGN KEY (`quote_id`) REFERENCES `sales_flat_quote` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_SALES_FLAT_QUOTE_ITEM_STORE_ID_CORE_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `core_store` (`store_id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Beperkingen voor tabel `sales_flat_quote_item_option`
--
ALTER TABLE `sales_flat_quote_item_option`
  ADD CONSTRAINT `FK_5F20E478CA64B6891EA8A9D6C2735739` FOREIGN KEY (`item_id`) REFERENCES `sales_flat_quote_item` (`item_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Beperkingen voor tabel `sales_flat_quote_payment`
--
ALTER TABLE `sales_flat_quote_payment`
  ADD CONSTRAINT `FK_SALES_FLAT_QUOTE_PAYMENT_QUOTE_ID_SALES_FLAT_QUOTE_ENTITY_ID` FOREIGN KEY (`quote_id`) REFERENCES `sales_flat_quote` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Beperkingen voor tabel `sales_flat_quote_shipping_rate`
--
ALTER TABLE `sales_flat_quote_shipping_rate`
  ADD CONSTRAINT `FK_B1F177EFB73D3EDF5322BA64AC48D150` FOREIGN KEY (`address_id`) REFERENCES `sales_flat_quote_address` (`address_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Beperkingen voor tabel `sales_flat_shipment`
--
ALTER TABLE `sales_flat_shipment`
  ADD CONSTRAINT `FK_SALES_FLAT_SHIPMENT_ORDER_ID_SALES_FLAT_ORDER_ENTITY_ID` FOREIGN KEY (`order_id`) REFERENCES `sales_flat_order` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_SALES_FLAT_SHIPMENT_STORE_ID_CORE_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `core_store` (`store_id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Beperkingen voor tabel `sales_flat_shipment_comment`
--
ALTER TABLE `sales_flat_shipment_comment`
  ADD CONSTRAINT `FK_C2D69CC1FB03D2B2B794B0439F6650CF` FOREIGN KEY (`parent_id`) REFERENCES `sales_flat_shipment` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Beperkingen voor tabel `sales_flat_shipment_grid`
--
ALTER TABLE `sales_flat_shipment_grid`
  ADD CONSTRAINT `FK_SALES_FLAT_SHIPMENT_GRID_ENTT_ID_SALES_FLAT_SHIPMENT_ENTT_ID` FOREIGN KEY (`entity_id`) REFERENCES `sales_flat_shipment` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_SALES_FLAT_SHIPMENT_GRID_STORE_ID_CORE_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `core_store` (`store_id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Beperkingen voor tabel `sales_flat_shipment_item`
--
ALTER TABLE `sales_flat_shipment_item`
  ADD CONSTRAINT `FK_3AECE5007D18F159231B87E8306FC02A` FOREIGN KEY (`parent_id`) REFERENCES `sales_flat_shipment` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Beperkingen voor tabel `sales_flat_shipment_track`
--
ALTER TABLE `sales_flat_shipment_track`
  ADD CONSTRAINT `FK_BCD2FA28717D29F37E10A153E6F2F841` FOREIGN KEY (`parent_id`) REFERENCES `sales_flat_shipment` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Beperkingen voor tabel `sales_invoiced_aggregated`
--
ALTER TABLE `sales_invoiced_aggregated`
  ADD CONSTRAINT `FK_SALES_INVOICED_AGGREGATED_STORE_ID_CORE_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `core_store` (`store_id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Beperkingen voor tabel `sales_invoiced_aggregated_order`
--
ALTER TABLE `sales_invoiced_aggregated_order`
  ADD CONSTRAINT `FK_SALES_INVOICED_AGGREGATED_ORDER_STORE_ID_CORE_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `core_store` (`store_id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Beperkingen voor tabel `sales_order_aggregated_created`
--
ALTER TABLE `sales_order_aggregated_created`
  ADD CONSTRAINT `FK_SALES_ORDER_AGGREGATED_CREATED_STORE_ID_CORE_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `core_store` (`store_id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Beperkingen voor tabel `sales_order_aggregated_updated`
--
ALTER TABLE `sales_order_aggregated_updated`
  ADD CONSTRAINT `FK_SALES_ORDER_AGGREGATED_UPDATED_STORE_ID_CORE_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `core_store` (`store_id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Beperkingen voor tabel `sales_order_status_label`
--
ALTER TABLE `sales_order_status_label`
  ADD CONSTRAINT `FK_SALES_ORDER_STATUS_LABEL_STATUS_SALES_ORDER_STATUS_STATUS` FOREIGN KEY (`status`) REFERENCES `sales_order_status` (`status`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_SALES_ORDER_STATUS_LABEL_STORE_ID_CORE_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `core_store` (`store_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Beperkingen voor tabel `sales_order_status_state`
--
ALTER TABLE `sales_order_status_state`
  ADD CONSTRAINT `FK_SALES_ORDER_STATUS_STATE_STATUS_SALES_ORDER_STATUS_STATUS` FOREIGN KEY (`status`) REFERENCES `sales_order_status` (`status`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Beperkingen voor tabel `sales_order_tax_item`
--
ALTER TABLE `sales_order_tax_item`
  ADD CONSTRAINT `FK_SALES_ORDER_TAX_ITEM_ITEM_ID_SALES_FLAT_ORDER_ITEM_ITEM_ID` FOREIGN KEY (`item_id`) REFERENCES `sales_flat_order_item` (`item_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_SALES_ORDER_TAX_ITEM_TAX_ID_SALES_ORDER_TAX_TAX_ID` FOREIGN KEY (`tax_id`) REFERENCES `sales_order_tax` (`tax_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Beperkingen voor tabel `sales_payment_transaction`
--
ALTER TABLE `sales_payment_transaction`
  ADD CONSTRAINT `FK_SALES_PAYMENT_TRANSACTION_ORDER_ID_SALES_FLAT_ORDER_ENTITY_ID` FOREIGN KEY (`order_id`) REFERENCES `sales_flat_order` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_B99FF1A06402D725EBDB0F3A7ECD47A2` FOREIGN KEY (`parent_id`) REFERENCES `sales_payment_transaction` (`transaction_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_DA51A10B2405B64A4DAEF77A64F0DAAD` FOREIGN KEY (`payment_id`) REFERENCES `sales_flat_order_payment` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Beperkingen voor tabel `sales_recurring_profile`
--
ALTER TABLE `sales_recurring_profile`
  ADD CONSTRAINT `FK_SALES_RECURRING_PROFILE_CUSTOMER_ID_CUSTOMER_ENTITY_ENTITY_ID` FOREIGN KEY (`customer_id`) REFERENCES `customer_entity` (`entity_id`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_SALES_RECURRING_PROFILE_STORE_ID_CORE_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `core_store` (`store_id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Beperkingen voor tabel `sales_recurring_profile_order`
--
ALTER TABLE `sales_recurring_profile_order`
  ADD CONSTRAINT `FK_7FF85741C66DCD37A4FBE3E3255A5A01` FOREIGN KEY (`order_id`) REFERENCES `sales_flat_order` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_B8A7A5397B67455786E55461748C59F4` FOREIGN KEY (`profile_id`) REFERENCES `sales_recurring_profile` (`profile_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Beperkingen voor tabel `sales_refunded_aggregated`
--
ALTER TABLE `sales_refunded_aggregated`
  ADD CONSTRAINT `FK_SALES_REFUNDED_AGGREGATED_STORE_ID_CORE_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `core_store` (`store_id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Beperkingen voor tabel `sales_refunded_aggregated_order`
--
ALTER TABLE `sales_refunded_aggregated_order`
  ADD CONSTRAINT `FK_SALES_REFUNDED_AGGREGATED_ORDER_STORE_ID_CORE_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `core_store` (`store_id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Beperkingen voor tabel `sales_shipping_aggregated`
--
ALTER TABLE `sales_shipping_aggregated`
  ADD CONSTRAINT `FK_SALES_SHIPPING_AGGREGATED_STORE_ID_CORE_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `core_store` (`store_id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Beperkingen voor tabel `sales_shipping_aggregated_order`
--
ALTER TABLE `sales_shipping_aggregated_order`
  ADD CONSTRAINT `FK_SALES_SHIPPING_AGGREGATED_ORDER_STORE_ID_CORE_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `core_store` (`store_id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Beperkingen voor tabel `sitemap`
--
ALTER TABLE `sitemap`
  ADD CONSTRAINT `FK_SITEMAP_STORE_ID_CORE_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `core_store` (`store_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Beperkingen voor tabel `tag`
--
ALTER TABLE `tag`
  ADD CONSTRAINT `FK_TAG_FIRST_CUSTOMER_ID_CUSTOMER_ENTITY_ENTITY_ID` FOREIGN KEY (`first_customer_id`) REFERENCES `customer_entity` (`entity_id`) ON DELETE SET NULL ON UPDATE NO ACTION,
  ADD CONSTRAINT `FK_TAG_FIRST_STORE_ID_CORE_STORE_STORE_ID` FOREIGN KEY (`first_store_id`) REFERENCES `core_store` (`store_id`) ON DELETE SET NULL ON UPDATE NO ACTION;

--
-- Beperkingen voor tabel `tag_properties`
--
ALTER TABLE `tag_properties`
  ADD CONSTRAINT `FK_TAG_PROPERTIES_STORE_ID_CORE_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `core_store` (`store_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_TAG_PROPERTIES_TAG_ID_TAG_TAG_ID` FOREIGN KEY (`tag_id`) REFERENCES `tag` (`tag_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Beperkingen voor tabel `tag_relation`
--
ALTER TABLE `tag_relation`
  ADD CONSTRAINT `FK_TAG_RELATION_CUSTOMER_ID_CUSTOMER_ENTITY_ENTITY_ID` FOREIGN KEY (`customer_id`) REFERENCES `customer_entity` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_TAG_RELATION_PRODUCT_ID_CATALOG_PRODUCT_ENTITY_ENTITY_ID` FOREIGN KEY (`product_id`) REFERENCES `catalog_product_entity` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_TAG_RELATION_STORE_ID_CORE_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `core_store` (`store_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_TAG_RELATION_TAG_ID_TAG_TAG_ID` FOREIGN KEY (`tag_id`) REFERENCES `tag` (`tag_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Beperkingen voor tabel `tag_summary`
--
ALTER TABLE `tag_summary`
  ADD CONSTRAINT `FK_TAG_SUMMARY_STORE_ID_CORE_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `core_store` (`store_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_TAG_SUMMARY_TAG_ID_TAG_TAG_ID` FOREIGN KEY (`tag_id`) REFERENCES `tag` (`tag_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Beperkingen voor tabel `tax_calculation`
--
ALTER TABLE `tax_calculation`
  ADD CONSTRAINT `FK_TAX_CALCULATION_PRODUCT_TAX_CLASS_ID_TAX_CLASS_CLASS_ID` FOREIGN KEY (`product_tax_class_id`) REFERENCES `tax_class` (`class_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_TAX_CALCULATION_CUSTOMER_TAX_CLASS_ID_TAX_CLASS_CLASS_ID` FOREIGN KEY (`customer_tax_class_id`) REFERENCES `tax_class` (`class_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_TAX_CALC_TAX_CALC_RATE_ID_TAX_CALC_RATE_TAX_CALC_RATE_ID` FOREIGN KEY (`tax_calculation_rate_id`) REFERENCES `tax_calculation_rate` (`tax_calculation_rate_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_TAX_CALC_TAX_CALC_RULE_ID_TAX_CALC_RULE_TAX_CALC_RULE_ID` FOREIGN KEY (`tax_calculation_rule_id`) REFERENCES `tax_calculation_rule` (`tax_calculation_rule_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Beperkingen voor tabel `tax_calculation_rate_title`
--
ALTER TABLE `tax_calculation_rate_title`
  ADD CONSTRAINT `FK_TAX_CALCULATION_RATE_TITLE_STORE_ID_CORE_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `core_store` (`store_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_37FB965F786AD5897BB3AE90470C42AB` FOREIGN KEY (`tax_calculation_rate_id`) REFERENCES `tax_calculation_rate` (`tax_calculation_rate_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Beperkingen voor tabel `tax_order_aggregated_created`
--
ALTER TABLE `tax_order_aggregated_created`
  ADD CONSTRAINT `FK_TAX_ORDER_AGGREGATED_CREATED_STORE_ID_CORE_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `core_store` (`store_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Beperkingen voor tabel `tax_order_aggregated_updated`
--
ALTER TABLE `tax_order_aggregated_updated`
  ADD CONSTRAINT `FK_TAX_ORDER_AGGREGATED_UPDATED_STORE_ID_CORE_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `core_store` (`store_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Beperkingen voor tabel `weee_discount`
--
ALTER TABLE `weee_discount`
  ADD CONSTRAINT `FK_WEEE_DISCOUNT_CSTR_GROUP_ID_CSTR_GROUP_CSTR_GROUP_ID` FOREIGN KEY (`customer_group_id`) REFERENCES `customer_group` (`customer_group_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_WEEE_DISCOUNT_ENTITY_ID_CATALOG_PRODUCT_ENTITY_ENTITY_ID` FOREIGN KEY (`entity_id`) REFERENCES `catalog_product_entity` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_WEEE_DISCOUNT_WEBSITE_ID_CORE_WEBSITE_WEBSITE_ID` FOREIGN KEY (`website_id`) REFERENCES `core_website` (`website_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Beperkingen voor tabel `weee_tax`
--
ALTER TABLE `weee_tax`
  ADD CONSTRAINT `FK_WEEE_TAX_COUNTRY_DIRECTORY_COUNTRY_COUNTRY_ID` FOREIGN KEY (`country`) REFERENCES `directory_country` (`country_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_WEEE_TAX_ENTITY_ID_CATALOG_PRODUCT_ENTITY_ENTITY_ID` FOREIGN KEY (`entity_id`) REFERENCES `catalog_product_entity` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_WEEE_TAX_WEBSITE_ID_CORE_WEBSITE_WEBSITE_ID` FOREIGN KEY (`website_id`) REFERENCES `core_website` (`website_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_WEEE_TAX_ATTRIBUTE_ID_EAV_ATTRIBUTE_ATTRIBUTE_ID` FOREIGN KEY (`attribute_id`) REFERENCES `eav_attribute` (`attribute_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Beperkingen voor tabel `widget_instance_page`
--
ALTER TABLE `widget_instance_page`
  ADD CONSTRAINT `FK_WIDGET_INSTANCE_PAGE_INSTANCE_ID_WIDGET_INSTANCE_INSTANCE_ID` FOREIGN KEY (`instance_id`) REFERENCES `widget_instance` (`instance_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Beperkingen voor tabel `widget_instance_page_layout`
--
ALTER TABLE `widget_instance_page_layout`
  ADD CONSTRAINT `FK_WIDGET_INSTANCE_PAGE_LYT_PAGE_ID_WIDGET_INSTANCE_PAGE_PAGE_ID` FOREIGN KEY (`page_id`) REFERENCES `widget_instance_page` (`page_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_0A5D06DCEC6A6845F50E5FAAC5A1C96D` FOREIGN KEY (`layout_update_id`) REFERENCES `core_layout_update` (`layout_update_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Beperkingen voor tabel `wishlist`
--
ALTER TABLE `wishlist`
  ADD CONSTRAINT `FK_WISHLIST_CUSTOMER_ID_CUSTOMER_ENTITY_ENTITY_ID` FOREIGN KEY (`customer_id`) REFERENCES `customer_entity` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Beperkingen voor tabel `wishlist_item`
--
ALTER TABLE `wishlist_item`
  ADD CONSTRAINT `FK_WISHLIST_ITEM_WISHLIST_ID_WISHLIST_WISHLIST_ID` FOREIGN KEY (`wishlist_id`) REFERENCES `wishlist` (`wishlist_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_WISHLIST_ITEM_PRODUCT_ID_CATALOG_PRODUCT_ENTITY_ENTITY_ID` FOREIGN KEY (`product_id`) REFERENCES `catalog_product_entity` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_WISHLIST_ITEM_STORE_ID_CORE_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `core_store` (`store_id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Beperkingen voor tabel `wishlist_item_option`
--
ALTER TABLE `wishlist_item_option`
  ADD CONSTRAINT `FK_A014B30B04B72DD0EAB3EECD779728D6` FOREIGN KEY (`wishlist_item_id`) REFERENCES `wishlist_item` (`wishlist_item_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Beperkingen voor tabel `xmlconnect_application`
--
ALTER TABLE `xmlconnect_application`
  ADD CONSTRAINT `FK_XMLCONNECT_APPLICATION_STORE_ID_CORE_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `core_store` (`store_id`) ON DELETE SET NULL ON UPDATE SET NULL;

--
-- Beperkingen voor tabel `xmlconnect_config_data`
--
ALTER TABLE `xmlconnect_config_data`
  ADD CONSTRAINT `FK_31EE36D814216200D7C0723145AC510E` FOREIGN KEY (`application_id`) REFERENCES `xmlconnect_application` (`application_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Beperkingen voor tabel `xmlconnect_history`
--
ALTER TABLE `xmlconnect_history`
  ADD CONSTRAINT `FK_8F08B9513373BC19F49EE3EF8340E270` FOREIGN KEY (`application_id`) REFERENCES `xmlconnect_application` (`application_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Beperkingen voor tabel `xmlconnect_notification_template`
--
ALTER TABLE `xmlconnect_notification_template`
  ADD CONSTRAINT `FK_F9927C7518A907CF5C350942FD296DC3` FOREIGN KEY (`application_id`) REFERENCES `xmlconnect_application` (`application_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Beperkingen voor tabel `xmlconnect_queue`
--
ALTER TABLE `xmlconnect_queue`
  ADD CONSTRAINT `FK_2019AEC5FC55A516965583447CA26B14` FOREIGN KEY (`template_id`) REFERENCES `xmlconnect_notification_template` (`template_id`) ON DELETE CASCADE ON UPDATE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
