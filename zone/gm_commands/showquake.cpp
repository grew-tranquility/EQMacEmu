#include "../client.h"

void command_showquake(Client *c, const Seperator *sep)
{
	if (!c)
		return;
	
	if (c->GuildID() == GUILD_NONE)
	{
		c->Message(Chat::White, "You must be part of a guild to use this command.");
		return;
	}

	int64 curTime = Timer::GetTimeSeconds();
	int64 nextQuakeTime = zone ? zone->cached_quake_struct.next_start_timestamp : 0;
	if (zone && zone->cached_quake_struct.quake_type == QuakeDisabled || zone && nextQuakeTime == 0 || zone && nextQuakeTime - curTime > 0)
	{
		//Load the next quake time
		database.LoadQuakeData(zone->cached_quake_struct);
	}

	if (nextQuakeTime - curTime > 0)
	{
		std::string time_str = "The next earthquake will begin in ";
		time_str += Strings::SecondsToTime(nextQuakeTime - curTime);
		time_str += "";
		c->Message(Chat::Yellow, time_str.c_str());
	}
}

