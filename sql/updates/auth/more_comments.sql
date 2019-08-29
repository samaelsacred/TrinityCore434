SELECT DATABASE 'auth'
ALTER TABLE `account_access`
COMMENT='Account level (Administrator, Moderator)';

ALTER TABLE `ip2nation`
	COMMENT='Converts IP to country, requires ip2nation to be filled';