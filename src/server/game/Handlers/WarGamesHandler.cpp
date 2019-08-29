#include "Common.h"
#include "ObjectAccessor.h"
#include "ObjectMgr.h"
#include "WorldPacket.h"
#include "WorldSession.h"
#include "Object.h"

#include "Battlefield.h"
#include "BattlefieldMgr.h"
#include "Opcodes.h"
#include "Player.h"

void WorldSession::HandleWarGameCommentatorStart(WorldPacket& recvData)
{
	WorldPacket data(CMSG_COMMENTATOR_START_WARGAME);
}

void WorldSession::HandleWarGameAccept(WorldPacket& recvData)
{
	WorldPacket data(CMSG_WARGAME_ACCEPT);
}

void WorldSession::HandleWarGameStart(WorldPacket& recvData)
{
	uint8 t1;
    uint8 t2;
    uint8 t3;
    uint8 t4;
    uint8 t5;
    uint8 selectedbg;
    uint8 t7;
    uint8 t8;
 
    recvData >> t1;
    recvData >> t2;
    recvData >> t3;
    recvData >> t4;
    recvData >> t5;
    recvData >> selectedbg;
    recvData >> t7;
    recvData >> t8;
    BattlegroundTypeId bgtypeid;
 
    switch (selectedbg)
    {
    case 4:
        bgtypeid = BATTLEGROUND_BE; // Blade Edge Arena
        break;
    case 5:
        bgtypeid = BATTLEGROUND_NA; // Nagrand Arena
        break;
    case 7:
        bgtypeid = BATTLEGROUND_AA; // All arena's
        break;
    case 9:
        bgtypeid = BATTLEGROUND_RL; // Ruins of Lordaeron
        break;
    case 11:
        bgtypeid = BATTLEGROUND_DS; // Dalaran Sewers
        break;
    case 10:
		// Ring of Valor = bugged LoS       bgtypeid = BATTLEGROUND_RV;  
        break;
    default:
        return;
	}
}

void WorldSession::HandleWarGameCheckEntry(uint64 )
{
    WorldPacket response(SMSG_WARGAME_REQUEST_SENT);
    uint8 byteMask[] = { 6, 0, 3, 5, 2, 1, 4, 7 };
    uint8 byteBytes[] = { 5, 6, 3, 0, 7, 4, 2, 1 };
    response.WriteGuidMask(/*battlegroundGuid*/0, byteMask, 8);
    response.WriteGuidBytes(/*battlegroundGuid*/0, byteBytes, 8, 0);

    //leaderChallenger->GetSession()->SendPacket(&response);
}

void WorldSession::HandleWarGameRequestSent(uint64 )
{
	WorldPacket data(SMSG_WARGAME_REQUEST_SENT);
}
