#include "Player.h"
#include "ScriptMgr.h"
#include "WorldSession.h"
#include "GameObject.h"
#include "ScriptedGossip.h"
#include "MapManager.h"
#include "SpellAuraEffects.h"


class PhasedDueling : public PlayerScript
{
public:
	PhasedDueling() : PlayerScript("PhasedDueling") { }

	void OnDuelStart(Player* firstplayer, Player* secondplayer)
	{
		Map* map = firstplayer->GetMap();
		uint32 usedPhases = 0; // Used phases
		Map::PlayerList const& players = map->GetPlayers();
		for (Map::PlayerList::const_iterator iter = players.begin(); iter != players.end(); ++iter)
		{
			Player* check = iter->getSource();
			if (!check || !check->GetSession())
				continue;
			usedPhases |= check->GetPhaseMask(); // Insert players phases to used phases...
			TC_LOG_INFO("server.worldserver", "void OnDuelStart(Player* firstplayer, Player* secondplayer)");
		}

		for (uint32 phase = 2; phase <= ULONG_MAX / 2; phase *= 2) // Loop all unique phases
		{
			if (usedPhases & phase) // If phase in use then...
				continue;

			firstplayer->SetPhaseMask(phase, true);
			secondplayer->SetPhaseMask(phase, true);
			if (GameObject* go = map->GetGameObject(ObjectGuid(firstplayer->GetUInt64Value(PLAYER_DUEL_ARBITER))))
				go->SetPhaseMask(phase, true);
			return;
		}

		// Could not phase duelers.. Cancel script
	}

	// Restore phases
	void OnDuelEnd(Player* firstplayer, Player* secondplayer, DuelCompleteType type)
	{
		firstplayer->SetPhaseMask(GetPhase(firstplayer), true);
		secondplayer->SetPhaseMask(GetPhase(secondplayer), true);
		TC_LOG_INFO("server.worldserver", "Restoring phases to dueling players.");
	}

	// Attempt in storing the player phase with spell phases included.
	uint32 GetPhase(Player* player) const
	{
		if (player->GetSession()->GetSecurity() >= 3)
			return uint32(PHASEMASK_ANYWHERE);

		// GetPhaseMaskForSpawn copypasta
		uint32 phase = PHASEMASK_NORMAL;
		Player::AuraEffectList const& phases = player->GetAuraEffectsByType(SPELL_AURA_PHASE);
		if (!phases.empty())
			phase = phases.front()->GetMiscValue();
		if (uint32 n_phase = phase & ~PHASEMASK_NORMAL)
			return n_phase;

		return PHASEMASK_NORMAL;
	}
};

void AddSC_PhasedDueling()
{
	new PhasedDueling;
}