#include "ScriptPCH.h"


enum ForbiddenAreas
{
	AREA_GM_ISLAND = 876,   // GM Island
};

class map_security : public PlayerScript
{
public:
	map_security() : PlayerScript("map_security") {}

	void OnUpdateZone(Player* pPlayer, uint32 newZone, uint32 newArea)
	{
		// Forbidden areas:
		switch (pPlayer->GetAreaId())
		{
		case AREA_GM_ISLAND:
		{
			if (pPlayer->GetSession()->GetSecurity() >= 1)
				return;

			pPlayer->TeleportTo(530, 4119, 2930, 354, 1.6f); // Teleports Player to .gps coords
			pPlayer->GetSession()->SendAreaTriggerMessage("You are not authorised to enter this area.");
		}
		break;
		}
	}
};


void AddSC_Security_Scripts()
{
	new map_security();
}