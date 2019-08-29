-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Server version:               10.1.32-MariaDB - mariadb.org binary distribution
-- Server OS:                    Win32
-- HeidiSQL Version:             9.5.0.5196
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


-- Dumping database structure for auth
CREATE DATABASE IF NOT EXISTS `auth` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `auth`;

-- Dumping structure for table test.account
CREATE TABLE IF NOT EXISTS `account` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Identifier',
  `username` varchar(32) NOT NULL DEFAULT '',
  `sha_pass_hash` varchar(40) NOT NULL DEFAULT '',
  `sessionkey` varchar(80) NOT NULL DEFAULT '',
  `v` varchar(64) NOT NULL DEFAULT '',
  `s` varchar(64) NOT NULL DEFAULT '',
  `email` varchar(254) NOT NULL DEFAULT '',
  `joindate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `last_ip` varchar(15) NOT NULL DEFAULT '127.0.0.1',
  `failed_logins` int(10) unsigned NOT NULL DEFAULT '0',
  `locked` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `last_login` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `online` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `expansion` tinyint(3) unsigned NOT NULL DEFAULT '3',
  `mutetime` bigint(20) NOT NULL DEFAULT '0',
  `mutereason` varchar(255) NOT NULL,
  `muteby` varchar(50) DEFAULT NULL,
  `locale` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `os` varchar(3) NOT NULL DEFAULT '',
  `recruiter` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8 COMMENT='Account System';

-- Dumping data for table test.account: ~0 rows (approximately)
DELETE FROM `account`;
/*!40000 ALTER TABLE `account` DISABLE KEYS */;
/*!40000 ALTER TABLE `account` ENABLE KEYS */;

-- Dumping structure for table test.accounts_to_delete
CREATE TABLE IF NOT EXISTS `accounts_to_delete` (
  `id` int(11) unsigned NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Account System';

-- Dumping data for table test.accounts_to_delete: 0 rows
DELETE FROM `accounts_to_delete`;
/*!40000 ALTER TABLE `accounts_to_delete` DISABLE KEYS */;
/*!40000 ALTER TABLE `accounts_to_delete` ENABLE KEYS */;

-- Dumping structure for table test.account_access
CREATE TABLE IF NOT EXISTS `account_access` (
  `id` int(10) unsigned NOT NULL,
  `gmlevel` tinyint(3) unsigned NOT NULL,
  `RealmID` int(11) NOT NULL DEFAULT '-1',
  `Comment` text,
  PRIMARY KEY (`id`,`RealmID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table test.account_access: ~0 rows (approximately)
DELETE FROM `account_access`;
/*!40000 ALTER TABLE `account_access` DISABLE KEYS */;
/*!40000 ALTER TABLE `account_access` ENABLE KEYS */;

-- Dumping structure for table test.account_banned
CREATE TABLE IF NOT EXISTS `account_banned` (
  `id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Account id',
  `bandate` int(10) unsigned NOT NULL DEFAULT '0',
  `unbandate` int(10) unsigned NOT NULL DEFAULT '0',
  `bannedby` varchar(50) DEFAULT NULL,
  `banreason` varchar(255) NOT NULL,
  `active` tinyint(3) unsigned NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`,`bandate`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Ban List';

-- Dumping data for table test.account_banned: ~0 rows (approximately)
DELETE FROM `account_banned`;
/*!40000 ALTER TABLE `account_banned` DISABLE KEYS */;
/*!40000 ALTER TABLE `account_banned` ENABLE KEYS */;

-- Dumping structure for table test.account_ip_history
CREATE TABLE IF NOT EXISTS `account_ip_history` (
  `id` int(10) DEFAULT NULL,
  `RealmID` int(10) DEFAULT NULL,
  `IP` varchar(15) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table test.account_ip_history: ~0 rows (approximately)
DELETE FROM `account_ip_history`;
/*!40000 ALTER TABLE `account_ip_history` DISABLE KEYS */;
/*!40000 ALTER TABLE `account_ip_history` ENABLE KEYS */;

-- Dumping structure for table test.account_premium
CREATE TABLE IF NOT EXISTS `account_premium` (
  `id` int(11) NOT NULL DEFAULT '0' COMMENT 'Account id',
  `setdate` bigint(40) NOT NULL DEFAULT '0',
  `unsetdate` bigint(40) NOT NULL DEFAULT '0',
  `premium_type` tinyint(4) unsigned NOT NULL DEFAULT '1',
  `active` tinyint(4) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`,`setdate`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Premium Accounts';

-- Dumping data for table test.account_premium: 0 rows
DELETE FROM `account_premium`;
/*!40000 ALTER TABLE `account_premium` DISABLE KEYS */;
/*!40000 ALTER TABLE `account_premium` ENABLE KEYS */;

-- Dumping structure for table test.account_punishment
CREATE TABLE IF NOT EXISTS `account_punishment` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `account` int(11) unsigned NOT NULL,
  `by` int(11) NOT NULL,
  `penalty_points` int(11) unsigned NOT NULL,
  `comment` varchar(255) NOT NULL,
  `time` bigint(20) unsigned NOT NULL,
  `active` tinyint(3) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=99 DEFAULT CHARSET=utf8;

-- Dumping data for table test.account_punishment: 0 rows
DELETE FROM `account_punishment`;
/*!40000 ALTER TABLE `account_punishment` DISABLE KEYS */;
/*!40000 ALTER TABLE `account_punishment` ENABLE KEYS */;

-- Dumping structure for table test.account_tempban
CREATE TABLE IF NOT EXISTS `account_tempban` (
  `accountId` int(11) NOT NULL,
  `reason` varchar(255) NOT NULL,
  PRIMARY KEY (`accountId`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Dumping data for table test.account_tempban: 0 rows
DELETE FROM `account_tempban`;
/*!40000 ALTER TABLE `account_tempban` DISABLE KEYS */;
/*!40000 ALTER TABLE `account_tempban` ENABLE KEYS */;

-- Dumping structure for table test.account_warning
CREATE TABLE IF NOT EXISTS `account_warning` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `accountId` int(11) unsigned NOT NULL,
  `by_account` int(11) unsigned NOT NULL,
  `comment` varchar(255) NOT NULL,
  `time` bigint(20) unsigned NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=169 DEFAULT CHARSET=utf8;

-- Dumping data for table test.account_warning: 0 rows
DELETE FROM `account_warning`;
/*!40000 ALTER TABLE `account_warning` DISABLE KEYS */;
/*!40000 ALTER TABLE `account_warning` ENABLE KEYS */;

-- Dumping structure for table test.autobroadcast
CREATE TABLE IF NOT EXISTS `autobroadcast` (
  `id` int(10) DEFAULT NULL,
  `weight` int(10) DEFAULT NULL,
  `text` longtext,
  `text_1` longtext,
  `text_2` longtext,
  `text_3` longtext,
  `text_4` longtext,
  `text_5` longtext,
  `text_6` longtext,
  `text_7` longtext,
  `RealmID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table test.autobroadcast: ~0 rows (approximately)
DELETE FROM `autobroadcast`;
/*!40000 ALTER TABLE `autobroadcast` DISABLE KEYS */;
/*!40000 ALTER TABLE `autobroadcast` ENABLE KEYS */;

-- Dumping structure for table test.bug_tickets
CREATE TABLE IF NOT EXISTS `bug_tickets` (
  `ticketId` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `realm` int(10) unsigned NOT NULL DEFAULT '0',
  `guid` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Global Unique Identifier of ticket creator',
  `message` text NOT NULL,
  `createTime` int(10) unsigned NOT NULL DEFAULT '0',
  `pool` varchar(32) NOT NULL,
  `mapId` smallint(5) unsigned NOT NULL DEFAULT '0',
  `posX` float NOT NULL DEFAULT '0',
  `posY` float NOT NULL DEFAULT '0',
  `posZ` float NOT NULL DEFAULT '0',
  `closedBy` int(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ticketId`)
) ENGINE=MyISAM AUTO_INCREMENT=313 DEFAULT CHARSET=utf8 COMMENT='Support System';

-- Dumping data for table test.bug_tickets: 0 rows
DELETE FROM `bug_tickets`;
/*!40000 ALTER TABLE `bug_tickets` DISABLE KEYS */;
/*!40000 ALTER TABLE `bug_tickets` ENABLE KEYS */;

-- Dumping structure for table test.ip2nation
CREATE TABLE IF NOT EXISTS `ip2nation` (
  `ip` int(11) unsigned NOT NULL DEFAULT '0',
  `country` varchar(2) NOT NULL DEFAULT '',
  KEY `ip` (`ip`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Dumping data for table test.ip2nation: 0 rows
DELETE FROM `ip2nation`;
/*!40000 ALTER TABLE `ip2nation` DISABLE KEYS */;
/*!40000 ALTER TABLE `ip2nation` ENABLE KEYS */;

-- Dumping structure for table test.ip2nationcountries
CREATE TABLE IF NOT EXISTS `ip2nationcountries` (
  `code` varchar(2) NOT NULL DEFAULT '',
  `iso_code_2` varchar(2) NOT NULL DEFAULT '',
  `iso_code_3` varchar(3) DEFAULT '',
  `iso_country` varchar(255) NOT NULL DEFAULT '',
  `country` varchar(255) NOT NULL DEFAULT '',
  `lat` float NOT NULL DEFAULT '0',
  `lon` float NOT NULL DEFAULT '0',
  PRIMARY KEY (`code`),
  KEY `code` (`code`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Dumping data for table test.ip2nationcountries: 0 rows
DELETE FROM `ip2nationcountries`;
/*!40000 ALTER TABLE `ip2nationcountries` DISABLE KEYS */;
/*!40000 ALTER TABLE `ip2nationcountries` ENABLE KEYS */;

-- Dumping structure for table test.ip_banned
CREATE TABLE IF NOT EXISTS `ip_banned` (
  `ip` varchar(15) NOT NULL DEFAULT '127.0.0.1',
  `bandate` int(10) unsigned NOT NULL,
  `unbandate` int(10) unsigned NOT NULL,
  `bannedby` varchar(50) NOT NULL DEFAULT '[Console]',
  `banreason` varchar(255) NOT NULL DEFAULT 'no reason',
  PRIMARY KEY (`ip`,`bandate`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Banned IPs';

-- Dumping data for table test.ip_banned: ~0 rows (approximately)
DELETE FROM `ip_banned`;
/*!40000 ALTER TABLE `ip_banned` DISABLE KEYS */;
/*!40000 ALTER TABLE `ip_banned` ENABLE KEYS */;

-- Dumping structure for table test.logs
CREATE TABLE IF NOT EXISTS `logs` (
  `time` int(10) unsigned NOT NULL,
  `realm` int(10) unsigned NOT NULL,
  `type` tinyint(3) unsigned NOT NULL,
  `level` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `string` text CHARACTER SET latin1
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table test.logs: ~0 rows (approximately)
DELETE FROM `logs`;
/*!40000 ALTER TABLE `logs` DISABLE KEYS */;
/*!40000 ALTER TABLE `logs` ENABLE KEYS */;

-- Dumping structure for table test.rbac_account_groups
CREATE TABLE IF NOT EXISTS `rbac_account_groups` (
  `accountId` int(10) unsigned NOT NULL COMMENT 'Account id',
  `groupId` int(10) unsigned NOT NULL COMMENT 'Group id',
  `realmId` int(11) NOT NULL DEFAULT '-1' COMMENT 'Realm Id, -1 means all',
  PRIMARY KEY (`accountId`,`groupId`,`realmId`),
  KEY `fk__rbac_account_groups__rbac_groups` (`groupId`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Account-Group relation';

-- Dumping data for table test.rbac_account_groups: 328 rows
DELETE FROM `rbac_account_groups`;
/*!40000 ALTER TABLE `rbac_account_groups` DISABLE KEYS */;
INSERT INTO `rbac_account_groups` (`accountId`, `groupId`, `realmId`) VALUES
	(4, 1, -1),
	(5, 1, -1),
	(6, 1, -1),
	(7, 1, -1),
	(8, 1, -1),
	(9, 1, -1),
	(10, 1, -1),
	(11, 1, -1),
	(12, 1, -1),
	(13, 1, -1),
	(14, 1, -1),
	(15, 1, -1),
	(16, 1, -1),
	(17, 1, -1),
	(18, 1, -1),
	(19, 1, -1),
	(20, 1, -1),
	(21, 1, -1),
	(22, 1, -1),
	(23, 1, -1),
	(24, 1, -1),
	(25, 1, -1),
	(36, 1, -1),
	(37, 1, -1),
	(38, 1, -1),
	(39, 1, -1),
	(40, 1, -1),
	(41, 1, -1),
	(42, 1, -1),
	(43, 1, -1),
	(44, 1, -1),
	(45, 1, -1),
	(46, 1, -1),
	(47, 1, -1),
	(49, 1, -1),
	(50, 1, -1),
	(51, 1, -1),
	(52, 1, -1),
	(53, 1, -1),
	(54, 1, -1),
	(55, 1, -1),
	(56, 1, -1),
	(91, 1, -1),
	(92, 1, -1),
	(93, 1, -1),
	(94, 1, -1),
	(95, 1, -1),
	(97, 1, -1),
	(98, 1, -1),
	(99, 1, -1),
	(100, 1, -1),
	(101, 1, -1),
	(102, 1, -1),
	(103, 1, -1),
	(104, 1, -1),
	(106, 1, -1),
	(107, 1, -1),
	(108, 1, -1),
	(109, 1, -1),
	(110, 1, -1),
	(112, 1, -1),
	(160, 1, -1),
	(163, 1, -1),
	(164, 1, -1),
	(165, 1, -1),
	(166, 1, -1),
	(167, 1, -1),
	(168, 1, -1),
	(169, 1, -1),
	(170, 1, -1),
	(171, 1, -1),
	(172, 1, -1),
	(173, 1, -1),
	(174, 1, -1),
	(175, 1, -1),
	(176, 1, -1),
	(177, 1, -1),
	(178, 1, -1),
	(179, 1, -1),
	(180, 1, -1),
	(181, 1, -1),
	(182, 1, -1),
	(183, 1, -1),
	(184, 1, -1),
	(185, 1, -1),
	(186, 1, -1),
	(187, 1, -1),
	(188, 1, -1),
	(189, 1, -1),
	(190, 1, -1),
	(191, 1, -1),
	(192, 1, -1),
	(193, 1, -1),
	(194, 1, -1),
	(195, 1, -1),
	(196, 1, -1),
	(197, 1, -1),
	(198, 1, -1),
	(199, 1, -1),
	(200, 1, -1),
	(201, 1, -1),
	(202, 1, -1),
	(203, 1, -1),
	(204, 1, -1),
	(205, 1, -1),
	(206, 1, -1),
	(207, 1, -1),
	(208, 1, -1),
	(209, 1, -1),
	(210, 1, -1),
	(211, 1, -1),
	(212, 1, -1),
	(213, 1, -1),
	(214, 1, -1),
	(215, 1, -1),
	(216, 1, -1),
	(217, 1, -1),
	(218, 1, -1),
	(219, 1, -1),
	(220, 1, -1),
	(221, 1, -1),
	(222, 1, -1),
	(223, 1, -1),
	(224, 1, -1),
	(225, 1, -1),
	(226, 1, -1),
	(227, 1, -1),
	(228, 1, -1),
	(229, 1, -1),
	(230, 1, -1),
	(231, 1, -1),
	(232, 1, -1),
	(233, 1, -1),
	(234, 1, -1),
	(235, 1, -1),
	(236, 1, -1),
	(237, 1, -1),
	(238, 1, -1),
	(239, 1, -1),
	(240, 1, -1),
	(241, 1, -1),
	(242, 1, -1),
	(243, 1, -1),
	(244, 1, -1),
	(245, 1, -1),
	(246, 1, -1),
	(247, 1, -1),
	(248, 1, -1),
	(249, 1, -1),
	(250, 1, -1),
	(251, 1, -1),
	(252, 1, -1),
	(253, 1, -1),
	(254, 1, -1),
	(255, 1, -1),
	(256, 1, -1),
	(257, 1, -1),
	(258, 1, -1),
	(259, 1, -1),
	(260, 1, -1),
	(261, 1, -1),
	(262, 1, -1),
	(263, 1, -1),
	(264, 1, -1),
	(265, 1, -1),
	(266, 1, -1),
	(267, 1, -1),
	(268, 1, -1),
	(269, 1, -1),
	(270, 1, -1),
	(271, 1, -1),
	(272, 1, -1),
	(273, 1, -1),
	(274, 1, -1),
	(275, 1, -1),
	(276, 1, -1),
	(277, 1, -1),
	(278, 1, -1),
	(279, 1, -1),
	(280, 1, -1),
	(281, 1, -1),
	(282, 1, -1),
	(283, 1, -1),
	(284, 1, -1),
	(285, 1, -1),
	(286, 1, -1),
	(287, 1, -1),
	(288, 1, -1),
	(289, 1, -1),
	(290, 1, -1),
	(291, 1, -1),
	(292, 1, -1),
	(293, 1, -1),
	(294, 1, -1),
	(295, 1, -1),
	(296, 1, -1),
	(297, 1, -1),
	(298, 1, -1),
	(299, 1, -1),
	(300, 1, -1),
	(301, 1, -1),
	(302, 1, -1),
	(303, 1, -1),
	(304, 1, -1),
	(305, 1, -1),
	(306, 1, -1),
	(307, 1, -1),
	(308, 1, -1),
	(309, 1, -1),
	(310, 1, -1),
	(311, 1, -1),
	(312, 1, -1),
	(313, 1, -1),
	(314, 1, -1),
	(315, 1, -1),
	(316, 1, -1),
	(317, 1, -1),
	(318, 1, -1),
	(319, 1, -1),
	(320, 1, -1),
	(321, 1, -1),
	(322, 1, -1),
	(323, 1, -1),
	(324, 1, -1),
	(325, 1, -1),
	(326, 1, -1),
	(327, 1, -1),
	(328, 1, -1),
	(329, 1, -1),
	(330, 1, -1),
	(331, 1, -1),
	(332, 1, -1),
	(333, 1, -1),
	(334, 1, -1),
	(335, 1, -1),
	(336, 1, -1),
	(337, 1, -1),
	(338, 1, -1),
	(339, 1, -1),
	(340, 1, -1),
	(341, 1, -1),
	(342, 1, -1),
	(343, 1, -1),
	(344, 1, -1),
	(345, 1, -1),
	(347, 1, -1),
	(348, 1, -1),
	(349, 1, -1),
	(350, 1, -1),
	(351, 1, -1),
	(352, 1, -1),
	(353, 1, -1),
	(354, 1, -1),
	(355, 1, -1),
	(356, 1, -1),
	(357, 1, -1),
	(358, 1, -1),
	(359, 1, -1),
	(360, 1, -1),
	(361, 1, -1),
	(362, 1, -1),
	(363, 1, -1),
	(365, 1, -1),
	(366, 1, -1),
	(367, 1, -1),
	(368, 1, -1),
	(369, 1, -1),
	(370, 1, -1),
	(371, 1, -1),
	(372, 1, -1),
	(373, 1, -1),
	(374, 1, -1),
	(375, 1, -1),
	(376, 1, -1),
	(377, 1, -1),
	(378, 1, -1),
	(379, 1, -1),
	(380, 1, -1),
	(381, 1, -1),
	(382, 1, -1),
	(383, 1, -1),
	(384, 1, -1),
	(385, 1, -1),
	(386, 1, -1),
	(387, 1, -1),
	(388, 1, -1),
	(389, 1, -1),
	(390, 1, -1),
	(391, 1, -1),
	(392, 1, -1),
	(393, 1, -1),
	(394, 1, -1),
	(395, 1, -1),
	(396, 1, -1),
	(397, 1, -1),
	(398, 1, -1),
	(399, 1, -1),
	(400, 1, -1),
	(401, 1, -1),
	(402, 1, -1),
	(403, 1, -1),
	(404, 1, -1),
	(405, 1, -1),
	(406, 1, -1),
	(407, 1, -1),
	(408, 1, -1),
	(409, 1, -1),
	(410, 1, -1),
	(411, 1, -1),
	(412, 1, -1),
	(413, 1, -1),
	(414, 1, -1),
	(415, 1, -1),
	(416, 1, -1),
	(417, 1, -1),
	(418, 1, -1),
	(419, 1, -1),
	(420, 1, -1),
	(421, 1, -1),
	(422, 1, -1),
	(423, 1, -1),
	(424, 1, -1),
	(425, 1, -1),
	(426, 1, -1),
	(427, 1, -1),
	(428, 1, -1),
	(429, 1, -1),
	(430, 1, -1);
/*!40000 ALTER TABLE `rbac_account_groups` ENABLE KEYS */;

-- Dumping structure for table test.rbac_account_permissions
CREATE TABLE IF NOT EXISTS `rbac_account_permissions` (
  `accountId` int(10) unsigned NOT NULL COMMENT 'Account id',
  `permissionId` int(10) unsigned NOT NULL COMMENT 'Permission id',
  `granted` tinyint(1) NOT NULL DEFAULT '1' COMMENT 'Granted = 1, Denied = 0',
  `realmId` int(11) NOT NULL DEFAULT '-1' COMMENT 'Realm Id, -1 means all',
  PRIMARY KEY (`accountId`,`permissionId`,`realmId`),
  KEY `fk__rbac_account_roles__rbac_permissions` (`permissionId`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Account-Permission relation';

-- Dumping data for table test.rbac_account_permissions: 0 rows
DELETE FROM `rbac_account_permissions`;
/*!40000 ALTER TABLE `rbac_account_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `rbac_account_permissions` ENABLE KEYS */;

-- Dumping structure for table test.rbac_account_roles
CREATE TABLE IF NOT EXISTS `rbac_account_roles` (
  `accountId` int(10) unsigned NOT NULL COMMENT 'Account id',
  `roleId` int(10) unsigned NOT NULL COMMENT 'Role id',
  `granted` tinyint(1) NOT NULL DEFAULT '1' COMMENT 'Granted = 1, Denied = 0',
  `realmId` int(11) NOT NULL DEFAULT '-1' COMMENT 'Realm Id, -1 means all',
  PRIMARY KEY (`accountId`,`roleId`,`realmId`),
  KEY `fk__rbac_account_roles__rbac_roles` (`roleId`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Account-Role relation';

-- Dumping data for table test.rbac_account_roles: 0 rows
DELETE FROM `rbac_account_roles`;
/*!40000 ALTER TABLE `rbac_account_roles` DISABLE KEYS */;
/*!40000 ALTER TABLE `rbac_account_roles` ENABLE KEYS */;

-- Dumping structure for table test.rbac_groups
CREATE TABLE IF NOT EXISTS `rbac_groups` (
  `id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Group id',
  `name` varchar(100) NOT NULL COMMENT 'Group name',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Group List';

-- Dumping data for table test.rbac_groups: 0 rows
DELETE FROM `rbac_groups`;
/*!40000 ALTER TABLE `rbac_groups` DISABLE KEYS */;
/*!40000 ALTER TABLE `rbac_groups` ENABLE KEYS */;

-- Dumping structure for table test.rbac_group_roles
CREATE TABLE IF NOT EXISTS `rbac_group_roles` (
  `groupId` int(10) unsigned NOT NULL COMMENT 'group id',
  `roleId` int(10) unsigned NOT NULL COMMENT 'Role id',
  PRIMARY KEY (`groupId`,`roleId`),
  KEY `fk__rbac_group_roles__rbac_roles` (`roleId`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Group Role relation';

-- Dumping data for table test.rbac_group_roles: 0 rows
DELETE FROM `rbac_group_roles`;
/*!40000 ALTER TABLE `rbac_group_roles` DISABLE KEYS */;
/*!40000 ALTER TABLE `rbac_group_roles` ENABLE KEYS */;

-- Dumping structure for table test.rbac_permissions
CREATE TABLE IF NOT EXISTS `rbac_permissions` (
  `id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Permission id',
  `name` varchar(100) NOT NULL COMMENT 'Permission name',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Permission List';

-- Dumping data for table test.rbac_permissions: ~0 rows (approximately)
DELETE FROM `rbac_permissions`;
/*!40000 ALTER TABLE `rbac_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `rbac_permissions` ENABLE KEYS */;

-- Dumping structure for table test.rbac_roles
CREATE TABLE IF NOT EXISTS `rbac_roles` (
  `id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Role id',
  `name` varchar(100) NOT NULL COMMENT 'Role name',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Roles List';

-- Dumping data for table test.rbac_roles: 0 rows
DELETE FROM `rbac_roles`;
/*!40000 ALTER TABLE `rbac_roles` DISABLE KEYS */;
/*!40000 ALTER TABLE `rbac_roles` ENABLE KEYS */;

-- Dumping structure for table test.rbac_role_permissions
CREATE TABLE IF NOT EXISTS `rbac_role_permissions` (
  `roleId` int(10) unsigned NOT NULL COMMENT 'Role id',
  `permissionId` int(10) unsigned NOT NULL COMMENT 'Permission id',
  PRIMARY KEY (`roleId`,`permissionId`),
  KEY `fk__role_permissions__rbac_permissions` (`permissionId`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Role Permission relation';

-- Dumping data for table test.rbac_role_permissions: 0 rows
DELETE FROM `rbac_role_permissions`;
/*!40000 ALTER TABLE `rbac_role_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `rbac_role_permissions` ENABLE KEYS */;

-- Dumping structure for table test.rbac_security_level_groups
CREATE TABLE IF NOT EXISTS `rbac_security_level_groups` (
  `secId` tinyint(3) unsigned NOT NULL COMMENT 'Security Level id',
  `groupId` int(10) unsigned NOT NULL COMMENT 'group id',
  PRIMARY KEY (`secId`,`groupId`),
  KEY `fk__rbac_security_level_groups__rbac_groups` (`groupId`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Default groups to assign when an account is set gm level';

-- Dumping data for table test.rbac_security_level_groups: 0 rows
DELETE FROM `rbac_security_level_groups`;
/*!40000 ALTER TABLE `rbac_security_level_groups` DISABLE KEYS */;
/*!40000 ALTER TABLE `rbac_security_level_groups` ENABLE KEYS */;

-- Dumping structure for table test.realmcharacters
CREATE TABLE IF NOT EXISTS `realmcharacters` (
  `realmid` int(10) unsigned NOT NULL DEFAULT '0',
  `acctid` int(10) unsigned NOT NULL,
  `numchars` tinyint(3) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`realmid`,`acctid`),
  KEY `acctid` (`acctid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Realm Character Tracker';

-- Dumping data for table test.realmcharacters: ~431 rows (approximately)
DELETE FROM `realmcharacters`;
/*!40000 ALTER TABLE `realmcharacters` DISABLE KEYS */;
/*!40000 ALTER TABLE `realmcharacters` ENABLE KEYS */;

-- Dumping structure for table test.realmlist
CREATE TABLE IF NOT EXISTS `realmlist` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(32) NOT NULL DEFAULT '',
  `address` varchar(255) NOT NULL DEFAULT '127.0.0.1',
  `localAddress` varchar(255) NOT NULL DEFAULT '127.0.0.1',
  `localSubnetMask` varchar(255) NOT NULL DEFAULT '255.255.255.0',
  `port` smallint(5) unsigned NOT NULL DEFAULT '8085',
  `icon` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `flag` tinyint(3) unsigned NOT NULL DEFAULT '2',
  `timezone` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `allowedSecurityLevel` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `population` float unsigned NOT NULL DEFAULT '0',
  `gamebuild` int(10) unsigned NOT NULL DEFAULT '15595',
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='Realm System';

-- Dumping data for table test.realmlist: ~0 rows (approximately)
DELETE FROM `realmlist`;
/*!40000 ALTER TABLE `realmlist` DISABLE KEYS */;
INSERT INTO `realmlist` (`id`, `name`, `address`, `localAddress`, `localSubnetMask`, `port`, `icon`, `flag`, `timezone`, `allowedSecurityLevel`, `population`, `gamebuild`) VALUES
	(1, 'Twilight-Highlands', '127.0.0.1', '127.0.0.1', '255.255.255.0', 8085, 1, 0, 1, 0, 0, 15595);
/*!40000 ALTER TABLE `realmlist` ENABLE KEYS */;

-- Dumping structure for table test.uptime
CREATE TABLE IF NOT EXISTS `uptime` (
  `realmid` int(10) unsigned NOT NULL,
  `starttime` int(10) unsigned NOT NULL DEFAULT '0',
  `uptime` int(10) unsigned NOT NULL DEFAULT '0',
  `maxplayers` smallint(5) unsigned NOT NULL DEFAULT '0',
  `revision` varchar(255) NOT NULL DEFAULT 'Trinitycore',
  PRIMARY KEY (`realmid`,`starttime`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Uptime system';

-- Dumping data for table test.uptime: ~0 rows (approximately)
DELETE FROM `uptime`;
/*!40000 ALTER TABLE `uptime` DISABLE KEYS */;
/*!40000 ALTER TABLE `uptime` ENABLE KEYS */;

-- Dumping structure for table test.vip_accounts
CREATE TABLE IF NOT EXISTS `vip_accounts` (
  `id` int(11) NOT NULL DEFAULT '0' COMMENT 'Account id',
  `type` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `setdate` bigint(40) NOT NULL DEFAULT '0',
  `unsetdate` bigint(40) NOT NULL DEFAULT '0',
  `active` tinyint(4) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`,`setdate`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='VIP Accounts';

-- Dumping data for table test.vip_accounts: 0 rows
DELETE FROM `vip_accounts`;
/*!40000 ALTER TABLE `vip_accounts` DISABLE KEYS */;
/*!40000 ALTER TABLE `vip_accounts` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
