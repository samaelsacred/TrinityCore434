-- Knucklerot SAI
SET @ENTRY := 16246;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,0,0,100,0,3000,6000,8000,13000,11,3396,32,0,0,0,0,5,0,0,0,0,0,0,0,"Knucklerot - In Combat - Cast 'Corrosive Poison'"),
(@ENTRY,0,1,0,9,0,100,0,0,5,5000,9000,11,8014,1,0,0,0,0,5,0,0,0,0,0,0,0,"Knucklerot - Within 0-5 Range - Cast 'Tetanus'");

-- Luzran SAI
SET @ENTRY := 16245;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,9,0,100,0,0,5,7000,11000,11,13444,0,0,0,0,0,2,0,0,0,0,0,0,0,"Luzran - Within 0-5 Range - Cast 'Sunder Armor'"),
(@ENTRY,0,1,0,0,0,100,0,12000,15000,13000,17000,11,40504,1,0,0,0,0,2,0,0,0,0,0,0,0,"Luzran - In Combat - Cast 'Cleave'"),
(@ENTRY,0,2,0,0,0,100,0,9000,12000,15000,21000,11,31389,1,0,0,0,0,2,0,0,0,0,0,0,0,"Luzran - In Combat - Cast 'Knock Away'");

-- Npc spawned in WDB :)