------------------------------------------------------------
-- NPC Faction
------------------------------------------------------------
INSERT INTO npc_faction (
	id, 	
	name, 
	primaryfaction,	
	ignore_primary_assist
)
VALUES	(
	2000,	
	'OldDisciplesOfKerafyrm',	
	1526, 	
	0
)
ON DUPLICATE KEY UPDATE
    name                  = VALUES(name),
    primaryfaction        = VALUES(primaryfaction),
    ignore_primary_assist = VALUES(ignore_primary_assist);

------------------------------------------------------------
-- NPC Faction Entries
------------------------------------------------------------
INSERT INTO npc_faction_entries -- Ring of Scale -500
        (npc_faction_id, faction_id, value, npc_value, temp, sort_order)
VALUES  (2000,            304,       -500,   1,         0,    1)
ON DUPLICATE KEY UPDATE
        value      = VALUES(value),
        npc_value  = VALUES(npc_value),
        temp       = VALUES(temp),
        sort_order = VALUES(sort_order);

INSERT INTO npc_faction_entries -- Claws of Veeshan -500
        (npc_faction_id, faction_id, value, npc_value, temp, sort_order)
VALUES  (2000,            430,      -500,   1,         0,    2)
ON DUPLICATE KEY UPDATE
        value      = VALUES(value),
        npc_value  = VALUES(npc_value),
        temp       = VALUES(temp),
        sort_order = VALUES(sort_order);

INSERT INTO npc_faction_entries -- Old Disciples of Kerafyrm -2000
        (npc_faction_id, faction_id, value, npc_value, temp, sort_order)
VALUES  (2000,            1526,       -2000,   1,         0,    3)
ON DUPLICATE KEY UPDATE
        value      = VALUES(value),
        npc_value  = VALUES(npc_value),
        temp       = VALUES(temp),
        sort_order = VALUES(sort_order);

INSERT INTO npc_faction_entries -- Kromzek +500
        (npc_faction_id, faction_id, value, npc_value, temp, sort_order)i
VALUES  (2000,            448,       500,   0,         0,    4)
ON DUPLICATE KEY UPDATE
        value      = VALUES(value),
        npc_value  = VALUES(npc_value),
        temp       = VALUES(temp),
        sort_order = VALUES(sort_order);

------------------------------------------------------------
-- NPC Emotes
------------------------------------------------------------
INSERT INTO npc_emotes (id, emoteid, event_, type, text)
VALUES          (10010,   10010,    3,    1, "Our death is of no matter, soon our Master will return and cleanse this world, something our Mother failed to do.");

------------------------------------------------------------
-- NPC Types
------------------------------------------------------------
INSERT INTO npc_types (
    id, name, lastname, level, race, class, bodytype, hp, mana, gender,
    texture, helmtexture, size, hp_regen_rate, mana_regen_rate,
    loottable_id, merchant_id, npc_spells_id, npc_spells_effects_id,
    npc_faction_id, mindmg, maxdmg, attack_count, special_abilities,
    aggroradius, assistradius, face, luclin_hairstyle, luclin_haircolor,
    luclin_eyecolor, luclin_eyecolor2, luclin_beardcolor, luclin_beard,
    armortint_id, armortint_red, armortint_green, armortint_blue,
    d_melee_texture1, d_melee_texture2, prim_melee_type, sec_melee_type,
    ranged_type, runspeed, MR, CR, DR, FR, PR, see_invis, see_invis_undead,
    qglobal, AC, npc_aggro, spawn_limit, attack_delay,
    STR, STA, DEX, AGI, `_INT`, WIS, CHA,
    see_sneak, see_improved_hide, ATK, Accuracy, slow_mitigation,
    maxlevel, scalerate, private_corpse, unique_spawn_by_name, underwater,
    isquest, emoteid, spellscale, healscale, raid_target,
    chesttexture, armtexture, bracertexture, handtexture, legtexture,
    feettexture, light, walkspeed, combat_hp_regen, combat_mana_regen,
    aggro_pc, ignore_distance, encounter, ignore_despawn, avoidance,
    exp_pct, greed, engage_notice, stuck_behavior, flymode,
    loot_lockout, instance_spawn_timer_override, skip_global_loot, rare_spawn
)
VALUES (
    120126, 'Melalafen', '', 65, 49, 1, 26, 70000, 0, 2,
    0, 0, 6.0, 1049, 0,
    93173, 0, 25, 0,
    2000, 192, 504, -1,
    '1,1^5,1^6,1^12,1^13,1^14,1^15,1^16,1^17,1^21,1^23,1^26,1',
    75, 0, 0, 255, 255,
    255, 255, 255, 255,
    0, 0, 0, 0,
    0, 0, 28, 28,
    7, 1.5, 150, 58, 58, 1000, 58, 1, 1,
    0, 200, 0, 0, 25,
    212, 212, 212, 212, 212, 212, 212,
    0, 0, 0, 0, 0,
    0, 0, 0, 0, 0,
    1, 10010, 100.0, 100.0, 0,
    0, 0, 0, 0, 0,
    0, 0, 0.6, 30, 0,
    0, 1000.0, 0, 0, 0,
    100, 0, 0, 0, -1,
    0, 0, 0, 0
)
ON DUPLICATE KEY UPDATE
    name                        = VALUES(name),
    lastname                    = VALUES(lastname),
    level                       = VALUES(level),
    race                        = VALUES(race),
    class                       = VALUES(class),
    bodytype                    = VALUES(bodytype),
    hp                          = VALUES(hp),
    mana                        = VALUES(mana),
    gender                      = VALUES(gender),
    texture                     = VALUES(texture),
    helmtexture                 = VALUES(helmtexture),
    size                        = VALUES(size),
    hp_regen_rate               = VALUES(hp_regen_rate),
    mana_regen_rate             = VALUES(mana_regen_rate),
    loottable_id                = VALUES(loottable_id),
    merchant_id                 = VALUES(merchant_id),
    npc_spells_id               = VALUES(npc_spells_id),
    npc_spells_effects_id       = VALUES(npc_spells_effects_id),
    npc_faction_id              = VALUES(npc_faction_id),
    mindmg                      = VALUES(mindmg),
    maxdmg                      = VALUES(maxdmg),
    attack_count                = VALUES(attack_count),
    special_abilities           = VALUES(special_abilities),
    aggroradius                 = VALUES(aggroradius),
    assistradius                = VALUES(assistradius),
    face                        = VALUES(face),
    luclin_hairstyle            = VALUES(luclin_hairstyle),
    luclin_haircolor            = VALUES(luclin_haircolor),
    luclin_eyecolor             = VALUES(luclin_eyecolor),
    luclin_eyecolor2            = VALUES(luclin_eyecolor2),
    luclin_beardcolor           = VALUES(luclin_beardcolor),
    luclin_beard                = VALUES(luclin_beard),
    armortint_id                = VALUES(armortint_id),
    armortint_red               = VALUES(armortint_red),
    armortint_green             = VALUES(armortint_green),
    armortint_blue              = VALUES(armortint_blue),
    d_melee_texture1            = VALUES(d_melee_texture1),
    d_melee_texture2            = VALUES(d_melee_texture2),
    prim_melee_type             = VALUES(prim_melee_type),
    sec_melee_type              = VALUES(sec_melee_type),
    ranged_type                 = VALUES(ranged_type),
    runspeed                    = VALUES(runspeed),
    MR                          = VALUES(MR),
    CR                          = VALUES(CR),
    DR                          = VALUES(DR),
    FR                          = VALUES(FR),
    PR                          = VALUES(PR),
    see_invis                   = VALUES(see_invis),
    see_invis_undead            = VALUES(see_invis_undead),
    qglobal                     = VALUES(qglobal),
    AC                          = VALUES(AC),
    npc_aggro                   = VALUES(npc_aggro),
    spawn_limit                 = VALUES(spawn_limit),
    attack_delay                = VALUES(attack_delay),
    STR                         = VALUES(STR),
    STA                         = VALUES(STA),
    DEX                         = VALUES(DEX),
    AGI                         = VALUES(AGI),
    `_INT`                      = VALUES(`_INT`),
    WIS                         = VALUES(WIS),
    CHA                         = VALUES(CHA),
    see_sneak                   = VALUES(see_sneak),
    see_improved_hide           = VALUES(see_improved_hide),
    ATK                         = VALUES(ATK),
    Accuracy                    = VALUES(Accuracy),
    slow_mitigation             = VALUES(slow_mitigation),
    maxlevel                    = VALUES(maxlevel),
    scalerate                   = VALUES(scalerate),
    private_corpse              = VALUES(private_corpse),
    unique_spawn_by_name        = VALUES(unique_spawn_by_name),
    underwater                  = VALUES(underwater),
    isquest                     = VALUES(isquest),
    emoteid                     = VALUES(emoteid),
    spellscale                  = VALUES(spellscale),
    healscale                   = VALUES(healscale),
    raid_target                 = VALUES(raid_target),
    chesttexture                = VALUES(chesttexture),
    armtexture                  = VALUES(armtexture),
    bracertexture               = VALUES(bracertexture),
    handtexture                 = VALUES(handtexture),
    legtexture                  = VALUES(legtexture),
    feettexture                 = VALUES(feettexture),
    light                       = VALUES(light),
    walkspeed                   = VALUES(walkspeed),
    combat_hp_regen             = VALUES(combat_hp_regen),
    combat_mana_regen           = VALUES(combat_mana_regen),
    aggro_pc                    = VALUES(aggro_pc),
    ignore_distance             = VALUES(ignore_distance),
    encounter                   = VALUES(encounter),
    ignore_despawn              = VALUES(ignore_despawn),
    avoidance                   = VALUES(avoidance),
    exp_pct                     = VALUES(exp_pct),
    greed                       = VALUES(greed),
    engage_notice               = VALUES(engage_notice),
    stuck_behavior              = VALUES(stuck_behavior),
    flymode                     = VALUES(flymode),
    loot_lockout                = VALUES(loot_lockout),
    instance_spawn_timer_override = VALUES(instance_spawn_timer_override),
    skip_global_loot            = VALUES(skip_global_loot),
    rare_spawn                  = VALUES(rare_spawn);

START TRANSACTION;

------------------------------------------------------------
-- Grid (Western Wastes, grid 44)
------------------------------------------------------------
INSERT INTO grid (id, zoneid, type, type2)
VALUES          (44,   120,    0,    1)
ON DUPLICATE KEY UPDATE
        type  = VALUES(type),
        type2 = VALUES(type2);

------------------------------------------------------------
-- Grid Entries
------------------------------------------------------------
INSERT INTO grid_entries
        (gridid, zoneid, number,    x,        y,        z,
         heading, pause, centerpoint)
VALUES
        (44, 120,  1,  -319.05, -1966.69,  -24.69,  -1,   0, 0),
        (44, 120,  2,  1101.37, -2114.02,  -27.97,  -1,   0, 0),
        (44, 120,  3,  2651.10, -1919.98,   20.20,  -1,   0, 0),
        (44, 120,  4,  3931.63, -2107.15,  -74.73,  -1, 180, 0),
        (44, 120,  5,  4740.07, -1252.19,  -74.62,  -1, 180, 0),
        (44, 120,  6,  4058.16, -1017.08,  -35.70,  -1, 180, 0),
        (44, 120,  7,  4018.87, -1204.73,  -43.04,  -1,   0, 0),
        (44, 120,  8,  2254.23, -1503.68,  -27.99,  -1,   0, 0),
        (44, 120,  9,   987.69, -2089.05,  -27.54,  -1,   0, 0),
        (44, 120, 10, -4287.34, -1643.27,   44.18,  -1, 180, 0),
        (44, 120, 11, -3127.62,  -326.96,   -4.45,  -1,   0, 0),
        (44, 120, 12,  -910.79,  -437.64,  -27.38,  -1,   0, 0),
        (44, 120, 13,  -383.38, -1127.43,  -12.06,  -1,   0, 0)
ON DUPLICATE KEY UPDATE
        x           = VALUES(x),
        y           = VALUES(y),
        z           = VALUES(z),
        heading     = VALUES(heading),
        pause       = VALUES(pause),
        centerpoint = VALUES(centerpoint);

COMMIT;

------------------------------------------------------------
-- Spawn Entry
------------------------------------------------------------
INSERT INTO spawnentry
        (spawngroupID, npcID, chance, mintime, maxtime, 
	min_expansion, max_expansion, content_flags, content_flags_disabled)
VALUES 
	(120126, 120126, 100, 0, 0, -1, -1, NULL, NULL)
ON DUPLICATE KEY UPDATE
        chance 			= VALUES(chance),
        mintime			= VALUES(mintime),
        maxtime			= VALUES(maxtime),
        min_expansion		= VALUES(min_expansion),
	max_expansion		= VALUES(max_expansion),
	content_flags		= VALUES(content_flags),
	content_flags_disabled	= VALUES(content_flags_disabled);

------------------------------------------------------------
-- Spawn Group
------------------------------------------------------------
INSERT INTO spawngroup
	(id, name, spawn_limit, max_x, min_x, max_y, min_y, 
	delay, mindelay, despawn, despawn_timer, 
	rand_spawns, rand_respawntime, rand_variance, 
	rand_condition_, wp_spawns)
VALUES
	(120126, 'westwastes_Melalafen', 0, 0, 0, 0, 0, 
	0, 15000, 0, 100, 0, 1200, 0, 0, 0)
ON DUPLICATE KEY UPDATE
	name			= VALUES(name),
	spawn_limit		= VALUES(spawn_limit),
	max_x			= VALUES(max_x),
	min_x			= VALUES(min_x),
	max_y			= VALUES(max_y),
	min_y			= VALUES(min_y),
	delay			= VALUES(delay),
	mindelay		= VALUES(mindelay),
	despawn			= VALUES(despawn),
	despawn_timer		= VALUES(despawn_timer),
	rand_spawns		= VALUES(rand_spawns),
	rand_respawntime	= VALUES(rand_respawntime),
	rand_variance		= VALUES(rand_variance),
	rand_condition_		= VALUES(rand_condition_),
	wp_spawns		= VALUES(wp_spawns);

------------------------------------------------------------
-- Spawn2
------------------------------------------------------------
INSERT INTO spawn2
    (id, spawngroupID, zone, x, y, z, heading, respawntime, `variance`, pathgrid,
     `_condition`, cond_value, enabled, animation, boot_respawntime,
     clear_timer_onboot, boot_variance, force_z, min_expansion, max_expansion,
     raid_target_spawnpoint, content_flags, content_flags_disabled)
VALUES
    (120126, 120126, 'westwastes', -159, -692, -8, 183.569379,
     259200, 43200, 44, 0, 1, 1, 0, 0, 0, 0, 0, -1, -1, 0, NULL, NULL)
ON DUPLICATE KEY UPDATE
    spawngroupID            = VALUES(spawngroupID),
    zone                    = VALUES(zone),
    x                       = VALUES(x),
    y                       = VALUES(y),
    z                       = VALUES(z),
    heading                 = VALUES(heading),
    respawntime             = VALUES(respawntime),
    `variance`              = VALUES(`variance`),
    pathgrid                = VALUES(pathgrid),
    `_condition`            = VALUES(`_condition`),
    cond_value              = VALUES(cond_value),
    enabled                 = VALUES(enabled),
    animation               = VALUES(animation),
    boot_respawntime        = VALUES(boot_respawntime),
    clear_timer_onboot      = VALUES(clear_timer_onboot),
    boot_variance           = VALUES(boot_variance),
    force_z                 = VALUES(force_z),
    min_expansion           = VALUES(min_expansion),
    max_expansion           = VALUES(max_expansion),
    raid_target_spawnpoint  = VALUES(raid_target_spawnpoint),
    content_flags           = VALUES(content_flags),
    content_flags_disabled  = VALUES(content_flags_disabled);

------------------------------------------------------------
-- Prismatic Dragon Scale 10% chance 
-- from Sleeper's Golem Bosses
------------------------------------------------------------

START TRANSACTION;

INSERT INTO lootdrop
        (name, min_expansion, max_expansion,
         content_flags, content_flags_disabled)
VALUES  ('sleeper_golem_bosses_scale', -1, -1, NULL, NULL)
ON DUPLICATE KEY UPDATE
        id                      = LAST_INSERT_ID(id), -- necessary to update last insert id
        min_expansion           = VALUES(min_expansion),
        max_expansion           = VALUES(max_expansion),
        content_flags           = VALUES(content_flags),
        content_flags_disabled  = VALUES(content_flags_disabled);

SET @lootdrop_id := LAST_INSERT_ID();

INSERT INTO lootdrop_entries
        (lootdrop_id, item_id, item_charges, equip_item, chance,
         minlevel,  maxlevel,  multiplier, disabled_chance,
         min_expansion, max_expansion, min_looter_level,
         item_loot_lockout_timer, content_flags_disabled, content_flags)
VALUES  (@lootdrop_id, 27329, 1, 0, 100,
         0, 127, 1, 0,
         -1, -1, 0,
         0, NULL, NULL)
ON DUPLICATE KEY UPDATE
        item_charges            = VALUES(item_charges),
        equip_item              = VALUES(equip_item),
        chance                  = VALUES(chance),
        minlevel                = VALUES(minlevel),
        maxlevel                = VALUES(maxlevel),
        multiplier              = VALUES(multiplier),
        disabled_chance         = VALUES(disabled_chance),
        min_expansion           = VALUES(min_expansion),
        max_expansion           = VALUES(max_expansion),
        min_looter_level        = VALUES(min_looter_level),
        item_loot_lockout_timer = VALUES(item_loot_lockout_timer),
        content_flags_disabled  = VALUES(content_flags_disabled),
        content_flags           = VALUES(content_flags);

INSERT INTO loottable_entries
        (loottable_id, lootdrop_id, multiplier, probability,
         droplimit, mindrop, multiplier_min)
VALUES  (91097,            -- Sleeper golem bosses
         @lootdrop_id, 1, 10, 1, 1, 0)
ON DUPLICATE KEY UPDATE
        multiplier     = VALUES(multiplier),
        probability    = VALUES(probability),
        droplimit      = VALUES(droplimit),
        mindrop        = VALUES(mindrop),
        multiplier_min = VALUES(multiplier_min);

COMMIT;

