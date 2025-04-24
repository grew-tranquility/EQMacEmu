#include "../client.h"

void command_level60(Client *c, const Seperator *sep)
{
	if (c->GetLevel() < 60)
	{
		c->SetLevel(60, true);
		c->MaxSkills();
		c->Message(Chat::White, "Your skills are now maxed.");
	}
	else
	{
		c->Message(Chat::White, "You are already level 60.");
	}

	uint32 currentXP = c->GetEXP();
	uint32 currentaaXP = c->GetAAXP();

	float percent = 1.0f;
	uint32 requiredxp = c->GetEXPForLevel(c->GetLevel() + 1) - c->GetEXPForLevel(c->GetLevel());
	float final_ = requiredxp * percent;
	uint32 newxp = (uint32)final_ + currentXP;
	c->SetEXP(newxp, currentaaXP);
}
