#include "../client.h"

void SetHideMe(Client *c, const Seperator *sep)
{
        const auto arguments = sep->argnum;
        if (arguments < 2) {
                c->Message(Chat::White, "Usage: #ignoreme [on|off]");
                return;
        }

        const bool ignoreme = Strings::ToBool(sep->arg[2]);

        c->SetIgnoreMe(ignoreme);

	if (ignoreme) {
            	c->Message(Chat::White, fmt::format("NPC aggro checks disabled.").c_str());
	} else {
		c->Message(Chat::White, fmt::format("NPC aggro checks enabled.").c_str());
	}
}

