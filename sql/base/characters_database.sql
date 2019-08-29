-- --------------------------------------------------------
-- Host:                         10.10.10.200
-- Server version:               10.1.40-MariaDB - mariadb.org binary distribution
-- Server OS:                    Win64
-- HeidiSQL Version:             9.5.0.5196
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


-- Dumping database structure for characters
CREATE DATABASE IF NOT EXISTS `characters` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `characters`;

-- Dumping structure for table characters.account_data
CREATE TABLE IF NOT EXISTS `account_data` (
  `accountId` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Account Identifier',
  `type` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `time` int(10) unsigned NOT NULL DEFAULT '0',
  `data` blob NOT NULL,
  PRIMARY KEY (`accountId`,`type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table characters.account_data: ~0 rows (approximately)
/*!40000 ALTER TABLE `account_data` DISABLE KEYS */;
/*!40000 ALTER TABLE `account_data` ENABLE KEYS */;

-- Dumping structure for table characters.account_instance_times
CREATE TABLE IF NOT EXISTS `account_instance_times` (
  `accountId` int(10) unsigned NOT NULL,
  `instanceId` int(10) unsigned NOT NULL DEFAULT '0',
  `releaseTime` bigint(20) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`accountId`,`instanceId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table characters.account_instance_times: ~0 rows (approximately)
/*!40000 ALTER TABLE `account_instance_times` DISABLE KEYS */;
/*!40000 ALTER TABLE `account_instance_times` ENABLE KEYS */;

-- Dumping structure for table characters.account_tutorial
CREATE TABLE IF NOT EXISTS `account_tutorial` (
  `accountId` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Account Identifier',
  `tut0` int(10) unsigned NOT NULL DEFAULT '0',
  `tut1` int(10) unsigned NOT NULL DEFAULT '0',
  `tut2` int(10) unsigned NOT NULL DEFAULT '0',
  `tut3` int(10) unsigned NOT NULL DEFAULT '0',
  `tut4` int(10) unsigned NOT NULL DEFAULT '0',
  `tut5` int(10) unsigned NOT NULL DEFAULT '0',
  `tut6` int(10) unsigned NOT NULL DEFAULT '0',
  `tut7` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`accountId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table characters.account_tutorial: ~0 rows (approximately)
/*!40000 ALTER TABLE `account_tutorial` DISABLE KEYS */;
/*!40000 ALTER TABLE `account_tutorial` ENABLE KEYS */;

-- Dumping structure for table characters.addons
CREATE TABLE IF NOT EXISTS `addons` (
  `name` varchar(120) NOT NULL DEFAULT '',
  `crc` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Addons';

-- Dumping data for table characters.addons: ~35 rows (approximately)
/*!40000 ALTER TABLE `addons` DISABLE KEYS */;
INSERT INTO `addons` (`name`, `crc`) VALUES
	('Blizzard_AchievementUI', 1276933997),
	('Blizzard_ArchaeologyUI', 1276933997),
	('Blizzard_ArenaUI', 1276933997),
	('Blizzard_AuctionUI', 1276933997),
	('Blizzard_BarbershopUI', 1276933997),
	('Blizzard_BattlefieldMinimap', 1276933997),
	('Blizzard_BindingUI', 1276933997),
	('Blizzard_Calendar', 1276933997),
	('Blizzard_ClientSavedVariables', 1276933997),
	('Blizzard_CombatLog', 1276933997),
	('Blizzard_CombatText', 1276933997),
	('Blizzard_CompactRaidFrames', 1276933997),
	('Blizzard_CUFProfiles', 1276933997),
	('Blizzard_DebugTools', 1276933997),
	('Blizzard_EncounterJournal', 1276933997),
	('Blizzard_GlyphUI', 1276933997),
	('Blizzard_GMChatUI', 1276933997),
	('Blizzard_GMSurveyUI', 1276933997),
	('Blizzard_GuildBankUI', 1276933997),
	('Blizzard_GuildControlUI', 1276933997),
	('Blizzard_GuildUI', 1276933997),
	('Blizzard_InspectUI', 1276933997),
	('Blizzard_ItemAlterationUI', 1276933997),
	('Blizzard_ItemSocketingUI', 1276933997),
	('Blizzard_LookingForGuildUI', 1276933997),
	('Blizzard_MacroUI', 1276933997),
	('Blizzard_MovePad', 1276933997),
	('Blizzard_RaidUI', 1276933997),
	('Blizzard_ReforgingUI', 1276933997),
	('Blizzard_TalentUI', 1276933997),
	('Blizzard_TimeManager', 1276933997),
	('Blizzard_TokenUI', 1276933997),
	('Blizzard_TradeSkillUI', 1276933997),
	('Blizzard_TrainerUI', 1276933997),
	('Blizzard_VoidStorageUI', 1276933997);
/*!40000 ALTER TABLE `addons` ENABLE KEYS */;

-- Dumping structure for table characters.arena_team
CREATE TABLE IF NOT EXISTS `arena_team` (
  `arenaTeamId` int(10) unsigned NOT NULL DEFAULT '0',
  `name` varchar(24) NOT NULL,
  `captainGuid` int(10) unsigned NOT NULL DEFAULT '0',
  `type` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `rating` smallint(5) unsigned NOT NULL DEFAULT '0',
  `seasonGames` smallint(5) unsigned NOT NULL DEFAULT '0',
  `seasonWins` smallint(5) unsigned NOT NULL DEFAULT '0',
  `weekGames` smallint(5) unsigned NOT NULL DEFAULT '0',
  `weekWins` smallint(5) unsigned NOT NULL DEFAULT '0',
  `rank` int(10) unsigned NOT NULL DEFAULT '0',
  `backgroundColor` int(10) unsigned NOT NULL DEFAULT '0',
  `emblemColor` int(10) unsigned NOT NULL DEFAULT '0',
  `borderColor` int(10) unsigned NOT NULL DEFAULT '0',
  `emblemStyle` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `borderStyle` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `isSoloQueueTeam` tinyint(3) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`arenaTeamId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table characters.arena_team: ~0 rows (approximately)
/*!40000 ALTER TABLE `arena_team` DISABLE KEYS */;
/*!40000 ALTER TABLE `arena_team` ENABLE KEYS */;

-- Dumping structure for table characters.arena_team_member
CREATE TABLE IF NOT EXISTS `arena_team_member` (
  `arenaTeamId` int(10) unsigned NOT NULL DEFAULT '0',
  `guid` int(10) unsigned NOT NULL DEFAULT '0',
  `weekGames` smallint(5) unsigned NOT NULL DEFAULT '0',
  `weekWins` smallint(5) unsigned NOT NULL DEFAULT '0',
  `seasonGames` smallint(5) unsigned NOT NULL DEFAULT '0',
  `seasonWins` smallint(5) unsigned NOT NULL DEFAULT '0',
  `personalRating` smallint(5) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`arenaTeamId`,`guid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table characters.arena_team_member: ~0 rows (approximately)
/*!40000 ALTER TABLE `arena_team_member` DISABLE KEYS */;
/*!40000 ALTER TABLE `arena_team_member` ENABLE KEYS */;

-- Dumping structure for table characters.auctionhouse
CREATE TABLE IF NOT EXISTS `auctionhouse` (
  `id` int(10) unsigned NOT NULL DEFAULT '0',
  `auctioneerguid` int(10) unsigned NOT NULL DEFAULT '0',
  `itemguid` int(10) unsigned NOT NULL DEFAULT '0',
  `itemowner` int(10) unsigned NOT NULL DEFAULT '0',
  `buyoutprice` int(10) unsigned NOT NULL DEFAULT '0',
  `time` int(10) unsigned NOT NULL DEFAULT '0',
  `buyguid` int(10) unsigned NOT NULL DEFAULT '0',
  `lastbid` int(10) unsigned NOT NULL DEFAULT '0',
  `startbid` int(10) unsigned NOT NULL DEFAULT '0',
  `deposit` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `item_guid` (`itemguid`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table characters.auctionhouse: ~0 rows (approximately)
/*!40000 ALTER TABLE `auctionhouse` DISABLE KEYS */;
/*!40000 ALTER TABLE `auctionhouse` ENABLE KEYS */;

-- Dumping structure for table characters.auctionhousebot
CREATE TABLE IF NOT EXISTS `auctionhousebot` (
  `auctionhouse` int(11) NOT NULL DEFAULT '0' COMMENT 'mapID of the auctionhouse.',
  `name` char(25) DEFAULT NULL COMMENT 'Text name of the auctionhouse.',
  `minitems` int(11) DEFAULT '0' COMMENT 'This is the minimum number of items you want to keep in the auction house. a 0 here will make it the same as the maximum.',
  `maxitems` int(11) DEFAULT '0' COMMENT 'This is the number of items you want to keep in the auction house.',
  `percentgreytradegoods` int(11) DEFAULT '0' COMMENT 'Sets the percentage of the Grey Trade Goods auction items',
  `percentwhitetradegoods` int(11) DEFAULT '27' COMMENT 'Sets the percentage of the White Trade Goods auction items',
  `percentgreentradegoods` int(11) DEFAULT '12' COMMENT 'Sets the percentage of the Green Trade Goods auction items',
  `percentbluetradegoods` int(11) DEFAULT '10' COMMENT 'Sets the percentage of the Blue Trade Goods auction items',
  `percentpurpletradegoods` int(11) DEFAULT '1' COMMENT 'Sets the percentage of the Purple Trade Goods auction items',
  `percentorangetradegoods` int(11) DEFAULT '0' COMMENT 'Sets the percentage of the Orange Trade Goods auction items',
  `percentyellowtradegoods` int(11) DEFAULT '0' COMMENT 'Sets the percentage of the Yellow Trade Goods auction items',
  `percentgreyitems` int(11) DEFAULT '0' COMMENT 'Sets the percentage of the non trade Grey auction items',
  `percentwhiteitems` int(11) DEFAULT '10' COMMENT 'Sets the percentage of the non trade White auction items',
  `percentgreenitems` int(11) DEFAULT '30' COMMENT 'Sets the percentage of the non trade Green auction items',
  `percentblueitems` int(11) DEFAULT '8' COMMENT 'Sets the percentage of the non trade Blue auction items',
  `percentpurpleitems` int(11) DEFAULT '2' COMMENT 'Sets the percentage of the non trade Purple auction items',
  `percentorangeitems` int(11) DEFAULT '0' COMMENT 'Sets the percentage of the non trade Orange auction items',
  `percentyellowitems` int(11) DEFAULT '0' COMMENT 'Sets the percentage of the non trade Yellow auction items',
  `minpricegrey` int(11) DEFAULT '100' COMMENT 'Minimum price of Grey items (percentage).',
  `maxpricegrey` int(11) DEFAULT '150' COMMENT 'Maximum price of Grey items (percentage).',
  `minpricewhite` int(11) DEFAULT '150' COMMENT 'Minimum price of White items (percentage).',
  `maxpricewhite` int(11) DEFAULT '250' COMMENT 'Maximum price of White items (percentage).',
  `minpricegreen` int(11) DEFAULT '800' COMMENT 'Minimum price of Green items (percentage).',
  `maxpricegreen` int(11) DEFAULT '1400' COMMENT 'Maximum price of Green items (percentage).',
  `minpriceblue` int(11) DEFAULT '1250' COMMENT 'Minimum price of Blue items (percentage).',
  `maxpriceblue` int(11) DEFAULT '1750' COMMENT 'Maximum price of Blue items (percentage).',
  `minpricepurple` int(11) DEFAULT '2250' COMMENT 'Minimum price of Purple items (percentage).',
  `maxpricepurple` int(11) DEFAULT '4550' COMMENT 'Maximum price of Purple items (percentage).',
  `minpriceorange` int(11) DEFAULT '3250' COMMENT 'Minimum price of Orange items (percentage).',
  `maxpriceorange` int(11) DEFAULT '5550' COMMENT 'Maximum price of Orange items (percentage).',
  `minpriceyellow` int(11) DEFAULT '5250' COMMENT 'Minimum price of Yellow items (percentage).',
  `maxpriceyellow` int(11) DEFAULT '6550' COMMENT 'Maximum price of Yellow items (percentage).',
  `minbidpricegrey` int(11) DEFAULT '70' COMMENT 'Starting bid price of Grey items as a percentage of the randomly chosen buyout price. Default: 70',
  `maxbidpricegrey` int(11) DEFAULT '100' COMMENT 'Starting bid price of Grey items as a percentage of the randomly chosen buyout price. Default: 100',
  `minbidpricewhite` int(11) DEFAULT '70' COMMENT 'Starting bid price of White items as a percentage of the randomly chosen buyout price. Default: 70',
  `maxbidpricewhite` int(11) DEFAULT '100' COMMENT 'Starting bid price of White items as a percentage of the randomly chosen buyout price. Default: 100',
  `minbidpricegreen` int(11) DEFAULT '80' COMMENT 'Starting bid price of Green items as a percentage of the randomly chosen buyout price. Default: 80',
  `maxbidpricegreen` int(11) DEFAULT '100' COMMENT 'Starting bid price of Green items as a percentage of the randomly chosen buyout price. Default: 100',
  `minbidpriceblue` int(11) DEFAULT '75' COMMENT 'Starting bid price of Blue items as a percentage of the randomly chosen buyout price. Default: 75',
  `maxbidpriceblue` int(11) DEFAULT '100' COMMENT 'Starting bid price of Blue items as a percentage of the randomly chosen buyout price. Default: 100',
  `minbidpricepurple` int(11) DEFAULT '80' COMMENT 'Starting bid price of Purple items as a percentage of the randomly chosen buyout price. Default: 80',
  `maxbidpricepurple` int(11) DEFAULT '100' COMMENT 'Starting bid price of Purple items as a percentage of the randomly chosen buyout price. Default: 100',
  `minbidpriceorange` int(11) DEFAULT '80' COMMENT 'Starting bid price of Orange items as a percentage of the randomly chosen buyout price. Default: 80',
  `maxbidpriceorange` int(11) DEFAULT '100' COMMENT 'Starting bid price of Orange items as a percentage of the randomly chosen buyout price. Default: 100',
  `minbidpriceyellow` int(11) DEFAULT '80' COMMENT 'Starting bid price of Yellow items as a percentage of the randomly chosen buyout price. Default: 80',
  `maxbidpriceyellow` int(11) DEFAULT '100' COMMENT 'Starting bid price of Yellow items as a percentage of the randomly chosen buyout price. Default: 100',
  `maxstackgrey` int(11) DEFAULT '0' COMMENT 'Stack size limits for item qualities - a value of 0 will disable a maximum stack size for that quality, which will allow the bot to create items in stack as large as the item allows.',
  `maxstackwhite` int(11) DEFAULT '0' COMMENT 'Stack size limits for item qualities - a value of 0 will disable a maximum stack size for that quality, which will allow the bot to create items in stack as large as the item allows.',
  `maxstackgreen` int(11) DEFAULT '0' COMMENT 'Stack size limits for item qualities - a value of 0 will disable a maximum stack size for that quality, which will allow the bot to create items in stack as large as the item allows.',
  `maxstackblue` int(11) DEFAULT '0' COMMENT 'Stack size limits for item qualities - a value of 0 will disable a maximum stack size for that quality, which will allow the bot to create items in stack as large as the item allows.',
  `maxstackpurple` int(11) DEFAULT '0' COMMENT 'Stack size limits for item qualities - a value of 0 will disable a maximum stack size for that quality, which will allow the bot to create items in stack as large as the item allows.',
  `maxstackorange` int(11) DEFAULT '0' COMMENT 'Stack size limits for item qualities - a value of 0 will disable a maximum stack size for that quality, which will allow the bot to create items in stack as large as the item allows.',
  `maxstackyellow` int(11) DEFAULT '0' COMMENT 'Stack size limits for item qualities - a value of 0 will disable a maximum stack size for that quality, which will allow the bot to create items in stack as large as the item allows.',
  `buyerpricegrey` int(11) DEFAULT '1' COMMENT 'Multiplier to vendorprice when buying grey items from auctionhouse',
  `buyerpricewhite` int(11) DEFAULT '3' COMMENT 'Multiplier to vendorprice when buying white items from auctionhouse',
  `buyerpricegreen` int(11) DEFAULT '5' COMMENT 'Multiplier to vendorprice when buying green items from auctionhouse',
  `buyerpriceblue` int(11) DEFAULT '12' COMMENT 'Multiplier to vendorprice when buying blue items from auctionhouse',
  `buyerpricepurple` int(11) DEFAULT '15' COMMENT 'Multiplier to vendorprice when buying purple items from auctionhouse',
  `buyerpriceorange` int(11) DEFAULT '20' COMMENT 'Multiplier to vendorprice when buying orange items from auctionhouse',
  `buyerpriceyellow` int(11) DEFAULT '22' COMMENT 'Multiplier to vendorprice when buying yellow items from auctionhouse',
  `buyerbiddinginterval` int(11) DEFAULT '1' COMMENT 'Interval how frequently AHB bids on each AH. Time in minutes',
  `buyerbidsperinterval` int(11) DEFAULT '1' COMMENT 'number of bids to put in per bidding interval',
  PRIMARY KEY (`auctionhouse`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table characters.auctionhousebot: ~3 rows (approximately)
/*!40000 ALTER TABLE `auctionhousebot` DISABLE KEYS */;
INSERT INTO `auctionhousebot` (`auctionhouse`, `name`, `minitems`, `maxitems`, `percentgreytradegoods`, `percentwhitetradegoods`, `percentgreentradegoods`, `percentbluetradegoods`, `percentpurpletradegoods`, `percentorangetradegoods`, `percentyellowtradegoods`, `percentgreyitems`, `percentwhiteitems`, `percentgreenitems`, `percentblueitems`, `percentpurpleitems`, `percentorangeitems`, `percentyellowitems`, `minpricegrey`, `maxpricegrey`, `minpricewhite`, `maxpricewhite`, `minpricegreen`, `maxpricegreen`, `minpriceblue`, `maxpriceblue`, `minpricepurple`, `maxpricepurple`, `minpriceorange`, `maxpriceorange`, `minpriceyellow`, `maxpriceyellow`, `minbidpricegrey`, `maxbidpricegrey`, `minbidpricewhite`, `maxbidpricewhite`, `minbidpricegreen`, `maxbidpricegreen`, `minbidpriceblue`, `maxbidpriceblue`, `minbidpricepurple`, `maxbidpricepurple`, `minbidpriceorange`, `maxbidpriceorange`, `minbidpriceyellow`, `maxbidpriceyellow`, `maxstackgrey`, `maxstackwhite`, `maxstackgreen`, `maxstackblue`, `maxstackpurple`, `maxstackorange`, `maxstackyellow`, `buyerpricegrey`, `buyerpricewhite`, `buyerpricegreen`, `buyerpriceblue`, `buyerpricepurple`, `buyerpriceorange`, `buyerpriceyellow`, `buyerbiddinginterval`, `buyerbidsperinterval`) VALUES
	(2, 'Alliance', 250, 250, 0, 27, 12, 10, 1, 0, 0, 0, 10, 30, 8, 2, 0, 0, 100, 150, 150, 250, 800, 1400, 1250, 1750, 2250, 4550, 3250, 5550, 5250, 6550, 70, 100, 70, 100, 80, 100, 75, 100, 80, 100, 80, 100, 80, 100, 0, 0, 3, 2, 1, 1, 1, 1, 3, 5, 12, 15, 20, 22, 1, 1),
	(6, 'Horde', 250, 250, 0, 27, 12, 10, 1, 0, 0, 0, 10, 30, 8, 2, 0, 0, 100, 150, 150, 250, 800, 1400, 1250, 1750, 2250, 4550, 3250, 5550, 5250, 6550, 70, 100, 70, 100, 80, 100, 75, 100, 80, 100, 80, 100, 80, 100, 0, 0, 3, 2, 1, 1, 1, 1, 3, 5, 12, 15, 20, 22, 1, 1),
	(7, 'Neutral', 250, 250, 0, 27, 12, 10, 1, 0, 0, 0, 10, 30, 8, 2, 0, 0, 100, 150, 150, 250, 800, 1400, 1250, 1750, 2250, 4550, 3250, 5550, 5250, 6550, 70, 100, 70, 100, 80, 100, 75, 100, 80, 100, 80, 100, 80, 100, 0, 0, 3, 2, 1, 1, 1, 1, 3, 5, 12, 15, 20, 22, 1, 1);
/*!40000 ALTER TABLE `auctionhousebot` ENABLE KEYS */;

-- Dumping structure for table characters.bugreport
CREATE TABLE IF NOT EXISTS `bugreport` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Identifier',
  `type` longtext NOT NULL,
  `content` longtext NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Debug System';

-- Dumping data for table characters.bugreport: ~0 rows (approximately)
/*!40000 ALTER TABLE `bugreport` DISABLE KEYS */;
/*!40000 ALTER TABLE `bugreport` ENABLE KEYS */;

-- Dumping structure for table characters.calendar_events
CREATE TABLE IF NOT EXISTS `calendar_events` (
  `id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `creator` int(10) unsigned NOT NULL DEFAULT '0',
  `title` varchar(255) NOT NULL DEFAULT '',
  `description` varchar(255) NOT NULL DEFAULT '',
  `type` tinyint(1) unsigned NOT NULL DEFAULT '4',
  `dungeon` int(10) NOT NULL DEFAULT '-1',
  `eventtime` int(10) unsigned NOT NULL DEFAULT '0',
  `flags` int(10) unsigned NOT NULL DEFAULT '0',
  `time2` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table characters.calendar_events: ~0 rows (approximately)
/*!40000 ALTER TABLE `calendar_events` DISABLE KEYS */;
/*!40000 ALTER TABLE `calendar_events` ENABLE KEYS */;

-- Dumping structure for table characters.calendar_invites
CREATE TABLE IF NOT EXISTS `calendar_invites` (
  `id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `event` bigint(20) unsigned NOT NULL DEFAULT '0',
  `invitee` int(10) unsigned NOT NULL DEFAULT '0',
  `sender` int(10) unsigned NOT NULL DEFAULT '0',
  `status` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `statustime` int(10) unsigned NOT NULL DEFAULT '0',
  `rank` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `text` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table characters.calendar_invites: ~0 rows (approximately)
/*!40000 ALTER TABLE `calendar_invites` DISABLE KEYS */;
/*!40000 ALTER TABLE `calendar_invites` ENABLE KEYS */;

-- Dumping structure for table characters.channels
CREATE TABLE IF NOT EXISTS `channels` (
  `name` varchar(128) NOT NULL,
  `team` int(10) unsigned NOT NULL,
  `announce` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `ownership` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `password` varchar(32) DEFAULT NULL,
  `bannedList` text,
  `lastUsed` int(10) unsigned NOT NULL,
  PRIMARY KEY (`name`,`team`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Channel System';

-- Dumping data for table characters.channels: ~0 rows (approximately)
/*!40000 ALTER TABLE `channels` DISABLE KEYS */;
/*!40000 ALTER TABLE `channels` ENABLE KEYS */;

-- Dumping structure for table characters.characters
CREATE TABLE IF NOT EXISTS `characters` (
  `guid` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Global Unique Identifier',
  `account` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Account Identifier',
  `name` varchar(12) NOT NULL DEFAULT '0',
  `race` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `class` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `gender` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `level` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `xp` int(10) unsigned NOT NULL DEFAULT '0',
  `money` bigint(20) unsigned NOT NULL DEFAULT '0',
  `playerBytes` int(10) unsigned NOT NULL DEFAULT '0',
  `playerBytes2` int(10) unsigned NOT NULL DEFAULT '0',
  `playerFlags` int(10) unsigned NOT NULL DEFAULT '0',
  `position_x` float NOT NULL DEFAULT '0',
  `position_y` float NOT NULL DEFAULT '0',
  `position_z` float NOT NULL DEFAULT '0',
  `map` smallint(5) unsigned NOT NULL DEFAULT '0',
  `instance_id` int(10) unsigned NOT NULL DEFAULT '0',
  `instance_mode_mask` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `orientation` float NOT NULL DEFAULT '0',
  `taximask` text NOT NULL,
  `online` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `cinematic` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `totaltime` int(10) unsigned NOT NULL DEFAULT '0',
  `leveltime` int(10) unsigned NOT NULL DEFAULT '0',
  `logout_time` int(10) unsigned NOT NULL DEFAULT '0',
  `is_logout_resting` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `rest_bonus` float NOT NULL DEFAULT '0',
  `resettalents_cost` int(10) unsigned NOT NULL DEFAULT '0',
  `resettalents_time` int(10) unsigned NOT NULL DEFAULT '0',
  `trans_x` float NOT NULL DEFAULT '0',
  `trans_y` float NOT NULL DEFAULT '0',
  `trans_z` float NOT NULL DEFAULT '0',
  `trans_o` float NOT NULL DEFAULT '0',
  `transguid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `extra_flags` smallint(5) unsigned NOT NULL DEFAULT '0',
  `stable_slots` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `at_login` smallint(5) unsigned NOT NULL DEFAULT '0',
  `zone` smallint(5) unsigned NOT NULL DEFAULT '0',
  `death_expire_time` int(10) unsigned NOT NULL DEFAULT '0',
  `taxi_path` text,
  `totalKills` int(10) unsigned NOT NULL DEFAULT '0',
  `todayKills` smallint(5) unsigned NOT NULL DEFAULT '0',
  `yesterdayKills` smallint(5) unsigned NOT NULL DEFAULT '0',
  `chosenTitle` int(10) unsigned NOT NULL DEFAULT '0',
  `watchedFaction` int(10) unsigned NOT NULL DEFAULT '0',
  `drunk` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `health` int(10) unsigned NOT NULL DEFAULT '0',
  `power1` int(10) unsigned NOT NULL DEFAULT '0',
  `power2` int(10) unsigned NOT NULL DEFAULT '0',
  `power3` int(10) unsigned NOT NULL DEFAULT '0',
  `power4` int(10) unsigned NOT NULL DEFAULT '0',
  `power5` int(10) unsigned NOT NULL DEFAULT '0',
  `latency` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `speccount` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `activespec` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `exploredZones` longtext,
  `equipmentCache` longtext,
  `knownTitles` longtext,
  `actionBars` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `deleteInfos_Account` int(10) unsigned DEFAULT NULL,
  `deleteInfos_Name` varchar(12) DEFAULT NULL,
  `deleteDate` int(10) unsigned DEFAULT NULL,
  `achievementPoint` int(10) NOT NULL DEFAULT '0',
  `slot` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `grantableLevels` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `currentPetSlot` smallint(2) NOT NULL DEFAULT '0',
  `talentTree` varchar(10) NOT NULL DEFAULT '0 0',
  `guildId` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`guid`),
  KEY `idx_account` (`account`) USING BTREE,
  KEY `idx_online` (`online`) USING BTREE,
  KEY `idx_name` (`name`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Player System';

-- Dumping data for table characters.characters: ~0 rows (approximately)
/*!40000 ALTER TABLE `characters` DISABLE KEYS */;
/*!40000 ALTER TABLE `characters` ENABLE KEYS */;

-- Dumping structure for table characters.character_account_data
CREATE TABLE IF NOT EXISTS `character_account_data` (
  `guid` int(10) unsigned NOT NULL DEFAULT '0',
  `type` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `time` int(10) unsigned NOT NULL DEFAULT '0',
  `data` blob NOT NULL,
  PRIMARY KEY (`guid`,`type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table characters.character_account_data: ~0 rows (approximately)
/*!40000 ALTER TABLE `character_account_data` DISABLE KEYS */;
/*!40000 ALTER TABLE `character_account_data` ENABLE KEYS */;

-- Dumping structure for table characters.character_achievement
CREATE TABLE IF NOT EXISTS `character_achievement` (
  `guid` int(10) unsigned NOT NULL,
  `achievement` smallint(5) unsigned NOT NULL,
  `date` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`guid`,`achievement`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table characters.character_achievement: ~0 rows (approximately)
/*!40000 ALTER TABLE `character_achievement` DISABLE KEYS */;
/*!40000 ALTER TABLE `character_achievement` ENABLE KEYS */;

-- Dumping structure for table characters.character_achievement_progress
CREATE TABLE IF NOT EXISTS `character_achievement_progress` (
  `guid` int(10) unsigned NOT NULL,
  `criteria` smallint(5) unsigned NOT NULL,
  `counter` bigint(20) unsigned NOT NULL DEFAULT '0',
  `date` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`guid`,`criteria`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table characters.character_achievement_progress: ~0 rows (approximately)
/*!40000 ALTER TABLE `character_achievement_progress` DISABLE KEYS */;
/*!40000 ALTER TABLE `character_achievement_progress` ENABLE KEYS */;

-- Dumping structure for table characters.character_action
CREATE TABLE IF NOT EXISTS `character_action` (
  `guid` int(10) unsigned NOT NULL DEFAULT '0',
  `spec` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `button` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `action` int(10) unsigned NOT NULL DEFAULT '0',
  `type` tinyint(3) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`guid`,`spec`,`button`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table characters.character_action: ~0 rows (approximately)
/*!40000 ALTER TABLE `character_action` DISABLE KEYS */;
/*!40000 ALTER TABLE `character_action` ENABLE KEYS */;

-- Dumping structure for table characters.character_arena_stats
CREATE TABLE IF NOT EXISTS `character_arena_stats` (
  `guid` int(10) NOT NULL,
  `slot` tinyint(3) NOT NULL,
  `matchMakerRating` smallint(5) NOT NULL,
  PRIMARY KEY (`guid`,`slot`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table characters.character_arena_stats: ~0 rows (approximately)
/*!40000 ALTER TABLE `character_arena_stats` DISABLE KEYS */;
/*!40000 ALTER TABLE `character_arena_stats` ENABLE KEYS */;

-- Dumping structure for table characters.character_aura
CREATE TABLE IF NOT EXISTS `character_aura` (
  `guid` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Global Unique Identifier',
  `caster_guid` bigint(20) unsigned NOT NULL DEFAULT '0' COMMENT 'Full Global Unique Identifier',
  `item_guid` bigint(20) unsigned NOT NULL DEFAULT '0',
  `spell` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `effect_mask` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `recalculate_mask` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `stackcount` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `amount0` int(11) NOT NULL DEFAULT '0',
  `amount1` int(11) NOT NULL DEFAULT '0',
  `amount2` int(11) NOT NULL DEFAULT '0',
  `base_amount0` int(11) NOT NULL DEFAULT '0',
  `base_amount1` int(11) NOT NULL DEFAULT '0',
  `base_amount2` int(11) NOT NULL DEFAULT '0',
  `maxduration` int(11) NOT NULL DEFAULT '0',
  `remaintime` int(11) NOT NULL DEFAULT '0',
  `remaincharges` tinyint(3) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`guid`,`caster_guid`,`item_guid`,`spell`,`effect_mask`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Player System';

-- Dumping data for table characters.character_aura: ~0 rows (approximately)
/*!40000 ALTER TABLE `character_aura` DISABLE KEYS */;
/*!40000 ALTER TABLE `character_aura` ENABLE KEYS */;

-- Dumping structure for table characters.character_banned
CREATE TABLE IF NOT EXISTS `character_banned` (
  `guid` int(10) unsigned NOT NULL DEFAULT '0',
  `bandate` int(10) unsigned NOT NULL DEFAULT '0',
  `unbandate` int(10) unsigned NOT NULL DEFAULT '0',
  `bannedby` varchar(50) NOT NULL,
  `banreason` varchar(255) NOT NULL,
  `active` tinyint(3) unsigned NOT NULL DEFAULT '1',
  PRIMARY KEY (`guid`,`bandate`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Ban List';

-- Dumping data for table characters.character_banned: 0 rows
/*!40000 ALTER TABLE `character_banned` DISABLE KEYS */;
/*!40000 ALTER TABLE `character_banned` ENABLE KEYS */;

-- Dumping structure for table characters.character_battleground_data
CREATE TABLE IF NOT EXISTS `character_battleground_data` (
  `guid` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Global Unique Identifier',
  `instanceId` int(10) unsigned NOT NULL COMMENT 'Instance Identifier',
  `team` smallint(5) unsigned NOT NULL,
  `joinX` float NOT NULL DEFAULT '0',
  `joinY` float NOT NULL DEFAULT '0',
  `joinZ` float NOT NULL DEFAULT '0',
  `joinO` float NOT NULL DEFAULT '0',
  `joinMapId` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Map Identifier',
  `taxiStart` int(10) unsigned NOT NULL DEFAULT '0',
  `taxiEnd` int(10) unsigned NOT NULL DEFAULT '0',
  `mountSpell` mediumint(8) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`guid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Player System';

-- Dumping data for table characters.character_battleground_data: ~207 rows (approximately)
/*!40000 ALTER TABLE `character_battleground_data` DISABLE KEYS */;
/*!40000 ALTER TABLE `character_battleground_data` ENABLE KEYS */;

-- Dumping structure for table characters.character_battleground_random
CREATE TABLE IF NOT EXISTS `character_battleground_random` (
  `guid` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`guid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table characters.character_battleground_random: ~0 rows (approximately)
/*!40000 ALTER TABLE `character_battleground_random` DISABLE KEYS */;
/*!40000 ALTER TABLE `character_battleground_random` ENABLE KEYS */;

-- Dumping structure for table characters.character_battleground_stats
CREATE TABLE IF NOT EXISTS `character_battleground_stats` (
  `guid` int(10) NOT NULL,
  `win` int(10) NOT NULL,
  `played` int(10) NOT NULL,
  `rating` int(10) NOT NULL,
  PRIMARY KEY (`guid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table characters.character_battleground_stats: ~4 rows (approximately)
/*!40000 ALTER TABLE `character_battleground_stats` DISABLE KEYS */;
/*!40000 ALTER TABLE `character_battleground_stats` ENABLE KEYS */;

-- Dumping structure for table characters.character_bug_submission
CREATE TABLE IF NOT EXISTS `character_bug_submission` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `content` varchar(500) DEFAULT NULL,
  `playerId` bigint(20) DEFAULT NULL,
  `position_x` float DEFAULT NULL,
  `position_y` float DEFAULT NULL,
  `position_z` float DEFAULT NULL,
  `orientation` float DEFAULT NULL,
  `mapId` int(10) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Dumping data for table characters.character_bug_submission: 0 rows
/*!40000 ALTER TABLE `character_bug_submission` DISABLE KEYS */;
/*!40000 ALTER TABLE `character_bug_submission` ENABLE KEYS */;

-- Dumping structure for table characters.character_cuf_profiles
CREATE TABLE IF NOT EXISTS `character_cuf_profiles` (
  `guid` int(10) unsigned NOT NULL COMMENT 'Character Guid',
  `id` tinyint(3) unsigned NOT NULL COMMENT 'Profile Id (0-4)',
  `name` varchar(12) NOT NULL COMMENT 'Profile Name',
  `frameHeight` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Profile Frame Height',
  `frameWidth` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Profile Frame Width',
  `sortBy` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT 'Frame Sort By',
  `healthText` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT 'Frame Health Text',
  `boolOptions` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Many Configurable Bool Options',
  `unk146` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT 'Profile Unk Int8',
  `unk147` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT 'Profile Unk Int8',
  `unk148` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT 'Profile Unk Int8',
  `unk150` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Profile Unk Int16',
  `unk152` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Profile Unk Int16',
  `unk154` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Profile Unk Int16',
  PRIMARY KEY (`guid`,`id`),
  KEY `index` (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table characters.character_cuf_profiles: ~0 rows (approximately)
/*!40000 ALTER TABLE `character_cuf_profiles` DISABLE KEYS */;
/*!40000 ALTER TABLE `character_cuf_profiles` ENABLE KEYS */;

-- Dumping structure for table characters.character_currency
CREATE TABLE IF NOT EXISTS `character_currency` (
  `guid` int(10) unsigned NOT NULL,
  `currency` smallint(5) unsigned NOT NULL,
  `total_count` int(10) unsigned NOT NULL,
  `season_count` int(11) unsigned NOT NULL,
  `week_count` int(10) unsigned NOT NULL,
  `week_cap` int(10) unsigned NOT NULL,
  `new_cap` int(10) unsigned NOT NULL,
  `season_cap` int(10) unsigned NOT NULL,
  PRIMARY KEY (`guid`,`currency`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table characters.character_currency: ~0 rows (approximately)
/*!40000 ALTER TABLE `character_currency` DISABLE KEYS */;
/*!40000 ALTER TABLE `character_currency` ENABLE KEYS */;

-- Dumping structure for table characters.character_currency_weekcap
CREATE TABLE IF NOT EXISTS `character_currency_weekcap` (
  `guid` int(10) unsigned NOT NULL DEFAULT '0',
  `source` smallint(3) unsigned NOT NULL DEFAULT '0',
  `max_week_rating` smallint(5) unsigned NOT NULL DEFAULT '0',
  `week_cap` smallint(5) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`guid`,`source`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table characters.character_currency_weekcap: ~4 rows (approximately)
/*!40000 ALTER TABLE `character_currency_weekcap` DISABLE KEYS */;
/*!40000 ALTER TABLE `character_currency_weekcap` ENABLE KEYS */;

-- Dumping structure for table characters.character_current_artifacts
CREATE TABLE IF NOT EXISTS `character_current_artifacts` (
  `guid` int(10) unsigned NOT NULL,
  `branchId` int(10) NOT NULL DEFAULT '0',
  `entry` int(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`guid`,`branchId`,`entry`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Dumping data for table characters.character_current_artifacts: 0 rows
/*!40000 ALTER TABLE `character_current_artifacts` DISABLE KEYS */;
/*!40000 ALTER TABLE `character_current_artifacts` ENABLE KEYS */;

-- Dumping structure for table characters.character_declinedname
CREATE TABLE IF NOT EXISTS `character_declinedname` (
  `guid` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Global Unique Identifier',
  `genitive` varchar(15) NOT NULL DEFAULT '',
  `dative` varchar(15) NOT NULL DEFAULT '',
  `accusative` varchar(15) NOT NULL DEFAULT '',
  `instrumental` varchar(15) NOT NULL DEFAULT '',
  `prepositional` varchar(15) NOT NULL DEFAULT '',
  PRIMARY KEY (`guid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table characters.character_declinedname: ~0 rows (approximately)
/*!40000 ALTER TABLE `character_declinedname` DISABLE KEYS */;
/*!40000 ALTER TABLE `character_declinedname` ENABLE KEYS */;

-- Dumping structure for table characters.character_digsites
CREATE TABLE IF NOT EXISTS `character_digsites` (
  `guid` int(10) unsigned NOT NULL,
  `entry` int(10) NOT NULL DEFAULT '0',
  `count` int(11) DEFAULT NULL,
  PRIMARY KEY (`guid`,`entry`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Dumping data for table characters.character_digsites: 0 rows
/*!40000 ALTER TABLE `character_digsites` DISABLE KEYS */;
/*!40000 ALTER TABLE `character_digsites` ENABLE KEYS */;

-- Dumping structure for table characters.character_equipmentsets
CREATE TABLE IF NOT EXISTS `character_equipmentsets` (
  `guid` int(10) NOT NULL DEFAULT '0',
  `setguid` bigint(20) NOT NULL AUTO_INCREMENT,
  `setindex` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `name` varchar(31) NOT NULL,
  `iconname` varchar(100) NOT NULL,
  `ignore_mask` int(11) unsigned NOT NULL DEFAULT '0',
  `item0` int(11) unsigned NOT NULL DEFAULT '0',
  `item1` int(11) unsigned NOT NULL DEFAULT '0',
  `item2` int(11) unsigned NOT NULL DEFAULT '0',
  `item3` int(11) unsigned NOT NULL DEFAULT '0',
  `item4` int(11) unsigned NOT NULL DEFAULT '0',
  `item5` int(11) unsigned NOT NULL DEFAULT '0',
  `item6` int(11) unsigned NOT NULL DEFAULT '0',
  `item7` int(11) unsigned NOT NULL DEFAULT '0',
  `item8` int(11) unsigned NOT NULL DEFAULT '0',
  `item9` int(11) unsigned NOT NULL DEFAULT '0',
  `item10` int(11) unsigned NOT NULL DEFAULT '0',
  `item11` int(11) unsigned NOT NULL DEFAULT '0',
  `item12` int(11) unsigned NOT NULL DEFAULT '0',
  `item13` int(11) unsigned NOT NULL DEFAULT '0',
  `item14` int(11) unsigned NOT NULL DEFAULT '0',
  `item15` int(11) unsigned NOT NULL DEFAULT '0',
  `item16` int(11) unsigned NOT NULL DEFAULT '0',
  `item17` int(11) unsigned NOT NULL DEFAULT '0',
  `item18` int(11) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`setguid`),
  UNIQUE KEY `idx_set` (`guid`,`setguid`,`setindex`) USING BTREE,
  KEY `Idx_setindex` (`setindex`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- Dumping data for table characters.character_equipmentsets: ~3 rows (approximately)
/*!40000 ALTER TABLE `character_equipmentsets` DISABLE KEYS */;
/*!40000 ALTER TABLE `character_equipmentsets` ENABLE KEYS */;

-- Dumping structure for table characters.character_gifts
CREATE TABLE IF NOT EXISTS `character_gifts` (
  `guid` int(10) unsigned NOT NULL DEFAULT '0',
  `item_guid` int(10) unsigned NOT NULL DEFAULT '0',
  `entry` int(10) unsigned NOT NULL DEFAULT '0',
  `flags` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`item_guid`),
  KEY `idx_guid` (`guid`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table characters.character_gifts: ~0 rows (approximately)
/*!40000 ALTER TABLE `character_gifts` DISABLE KEYS */;
/*!40000 ALTER TABLE `character_gifts` ENABLE KEYS */;

-- Dumping structure for table characters.character_glyphs
CREATE TABLE IF NOT EXISTS `character_glyphs` (
  `guid` int(10) unsigned NOT NULL,
  `spec` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `glyph1` smallint(5) unsigned DEFAULT '0',
  `glyph2` smallint(5) unsigned DEFAULT '0',
  `glyph3` smallint(5) unsigned DEFAULT '0',
  `glyph4` smallint(5) unsigned DEFAULT '0',
  `glyph5` smallint(5) unsigned DEFAULT '0',
  `glyph6` smallint(5) unsigned DEFAULT '0',
  `glyph7` smallint(5) unsigned DEFAULT '0',
  `glyph8` smallint(5) unsigned DEFAULT '0',
  `glyph9` smallint(5) unsigned DEFAULT '0',
  PRIMARY KEY (`guid`,`spec`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table characters.character_glyphs: ~212 rows (approximately)
/*!40000 ALTER TABLE `character_glyphs` DISABLE KEYS */;
/*!40000 ALTER TABLE `character_glyphs` ENABLE KEYS */;

-- Dumping structure for table characters.character_guild_reputation
CREATE TABLE IF NOT EXISTS `character_guild_reputation` (
  `guid` int(10) unsigned NOT NULL,
  `guildid` int(10) unsigned NOT NULL COMMENT 'Guild Identificator',
  `disband_time` int(10) unsigned NOT NULL DEFAULT '0',
  `weekly_rep` bigint(20) NOT NULL DEFAULT '0',
  `total_rep` bigint(20) NOT NULL DEFAULT '0',
  UNIQUE KEY `guid_key` (`guid`),
  KEY `guildid_key` (`guildid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Characters Guild Reputation System';

-- Dumping data for table characters.character_guild_reputation: ~0 rows (approximately)
/*!40000 ALTER TABLE `character_guild_reputation` DISABLE KEYS */;
/*!40000 ALTER TABLE `character_guild_reputation` ENABLE KEYS */;

-- Dumping structure for table characters.character_homebind
CREATE TABLE IF NOT EXISTS `character_homebind` (
  `guid` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Global Unique Identifier',
  `mapId` smallint(5) unsigned NOT NULL DEFAULT '0',
  `zoneId` smallint(5) unsigned NOT NULL DEFAULT '0',
  `posX` float NOT NULL DEFAULT '0',
  `posY` float NOT NULL DEFAULT '0',
  `posZ` float NOT NULL DEFAULT '0',
  PRIMARY KEY (`guid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Player System';

-- Dumping data for table characters.character_homebind: ~202 rows (approximately)
/*!40000 ALTER TABLE `character_homebind` DISABLE KEYS */;
INSERT INTO `character_homebind` (`guid`, `mapId`, `zoneId`, `posX`, `posY`, `posZ`) VALUES
	(1, 1, 14, -618.518, -4251.67, 38.718),
	(2, 1, 14, -618.518, -4251.67, 38.718),
	(4, 1, 14, -618.518, -4251.67, 38.718),
	(5, 1, 14, -618.518, -4251.67, 38.718),
	(6, 1, 12, -618.518, -4251.67, 38.718),
	(7, 1, 14, -618.518, -4251.67, 38.718),
	(8, 0, 12, -8914.57, -133.909, 80.5378),
	(10, 0, 12, -8914.57, -133.909, 80.5378),
	(11, 0, 12, -8914.57, -133.909, 80.5378),
	(12, 0, 12, -8914.57, -133.909, 80.5378),
	(13, 0, 12, -8914.57, -133.909, 80.5378),
	(14, 0, 12, -8914.57, -133.909, 80.5378),
	(15, 0, 1, -6230.42, 330.232, 383.105),
	(22, 1, 186, 9802.88, 980.262, 1313.9),
	(25, 530, 3431, 10349.6, -6357.29, 33.4026),
	(26, 0, 12, -8914.57, -133.909, 80.5378),
	(27, 0, 1, -6230.42, 330.232, 383.105),
	(28, 0, 12, -8914.57, -133.909, 80.5378),
	(29, 0, 12, -8914.57, -133.909, 80.5378),
	(30, 0, 12, -8914.57, -133.909, 80.5378),
	(31, 0, 12, -8914.57, -133.909, 80.5378),
	(32, 0, 12, -8914.57, -133.909, 80.5378),
	(33, 0, 12, -8914.57, -133.909, 80.5378),
	(34, 0, 1, -6230.42, 330.232, 383.105),
	(37, 0, 12, -8914.57, -133.909, 80.5378),
	(38, 1, 215, -2915.55, -257.347, 59.2693),
	(39, 0, 12, -8914.57, -133.909, 80.5378),
	(40, 0, 85, 1704.23, 1701.18, 134.87),
	(41, 1, 1637, 1633.33, -4439.11, 15.7588),
	(42, 0, 5637, -9465.62, 15.7323, 56.9633),
	(43, 1, 1637, 1633.33, -4439.11, 15.7588),
	(44, 1, 215, -2915.55, -257.347, 59.2693),
	(45, 0, 85, 1704.23, 1701.18, 134.87),
	(46, 1, 14, -618.518, -4251.67, 38.718),
	(47, 1, 14, -618.518, -4251.67, 38.718),
	(48, 1, 14, -618.518, -4251.67, 38.718),
	(49, 1, 14, -618.518, -4251.67, 38.718),
	(50, 1, 12, -618.518, -4251.67, 38.718),
	(51, 1, 12, -618.518, -4251.67, 38.718),
	(52, 1, 14, -618.518, -4251.67, 38.718),
	(53, 1, 14, -618.518, -4251.67, 38.718),
	(54, 1, 14, -618.518, -4251.67, 38.718),
	(55, 1, 14, -618.518, -4251.67, 38.718),
	(56, 1, 14, -618.518, -4251.67, 38.718),
	(57, 1, 14, -618.518, -4251.67, 38.718),
	(58, 1, 14, -618.518, -4251.67, 38.718),
	(59, 1, 14, -618.518, -4251.67, 38.718),
	(60, 1, 14, -618.518, -4251.67, 38.718),
	(61, 1, 14, -618.518, -4251.67, 38.718),
	(62, 1, 14, -618.518, -4251.67, 38.718),
	(63, 1, 14, -618.518, -4251.67, 38.718),
	(64, 1, 14, -618.518, -4251.67, 38.718),
	(65, 1, 14, -618.518, -4251.67, 38.718),
	(66, 1, 14, -618.518, -4251.67, 38.718),
	(67, 1, 14, -618.518, -4251.67, 38.718),
	(68, 1, 14, -618.518, -4251.67, 38.718),
	(69, 1, 14, -618.518, -4251.67, 38.718),
	(70, 1, 14, -618.518, -4251.67, 38.718),
	(71, 1, 14, -618.518, -4251.67, 38.718),
	(72, 1, 14, -618.518, -4251.67, 38.718),
	(73, 1, 14, -618.518, -4251.67, 38.718),
	(74, 1, 12, -618.518, -4251.67, 38.718),
	(75, 1, 14, -618.518, -4251.67, 38.718),
	(76, 1, 14, -618.518, -4251.67, 38.718),
	(77, 1, 215, -2915.55, -257.347, 59.2693),
	(78, 530, 3431, 10349.6, -6357.29, 33.4026),
	(79, 1, 12, -618.518, -4251.67, 38.718),
	(80, 1, 14, -618.518, -4251.67, 38.718),
	(81, 1, 14, -618.518, -4251.67, 38.718),
	(82, 1, 12, -618.518, -4251.67, 38.718),
	(83, 1, 14, -618.518, -4251.67, 38.718),
	(84, 1, 14, -618.518, -4251.67, 38.718),
	(85, 1, 14, -618.518, -4251.67, 38.718),
	(86, 1, 14, -618.518, -4251.67, 38.718),
	(87, 1, 14, -618.518, -4251.67, 38.718),
	(89, 530, 3431, 10349.6, -6357.29, 33.4026),
	(90, 1, 215, -2915.55, -257.347, 59.2693),
	(91, 530, 3431, 10349.6, -6357.29, 33.4026),
	(92, 1, 215, -2915.55, -257.347, 59.2693),
	(93, 1, 215, -2915.55, -257.347, 59.2693),
	(96, 530, 3431, 10349.6, -6357.29, 33.4026),
	(97, 0, 12, -8914.57, -133.909, 80.5378),
	(99, 1, 14, -618.518, -4251.67, 38.718),
	(100, 0, 1, -4983.42, 877.7, 274.31),
	(104, 0, 12, -8914.57, -133.909, 80.5378),
	(105, 0, 12, -8914.57, -133.909, 80.5378),
	(107, 0, 12, -8914.57, -133.909, 80.5378),
	(114, 530, 3431, 10349.6, -6357.29, 33.4026),
	(121, 0, 85, 1704.23, 1701.18, 134.87),
	(124, 530, 3431, 10349.6, -6357.29, 33.4026),
	(125, 648, 4737, -8423.78, 1363.93, 104.679),
	(126, 530, 3431, 10349.6, -6357.29, 33.4026),
	(134, 1, 12, -618.518, -4251.67, 38.718),
	(138, 1, 215, -2915.55, -257.347, 59.2693),
	(139, 1, 215, -2915.55, -257.347, 59.2693),
	(140, 0, 1, -6230.42, 330.232, 383.105),
	(141, 654, 4714, -1448.16, 1403.33, 35.5567),
	(146, 0, 12, -8914.57, -133.909, 80.5378),
	(168, 1, 5730, 5515.96, -3607.2, 1570.05),
	(169, 0, 12, -8914.57, -133.909, 80.5378),
	(170, 0, 12, -8914.57, -133.909, 80.5378),
	(171, 0, 12, -8914.57, -133.909, 80.5378),
	(172, 0, 12, -8914.57, -133.909, 80.5378),
	(173, 1, 12, -618.518, -4251.67, 38.718),
	(174, 1, 12, -618.518, -4251.67, 38.718),
	(175, 1, 12, -618.518, -4251.67, 38.718),
	(188, 654, 4714, -1448.16, 1403.33, 35.5567),
	(189, 1, 14, -1171.45, -5263.65, 0.847728),
	(194, 1, 14, -618.518, -4251.67, 38.718),
	(195, 1, 14, -618.518, -4251.67, 38.718),
	(208, 0, 5637, -9465.39, 16.9437, 56.9633),
	(209, 530, 3526, -3961.64, -13931.2, 100.615),
	(210, 0, 85, 1704.23, 1701.18, 134.87),
	(212, 0, 85, 1704.23, 1701.18, 134.87),
	(213, 1, 14, -618.518, -4251.67, 38.718),
	(214, 0, 1519, -8867.68, 673.373, 97.9034),
	(215, 0, 12, -8914.57, -133.909, 80.5378),
	(216, 0, 12, -8914.57, -133.909, 80.5378),
	(221, 0, 12, -8914.57, -133.909, 80.5378),
	(222, 654, 4714, -1448.16, 1403.33, 35.5567),
	(228, 1, 141, 10311.3, 831.463, 1326.41),
	(230, 530, 3526, -3961.64, -13931.2, 100.615),
	(232, 0, 12, -8914.57, -133.909, 80.5378),
	(233, 0, 12, -8914.57, -133.909, 80.5378),
	(235, 0, 12, -8914.57, -133.909, 80.5378),
	(237, 1, 141, 10311.3, 831.463, 1326.41),
	(238, 648, 4737, -8423.78, 1363.93, 104.679),
	(239, 0, 12, -8914.57, -133.909, 80.5378),
	(243, 0, 1, -6230.42, 330.232, 383.105),
	(244, 654, 4714, -1448.16, 1403.33, 35.5567),
	(245, 654, 4714, -1448.16, 1403.33, 35.5567),
	(247, 1, 141, 10311.3, 831.463, 1326.41),
	(248, 654, 4714, -1448.16, 1403.33, 35.5567),
	(249, 1, 141, 10311.3, 831.463, 1326.41),
	(251, 530, 3431, 10349.6, -6357.29, 33.4026),
	(252, 0, 1, -6230.42, 330.232, 383.105),
	(253, 654, 4714, -1448.16, 1403.33, 35.5567),
	(256, 1, 215, -2915.55, -257.347, 59.7993),
	(257, 654, 4714, -1448.16, 1403.33, 35.5567),
	(259, 1, 215, -2915.55, -257.347, 59.7993),
	(264, 0, 1519, -8867.68, 673.373, 97.9034),
	(268, 1, 215, -2915.55, -257.347, 59.7993),
	(271, 0, 1, -4983.42, 877.7, 274.31),
	(273, 1, 215, -2915.55, -257.347, 59.7993),
	(274, 1, 215, -2915.55, -257.347, 59.7993),
	(277, 0, 1, -6230.42, 330.232, 383.105),
	(278, 0, 85, 1704.23, 1701.18, 134.87),
	(282, 1, 215, -2915.55, -257.347, 59.7993),
	(284, 609, 4298, 2355.84, -5662.21, 426.028),
	(285, 0, 12, -8914.57, -133.909, 80.5378),
	(286, 0, 12, -8914.57, -133.909, 80.5378),
	(289, 1, 14, -618.518, -4251.67, 38.718),
	(292, 0, 1, -4983.42, 877.7, 274.31),
	(295, 1, 14, -1171.45, -5263.65, 0.847728),
	(296, 0, 1, -4983.42, 877.7, 274.31),
	(302, 1, 14, -618.518, -4251.67, 38.718),
	(303, 0, 5637, -9465.48, 15.1544, 56.964),
	(304, 1, 14, -618.518, -4251.67, 38.718),
	(306, 1, 215, -2915.55, -257.347, 59.7993),
	(308, 1, 14, -618.518, -4251.67, 38.718),
	(311, 0, 12, -8914.57, -133.909, 80.5378),
	(312, 1, 14, -618.518, -4251.67, 38.718),
	(313, 1, 14, -618.518, -4251.67, 38.718),
	(314, 1, 141, 10311.3, 831.463, 1326.41),
	(315, 0, 12, -8914.57, -133.909, 80.5378),
	(316, 0, 12, -8914.57, -133.909, 80.5378),
	(317, 530, 3431, 10349.6, -6357.29, 33.4026),
	(319, 0, 85, 1704.23, 1701.18, 134.87),
	(320, 0, 85, 1704.23, 1701.18, 134.87),
	(321, 0, 85, 1704.23, 1701.18, 134.87),
	(322, 0, 1519, -8867.68, 673.373, 97.9034),
	(323, 0, 85, 1704.23, 1701.18, 134.87),
	(324, 0, 12, -8914.57, -133.909, 80.5378),
	(325, 0, 12, -8914.57, -133.909, 80.5378),
	(326, 0, 12, -8914.57, -133.909, 80.5378),
	(327, 530, 3526, -3961.64, -13931.2, 100.615),
	(328, 1, 215, -2915.55, -257.347, 59.7993),
	(329, 654, 4714, -1448.16, 1403.33, 35.5567),
	(331, 530, 3431, 10349.6, -6357.29, 33.4026),
	(332, 1, 215, -2915.55, -257.347, 59.2693),
	(333, 0, 85, 1704.23, 1701.18, 134.87),
	(334, 609, 4298, 2355.84, -5662.21, 426.028),
	(335, 0, 12, -8914.57, -133.909, 80.5378),
	(340, 0, 12, -8914.57, -133.909, 80.5378),
	(341, 0, 12, -8914.57, -133.909, 80.5378),
	(342, 530, 3526, -3961.64, -13931.2, 100.615),
	(343, 1, 215, -2915.55, -257.347, 59.2693),
	(353, 0, 12, -8914.57, -133.909, 80.5378),
	(354, 0, 12, -8914.57, -133.909, 80.5378),
	(355, 0, 12, -8914.57, -133.909, 80.5378),
	(356, 0, 12, -8914.57, -133.909, 80.5378),
	(357, 0, 12, -8914.57, -133.909, 80.5378),
	(359, 0, 12, -8914.57, -133.909, 80.5378),
	(360, 0, 12, -8914.57, -133.909, 80.5378),
	(361, 0, 12, -8914.57, -133.909, 80.5378),
	(362, 0, 12, -8914.57, -133.909, 80.5378),
	(502, 1, 215, -2915.55, -257.347, 59.7993),
	(518, 1, 141, 10311.3, 831.463, 1326.41),
	(520, 1, 14, -618.518, -4251.67, 38.718),
	(524, 1, 14, -618.518, -4251.67, 38.718),
	(526, 609, 4298, 2355.84, -5662.21, 426.028),
	(527, 654, 4714, -1448.16, 1403.33, 35.5567);
/*!40000 ALTER TABLE `character_homebind` ENABLE KEYS */;

-- Dumping structure for table characters.character_instance
CREATE TABLE IF NOT EXISTS `character_instance` (
  `guid` int(10) unsigned NOT NULL DEFAULT '0',
  `instance` int(10) unsigned NOT NULL DEFAULT '0',
  `permanent` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `resttime` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table characters.character_instance: ~0 rows (approximately)
/*!40000 ALTER TABLE `character_instance` DISABLE KEYS */;
/*!40000 ALTER TABLE `character_instance` ENABLE KEYS */;

-- Dumping structure for table characters.character_inventory
CREATE TABLE IF NOT EXISTS `character_inventory` (
  `guid` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Global Unique Identifier',
  `bag` int(10) unsigned NOT NULL DEFAULT '0',
  `slot` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `item` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Item Global Unique Identifier',
  PRIMARY KEY (`item`),
  KEY `idx_guid` (`guid`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Player System';

-- Dumping data for table characters.character_inventory: ~0 rows (approximately)
/*!40000 ALTER TABLE `character_inventory` DISABLE KEYS */;
/*!40000 ALTER TABLE `character_inventory` ENABLE KEYS */;

-- Dumping structure for table characters.character_lfr_looted
CREATE TABLE IF NOT EXISTS `character_lfr_looted` (
  `playerGUID` int(10) DEFAULT NULL,
  `objectEntry` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table characters.character_lfr_looted: ~0 rows (approximately)
/*!40000 ALTER TABLE `character_lfr_looted` DISABLE KEYS */;
/*!40000 ALTER TABLE `character_lfr_looted` ENABLE KEYS */;

-- Dumping structure for table characters.character_pet
CREATE TABLE IF NOT EXISTS `character_pet` (
  `id` int(10) unsigned NOT NULL DEFAULT '0',
  `entry` int(10) unsigned NOT NULL DEFAULT '0',
  `owner` int(10) unsigned NOT NULL DEFAULT '0',
  `modelid` int(10) unsigned DEFAULT '0',
  `CreatedBySpell` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `PetType` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `level` smallint(5) unsigned NOT NULL DEFAULT '1',
  `exp` int(10) unsigned NOT NULL DEFAULT '0',
  `Reactstate` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `name` varchar(21) NOT NULL DEFAULT 'Pet',
  `renamed` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `slot` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `curhealth` int(10) unsigned NOT NULL DEFAULT '1',
  `curmana` int(10) unsigned NOT NULL DEFAULT '0',
  `savetime` int(10) unsigned NOT NULL DEFAULT '0',
  `abdata` text,
  PRIMARY KEY (`id`),
  KEY `owner` (`owner`) USING BTREE,
  KEY `idx_slot` (`slot`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Pet System';

-- Dumping data for table characters.character_pet: ~0 rows (approximately)
/*!40000 ALTER TABLE `character_pet` DISABLE KEYS */;
/*!40000 ALTER TABLE `character_pet` ENABLE KEYS */;

-- Dumping structure for table characters.character_pet_declinedname
CREATE TABLE IF NOT EXISTS `character_pet_declinedname` (
  `id` int(10) unsigned NOT NULL DEFAULT '0',
  `owner` int(10) unsigned NOT NULL DEFAULT '0',
  `genitive` varchar(12) NOT NULL DEFAULT '',
  `dative` varchar(12) NOT NULL DEFAULT '',
  `accusative` varchar(12) NOT NULL DEFAULT '',
  `instrumental` varchar(12) NOT NULL DEFAULT '',
  `prepositional` varchar(12) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `owner_key` (`owner`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table characters.character_pet_declinedname: ~0 rows (approximately)
/*!40000 ALTER TABLE `character_pet_declinedname` DISABLE KEYS */;
/*!40000 ALTER TABLE `character_pet_declinedname` ENABLE KEYS */;

-- Dumping structure for table characters.character_pvp_stats
CREATE TABLE IF NOT EXISTS `character_pvp_stats` (
  `data` int(11) DEFAULT NULL,
  `completedEncounters` int(11) DEFAULT NULL,
  `hardMode` int(11) DEFAULT NULL,
  `matchMakerRating` int(11) DEFAULT NULL,
  `map` int(11) DEFAULT NULL,
  `guid` int(11) DEFAULT NULL,
  `slot` int(11) DEFAULT NULL,
  `id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table characters.character_pvp_stats: ~0 rows (approximately)
/*!40000 ALTER TABLE `character_pvp_stats` DISABLE KEYS */;
/*!40000 ALTER TABLE `character_pvp_stats` ENABLE KEYS */;

-- Dumping structure for table characters.character_queststatus
CREATE TABLE IF NOT EXISTS `character_queststatus` (
  `guid` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Global Unique Identifier',
  `quest` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Quest Identifier',
  `status` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `explored` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `timer` int(10) unsigned NOT NULL DEFAULT '0',
  `mobcount1` smallint(5) unsigned NOT NULL DEFAULT '0',
  `mobcount2` smallint(5) unsigned NOT NULL DEFAULT '0',
  `mobcount3` smallint(5) unsigned NOT NULL DEFAULT '0',
  `mobcount4` smallint(5) unsigned NOT NULL DEFAULT '0',
  `itemcount1` smallint(5) unsigned NOT NULL DEFAULT '0',
  `itemcount2` smallint(5) unsigned NOT NULL DEFAULT '0',
  `itemcount3` smallint(5) unsigned NOT NULL DEFAULT '0',
  `itemcount4` smallint(5) unsigned NOT NULL DEFAULT '0',
  `itemcount5` smallint(5) unsigned NOT NULL DEFAULT '0',
  `itemcount6` smallint(5) unsigned NOT NULL DEFAULT '0',
  `playercount` smallint(5) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`guid`,`quest`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Player System';

-- Dumping data for table characters.character_queststatus: ~0 rows (approximately)
/*!40000 ALTER TABLE `character_queststatus` DISABLE KEYS */;
/*!40000 ALTER TABLE `character_queststatus` ENABLE KEYS */;

-- Dumping structure for table characters.character_queststatus_daily
CREATE TABLE IF NOT EXISTS `character_queststatus_daily` (
  `guid` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Global Unique Identifier',
  `quest` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Quest Identifier',
  `time` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`guid`,`quest`),
  KEY `idx_guid` (`guid`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Player System';

-- Dumping data for table characters.character_queststatus_daily: ~0 rows (approximately)
/*!40000 ALTER TABLE `character_queststatus_daily` DISABLE KEYS */;
/*!40000 ALTER TABLE `character_queststatus_daily` ENABLE KEYS */;

-- Dumping structure for table characters.character_queststatus_monthly
CREATE TABLE IF NOT EXISTS `character_queststatus_monthly` (
  `guid` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Global Unique Identifier',
  `quest` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Quest Identifier',
  PRIMARY KEY (`guid`,`quest`),
  KEY `idx_guid` (`guid`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Player System';

-- Dumping data for table characters.character_queststatus_monthly: ~0 rows (approximately)
/*!40000 ALTER TABLE `character_queststatus_monthly` DISABLE KEYS */;
/*!40000 ALTER TABLE `character_queststatus_monthly` ENABLE KEYS */;

-- Dumping structure for table characters.character_queststatus_rewarded
CREATE TABLE IF NOT EXISTS `character_queststatus_rewarded` (
  `guid` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Global Unique Identifier',
  `quest` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Quest Identifier',
  `active` tinyint(10) unsigned NOT NULL DEFAULT '1',
  PRIMARY KEY (`guid`,`quest`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Player System';

-- Dumping data for table characters.character_queststatus_rewarded: ~1,802 rows (approximately)
/*!40000 ALTER TABLE `character_queststatus_rewarded` DISABLE KEYS */;
INSERT INTO `character_queststatus_rewarded` (`guid`, `quest`, `active`) VALUES
	(313, 24742, 1),
	(313, 24794, 1),
	(313, 24854, 1),
	(313, 24855, 1),
	(313, 24865, 1),
	(313, 24866, 1),
	(313, 24905, 1),
	(313, 24906, 1),
	(313, 24907, 1),
	(313, 24910, 1),
	(313, 24911, 1),
	(313, 24926, 1),
	(313, 24928, 1),
	(313, 24931, 1),
	(313, 24932, 1),
	(313, 24933, 1),
	(313, 24947, 1),
	(313, 24949, 1),
	(313, 24950, 1),
	(313, 24951, 1),
	(313, 24953, 1),
	(313, 24955, 1),
	(313, 24957, 1),
	(313, 24963, 1),
	(313, 25001, 1),
	(313, 25014, 1),
	(313, 25017, 1),
	(313, 25018, 1),
	(313, 25019, 1),
	(313, 25020, 1),
	(313, 25021, 1),
	(313, 25025, 1),
	(313, 25026, 1),
	(313, 25032, 1),
	(313, 25067, 1),
	(313, 25068, 1),
	(313, 25069, 1),
	(313, 25070, 1),
	(313, 25072, 1),
	(313, 25091, 1),
	(313, 25094, 1),
	(313, 25095, 1),
	(313, 25103, 1),
	(313, 25107, 1),
	(313, 25111, 1),
	(313, 25112, 1),
	(313, 25115, 1),
	(313, 25209, 1),
	(313, 25210, 1),
	(313, 25230, 1),
	(313, 25237, 1),
	(313, 25241, 1),
	(313, 25250, 1),
	(313, 25252, 1),
	(313, 25329, 1),
	(313, 25336, 1),
	(313, 25337, 1),
	(313, 25338, 1),
	(313, 25339, 1),
	(313, 25340, 1),
	(313, 25341, 1),
	(313, 25342, 1),
	(313, 25344, 1),
	(313, 25345, 1),
	(313, 25346, 1),
	(313, 25349, 1),
	(313, 25356, 1),
	(313, 25363, 1),
	(313, 25364, 1),
	(313, 25365, 1),
	(313, 25366, 1),
	(313, 25367, 1),
	(313, 25368, 1),
	(313, 25369, 1),
	(313, 25373, 1),
	(313, 25374, 1),
	(313, 25375, 1),
	(313, 25378, 1),
	(313, 25379, 1),
	(313, 25383, 1),
	(313, 25386, 1),
	(313, 25387, 1),
	(313, 25391, 1),
	(313, 25422, 1),
	(313, 25423, 1),
	(313, 25452, 1),
	(313, 25453, 1),
	(313, 25454, 1),
	(313, 25465, 1),
	(313, 25466, 1),
	(313, 25475, 1),
	(313, 25478, 1),
	(313, 25487, 1),
	(313, 25489, 1),
	(313, 25505, 1),
	(313, 25516, 1),
	(313, 25518, 1),
	(313, 25521, 1),
	(313, 25522, 1),
	(313, 25526, 1),
	(313, 25533, 1),
	(313, 25534, 1),
	(313, 25541, 1),
	(313, 25556, 1),
	(313, 25591, 1),
	(313, 25596, 1),
	(313, 25610, 1),
	(313, 25628, 1),
	(313, 25641, 1),
	(313, 25643, 1),
	(313, 25645, 1),
	(313, 25660, 1),
	(313, 25661, 1),
	(313, 25672, 1),
	(313, 25704, 1),
	(313, 25745, 1),
	(313, 25757, 1),
	(313, 25762, 1),
	(313, 25775, 1),
	(313, 25779, 1),
	(313, 25791, 1),
	(313, 25797, 1),
	(313, 25799, 1),
	(313, 25814, 1),
	(313, 25826, 1),
	(313, 25836, 1),
	(313, 25870, 1),
	(313, 25872, 1),
	(313, 25874, 1),
	(313, 26269, 1),
	(313, 26278, 1),
	(313, 26279, 1),
	(313, 26280, 1),
	(313, 26281, 1),
	(313, 26298, 1),
	(313, 26299, 1),
	(313, 26300, 1),
	(313, 26301, 1),
	(313, 26302, 1),
	(313, 26303, 1),
	(313, 26304, 1),
	(313, 26305, 1),
	(313, 26317, 1),
	(313, 26321, 1),
	(313, 26323, 1),
	(313, 26325, 1),
	(313, 26330, 1),
	(313, 26332, 1),
	(313, 26334, 1),
	(313, 26338, 1),
	(313, 26340, 1),
	(313, 26343, 1),
	(313, 26344, 1),
	(313, 26345, 1),
	(313, 26350, 1),
	(313, 26351, 1),
	(313, 26352, 1),
	(313, 26359, 1),
	(313, 26360, 1),
	(313, 26362, 1),
	(313, 26386, 1),
	(313, 26399, 1),
	(313, 26400, 1),
	(313, 26403, 1),
	(313, 26404, 1),
	(313, 26405, 1),
	(313, 26407, 1),
	(313, 26416, 1),
	(313, 26417, 1),
	(313, 26433, 1),
	(313, 26434, 1),
	(313, 26435, 1),
	(313, 26450, 1),
	(313, 26487, 1),
	(313, 26493, 1),
	(313, 26494, 1),
	(313, 26495, 1),
	(313, 26533, 1),
	(313, 26534, 1),
	(313, 26535, 1),
	(313, 26550, 1),
	(313, 26551, 1),
	(313, 26552, 1),
	(313, 26553, 1),
	(313, 26554, 1),
	(313, 26555, 1),
	(313, 26590, 1),
	(313, 26592, 1),
	(313, 26593, 1),
	(313, 26594, 1),
	(313, 26595, 1),
	(313, 26597, 1),
	(313, 26598, 1),
	(313, 26599, 1),
	(313, 26600, 1),
	(313, 26601, 1),
	(313, 26602, 1),
	(313, 26603, 1),
	(313, 26604, 1),
	(313, 26605, 1),
	(313, 26606, 1),
	(313, 26609, 1),
	(313, 26610, 1),
	(313, 26611, 1),
	(313, 26612, 1),
	(313, 26613, 1),
	(313, 26614, 1),
	(313, 26617, 1),
	(313, 26624, 1),
	(313, 26629, 1),
	(313, 26630, 1),
	(313, 26631, 1),
	(313, 26633, 1),
	(313, 26635, 1),
	(313, 26644, 1),
	(313, 26650, 1),
	(313, 26662, 1),
	(313, 26663, 1),
	(313, 26664, 1),
	(313, 26665, 1),
	(313, 26678, 1),
	(313, 26695, 1),
	(313, 26697, 1),
	(313, 26698, 1),
	(313, 26699, 1),
	(313, 26700, 1),
	(313, 26703, 1),
	(313, 26896, 1),
	(313, 27276, 1),
	(313, 27311, 1),
	(313, 27313, 1),
	(313, 27315, 1),
	(313, 27317, 1),
	(313, 27319, 1),
	(313, 27321, 1),
	(313, 27324, 1),
	(313, 27326, 1),
	(313, 27328, 1),
	(313, 27330, 1),
	(313, 27358, 1),
	(313, 27447, 1),
	(313, 27718, 1),
	(313, 28042, 1),
	(313, 28045, 1),
	(313, 28047, 1),
	(313, 28048, 1),
	(313, 28051, 1),
	(313, 28085, 1),
	(313, 28086, 1),
	(313, 28087, 1),
	(313, 28088, 1),
	(313, 28098, 1),
	(313, 28124, 1),
	(313, 28125, 1),
	(313, 28127, 1),
	(313, 28136, 1),
	(313, 28140, 1),
	(313, 28142, 1),
	(313, 28157, 1),
	(313, 28158, 1),
	(313, 28159, 1),
	(313, 28161, 1),
	(313, 28284, 1),
	(313, 28460, 1),
	(313, 28462, 1),
	(313, 28464, 1),
	(313, 28467, 1),
	(313, 28469, 1),
	(313, 28470, 1),
	(313, 28471, 1),
	(313, 28472, 1),
	(313, 28479, 1),
	(313, 28494, 1),
	(313, 28504, 1),
	(313, 28509, 1),
	(313, 28510, 1),
	(313, 28513, 1),
	(313, 28518, 1),
	(313, 28519, 1),
	(313, 28522, 1),
	(313, 28523, 1),
	(313, 28526, 1),
	(313, 28527, 1),
	(313, 28530, 1),
	(313, 28534, 1),
	(313, 28535, 1),
	(313, 28536, 1),
	(313, 28537, 1),
	(313, 28540, 1),
	(313, 28545, 1),
	(313, 28609, 1),
	(313, 28610, 1),
	(313, 28614, 1),
	(313, 28615, 1),
	(313, 28618, 1),
	(313, 28624, 1),
	(313, 28625, 1),
	(313, 28626, 1),
	(313, 28627, 1),
	(313, 28628, 1),
	(313, 28629, 1),
	(313, 28630, 1),
	(313, 28631, 1),
	(313, 28632, 1),
	(313, 28637, 1),
	(313, 28638, 1),
	(313, 28639, 1),
	(313, 28640, 1),
	(313, 28641, 1),
	(313, 28674, 1),
	(313, 28676, 1),
	(313, 28701, 1),
	(313, 28703, 1),
	(313, 28704, 1),
	(313, 28706, 1),
	(313, 28707, 1),
	(313, 28710, 1),
	(313, 28718, 1),
	(313, 28719, 1),
	(313, 28722, 1),
	(313, 28742, 1),
	(313, 28745, 1),
	(313, 28782, 1),
	(313, 28805, 1),
	(313, 28826, 1),
	(313, 28828, 1),
	(313, 28829, 1),
	(313, 28830, 1),
	(313, 28831, 1),
	(313, 28837, 1),
	(313, 28838, 1),
	(313, 28839, 1),
	(313, 28840, 1),
	(313, 28841, 1),
	(313, 28842, 1),
	(313, 28847, 1),
	(313, 28848, 1),
	(313, 28865, 1),
	(314, 185, 1),
	(314, 186, 1),
	(314, 187, 1),
	(314, 188, 1),
	(314, 190, 1),
	(314, 191, 1),
	(314, 192, 1),
	(314, 193, 1),
	(314, 194, 1),
	(314, 195, 1),
	(314, 196, 1),
	(314, 197, 1),
	(314, 208, 1),
	(314, 583, 1),
	(314, 8277, 1),
	(314, 8278, 1),
	(314, 8279, 1),
	(314, 8280, 1),
	(314, 8281, 1),
	(314, 8282, 1),
	(314, 8283, 1),
	(314, 8284, 1),
	(314, 8285, 1),
	(314, 8287, 1),
	(314, 8304, 1),
	(314, 8306, 1),
	(314, 8309, 1),
	(314, 8310, 1),
	(314, 8318, 1),
	(314, 8320, 1),
	(314, 8321, 1),
	(314, 8323, 1),
	(314, 9415, 1),
	(314, 9419, 1),
	(314, 24931, 1),
	(314, 24932, 1),
	(314, 24933, 1),
	(314, 24951, 1),
	(314, 24953, 1),
	(314, 25021, 1),
	(314, 25025, 1),
	(314, 25026, 1),
	(314, 25032, 1),
	(314, 25048, 1),
	(314, 25049, 1),
	(314, 25050, 1),
	(314, 25052, 1),
	(314, 25053, 1),
	(314, 25054, 1),
	(314, 25060, 1),
	(314, 25061, 1),
	(314, 25062, 1),
	(314, 25063, 1),
	(314, 25065, 1),
	(314, 25070, 1),
	(314, 25072, 1),
	(314, 25091, 1),
	(314, 25111, 1),
	(314, 25112, 1),
	(314, 25115, 1),
	(314, 25121, 1),
	(314, 25166, 1),
	(314, 25208, 1),
	(314, 25304, 1),
	(314, 25333, 1),
	(314, 25350, 1),
	(314, 25368, 1),
	(314, 25379, 1),
	(314, 25394, 1),
	(314, 25396, 1),
	(314, 25397, 1),
	(314, 25398, 1),
	(314, 25399, 1),
	(314, 25400, 1),
	(314, 25401, 1),
	(314, 25402, 1),
	(314, 25403, 1),
	(314, 25406, 1),
	(314, 25407, 1),
	(314, 25409, 1),
	(314, 25410, 1),
	(314, 25420, 1),
	(314, 25421, 1),
	(314, 25422, 1),
	(314, 25423, 1),
	(314, 25426, 1),
	(314, 25427, 1),
	(314, 25429, 1),
	(314, 25431, 1),
	(314, 25432, 1),
	(314, 25433, 1),
	(314, 25434, 1),
	(314, 25436, 1),
	(314, 25437, 1),
	(314, 25438, 1),
	(314, 25447, 1),
	(314, 25448, 1),
	(314, 25449, 1),
	(314, 25450, 1),
	(314, 25458, 1),
	(314, 25463, 1),
	(314, 25465, 1),
	(314, 25466, 1),
	(314, 25468, 1),
	(314, 25469, 1),
	(314, 25481, 1),
	(314, 25486, 1),
	(314, 25488, 1),
	(314, 25504, 1),
	(314, 25515, 1),
	(314, 25517, 1),
	(314, 25521, 1),
	(314, 25522, 1),
	(314, 25524, 1),
	(314, 25532, 1),
	(314, 25559, 1),
	(314, 25561, 1),
	(314, 25565, 1),
	(314, 25566, 1),
	(314, 25585, 1),
	(314, 25588, 1),
	(314, 25590, 1),
	(314, 25609, 1),
	(314, 25627, 1),
	(314, 25654, 1),
	(314, 25660, 1),
	(314, 25661, 1),
	(314, 25672, 1),
	(314, 25704, 1),
	(314, 25744, 1),
	(314, 25756, 1),
	(314, 25762, 1),
	(314, 25774, 1),
	(314, 25778, 1),
	(314, 25790, 1),
	(314, 25796, 1),
	(314, 25798, 1),
	(314, 25813, 1),
	(314, 25825, 1),
	(314, 25835, 1),
	(314, 25869, 1),
	(314, 25871, 1),
	(314, 25873, 1),
	(314, 26269, 1),
	(314, 26343, 1),
	(314, 26344, 1),
	(314, 26345, 1),
	(314, 26401, 1),
	(314, 26402, 1),
	(314, 26574, 1),
	(314, 26593, 1),
	(314, 26594, 1),
	(314, 26595, 1),
	(314, 26597, 1),
	(314, 26599, 1),
	(314, 26600, 1),
	(314, 26601, 1),
	(314, 26602, 1),
	(314, 26603, 1),
	(314, 26604, 1),
	(314, 26605, 1),
	(314, 26606, 1),
	(314, 26609, 1),
	(314, 26610, 1),
	(314, 26611, 1),
	(314, 26612, 1),
	(314, 26613, 1),
	(314, 26614, 1),
	(314, 26617, 1),
	(314, 26624, 1),
	(314, 26629, 1),
	(314, 26630, 1),
	(314, 26631, 1),
	(314, 26633, 1),
	(314, 26634, 1),
	(314, 26635, 1),
	(314, 26644, 1),
	(314, 26648, 1),
	(314, 26650, 1),
	(314, 26662, 1),
	(314, 26663, 1),
	(314, 26664, 1),
	(314, 26678, 1),
	(314, 26679, 1),
	(314, 26695, 1),
	(314, 26697, 1),
	(314, 26698, 1),
	(314, 26699, 1),
	(314, 26700, 1),
	(314, 26703, 1),
	(314, 26729, 1),
	(314, 26730, 1),
	(314, 26731, 1),
	(314, 26732, 1),
	(314, 26733, 1),
	(314, 26734, 1),
	(314, 26735, 1),
	(314, 26736, 1),
	(314, 26737, 1),
	(314, 26738, 1),
	(314, 26739, 1),
	(314, 26740, 1),
	(314, 26742, 1),
	(314, 26743, 1),
	(314, 26744, 1),
	(314, 26745, 1),
	(314, 26746, 1),
	(314, 26747, 1),
	(314, 26748, 1),
	(314, 26749, 1),
	(314, 26751, 1),
	(314, 26763, 1),
	(314, 26765, 1),
	(314, 26772, 1),
	(314, 26773, 1),
	(314, 26774, 1),
	(314, 26775, 1),
	(314, 26776, 1),
	(314, 26779, 1),
	(314, 26780, 1),
	(314, 26781, 1),
	(314, 26782, 1),
	(314, 26783, 1),
	(314, 26805, 1),
	(314, 26808, 1),
	(314, 26809, 1),
	(314, 26810, 1),
	(314, 26811, 1),
	(314, 26812, 1),
	(314, 26813, 1),
	(314, 26814, 1),
	(314, 26815, 1),
	(314, 26816, 1),
	(314, 26817, 1),
	(314, 26818, 1),
	(314, 26819, 1),
	(314, 26820, 1),
	(314, 26821, 1),
	(314, 26822, 1),
	(314, 26823, 1),
	(314, 26825, 1),
	(314, 26886, 1),
	(314, 26887, 1),
	(314, 26889, 1),
	(314, 26895, 1),
	(314, 27275, 1),
	(314, 27310, 1),
	(314, 27312, 1),
	(314, 27314, 1),
	(314, 27316, 1),
	(314, 27318, 1),
	(314, 27320, 1),
	(314, 27323, 1),
	(314, 27325, 1),
	(314, 27327, 1),
	(314, 27329, 1),
	(314, 27357, 1),
	(314, 28031, 1),
	(314, 28045, 1),
	(314, 28047, 1),
	(314, 28048, 1),
	(314, 28051, 1),
	(314, 28085, 1),
	(314, 28086, 1),
	(314, 28087, 1),
	(314, 28088, 1),
	(314, 28098, 1),
	(314, 28124, 1),
	(314, 28125, 1),
	(314, 28127, 1),
	(314, 28136, 1),
	(314, 28139, 1),
	(314, 28140, 1),
	(314, 28142, 1),
	(314, 28157, 1),
	(314, 28158, 1),
	(314, 28159, 1),
	(314, 28160, 1),
	(314, 28283, 1),
	(314, 28507, 1),
	(314, 28511, 1),
	(314, 28528, 1),
	(314, 28699, 1),
	(314, 28702, 1),
	(314, 28881, 1),
	(314, 29208, 1),
	(315, 25663, 1),
	(315, 25665, 1),
	(315, 27874, 1),
	(315, 29740, 1),
	(317, 8325, 1),
	(317, 8326, 1),
	(317, 8327, 1),
	(317, 8330, 1),
	(317, 8334, 1),
	(317, 8335, 1),
	(317, 8336, 1),
	(317, 8338, 1),
	(317, 8345, 1),
	(317, 8346, 1),
	(317, 8347, 1),
	(317, 8350, 1),
	(317, 8463, 1),
	(317, 8468, 1),
	(317, 8472, 1),
	(317, 8473, 1),
	(317, 8476, 1),
	(317, 8477, 1),
	(317, 8479, 1),
	(317, 8480, 1),
	(317, 8482, 1),
	(317, 8483, 1),
	(317, 8486, 1),
	(317, 8487, 1),
	(317, 8488, 1),
	(317, 8490, 1),
	(317, 8491, 1),
	(317, 8886, 1),
	(317, 8888, 1),
	(317, 8889, 1),
	(317, 8890, 1),
	(317, 8891, 1),
	(317, 8892, 1),
	(317, 8894, 1),
	(317, 8895, 1),
	(317, 9035, 1),
	(317, 9062, 1),
	(317, 9064, 1),
	(317, 9066, 1),
	(317, 9067, 1),
	(317, 9076, 1),
	(317, 9119, 1),
	(317, 9130, 1),
	(317, 9133, 1),
	(317, 9134, 1),
	(317, 9135, 1),
	(317, 9144, 1),
	(317, 9147, 1),
	(317, 9148, 1),
	(317, 9252, 1),
	(317, 9253, 1),
	(317, 9254, 1),
	(317, 9255, 1),
	(317, 9256, 1),
	(317, 9258, 1),
	(317, 9352, 1),
	(317, 9358, 1),
	(317, 9359, 1),
	(317, 9360, 1),
	(317, 9363, 1),
	(317, 9394, 1),
	(317, 9395, 1),
	(317, 9676, 1),
	(317, 9704, 1),
	(317, 9705, 1),
	(317, 10069, 1),
	(319, 3095, 1),
	(319, 24959, 1),
	(319, 24960, 1),
	(319, 24961, 1),
	(319, 24969, 1),
	(319, 24970, 1),
	(319, 24973, 1),
	(319, 25089, 1),
	(319, 26799, 1),
	(319, 26800, 1),
	(319, 26801, 1),
	(319, 26802, 1),
	(319, 28608, 1),
	(319, 28651, 1),
	(319, 28652, 1),
	(319, 28653, 1),
	(319, 28672, 1),
	(320, 24959, 1),
	(320, 24960, 1),
	(320, 25089, 1),
	(320, 26799, 1),
	(320, 28608, 1),
	(320, 28652, 1),
	(321, 24959, 1),
	(321, 24960, 1),
	(321, 25089, 1),
	(321, 26799, 1),
	(321, 28608, 1),
	(321, 28652, 1),
	(323, 24959, 1),
	(324, 11613, 1),
	(324, 11619, 1),
	(324, 11620, 1),
	(324, 11625, 1),
	(324, 11626, 1),
	(324, 11789, 1),
	(324, 11790, 1),
	(324, 11791, 1),
	(324, 11792, 1),
	(324, 11793, 1),
	(324, 11794, 1),
	(324, 11920, 1),
	(324, 12141, 1),
	(324, 12471, 1),
	(325, 26209, 1),
	(325, 26213, 1),
	(325, 26214, 1),
	(325, 26215, 1),
	(325, 26228, 1),
	(325, 26229, 1),
	(325, 26230, 1),
	(325, 26378, 1),
	(326, 26668, 1),
	(326, 28766, 1),
	(326, 28774, 1),
	(329, 14078, 1),
	(329, 14091, 1),
	(331, 9130, 1),
	(332, 7662, 1),
	(332, 7663, 1),
	(332, 14449, 1),
	(332, 25316, 1),
	(332, 25370, 1),
	(332, 25460, 1),
	(332, 26903, 1),
	(332, 27721, 1),
	(332, 28717, 1),
	(332, 28737, 1),
	(332, 28738, 1),
	(332, 28740, 1),
	(332, 28741, 1),
	(332, 28833, 1),
	(332, 28843, 1),
	(332, 28853, 1),
	(332, 28854, 1),
	(332, 28909, 1),
	(332, 30094, 1),
	(333, 24959, 1),
	(333, 28608, 1),
	(334, 12593, 1),
	(334, 12619, 1),
	(334, 12636, 1),
	(334, 12641, 1),
	(334, 12657, 1),
	(334, 12670, 1),
	(334, 12678, 1),
	(334, 12679, 1),
	(334, 12680, 1),
	(334, 12687, 1),
	(334, 12697, 1),
	(334, 12698, 1),
	(334, 12700, 1),
	(334, 12701, 1),
	(334, 12706, 1),
	(334, 12711, 1),
	(334, 12714, 1),
	(334, 12715, 1),
	(334, 12733, 1),
	(334, 12842, 1),
	(334, 12848, 1),
	(334, 12849, 1),
	(334, 12850, 1),
	(335, 10556, 1),
	(335, 10850, 1),
	(335, 12936, 1),
	(335, 12948, 1),
	(518, 6344, 1),
	(520, 25262, 1);
/*!40000 ALTER TABLE `character_queststatus_rewarded` ENABLE KEYS */;

-- Dumping structure for table characters.character_queststatus_seasonal
CREATE TABLE IF NOT EXISTS `character_queststatus_seasonal` (
  `guid` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Global Unique Identifier',
  `quest` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Quest Identifier',
  `event` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Event Identifier',
  PRIMARY KEY (`guid`,`quest`),
  KEY `idx_guid` (`guid`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Player System';

-- Dumping data for table characters.character_queststatus_seasonal: ~2 rows (approximately)
/*!40000 ALTER TABLE `character_queststatus_seasonal` DISABLE KEYS */;
/*!40000 ALTER TABLE `character_queststatus_seasonal` ENABLE KEYS */;

-- Dumping structure for table characters.character_queststatus_weekly
CREATE TABLE IF NOT EXISTS `character_queststatus_weekly` (
  `guid` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Global Unique Identifier',
  `quest` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Quest Identifier',
  PRIMARY KEY (`guid`,`quest`),
  KEY `idx_guid` (`guid`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Player System';

-- Dumping data for table characters.character_queststatus_weekly: ~0 rows (approximately)
/*!40000 ALTER TABLE `character_queststatus_weekly` DISABLE KEYS */;
/*!40000 ALTER TABLE `character_queststatus_weekly` ENABLE KEYS */;

-- Dumping structure for table characters.character_reputation
CREATE TABLE IF NOT EXISTS `character_reputation` (
  `guid` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Global Unique Identifier',
  `faction` smallint(5) unsigned NOT NULL DEFAULT '0',
  `standing` int(11) NOT NULL DEFAULT '0',
  `flags` smallint(5) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`guid`,`faction`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Player System';

-- Dumping data for table characters.character_reputation: ~0 rows (approximately)
/*!40000 ALTER TABLE `character_reputation` DISABLE KEYS */;
/*!40000 ALTER TABLE `character_reputation` ENABLE KEYS */;

-- Dumping structure for table characters.character_research_history
CREATE TABLE IF NOT EXISTS `character_research_history` (
  `guid` int(11) DEFAULT NULL,
  `projectid` int(11) DEFAULT NULL,
  `count` int(11) DEFAULT NULL,
  `time` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table characters.character_research_history: ~0 rows (approximately)
/*!40000 ALTER TABLE `character_research_history` DISABLE KEYS */;
/*!40000 ALTER TABLE `character_research_history` ENABLE KEYS */;

-- Dumping structure for table characters.character_skills
CREATE TABLE IF NOT EXISTS `character_skills` (
  `guid` int(10) unsigned NOT NULL COMMENT 'Global Unique Identifier',
  `skill` smallint(5) unsigned NOT NULL,
  `value` smallint(5) unsigned NOT NULL,
  `max` smallint(5) unsigned NOT NULL,
  PRIMARY KEY (`guid`,`skill`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Player System';

-- Dumping data for table characters.character_skills: ~0 rows (approximately)
/*!40000 ALTER TABLE `character_skills` DISABLE KEYS */;
/*!40000 ALTER TABLE `character_skills` ENABLE KEYS */;

-- Dumping structure for table characters.character_social
CREATE TABLE IF NOT EXISTS `character_social` (
  `guid` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Character Global Unique Identifier',
  `friend` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Friend Global Unique Identifier',
  `flags` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT 'Friend Flags',
  `note` varchar(48) NOT NULL DEFAULT '' COMMENT 'Friend Note',
  PRIMARY KEY (`guid`,`friend`,`flags`),
  KEY `friend` (`friend`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Player System';

-- Dumping data for table characters.character_social: ~0 rows (approximately)
/*!40000 ALTER TABLE `character_social` DISABLE KEYS */;
/*!40000 ALTER TABLE `character_social` ENABLE KEYS */;

-- Dumping structure for table characters.character_spell
CREATE TABLE IF NOT EXISTS `character_spell` (
  `guid` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Global Unique Identifier',
  `spell` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `active` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `disabled` tinyint(3) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`guid`,`spell`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Player System';

-- Dumping data for table characters.character_spell: ~0 rows (approximately)
/*!40000 ALTER TABLE `character_spell` DISABLE KEYS */;
/*!40000 ALTER TABLE `character_spell` ENABLE KEYS */;

-- Dumping structure for table characters.character_spell_cooldown
CREATE TABLE IF NOT EXISTS `character_spell_cooldown` (
  `guid` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Global Unique Identifier, Low part',
  `spell` mediumint(8) unsigned NOT NULL DEFAULT '0' COMMENT 'Spell Identifier',
  `item` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Item Identifier',
  `time` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`guid`,`spell`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table characters.character_spell_cooldown: ~0 rows (approximately)
/*!40000 ALTER TABLE `character_spell_cooldown` DISABLE KEYS */;
/*!40000 ALTER TABLE `character_spell_cooldown` ENABLE KEYS */;

-- Dumping structure for table characters.character_stats
CREATE TABLE IF NOT EXISTS `character_stats` (
  `guid` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Global Unique Identifier, Low part',
  `maxhealth` int(10) unsigned NOT NULL DEFAULT '0',
  `maxpower1` int(10) unsigned NOT NULL DEFAULT '0',
  `maxpower2` int(10) unsigned NOT NULL DEFAULT '0',
  `maxpower3` int(10) unsigned NOT NULL DEFAULT '0',
  `maxpower4` int(10) unsigned NOT NULL DEFAULT '0',
  `maxpower5` int(10) unsigned NOT NULL DEFAULT '0',
  `strength` int(10) unsigned NOT NULL DEFAULT '0',
  `agility` int(10) unsigned NOT NULL DEFAULT '0',
  `stamina` int(10) unsigned NOT NULL DEFAULT '0',
  `intellect` int(10) unsigned NOT NULL DEFAULT '0',
  `spirit` int(10) unsigned NOT NULL DEFAULT '0',
  `armor` int(10) unsigned NOT NULL DEFAULT '0',
  `resHoly` int(10) unsigned NOT NULL DEFAULT '0',
  `resFire` int(10) unsigned NOT NULL DEFAULT '0',
  `resNature` int(10) unsigned NOT NULL DEFAULT '0',
  `resFrost` int(10) unsigned NOT NULL DEFAULT '0',
  `resShadow` int(10) unsigned NOT NULL DEFAULT '0',
  `resArcane` int(10) unsigned NOT NULL DEFAULT '0',
  `blockPct` float unsigned NOT NULL DEFAULT '0',
  `dodgePct` float unsigned NOT NULL DEFAULT '0',
  `parryPct` float unsigned NOT NULL DEFAULT '0',
  `critPct` float unsigned NOT NULL DEFAULT '0',
  `rangedCritPct` float unsigned NOT NULL DEFAULT '0',
  `spellCritPct` float unsigned NOT NULL DEFAULT '0',
  `attackPower` int(10) unsigned NOT NULL DEFAULT '0',
  `rangedAttackPower` int(10) unsigned NOT NULL DEFAULT '0',
  `spellPower` int(10) unsigned NOT NULL DEFAULT '0',
  `resilience` int(10) unsigned NOT NULL DEFAULT '0',
  `mastery` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`guid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table characters.character_stats: ~0 rows (approximately)
/*!40000 ALTER TABLE `character_stats` DISABLE KEYS */;
/*!40000 ALTER TABLE `character_stats` ENABLE KEYS */;

-- Dumping structure for table characters.character_talent
CREATE TABLE IF NOT EXISTS `character_talent` (
  `guid` int(10) unsigned NOT NULL,
  `spell` mediumint(8) unsigned NOT NULL,
  `spec` tinyint(3) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`guid`,`spell`,`spec`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table characters.character_talent: ~705 rows (approximately)
/*!40000 ALTER TABLE `character_talent` DISABLE KEYS */;
/*!40000 ALTER TABLE `character_talent` ENABLE KEYS */;

-- Dumping structure for table characters.character_void_storage
CREATE TABLE IF NOT EXISTS `character_void_storage` (
  `itemId` bigint(20) unsigned NOT NULL,
  `playerGuid` int(10) unsigned NOT NULL,
  `itemEntry` mediumint(8) unsigned NOT NULL,
  `slot` tinyint(3) unsigned NOT NULL,
  `creatorGuid` int(10) unsigned NOT NULL DEFAULT '0',
  `randomProperty` int(10) unsigned NOT NULL DEFAULT '0',
  `suffixFactor` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`itemId`),
  UNIQUE KEY `idx_player_slot` (`playerGuid`,`slot`) USING BTREE,
  KEY `idx_player` (`playerGuid`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table characters.character_void_storage: ~5 rows (approximately)
/*!40000 ALTER TABLE `character_void_storage` DISABLE KEYS */;
/*!40000 ALTER TABLE `character_void_storage` ENABLE KEYS */;

-- Dumping structure for table characters.corpse
CREATE TABLE IF NOT EXISTS `corpse` (
  `corpseGuid` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Global Unique Identifier',
  `guid` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Character Global Unique Identifier',
  `posX` float NOT NULL DEFAULT '0',
  `posY` float NOT NULL DEFAULT '0',
  `posZ` float NOT NULL DEFAULT '0',
  `orientation` float NOT NULL DEFAULT '0',
  `mapId` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Map Identifier',
  `phaseMask` smallint(5) unsigned NOT NULL DEFAULT '1',
  `displayId` int(10) unsigned NOT NULL DEFAULT '0',
  `itemCache` text NOT NULL,
  `bytes1` int(10) unsigned NOT NULL DEFAULT '0',
  `bytes2` int(10) unsigned NOT NULL DEFAULT '0',
  `flags` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `dynFlags` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `time` int(10) unsigned NOT NULL DEFAULT '0',
  `corpseType` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `instanceId` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Instance Identifier',
  PRIMARY KEY (`corpseGuid`),
  KEY `idx_type` (`corpseType`) USING BTREE,
  KEY `idx_time` (`time`) USING BTREE,
  KEY `idx_player` (`guid`) USING BTREE,
  KEY `idx_instance` (`instanceId`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Death System';

-- Dumping data for table characters.corpse: ~0 rows (approximately)
/*!40000 ALTER TABLE `corpse` DISABLE KEYS */;
/*!40000 ALTER TABLE `corpse` ENABLE KEYS */;

-- Dumping structure for table characters.creature_respawn
CREATE TABLE IF NOT EXISTS `creature_respawn` (
  `guid` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Global Unique Identifier',
  `respawnTime` int(10) unsigned NOT NULL DEFAULT '0',
  `mapId` smallint(10) unsigned NOT NULL DEFAULT '0',
  `instanceId` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Instance Identifier',
  PRIMARY KEY (`guid`,`instanceId`),
  KEY `idx_instance` (`instanceId`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Grid Loading System';

-- Dumping data for table characters.creature_respawn: ~0 rows (approximately)
/*!40000 ALTER TABLE `creature_respawn` DISABLE KEYS */;
/*!40000 ALTER TABLE `creature_respawn` ENABLE KEYS */;

-- Dumping structure for table characters.cronjobs
CREATE TABLE IF NOT EXISTS `cronjobs` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `guid` int(11) unsigned NOT NULL,
  `type` tinyint(3) unsigned NOT NULL,
  `param1` varchar(255) NOT NULL,
  `param2` varchar(255) NOT NULL,
  `x` float NOT NULL DEFAULT '0',
  `y` float NOT NULL DEFAULT '0',
  `z` float NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- Dumping data for table characters.cronjobs: 0 rows
/*!40000 ALTER TABLE `cronjobs` DISABLE KEYS */;
/*!40000 ALTER TABLE `cronjobs` ENABLE KEYS */;

-- Dumping structure for table characters.daily_players_reports
CREATE TABLE IF NOT EXISTS `daily_players_reports` (
  `guid` int(10) unsigned NOT NULL DEFAULT '0',
  `creation_time` int(10) unsigned NOT NULL DEFAULT '0',
  `average` float NOT NULL DEFAULT '0',
  `total_reports` bigint(20) unsigned NOT NULL DEFAULT '0',
  `speed_reports` bigint(20) unsigned NOT NULL DEFAULT '0',
  `fly_reports` bigint(20) unsigned NOT NULL DEFAULT '0',
  `jump_reports` bigint(20) unsigned NOT NULL DEFAULT '0',
  `waterwalk_reports` bigint(20) unsigned NOT NULL DEFAULT '0',
  `teleportplane_reports` bigint(20) unsigned NOT NULL DEFAULT '0',
  `climb_reports` bigint(20) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`guid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table characters.daily_players_reports: ~0 rows (approximately)
/*!40000 ALTER TABLE `daily_players_reports` DISABLE KEYS */;
/*!40000 ALTER TABLE `daily_players_reports` ENABLE KEYS */;

-- Dumping structure for table characters.gameobject_respawn
CREATE TABLE IF NOT EXISTS `gameobject_respawn` (
  `guid` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Global Unique Identifier',
  `respawnTime` int(10) unsigned NOT NULL DEFAULT '0',
  `instanceId` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Instance Identifier',
  `mapId` smallint(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`guid`,`instanceId`),
  KEY `idx_instance` (`instanceId`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Grid Loading System';

-- Dumping data for table characters.gameobject_respawn: ~193 rows (approximately)
/*!40000 ALTER TABLE `gameobject_respawn` DISABLE KEYS */;
INSERT INTO `gameobject_respawn` (`guid`, `respawnTime`, `instanceId`, `mapId`) VALUES
	(3098, 1487369152, 0, 0),
	(3102, 1487369159, 0, 0),
	(3105, 1487369174, 0, 0),
	(3108, 1487369208, 0, 0),
	(3110, 1487369195, 0, 0),
	(3111, 1487369188, 0, 0),
	(3112, 1487369215, 0, 0),
	(3116, 1487369245, 0, 0),
	(3117, 1487369301, 0, 0),
	(3118, 1487369253, 0, 0),
	(3171, 1487446488, 0, 0),
	(3173, 1487446466, 0, 0),
	(3753, 1487446571, 0, 0),
	(3766, 1487446806, 0, 0),
	(6758, 1492015597, 0, 0),
	(6759, 1492015599, 0, 0),
	(6760, 1492015604, 0, 0),
	(6763, 1492015602, 0, 0),
	(6764, 1492015579, 0, 0),
	(14362, 1485653732, 0, 1),
	(24445, 1503924373, 0, 571),
	(24447, 1503924508, 0, 571),
	(27078, 1491149523, 0, 530),
	(27079, 1491149540, 0, 530),
	(27080, 1491149511, 0, 530),
	(29789, 1488929847, 0, 0),
	(48866, 1503924375, 0, 571),
	(48869, 1503924371, 0, 571),
	(48874, 1503924366, 0, 571),
	(49587, 1503924411, 0, 571),
	(67378, 1492625922, 0, 1),
	(67396, 1492625925, 0, 1),
	(67398, 1492625990, 0, 1),
	(67400, 1492625985, 0, 1),
	(67405, 1492625982, 0, 1),
	(67406, 1492625916, 0, 1),
	(67429, 1492625908, 0, 1),
	(67455, 1492625919, 0, 1),
	(67468, 1492625911, 0, 1),
	(100682, 1503923953, 0, 571),
	(119198, 1493227723, 0, 609),
	(119489, 1493228317, 0, 609),
	(119490, 1493228316, 0, 609),
	(268687, 1489209523, 0, 0),
	(268701, 1489208467, 0, 0),
	(268702, 1489208489, 0, 0),
	(268703, 1489208476, 0, 0),
	(268704, 1489208512, 0, 0),
	(268705, 1489208567, 0, 0),
	(268706, 1489208584, 0, 0),
	(268707, 1489209849, 0, 0),
	(268708, 1489209908, 0, 0),
	(268709, 1489209887, 0, 0),
	(268710, 1489209874, 0, 0),
	(268713, 1489209955, 0, 0),
	(269007, 1489209884, 0, 0),
	(269008, 1489209520, 0, 0),
	(269009, 1489209856, 0, 0),
	(269137, 1489209952, 0, 0),
	(269836, 1489209017, 0, 0),
	(269838, 1489208973, 0, 0),
	(269839, 1489208983, 0, 0),
	(269847, 1489209137, 0, 0),
	(269848, 1489209117, 0, 0),
	(269849, 1489209095, 0, 0),
	(269850, 1489208500, 0, 0),
	(269851, 1489208905, 0, 0),
	(269853, 1489209917, 0, 0),
	(269854, 1489209901, 0, 0),
	(269855, 1489209771, 0, 0),
	(269856, 1489209714, 0, 0),
	(269857, 1489209802, 0, 0),
	(269858, 1489209831, 0, 0),
	(269859, 1489209999, 0, 0),
	(269860, 1489210020, 0, 0),
	(269861, 1489209933, 0, 0),
	(269862, 1489209973, 0, 0),
	(270361, 1489208979, 0, 0),
	(270362, 1489209026, 0, 0),
	(270365, 1489209121, 0, 0),
	(270367, 1489210024, 0, 0),
	(270368, 1489209768, 0, 0),
	(270370, 1489209897, 0, 0),
	(270371, 1489208970, 0, 0),
	(270379, 1489209797, 0, 0),
	(270570, 1489209142, 0, 0),
	(270571, 1489209092, 0, 0),
	(270572, 1489208900, 0, 0),
	(270573, 1489209710, 0, 0),
	(270574, 1489209834, 0, 0),
	(270575, 1489209937, 0, 0),
	(271975, 1489209047, 0, 0),
	(271977, 1489208527, 0, 0),
	(271978, 1489208915, 0, 0),
	(271979, 1489208872, 0, 0),
	(271980, 1489209757, 0, 0),
	(271981, 1489209781, 0, 0),
	(271982, 1489209816, 0, 0),
	(271984, 1489210048, 0, 0),
	(271985, 1489209966, 0, 0),
	(272300, 1489208531, 0, 0),
	(272302, 1489209761, 0, 0),
	(272303, 1489210045, 0, 0),
	(272304, 1489209962, 0, 0),
	(272458, 1489209051, 0, 0),
	(272459, 1489208913, 0, 0),
	(272460, 1489209777, 0, 0),
	(301844, 1489209194, 0, 0),
	(301851, 1489209990, 0, 0),
	(301865, 1489209079, 0, 0),
	(301959, 1489212433, 0, 0),
	(302075, 1489213491, 0, 0),
	(302076, 1489213483, 0, 0),
	(302078, 1489213507, 0, 0),
	(302080, 1489213513, 0, 0),
	(302082, 1489213517, 0, 0),
	(302085, 1489213307, 0, 0),
	(302088, 1489213301, 0, 0),
	(302091, 1489213289, 0, 0),
	(302093, 1489213268, 0, 0),
	(302095, 1489213179, 0, 0),
	(302097, 1489213175, 0, 0),
	(302100, 1489213203, 0, 0),
	(302104, 1489213217, 0, 0),
	(302106, 1489213223, 0, 0),
	(302108, 1489213231, 0, 0),
	(302110, 1489213319, 0, 0),
	(302112, 1489213394, 0, 0),
	(302115, 1489213403, 0, 0),
	(302117, 1489212443, 0, 0),
	(302119, 1489212439, 0, 0),
	(302122, 1489212429, 0, 0),
	(302124, 1489212420, 0, 0),
	(302125, 1489212402, 0, 0),
	(302128, 1489212408, 0, 0),
	(302129, 1489212015, 0, 0),
	(302132, 1489212033, 0, 0),
	(302134, 1489211999, 0, 0),
	(302136, 1489212554, 0, 0),
	(302137, 1489212549, 0, 0),
	(302139, 1489212544, 0, 0),
	(302141, 1489212537, 0, 0),
	(302145, 1489212586, 0, 0),
	(302147, 1489212593, 0, 0),
	(302149, 1489211864, 0, 0),
	(302150, 1489212070, 0, 0),
	(302151, 1489212366, 0, 0),
	(302153, 1489212060, 0, 0),
	(302154, 1489212563, 0, 0),
	(302155, 1489212567, 0, 0),
	(302327, 1489208929, 0, 0),
	(302330, 1489209873, 0, 0),
	(302443, 1489211875, 0, 0),
	(302444, 1489211857, 0, 0),
	(302449, 1489211092, 0, 0),
	(302592, 1489211789, 0, 0),
	(302596, 1489211770, 0, 0),
	(302727, 1489213358, 0, 0),
	(302729, 1489213326, 0, 0),
	(302732, 1489213129, 0, 0),
	(302769, 1489213121, 0, 0),
	(302772, 1489213103, 0, 0),
	(302777, 1489212093, 0, 0),
	(302778, 1489212088, 0, 0),
	(302780, 1489212084, 0, 0),
	(302783, 1489212077, 0, 0),
	(302784, 1489212053, 0, 0),
	(302787, 1489212042, 0, 0),
	(302789, 1489212026, 0, 0),
	(302792, 1489212021, 0, 0),
	(302793, 1489211989, 0, 0),
	(302795, 1489211985, 0, 0),
	(302798, 1489211975, 0, 0),
	(302803, 1489211965, 0, 0),
	(302805, 1489211939, 0, 0),
	(302809, 1489211933, 0, 0),
	(302811, 1489211919, 0, 0),
	(302813, 1489211913, 0, 0),
	(302814, 1489211903, 0, 0),
	(302815, 1489211896, 0, 0),
	(302818, 1489211899, 0, 0),
	(302824, 1489211839, 0, 0),
	(302826, 1489211821, 0, 0),
	(302828, 1489211815, 0, 0),
	(302829, 1489211797, 0, 0),
	(303249, 1488929904, 0, 0),
	(304201, 1489213155, 0, 0),
	(400035, 1490882195, 0, 1),
	(470001, 1503924506, 0, 571),
	(470002, 1503924508, 0, 571),
	(470009, 1503924508, 0, 571),
	(9954510, 1490867713, 0, 1),
	(9958572, 1491925734, 0, 1);
/*!40000 ALTER TABLE `gameobject_respawn` ENABLE KEYS */;

-- Dumping structure for table characters.game_event_condition_save
CREATE TABLE IF NOT EXISTS `game_event_condition_save` (
  `condition_id` int(10) unsigned NOT NULL DEFAULT '0',
  `done` float DEFAULT '0',
  `eventEntry` tinyint(3) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`eventEntry`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table characters.game_event_condition_save: ~0 rows (approximately)
/*!40000 ALTER TABLE `game_event_condition_save` DISABLE KEYS */;
/*!40000 ALTER TABLE `game_event_condition_save` ENABLE KEYS */;

-- Dumping structure for table characters.game_event_save
CREATE TABLE IF NOT EXISTS `game_event_save` (
  `eventEntry` tinyint(3) unsigned NOT NULL,
  `state` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `next_start` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`eventEntry`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table characters.game_event_save: ~16 rows (approximately)
/*!40000 ALTER TABLE `game_event_save` DISABLE KEYS */;
INSERT INTO `game_event_save` (`eventEntry`, `state`, `next_start`) VALUES
	(3, 4, 0),
	(33, 4, 0),
	(34, 3, 1647555935),
	(35, 4, 0),
	(36, 3, 1647555935),
	(37, 4, 0),
	(38, 3, 1647555935),
	(39, 4, 0),
	(40, 3, 1647555935),
	(41, 4, 0),
	(42, 3, 1647555935),
	(43, 4, 0),
	(44, 3, 1647555935),
	(45, 4, 0),
	(46, 3, 1647555935),
	(47, 3, 1647555935);
/*!40000 ALTER TABLE `game_event_save` ENABLE KEYS */;

-- Dumping structure for table characters.gm_subsurveys
CREATE TABLE IF NOT EXISTS `gm_subsurveys` (
  `surveyId` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `subsurveyId` int(10) unsigned NOT NULL DEFAULT '0',
  `rank` int(10) unsigned NOT NULL DEFAULT '0',
  `comment` text NOT NULL,
  PRIMARY KEY (`surveyId`,`subsurveyId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Player System';

-- Dumping data for table characters.gm_subsurveys: ~0 rows (approximately)
/*!40000 ALTER TABLE `gm_subsurveys` DISABLE KEYS */;
/*!40000 ALTER TABLE `gm_subsurveys` ENABLE KEYS */;

-- Dumping structure for table characters.gm_surveys
CREATE TABLE IF NOT EXISTS `gm_surveys` (
  `guid` int(10) NOT NULL,
  `surveyId` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `mainSurvey` int(10) unsigned NOT NULL DEFAULT '0',
  `overallComment` longtext NOT NULL,
  `createTime` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`surveyId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Player System';

-- Dumping data for table characters.gm_surveys: ~0 rows (approximately)
/*!40000 ALTER TABLE `gm_surveys` DISABLE KEYS */;
/*!40000 ALTER TABLE `gm_surveys` ENABLE KEYS */;

-- Dumping structure for table characters.gm_tickets
CREATE TABLE IF NOT EXISTS `gm_tickets` (
  `ticketId` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `guid` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Global Unique Identifier of ticket creator',
  `name` varchar(12) NOT NULL COMMENT 'Name of ticket creator',
  `message` text NOT NULL,
  `createTime` int(10) unsigned NOT NULL DEFAULT '0',
  `mapId` smallint(5) unsigned NOT NULL DEFAULT '0',
  `posX` float NOT NULL DEFAULT '0',
  `posY` float NOT NULL DEFAULT '0',
  `posZ` float NOT NULL DEFAULT '0',
  `lastModifiedTime` int(10) unsigned NOT NULL DEFAULT '0',
  `closedBy` int(10) NOT NULL DEFAULT '0',
  `assignedTo` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'GUID of admin to whom ticket is assigned',
  `comment` text NOT NULL,
  `response` text NOT NULL,
  `completed` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `escalated` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `viewed` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `haveTicket` tinyint(3) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`ticketId`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='Player System';

-- Dumping data for table characters.gm_tickets: ~3 rows (approximately)
/*!40000 ALTER TABLE `gm_tickets` DISABLE KEYS */;
INSERT INTO `gm_tickets` (`ticketId`, `guid`, `name`, `message`, `createTime`, `mapId`, `posX`, `posY`, `posZ`, `lastModifiedTime`, `closedBy`, `assignedTo`, `comment`, `response`, `completed`, `escalated`, `viewed`, `haveTicket`) VALUES
	(1, 78, 'Zafire', 'dqw', 1484144628, 0, -9099.74, -62.8495, 84.0844, 1484144628, 78, 0, '', '', 0, 0, 0, 0),
	(2, 41, 'Freaky', 'damn son, what is this ?', 1485017011, 47, 2186.35, 1833.85, 60.038, 1485017011, 41, 0, '', '', 1, 0, 0, 0),
	(3, 93, 'Waeer', 'nuubbsnuubbsnuubbsnuubbsnuubbsnuubbsnuubbsnuubbsnuubbsnuubbsnuubbsnuubbsnuubbsnuubbsnuubbsnuubbsnuubbsnuubbsnuubbsnuubbsnuubbsnuubbsnuubbsnuubbsnuubbsnuubbsnuubbsnuubbsnuubbsnuubbsnuubbsnuubbsnuubbsnuubbsnuubbsnuubbsnuubbsnuubbsnuubbs. nuubbsnuubbsnuubbsnuubbsnuubbsnuubbsnuubbsnuubbsnuubbsnuubbsnuubbsnuubbsnuubbsnuubbsvv\n\nnuubbsnuubbsnuubbsnuubbsnuubbsnuubbsnuubbsnuubbsnuubbsnuubbsnuubbsnuubbsnuubbsnuubbsnuubbsnuubbsnuubbsnuubbsnuubbsnuubbsnuubbsv', 1485017223, 1, -2921.04, -257.71, 59.2996, 1485017223, 93, 0, '', '', 1, 0, 0, 0);
/*!40000 ALTER TABLE `gm_tickets` ENABLE KEYS */;

-- Dumping structure for table characters.gold_stats
CREATE TABLE IF NOT EXISTS `gold_stats` (
  `AverageGold` int(11) DEFAULT NULL,
  `OverallGold` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table characters.gold_stats: ~97 rows (approximately)
/*!40000 ALTER TABLE `gold_stats` DISABLE KEYS */;
/*!40000 ALTER TABLE `gold_stats` ENABLE KEYS */;

-- Dumping structure for table characters.groups
CREATE TABLE IF NOT EXISTS `groups` (
  `guid` int(10) unsigned NOT NULL,
  `leaderGuid` int(10) unsigned NOT NULL,
  `lootMethod` tinyint(3) unsigned NOT NULL,
  `looterGuid` int(10) unsigned NOT NULL,
  `lootThreshold` tinyint(3) unsigned NOT NULL,
  `icon1` int(10) unsigned NOT NULL,
  `icon2` int(10) unsigned NOT NULL,
  `icon3` int(10) unsigned NOT NULL,
  `icon4` int(10) unsigned NOT NULL,
  `icon5` int(10) unsigned NOT NULL,
  `icon6` int(10) unsigned NOT NULL,
  `icon7` int(10) unsigned NOT NULL,
  `icon8` int(10) unsigned NOT NULL,
  `groupType` tinyint(3) unsigned NOT NULL,
  `difficulty` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `raiddifficulty` tinyint(3) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`guid`),
  KEY `leaderGuid` (`leaderGuid`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Groups';

-- Dumping data for table characters.groups: ~0 rows (approximately)
/*!40000 ALTER TABLE `groups` DISABLE KEYS */;
/*!40000 ALTER TABLE `groups` ENABLE KEYS */;

-- Dumping structure for table characters.group_instance
CREATE TABLE IF NOT EXISTS `group_instance` (
  `guid` int(10) unsigned NOT NULL DEFAULT '0',
  `instance` int(10) unsigned NOT NULL DEFAULT '0',
  `permanent` tinyint(3) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`guid`,`instance`),
  KEY `instance` (`instance`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table characters.group_instance: ~0 rows (approximately)
/*!40000 ALTER TABLE `group_instance` DISABLE KEYS */;
/*!40000 ALTER TABLE `group_instance` ENABLE KEYS */;

-- Dumping structure for table characters.group_member
CREATE TABLE IF NOT EXISTS `group_member` (
  `guid` int(10) unsigned NOT NULL DEFAULT '0',
  `memberGuid` int(10) unsigned NOT NULL DEFAULT '0',
  `memberFlags` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `subgroup` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `roles` tinyint(3) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`memberGuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Groups';

-- Dumping data for table characters.group_member: ~4 rows (approximately)
/*!40000 ALTER TABLE `group_member` DISABLE KEYS */;
/*!40000 ALTER TABLE `group_member` ENABLE KEYS */;

-- Dumping structure for table characters.guild
CREATE TABLE IF NOT EXISTS `guild` (
  `guildid` int(10) unsigned NOT NULL DEFAULT '0',
  `name` varchar(24) NOT NULL DEFAULT '',
  `leaderguid` int(10) unsigned NOT NULL DEFAULT '0',
  `EmblemStyle` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `EmblemColor` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `BorderStyle` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `BorderColor` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `BackgroundColor` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `info` text NOT NULL,
  `motd` varchar(128) NOT NULL DEFAULT '',
  `createdate` int(10) unsigned NOT NULL DEFAULT '0',
  `BankMoney` bigint(20) unsigned NOT NULL DEFAULT '0',
  `level` int(10) unsigned DEFAULT '1',
  `todayExperience` bigint(20) unsigned DEFAULT '0',
  `RaidChallenge` int(10) NOT NULL DEFAULT '0',
  `ChallengeCount` int(32) unsigned NOT NULL DEFAULT '0',
  `RatedBGChallenge` int(10) NOT NULL DEFAULT '0',
  `DungeonChallenge` int(10) NOT NULL DEFAULT '0',
  `experience` bigint(20) unsigned DEFAULT '0',
  PRIMARY KEY (`guildid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Guild System';

-- Dumping data for table characters.guild: ~0 rows (approximately)
/*!40000 ALTER TABLE `guild` DISABLE KEYS */;
/*!40000 ALTER TABLE `guild` ENABLE KEYS */;

-- Dumping structure for table characters.guild_achievement
CREATE TABLE IF NOT EXISTS `guild_achievement` (
  `guildId` int(10) unsigned NOT NULL,
  `achievement` smallint(5) unsigned NOT NULL,
  `date` int(10) unsigned NOT NULL DEFAULT '0',
  `guids` text NOT NULL,
  PRIMARY KEY (`guildId`,`achievement`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table characters.guild_achievement: ~0 rows (approximately)
/*!40000 ALTER TABLE `guild_achievement` DISABLE KEYS */;
/*!40000 ALTER TABLE `guild_achievement` ENABLE KEYS */;

-- Dumping structure for table characters.guild_achievement_progress
CREATE TABLE IF NOT EXISTS `guild_achievement_progress` (
  `guildId` int(10) unsigned NOT NULL,
  `criteria` smallint(5) unsigned NOT NULL,
  `counter` int(10) unsigned NOT NULL,
  `date` int(10) unsigned NOT NULL DEFAULT '0',
  `completedGuid` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`guildId`,`criteria`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table characters.guild_achievement_progress: ~0 rows (approximately)
/*!40000 ALTER TABLE `guild_achievement_progress` DISABLE KEYS */;
/*!40000 ALTER TABLE `guild_achievement_progress` ENABLE KEYS */;

-- Dumping structure for table characters.guild_bank_eventlog
CREATE TABLE IF NOT EXISTS `guild_bank_eventlog` (
  `guildid` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Guild Identificator',
  `LogGuid` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Log record identificator - auxiliary column',
  `TabId` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT 'Guild bank TabId',
  `EventType` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT 'Event type',
  `PlayerGuid` int(10) unsigned NOT NULL DEFAULT '0',
  `ItemOrMoney` int(10) unsigned NOT NULL DEFAULT '0',
  `ItemStackCount` smallint(5) unsigned NOT NULL DEFAULT '0',
  `DestTabId` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT 'Destination Tab Id',
  `TimeStamp` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Event UNIX time',
  PRIMARY KEY (`guildid`,`LogGuid`,`TabId`),
  KEY `guildid_key` (`guildid`) USING BTREE,
  KEY `Idx_PlayerGuid` (`PlayerGuid`) USING BTREE,
  KEY `Idx_LogGuid` (`LogGuid`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table characters.guild_bank_eventlog: ~0 rows (approximately)
/*!40000 ALTER TABLE `guild_bank_eventlog` DISABLE KEYS */;
/*!40000 ALTER TABLE `guild_bank_eventlog` ENABLE KEYS */;

-- Dumping structure for table characters.guild_bank_item
CREATE TABLE IF NOT EXISTS `guild_bank_item` (
  `guildid` int(10) unsigned NOT NULL DEFAULT '0',
  `TabId` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `SlotId` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `item_guid` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`guildid`,`TabId`,`SlotId`),
  KEY `guildid_key` (`guildid`) USING BTREE,
  KEY `Idx_item_guid` (`item_guid`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table characters.guild_bank_item: ~0 rows (approximately)
/*!40000 ALTER TABLE `guild_bank_item` DISABLE KEYS */;
/*!40000 ALTER TABLE `guild_bank_item` ENABLE KEYS */;

-- Dumping structure for table characters.guild_bank_right
CREATE TABLE IF NOT EXISTS `guild_bank_right` (
  `guildid` int(10) unsigned NOT NULL DEFAULT '0',
  `TabId` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `rid` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `gbright` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `SlotPerDay` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`guildid`,`TabId`,`rid`),
  KEY `guildid_key` (`guildid`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table characters.guild_bank_right: ~0 rows (approximately)
/*!40000 ALTER TABLE `guild_bank_right` DISABLE KEYS */;
/*!40000 ALTER TABLE `guild_bank_right` ENABLE KEYS */;

-- Dumping structure for table characters.guild_bank_tab
CREATE TABLE IF NOT EXISTS `guild_bank_tab` (
  `guildid` int(10) unsigned NOT NULL DEFAULT '0',
  `TabId` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `TabName` varchar(16) NOT NULL DEFAULT '',
  `TabIcon` varchar(100) NOT NULL DEFAULT '',
  `TabText` varchar(500) DEFAULT NULL,
  PRIMARY KEY (`guildid`,`TabId`),
  KEY `guildid_key` (`guildid`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table characters.guild_bank_tab: ~0 rows (approximately)
/*!40000 ALTER TABLE `guild_bank_tab` DISABLE KEYS */;
/*!40000 ALTER TABLE `guild_bank_tab` ENABLE KEYS */;

-- Dumping structure for table characters.guild_challenges_completed
CREATE TABLE IF NOT EXISTS `guild_challenges_completed` (
  `guildId` int(10) unsigned NOT NULL DEFAULT '0',
  `challengeId` int(10) unsigned DEFAULT NULL,
  `dateCompleted` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`guildId`),
  KEY `challengeId` (`challengeId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table characters.guild_challenges_completed: ~0 rows (approximately)
/*!40000 ALTER TABLE `guild_challenges_completed` DISABLE KEYS */;
/*!40000 ALTER TABLE `guild_challenges_completed` ENABLE KEYS */;

-- Dumping structure for table characters.guild_eventlog
CREATE TABLE IF NOT EXISTS `guild_eventlog` (
  `guildid` int(10) unsigned NOT NULL COMMENT 'Guild Identificator',
  `LogGuid` int(10) unsigned NOT NULL COMMENT 'Log record identificator - auxiliary column',
  `EventType` tinyint(3) unsigned NOT NULL COMMENT 'Event type',
  `PlayerGuid1` int(10) unsigned NOT NULL COMMENT 'Player 1',
  `PlayerGuid2` int(10) unsigned NOT NULL COMMENT 'Player 2',
  `NewRank` tinyint(3) unsigned NOT NULL COMMENT 'New rank(in case promotion/demotion)',
  `TimeStamp` int(10) unsigned NOT NULL COMMENT 'Event UNIX time',
  PRIMARY KEY (`guildid`,`LogGuid`),
  KEY `Idx_PlayerGuid1` (`PlayerGuid1`) USING BTREE,
  KEY `Idx_PlayerGuid2` (`PlayerGuid2`) USING BTREE,
  KEY `Idx_LogGuid` (`LogGuid`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Guild Eventlog';

-- Dumping data for table characters.guild_eventlog: ~0 rows (approximately)
/*!40000 ALTER TABLE `guild_eventlog` DISABLE KEYS */;
/*!40000 ALTER TABLE `guild_eventlog` ENABLE KEYS */;

-- Dumping structure for table characters.guild_finder_applicant
CREATE TABLE IF NOT EXISTS `guild_finder_applicant` (
  `guildId` int(10) unsigned DEFAULT NULL,
  `playerGuid` int(10) unsigned DEFAULT NULL,
  `availability` tinyint(3) unsigned DEFAULT '0',
  `classRole` tinyint(3) unsigned DEFAULT '0',
  `interests` tinyint(3) unsigned DEFAULT '0',
  `comment` varchar(255) DEFAULT NULL,
  `submitTime` int(10) unsigned DEFAULT NULL,
  UNIQUE KEY `guildId` (`guildId`,`playerGuid`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table characters.guild_finder_applicant: ~0 rows (approximately)
/*!40000 ALTER TABLE `guild_finder_applicant` DISABLE KEYS */;
/*!40000 ALTER TABLE `guild_finder_applicant` ENABLE KEYS */;

-- Dumping structure for table characters.guild_finder_guild_settings
CREATE TABLE IF NOT EXISTS `guild_finder_guild_settings` (
  `guildId` int(10) unsigned NOT NULL,
  `availability` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `classRoles` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `interests` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `level` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `listed` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `comment` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`guildId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table characters.guild_finder_guild_settings: ~0 rows (approximately)
/*!40000 ALTER TABLE `guild_finder_guild_settings` DISABLE KEYS */;
/*!40000 ALTER TABLE `guild_finder_guild_settings` ENABLE KEYS */;

-- Dumping structure for table characters.guild_member
CREATE TABLE IF NOT EXISTS `guild_member` (
  `guildid` int(10) unsigned NOT NULL COMMENT 'Guild Identificator',
  `guid` int(10) unsigned NOT NULL,
  `rank` tinyint(3) unsigned NOT NULL,
  `pnote` varchar(31) NOT NULL DEFAULT '',
  `offnote` varchar(31) NOT NULL DEFAULT '',
  `activity` bigint(20) NOT NULL,
  `profession1_skillID` int(10) NOT NULL DEFAULT '0',
  `weekReputation` int(10) NOT NULL DEFAULT '0',
  `profession2_rank` int(10) NOT NULL DEFAULT '0',
  `profession2_skillID` int(10) NOT NULL DEFAULT '0',
  `profession1_rank` int(10) NOT NULL DEFAULT '0',
  `weekActivity` int(10) NOT NULL DEFAULT '0',
  `profession1_level` int(10) NOT NULL DEFAULT '0',
  `profession2_level` int(10) NOT NULL DEFAULT '0',
  UNIQUE KEY `guid_key` (`guid`) USING BTREE,
  KEY `guildid_key` (`guildid`) USING BTREE,
  KEY `guildid_rank_key` (`guildid`,`rank`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Guild System';

-- Dumping data for table characters.guild_member: ~0 rows (approximately)
/*!40000 ALTER TABLE `guild_member` DISABLE KEYS */;
/*!40000 ALTER TABLE `guild_member` ENABLE KEYS */;

-- Dumping structure for table characters.guild_member_withdraw
CREATE TABLE IF NOT EXISTS `guild_member_withdraw` (
  `guid` int(10) unsigned NOT NULL,
  `tab0` int(10) unsigned NOT NULL DEFAULT '0',
  `tab1` int(10) unsigned NOT NULL DEFAULT '0',
  `tab2` int(10) unsigned NOT NULL DEFAULT '0',
  `tab3` int(10) unsigned NOT NULL DEFAULT '0',
  `tab4` int(10) unsigned NOT NULL DEFAULT '0',
  `tab5` int(10) unsigned NOT NULL DEFAULT '0',
  `tab6` int(10) unsigned NOT NULL DEFAULT '0',
  `tab7` int(10) unsigned NOT NULL DEFAULT '0',
  `money` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`guid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Guild Member Dayly Withdraws';

-- Dumping data for table characters.guild_member_withdraw: ~0 rows (approximately)
/*!40000 ALTER TABLE `guild_member_withdraw` DISABLE KEYS */;
/*!40000 ALTER TABLE `guild_member_withdraw` ENABLE KEYS */;

-- Dumping structure for table characters.guild_newslog
CREATE TABLE IF NOT EXISTS `guild_newslog` (
  `guildid` int(10) unsigned NOT NULL DEFAULT '0',
  `TimeStamp` int(10) unsigned NOT NULL DEFAULT '0',
  `PlayerGuid` int(10) unsigned NOT NULL DEFAULT '0',
  `LogGuid` int(10) unsigned NOT NULL DEFAULT '0',
  `Flags` int(10) unsigned NOT NULL DEFAULT '0',
  `EventType` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `Value` int(10) unsigned NOT NULL DEFAULT '0',
  KEY `Idx_PlayerGuid` (`PlayerGuid`) USING BTREE,
  KEY `Idx_LogGuid` (`LogGuid`) USING BTREE,
  KEY `guildid_key` (`guildid`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Guild Newslog';

-- Dumping data for table characters.guild_newslog: ~0 rows (approximately)
/*!40000 ALTER TABLE `guild_newslog` DISABLE KEYS */;
/*!40000 ALTER TABLE `guild_newslog` ENABLE KEYS */;

-- Dumping structure for table characters.guild_old_member
CREATE TABLE IF NOT EXISTS `guild_old_member` (
  `guid` int(10) NOT NULL,
  `guildId` int(10) NOT NULL,
  `weekReputation` int(10) NOT NULL,
  `leaveDate` int(10) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Dumping data for table characters.guild_old_member: 0 rows
/*!40000 ALTER TABLE `guild_old_member` DISABLE KEYS */;
/*!40000 ALTER TABLE `guild_old_member` ENABLE KEYS */;

-- Dumping structure for table characters.guild_rank
CREATE TABLE IF NOT EXISTS `guild_rank` (
  `guildid` int(10) unsigned NOT NULL DEFAULT '0',
  `rid` tinyint(3) unsigned NOT NULL,
  `rname` varchar(20) NOT NULL DEFAULT '',
  `rights` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `BankMoneyPerDay` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`guildid`,`rid`),
  KEY `Idx_rid` (`rid`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Guild System';

-- Dumping data for table characters.guild_rank: ~0 rows (approximately)
/*!40000 ALTER TABLE `guild_rank` DISABLE KEYS */;
/*!40000 ALTER TABLE `guild_rank` ENABLE KEYS */;

-- Dumping structure for table characters.instance
CREATE TABLE IF NOT EXISTS `instance` (
  `id` int(10) unsigned NOT NULL DEFAULT '0',
  `map` smallint(5) unsigned NOT NULL DEFAULT '0',
  `resettime` int(10) unsigned NOT NULL DEFAULT '0',
  `difficulty` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `completedEncounters` int(10) unsigned NOT NULL DEFAULT '0',
  `data` tinytext NOT NULL,
  `isLFG` smallint(5) unsigned NOT NULL DEFAULT '0',
  `hardMode` smallint(5) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `map` (`map`) USING BTREE,
  KEY `resettime` (`resettime`) USING BTREE,
  KEY `difficulty` (`difficulty`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table characters.instance: ~0 rows (approximately)
/*!40000 ALTER TABLE `instance` DISABLE KEYS */;
/*!40000 ALTER TABLE `instance` ENABLE KEYS */;

-- Dumping structure for table characters.instance_reset
CREATE TABLE IF NOT EXISTS `instance_reset` (
  `mapid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `difficulty` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `resettime` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`mapid`,`difficulty`),
  KEY `difficulty` (`difficulty`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table characters.instance_reset: ~105 rows (approximately)
/*!40000 ALTER TABLE `instance_reset` DISABLE KEYS */;
/*!40000 ALTER TABLE `instance_reset` ENABLE KEYS */;

-- Dumping structure for table characters.item_instance
CREATE TABLE IF NOT EXISTS `item_instance` (
  `guid` int(10) unsigned NOT NULL DEFAULT '0',
  `itemEntry` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `owner_guid` int(10) unsigned NOT NULL DEFAULT '0',
  `creatorGuid` int(10) unsigned NOT NULL DEFAULT '0',
  `giftCreatorGuid` int(10) unsigned NOT NULL DEFAULT '0',
  `count` int(10) unsigned NOT NULL DEFAULT '1',
  `duration` int(10) NOT NULL DEFAULT '0',
  `charges` tinytext,
  `flags` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `enchantments` text NOT NULL,
  `randomPropertyId` smallint(5) NOT NULL DEFAULT '0',
  `durability` smallint(5) unsigned NOT NULL DEFAULT '0',
  `playedTime` int(10) unsigned NOT NULL DEFAULT '0',
  `text` text,
  PRIMARY KEY (`guid`),
  KEY `idx_owner_guid` (`owner_guid`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Item System';

-- Dumping data for table characters.item_instance: ~0 rows (approximately)
/*!40000 ALTER TABLE `item_instance` DISABLE KEYS */;
/*!40000 ALTER TABLE `item_instance` ENABLE KEYS */;

-- Dumping structure for table characters.item_loot_items
CREATE TABLE IF NOT EXISTS `item_loot_items` (
  `container_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'guid of container (item_instance.guid)',
  `item_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'loot item entry (item_instance.itemEntry)',
  `item_count` int(10) NOT NULL DEFAULT '0' COMMENT 'stack size',
  `follow_rules` tinyint(1) NOT NULL DEFAULT '0' COMMENT 'follow loot rules',
  `ffa` tinyint(1) NOT NULL DEFAULT '0' COMMENT 'free-for-all',
  `blocked` tinyint(1) NOT NULL DEFAULT '0',
  `counted` tinyint(1) NOT NULL DEFAULT '0',
  `under_threshold` tinyint(1) NOT NULL DEFAULT '0',
  `needs_quest` tinyint(1) NOT NULL DEFAULT '0' COMMENT 'quest drop',
  `rnd_prop` int(10) NOT NULL DEFAULT '0' COMMENT 'random enchantment added when originally rolled',
  `rnd_suffix` int(10) NOT NULL DEFAULT '0' COMMENT 'random suffix added when originally rolled'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table characters.item_loot_items: ~0 rows (approximately)
/*!40000 ALTER TABLE `item_loot_items` DISABLE KEYS */;
/*!40000 ALTER TABLE `item_loot_items` ENABLE KEYS */;

-- Dumping structure for table characters.item_loot_money
CREATE TABLE IF NOT EXISTS `item_loot_money` (
  `container_id` int(10) NOT NULL DEFAULT '0' COMMENT 'guid of container (item_instance.guid)',
  `money` int(10) NOT NULL DEFAULT '0' COMMENT 'money loot (in copper)'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table characters.item_loot_money: ~0 rows (approximately)
/*!40000 ALTER TABLE `item_loot_money` DISABLE KEYS */;
/*!40000 ALTER TABLE `item_loot_money` ENABLE KEYS */;

-- Dumping structure for table characters.item_refund_instance
CREATE TABLE IF NOT EXISTS `item_refund_instance` (
  `item_guid` int(10) unsigned NOT NULL COMMENT 'Item GUID',
  `player_guid` int(10) unsigned NOT NULL COMMENT 'Player GUID',
  `paidMoney` int(10) unsigned NOT NULL DEFAULT '0',
  `paidExtendedCost` smallint(5) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`item_guid`,`player_guid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Item Refund System';

-- Dumping data for table characters.item_refund_instance: ~16 rows (approximately)
/*!40000 ALTER TABLE `item_refund_instance` DISABLE KEYS */;
/*!40000 ALTER TABLE `item_refund_instance` ENABLE KEYS */;

-- Dumping structure for table characters.item_soulbound_trade_data
CREATE TABLE IF NOT EXISTS `item_soulbound_trade_data` (
  `itemGuid` int(10) unsigned NOT NULL COMMENT 'Item GUID',
  `allowedPlayers` text NOT NULL COMMENT 'Space separated GUID list of players who can receive this item in trade',
  PRIMARY KEY (`itemGuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Item Refund System';

-- Dumping data for table characters.item_soulbound_trade_data: ~10 rows (approximately)
/*!40000 ALTER TABLE `item_soulbound_trade_data` DISABLE KEYS */;
/*!40000 ALTER TABLE `item_soulbound_trade_data` ENABLE KEYS */;

-- Dumping structure for table characters.lag_reports
CREATE TABLE IF NOT EXISTS `lag_reports` (
  `reportId` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `guid` int(10) unsigned NOT NULL DEFAULT '0',
  `lagType` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `mapId` smallint(5) unsigned NOT NULL DEFAULT '0',
  `posX` float NOT NULL DEFAULT '0',
  `posY` float NOT NULL DEFAULT '0',
  `posZ` float NOT NULL DEFAULT '0',
  `latency` int(10) unsigned NOT NULL DEFAULT '0',
  `createTime` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`reportId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Player System';

-- Dumping data for table characters.lag_reports: ~0 rows (approximately)
/*!40000 ALTER TABLE `lag_reports` DISABLE KEYS */;
/*!40000 ALTER TABLE `lag_reports` ENABLE KEYS */;

-- Dumping structure for table characters.lfg_data
CREATE TABLE IF NOT EXISTS `lfg_data` (
  `guid` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Global Unique Identifier',
  `dungeon` int(10) unsigned NOT NULL DEFAULT '0',
  `state` tinyint(3) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`guid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='LFG Data';

-- Dumping data for table characters.lfg_data: ~0 rows (approximately)
/*!40000 ALTER TABLE `lfg_data` DISABLE KEYS */;
/*!40000 ALTER TABLE `lfg_data` ENABLE KEYS */;

-- Dumping structure for table characters.mail
CREATE TABLE IF NOT EXISTS `mail` (
  `id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Identifier',
  `messageType` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `stationery` tinyint(3) NOT NULL DEFAULT '41',
  `mailTemplateId` smallint(5) unsigned NOT NULL DEFAULT '0',
  `sender` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Character Global Unique Identifier',
  `receiver` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Character Global Unique Identifier',
  `subject` longtext,
  `body` longtext,
  `has_items` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `expire_time` int(10) unsigned NOT NULL DEFAULT '0',
  `deliver_time` int(10) unsigned NOT NULL DEFAULT '0',
  `money` bigint(20) unsigned NOT NULL DEFAULT '0',
  `cod` bigint(20) unsigned NOT NULL DEFAULT '0',
  `checked` tinyint(3) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_receiver` (`receiver`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Mail System';

-- Dumping data for table characters.mail: ~0 rows (approximately)
/*!40000 ALTER TABLE `mail` DISABLE KEYS */;
/*!40000 ALTER TABLE `mail` ENABLE KEYS */;

-- Dumping structure for table characters.mail_items
CREATE TABLE IF NOT EXISTS `mail_items` (
  `mail_id` int(10) unsigned NOT NULL DEFAULT '0',
  `item_guid` int(10) unsigned NOT NULL DEFAULT '0',
  `receiver` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Character Global Unique Identifier',
  PRIMARY KEY (`item_guid`),
  KEY `idx_receiver` (`receiver`) USING BTREE,
  KEY `idx_mail_id` (`mail_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table characters.mail_items: ~0 rows (approximately)
/*!40000 ALTER TABLE `mail_items` DISABLE KEYS */;
/*!40000 ALTER TABLE `mail_items` ENABLE KEYS */;

-- Dumping structure for table characters.petition
CREATE TABLE IF NOT EXISTS `petition` (
  `ownerguid` int(10) unsigned NOT NULL,
  `petitionguid` int(10) unsigned DEFAULT '0',
  `name` varchar(24) NOT NULL,
  `type` tinyint(3) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`ownerguid`,`type`),
  UNIQUE KEY `index_ownerguid_petitionguid` (`ownerguid`,`petitionguid`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Guild System';

-- Dumping data for table characters.petition: ~0 rows (approximately)
/*!40000 ALTER TABLE `petition` DISABLE KEYS */;
/*!40000 ALTER TABLE `petition` ENABLE KEYS */;

-- Dumping structure for table characters.petition_sign
CREATE TABLE IF NOT EXISTS `petition_sign` (
  `ownerguid` int(10) unsigned NOT NULL,
  `petitionguid` int(10) unsigned NOT NULL DEFAULT '0',
  `playerguid` int(10) unsigned NOT NULL DEFAULT '0',
  `player_account` int(10) unsigned NOT NULL DEFAULT '0',
  `type` tinyint(3) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`petitionguid`,`playerguid`),
  KEY `Idx_playerguid` (`playerguid`) USING BTREE,
  KEY `Idx_ownerguid` (`ownerguid`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Guild System';

-- Dumping data for table characters.petition_sign: ~0 rows (approximately)
/*!40000 ALTER TABLE `petition_sign` DISABLE KEYS */;
/*!40000 ALTER TABLE `petition_sign` ENABLE KEYS */;

-- Dumping structure for table characters.pet_aura
CREATE TABLE IF NOT EXISTS `pet_aura` (
  `guid` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Global Unique Identifier',
  `caster_guid` bigint(20) unsigned NOT NULL DEFAULT '0' COMMENT 'Full Global Unique Identifier',
  `spell` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `effect_mask` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `recalculate_mask` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `stackcount` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `amount0` mediumint(8) NOT NULL,
  `amount1` mediumint(8) NOT NULL,
  `amount2` mediumint(8) NOT NULL,
  `base_amount0` mediumint(8) NOT NULL,
  `base_amount1` mediumint(8) NOT NULL,
  `base_amount2` mediumint(8) NOT NULL,
  `maxduration` int(11) NOT NULL DEFAULT '0',
  `remaintime` int(11) NOT NULL DEFAULT '0',
  `remaincharges` tinyint(3) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`guid`,`spell`,`effect_mask`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Pet System';

-- Dumping data for table characters.pet_aura: ~3 rows (approximately)
/*!40000 ALTER TABLE `pet_aura` DISABLE KEYS */;
/*!40000 ALTER TABLE `pet_aura` ENABLE KEYS */;

-- Dumping structure for table characters.pet_spell
CREATE TABLE IF NOT EXISTS `pet_spell` (
  `guid` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Global Unique Identifier',
  `spell` mediumint(8) unsigned NOT NULL DEFAULT '0' COMMENT 'Spell Identifier',
  `active` tinyint(3) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`guid`,`spell`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Pet System';

-- Dumping data for table characters.pet_spell: ~0 rows (approximately)
/*!40000 ALTER TABLE `pet_spell` DISABLE KEYS */;
/*!40000 ALTER TABLE `pet_spell` ENABLE KEYS */;

-- Dumping structure for table characters.pet_spell_cooldown
CREATE TABLE IF NOT EXISTS `pet_spell_cooldown` (
  `guid` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Global Unique Identifier, Low part',
  `spell` mediumint(8) unsigned NOT NULL DEFAULT '0' COMMENT 'Spell Identifier',
  `time` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`guid`,`spell`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table characters.pet_spell_cooldown: ~0 rows (approximately)
/*!40000 ALTER TABLE `pet_spell_cooldown` DISABLE KEYS */;
/*!40000 ALTER TABLE `pet_spell_cooldown` ENABLE KEYS */;

-- Dumping structure for table characters.players_reports_status
CREATE TABLE IF NOT EXISTS `players_reports_status` (
  `guid` int(10) unsigned NOT NULL DEFAULT '0',
  `creation_time` int(10) unsigned NOT NULL DEFAULT '0',
  `average` float NOT NULL DEFAULT '0',
  `total_reports` bigint(20) unsigned NOT NULL DEFAULT '0',
  `speed_reports` bigint(20) unsigned NOT NULL DEFAULT '0',
  `fly_reports` bigint(20) unsigned NOT NULL DEFAULT '0',
  `jump_reports` bigint(20) unsigned NOT NULL DEFAULT '0',
  `waterwalk_reports` bigint(20) unsigned NOT NULL DEFAULT '0',
  `teleportplane_reports` bigint(20) unsigned NOT NULL DEFAULT '0',
  `climb_reports` bigint(20) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`guid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table characters.players_reports_status: ~0 rows (approximately)
/*!40000 ALTER TABLE `players_reports_status` DISABLE KEYS */;
/*!40000 ALTER TABLE `players_reports_status` ENABLE KEYS */;

-- Dumping structure for table characters.pool_quest_save
CREATE TABLE IF NOT EXISTS `pool_quest_save` (
  `pool_id` int(10) unsigned NOT NULL DEFAULT '0',
  `quest_id` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`pool_id`,`quest_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table characters.pool_quest_save: ~0 rows (approximately)
/*!40000 ALTER TABLE `pool_quest_save` DISABLE KEYS */;
/*!40000 ALTER TABLE `pool_quest_save` ENABLE KEYS */;

-- Dumping structure for table characters.pvpstats_battlegrounds
CREATE TABLE IF NOT EXISTS `pvpstats_battlegrounds` (
  `matherMakerRating` int(11) DEFAULT NULL,
  `guid` int(11) DEFAULT NULL,
  `slot` int(11) DEFAULT NULL,
  `id` int(11) DEFAULT NULL,
  `winner_faction` int(11) DEFAULT NULL,
  `bracket_id` int(11) DEFAULT NULL,
  `type` int(11) DEFAULT NULL,
  `date` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table characters.pvpstats_battlegrounds: ~0 rows (approximately)
/*!40000 ALTER TABLE `pvpstats_battlegrounds` DISABLE KEYS */;
/*!40000 ALTER TABLE `pvpstats_battlegrounds` ENABLE KEYS */;

-- Dumping structure for table characters.pvpstats_players
CREATE TABLE IF NOT EXISTS `pvpstats_players` (
  `battleground_id` int(11) DEFAULT NULL,
  `character_guid` int(11) DEFAULT NULL,
  `winner` int(11) DEFAULT NULL,
  `score_killing_blows` int(11) DEFAULT NULL,
  `score_deaths` int(11) DEFAULT NULL,
  `score_honorable_kills` int(11) DEFAULT NULL,
  `score_bonus_honor` int(11) DEFAULT NULL,
  `score_damage_done` int(11) DEFAULT NULL,
  `score_healing_done` int(11) DEFAULT NULL,
  `attr_1` int(11) DEFAULT NULL,
  `attr_2` int(11) DEFAULT NULL,
  `attr_3` int(11) DEFAULT NULL,
  `attr_4` int(11) DEFAULT NULL,
  `attr_5` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table characters.pvpstats_players: ~0 rows (approximately)
/*!40000 ALTER TABLE `pvpstats_players` DISABLE KEYS */;
/*!40000 ALTER TABLE `pvpstats_players` ENABLE KEYS */;

-- Dumping structure for table characters.reserved_name
CREATE TABLE IF NOT EXISTS `reserved_name` (
  `name` varchar(12) NOT NULL DEFAULT '',
  PRIMARY KEY (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Player Reserved Names';

-- Dumping data for table characters.reserved_name: ~0 rows (approximately)
/*!40000 ALTER TABLE `reserved_name` DISABLE KEYS */;
/*!40000 ALTER TABLE `reserved_name` ENABLE KEYS */;

-- Dumping structure for table characters.warden_action
CREATE TABLE IF NOT EXISTS `warden_action` (
  `wardenId` smallint(5) unsigned NOT NULL,
  `action` tinyint(3) unsigned DEFAULT NULL,
  PRIMARY KEY (`wardenId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table characters.warden_action: ~0 rows (approximately)
/*!40000 ALTER TABLE `warden_action` DISABLE KEYS */;
/*!40000 ALTER TABLE `warden_action` ENABLE KEYS */;

-- Dumping structure for table characters.worldstates
CREATE TABLE IF NOT EXISTS `worldstates` (
  `entry` int(10) unsigned NOT NULL DEFAULT '0',
  `value` int(10) unsigned NOT NULL DEFAULT '0',
  `comment` tinytext,
  PRIMARY KEY (`entry`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Variable Saves';

-- Dumping data for table characters.worldstates: ~0 rows (approximately)
/*!40000 ALTER TABLE `worldstates` DISABLE KEYS */;
INSERT INTO `worldstates` (`entry`, `value`, `comment`) VALUES
	(1, 0, NULL),
	(2, 0, NULL),
	(3, 0, NULL),
	(4, 0, NULL),
	(5, 0, NULL),
	(6, 0, NULL),
	(7, 0, NULL),
	(8, 0, NULL),
	(9, 0, NULL),
	(10, 0, NULL),
	(11, 0, NULL),
	(12, 0, NULL),
	(13, 0, NULL),
	(14, 0, NULL),
	(15, 0, NULL),
	(16, 0, NULL),
	(17, 0, NULL),
	(18, 0, NULL),
	(19, 0, NULL),
	(20, 0, NULL),
	(21, 0, NULL),
	(22, 0, NULL),
	(23, 0, NULL),
	(24, 0, NULL),
	(25, 0, NULL),
	(26, 0, NULL),
	(27, 0, NULL),
	(28, 0, NULL),
	(29, 0, NULL),
	(30, 0, NULL),
	(31, 0, NULL),
	(32, 0, NULL),
	(42, 0, NULL),
	(48, 0, NULL),
	(49, 0, NULL),
	(50, 0, NULL),
	(51, 0, NULL),
	(52, 0, NULL),
	(53, 0, NULL),
	(54, 0, NULL),
	(55, 0, NULL),
	(56, 0, NULL),
	(57, 0, NULL),
	(58, 0, NULL),
	(59, 0, NULL),
	(60, 1484064102, NULL),
	(61, 0, NULL),
	(62, 0, NULL),
	(63, 0, NULL),
	(64, 0, NULL),
	(65, 0, NULL),
	(66, 0, NULL),
	(67, 0, NULL),
	(68, 0, NULL),
	(69, 0, NULL),
	(70, 0, NULL),
	(71, 0, NULL),
	(72, 0, NULL),
	(73, 0, NULL),
	(74, 0, NULL),
	(75, 0, NULL),
	(76, 0, NULL),
	(77, 0, NULL),
	(78, 0, NULL),
	(79, 0, NULL),
	(80, 0, NULL),
	(81, 0, NULL),
	(82, 0, NULL),
	(83, 0, NULL),
	(84, 0, NULL),
	(85, 0, NULL),
	(86, 0, NULL),
	(87, 0, NULL),
	(88, 0, NULL),
	(89, 0, NULL),
	(90, 0, NULL),
	(91, 0, NULL),
	(92, 0, NULL),
	(93, 0, NULL),
	(94, 0, NULL),
	(95, 0, NULL),
	(96, 0, NULL),
	(97, 0, NULL),
	(98, 0, NULL),
	(99, 0, NULL),
	(100, 0, NULL),
	(101, 0, NULL),
	(102, 0, NULL),
	(103, 0, NULL),
	(104, 0, NULL),
	(105, 0, NULL),
	(106, 0, NULL),
	(107, 0, NULL),
	(108, 0, NULL),
	(109, 0, NULL),
	(110, 0, NULL),
	(111, 0, NULL),
	(112, 0, NULL),
	(113, 0, NULL),
	(114, 0, NULL),
	(115, 0, NULL),
	(116, 0, NULL),
	(117, 0, NULL),
	(118, 0, NULL),
	(119, 0, NULL),
	(120, 0, NULL),
	(121, 0, NULL),
	(122, 0, NULL),
	(123, 0, NULL),
	(124, 0, NULL),
	(125, 0, NULL),
	(126, 0, NULL),
	(127, 0, NULL),
	(3781, 9000000, NULL),
	(3801, 0, NULL),
	(3802, 1, NULL),
	(5333, 9000000, NULL),
	(5384, 1, NULL),
	(5387, 0, NULL),
	(20001, 1559190050, NULL),
	(20002, 1559190050, NULL),
	(20003, 1558670400, NULL),
	(20006, 1558670400, NULL),
	(20007, 1559340000, NULL),
	(20050, 1559275199, NULL),
	(20051, 1559190050, NULL),
	(20052, 1, NULL),
	(20070, 7, NULL);
/*!40000 ALTER TABLE `worldstates` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
