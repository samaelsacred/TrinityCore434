/*
 * Copyright (C) 2008-2013 TrinityCore <http://www.trinitycore.org/>
 *
 * This program is free software; you can redistribute it and/or modify it
 * under the terms of the GNU General Public License as published by the
 * Free Software Foundation; either version 2 of the License, or (at your
 * option) any later version.
 *
 * This program is distributed in the hope that it will be useful, but WITHOUT
 * ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or
 * FITNESS FOR A PARTICULAR PURPOSE. See the GNU General Public License for
 * more details.
 *
 * You should have received a copy of the GNU General Public License along
 * with this program. If not, see <http://www.gnu.org/licenses/>.
 */

/* Script Data Start
SDName: Redridge Mountains
SD%Complete: 0
SDComment:
Script Data End */

#include "ScriptMgr.h"
#include "ScriptedCreature.h"
#include "ScriptedEscortAI.h"
#include "Player.h"
#include "Vehicle.h"

enum eAnimRedridgeCity
{
	NPC_DUMPY = 43249,
	NPC_BIG_EARL = 43248,
	NPC_MAGISTRATE_SOLOMON = 344,
	NPC_COLONEL_TROTEMAN_43221 = 43221,
	NPC_JOHN_J_KEESHAN_43184 = 43184,
	NPC_KRAKAUER_43434 = 43434,
	NPC_DANFORTH_43435 = 43435,
	NPC_CAT = 8963,
	NPC_AREA_TRIGGER_BUNNY = 47971,
	NPC_MESSNER_43270 = 43270,
	NPC_MESSNER_43300 = 43300,
	NPC_JORGENSEN_43272 = 43272,
	NPC_JORGENSEN_43305 = 43305,
	NPC_KRAKAUER_43274 = 43274,
	NPC_KRAKAUER_43303 = 43303,
	NPC_DANFORTH_43275 = 43275,
	NPC_DANFORTH_43302 = 43302,
	NPC_DANFORT_INVISIBLE_DUMMY = 43366,
	GO_CHAIN_LEVER = 204403,
	SPELL_DRINK_ALCOHOL = 58952,
	SPELL_APPLY_QUEST_INVIS_1 = 80895,
	SPELL_APPLY_QUEST_INVIS_2 = 80699,
	SPELL_APPLY_QUEST_INVIS_3 = 80815,
	SPELL_APPLY_QUEST_INVIS_4 = 80816,
	SPELL_APPLY_QUEST_INVIS_5 = 81003,
	SPELL_APPLY_QUEST_INVIS_9 = 81201,
	SPELL_APPLY_QUEST_INVIS_10 = 81240,
	SPELL_DETECT_QUEST_INVIS_1 = 80695,
	SPELL_DETECT_QUEST_INVIS_2 = 80696,
	SPELL_DETECT_QUEST_INVIS_3 = 80817,
	SPELL_DETECT_QUEST_INVIS_4 = 80818,
	SPELL_DETECT_QUEST_INVIS_5 = 81004,
	SPELL_DETECT_QUEST_INVIS_6 = 81010,
	SPELL_DETECT_QUEST_INVIS_7 = 81019,
	SPELL_DETECT_QUEST_INVIS_8 = 81080,
	SPELL_DETECT_QUEST_INVIS_9 = 81202,
	SPELL_DETECT_QUEST_INVIS_10 = 81241,
	SPELL_SUMMON_MESSNER = 80893,
	SPELL_SUMMON_JORGENSEN = 80940,
	SPELL_SUMMON_KRAKAUER = 80941,
	SPELL_SUMMON_DANFORTH = 80943,
	SPELL_CONCENTRATION_AURA = 79963,
	SPELL_SEAL_OF_RIGHTEOUSNESS = 79962,
	SPELL_MOLTEN_ARMOR = 79849,
	SPELL_REDRIDGE_TEAM_AURA = 80925,
	// SPELL_ZONE_RESTICTION = 132108, spell is from 548
	SPELL_GNOMECORDER = 80689,
	SPELL_FREEING_DANFORT = 80887,
	SPELL_BAKER_TEAM_BROADCAST = 81155,
	SPELL_CHAINS_OF_CRUELTY_1 = 81081,
	SPELL_CHAINS_OF_CRUELTY_2 = 81085,
	SPELL_KEESHANS_HEADBAND = 81234,
	QUEST_JOHN_J_KEESHAN = 26567,
	QUEST_THIS_AINT_MY_WAR = 26568,
	QUEST_TUNING_THE_GNOMECORDER = 26512,
	QUEST_BREAKING_OUT_IS_HARD_TO_DO = 26587,
	QUEST_JORGENSEN = 26560,
	QUEST_RETURN_OF_THE_BRAVO_COMPANY = 26563,
	QUEST_THEY_DREW_FIRST_BLOOD = 26607,
	QUEST_ITS_NEVER_OVER = 26616,
	AREA_CAMP_EVERSTILL = 5326,
};

enum eAnimBoot
{
	NPC_KEESHANS_RIVERBOAT_43450 = 43450,
	NPN_JOHN_J_KEESHAN_43449 = 43449,
	NPC_MESSNER_43448 = 43448,
	NPC_JORGENSEN_43447 = 43447,
	NPC_KRAKAUER_43446 = 43446,
	NPN_DANFORTH_43445 = 43445,
	NPN_JOHN_J_KEESHAN_43457 = 43457,
	NPC_MESSNER_43432 = 43432,
	NPC_JORGENSEN_43433 = 43433,
	// NPC_KRAKAUER_43434 = 43434,
	NPN_DANFORTH_43435 = 43435,
	SPELL_RIDE_VEHICLE_HARDCODED = 46598,
	SPELL_RIVERBOAT_TRIGGER_01 = 81257,
	SPELL_RIVERBOAT_TRIGGER_02 = 81258,
	SPELL_RIVERBOAT_TRIGGER_03 = 81263,
	SPELL_RIVERBOAT_TRIGGER_04 = 81254,
	SPELL_MESSNER_BOAT_ENGINE = 81260,
	SPELL_DETECT_QUEST_INVIS_11 = 81267,
	SPELL_DETECT_QUEST_INVIS_12 = 81497,
	SPELL_APPLY_QUEST_INVIS_11 = 81266,
	SPELL_APPLY_QUEST_INVIS_12 = 81496,
	SPELL_RIVERBOAT_QUEST_CREDIT = 81265,
};

void AddSC_redridge_mountains()
{
}
