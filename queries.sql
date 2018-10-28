/* Query to find item drop chances */
SELECT i.name, le.chance
FROM items i
INNER JOIN lootdrop_entries le ON i.id = le.item_id
WHERE i.name LIKE "Crude Defiant%";

/* Queries to set Defiant and similar item drop chances to 0 */
UPDATE lootdrop_entries le INNER JOIN items i ON le.item_id = i.id SET le.chance = 0 WHERE i.name LIKE "Crude Defiant%";
UPDATE lootdrop_entries le INNER JOIN items i ON le.item_id = i.id SET le.chance = 0 WHERE i.name LIKE "Simple Defiant%";
UPDATE lootdrop_entries le INNER JOIN items i ON le.item_id = i.id SET le.chance = 0 WHERE i.name LIKE "Rough Defiant%";
UPDATE lootdrop_entries le INNER JOIN items i ON le.item_id = i.id SET le.chance = 0 WHERE i.name LIKE "Ornate Defiant%";
UPDATE lootdrop_entries le INNER JOIN items i ON le.item_id = i.id SET le.chance = 0 WHERE i.name LIKE "Flawed Defiant%";
UPDATE lootdrop_entries le INNER JOIN items i ON le.item_id = i.id SET le.chance = 0 WHERE i.name LIKE "Intricate Defiant%";
UPDATE lootdrop_entries le INNER JOIN items i ON le.item_id = i.id SET le.chance = 0 WHERE i.name LIKE "Elaborate Defiant%";
UPDATE lootdrop_entries le INNER JOIN items i ON le.item_id = i.id SET le.chance = 0 WHERE i.name LIKE "Elegant Defiant%";
UPDATE lootdrop_entries le INNER JOIN items i ON le.item_id = i.id SET le.chance = 0 WHERE i.name LIKE "Crude Adept's%";
UPDATE lootdrop_entries le INNER JOIN items i ON le.item_id = i.id SET le.chance = 0 WHERE i.name LIKE "Simple Adept's%";
UPDATE lootdrop_entries le INNER JOIN items i ON le.item_id = i.id SET le.chance = 0 WHERE i.name LIKE "Rough Adept's%";
UPDATE lootdrop_entries le INNER JOIN items i ON le.item_id = i.id SET le.chance = 0 WHERE i.name LIKE "Ornate Adept's%";
UPDATE lootdrop_entries le INNER JOIN items i ON le.item_id = i.id SET le.chance = 0 WHERE i.name LIKE "Flawed Adept's%";
UPDATE lootdrop_entries le INNER JOIN items i ON le.item_id = i.id SET le.chance = 0 WHERE i.name LIKE "Intricate Adept's%";
UPDATE lootdrop_entries le INNER JOIN items i ON le.item_id = i.id SET le.chance = 0 WHERE i.name LIKE "Elaborate Adept's%";
UPDATE lootdrop_entries le INNER JOIN items i ON le.item_id = i.id SET le.chance = 0 WHERE i.name LIKE "Elegant Adept's%";
UPDATE lootdrop_entries le INNER JOIN items i ON le.item_id = i.id SET le.chance = 0 WHERE i.name LIKE "Crude Combatant's%";
UPDATE lootdrop_entries le INNER JOIN items i ON le.item_id = i.id SET le.chance = 0 WHERE i.name LIKE "Simple Combatant's%";
UPDATE lootdrop_entries le INNER JOIN items i ON le.item_id = i.id SET le.chance = 0 WHERE i.name LIKE "Rough Combatant's%";
UPDATE lootdrop_entries le INNER JOIN items i ON le.item_id = i.id SET le.chance = 0 WHERE i.name LIKE "Ornate Combatant's%";
UPDATE lootdrop_entries le INNER JOIN items i ON le.item_id = i.id SET le.chance = 0 WHERE i.name LIKE "Flawed Combatant's%";
UPDATE lootdrop_entries le INNER JOIN items i ON le.item_id = i.id SET le.chance = 0 WHERE i.name LIKE "Intricate Combatant's%";
UPDATE lootdrop_entries le INNER JOIN items i ON le.item_id = i.id SET le.chance = 0 WHERE i.name LIKE "Elaborate Combatant's%";
UPDATE lootdrop_entries le INNER JOIN items i ON le.item_id = i.id SET le.chance = 0 WHERE i.name LIKE "Elegant Combatant's%";
UPDATE global_loot SET enabled = 0;

/* Bump XP gains */
UPDATE rule_values SET rule_value = rule_value * 2 WHERE rule_name LIKE "%ExpMultiplier" AND ruleset_id = 1;
UPDATE rule_values SET rule_value = rule_value * 5 WHERE rule_name = "Character:AAExpMultiplier" AND ruleset_id = 1;

/* Display buffs and debuffs on target */
UPDATE rule_values SET rule_value = 'true' WHERE rule_name = "Spells:AlwaysSendTargetsBuffs" AND ruleset_id = 1;

/* Set MOTD */
UPDATE `variables` SET `value` = 'Welcome to EverQuestions. Things are a little different here.' WHERE varname = 'MOTD';

/* Fix zone point headings - WIP */
UPDATE zone_points SET target_heading = 182 WHERE zone = 'butcher' AND target_zone_id = 70;
UPDATE zone_points SET target_heading = 377 WHERE zone = 'cauldron' AND target_zone_id = 64;
UPDATE zone_points SET target_heading = 181 WHERE zone = 'dreadlands' AND target_zone_id = 84;
UPDATE zone_points SET target_heading = 191 WHERE zone = 'ecommons' AND target_zone_id = 9;
UPDATE zone_points SET target_heading = 253 WHERE zone = 'emeraldjungle' AND target_zone_id = 95;
UPDATE zone_points SET target_heading = 428 WHERE zone = 'firiona' AND target_zone_id = 86;
UPDATE zone_points SET target_heading = 63 WHERE zone = 'freportw' AND target_zone_id = 22;
UPDATE zone_points SET target_heading = 380 WHERE zone = 'greatdivide' AND target_zone_id = 112;
UPDATE zone_points SET target_heading = 150 WHERE zone = 'highpasshold' AND target_zone_id = 20;
UPDATE zone_points SET target_heading = 391 WHERE zone = 'innothule' AND target_zone_id = 35;
UPDATE zone_points SET target_heading = 383, target_y = -34.97, target_x = 33.2, target_z = 3.44 WHERE zone = 'innothule' AND target_zone_id = 65;
UPDATE zone_points SET target_heading = 399 WHERE zone = 'kithicor' AND target_zone_id = 19;
UPDATE zone_points SET target_heading = 415, target_y = -1343.53, target_x = 203.03, target_z = -106.98 WHERE zone = 'kithicor' AND target_zone_id = 407;
UPDATE zone_points SET target_heading = 511 WHERE zone = 'lfaydark' AND target_zone_id = 59;
UPDATE zone_points SET target_heading = 249 WHERE zone = 'mistmoore' AND target_zone_id = 57;
UPDATE zone_points SET target_heading = 106 WHERE zone = 'misty' AND target_zone_id = 11;
UPDATE zone_points SET target_heading = 504 WHERE zone = 'misty' AND target_zone_id = 19;
UPDATE zone_points SET target_heading = 269 WHERE zone = 'rivervale' AND target_zone_id = 20;
UPDATE zone_points SET target_heading = 231 WHERE zone = 'runnyeye' AND target_zone_id = 33;
UPDATE zone_points SET target_heading = 261 WHERE zone = 'skyfire' AND target_zone_id = 87;
UPDATE zone_points SET target_heading = 235 WHERE zone = 'sro' AND target_zone_id = 46;

/* Pick old starting zone Freeport */
/* Warriors to West Freeport */
UPDATE char_create_combinations ccc INNER JOIN zone z ON ccc.start_zone = z.zoneidnumber SET ccc.start_zone = 9 WHERE z.long_name LIKE "%Freeport" AND ccc.class = 1;
/* Non-Inny Clerics to North Freeport */
UPDATE char_create_combinations ccc INNER JOIN zone z ON ccc.start_zone = z.zoneidnumber SET ccc.start_zone = 8 WHERE z.long_name LIKE "%Freeport" AND ccc.class = 2 AND ccc.deity != 206;
/* Inny Clerics to East Freeport */
UPDATE char_create_combinations ccc INNER JOIN zone z ON ccc.start_zone = z.zoneidnumber SET ccc.start_zone = 10 WHERE z.long_name LIKE "%Freeport" AND ccc.class = 2 AND ccc.deity = 206;
/* Paladins to North Freeport */
UPDATE char_create_combinations ccc INNER JOIN zone z ON ccc.start_zone = z.zoneidnumber SET ccc.start_zone = 8 WHERE z.long_name LIKE "%Freeport" AND ccc.class = 3;
/* Shadow Knights to East Freeport */
UPDATE char_create_combinations ccc INNER JOIN zone z ON ccc.start_zone = z.zoneidnumber SET ccc.start_zone = 10 WHERE z.long_name LIKE "%Freeport" AND ccc.class = 5;
/* Monks to West Freeport */
UPDATE char_create_combinations ccc INNER JOIN zone z ON ccc.start_zone = z.zoneidnumber SET ccc.start_zone = 9 WHERE z.long_name LIKE "%Freeport" AND ccc.class = 7;
/* Bards to North Freeport */
UPDATE char_create_combinations ccc INNER JOIN zone z ON ccc.start_zone = z.zoneidnumber SET ccc.start_zone = 8 WHERE z.long_name LIKE "%Freeport" AND ccc.class = 8;
/* Rogues to East Freeport */
UPDATE char_create_combinations ccc INNER JOIN zone z ON ccc.start_zone = z.zoneidnumber SET ccc.start_zone = 10 WHERE z.long_name LIKE "%Freeport" AND ccc.class = 9;
/* Necromancers to East Freeport */
UPDATE char_create_combinations ccc INNER JOIN zone z ON ccc.start_zone = z.zoneidnumber SET ccc.start_zone = 10 WHERE z.long_name LIKE "%Freeport" AND ccc.class = 11;
/* Non-Inny Wizards to West Freeport */
UPDATE char_create_combinations ccc INNER JOIN zone z ON ccc.start_zone = z.zoneidnumber SET ccc.start_zone = 9 WHERE z.long_name LIKE "%Freeport" AND ccc.class = 12 AND ccc.deity != 206;
/* Inny Wizards to East Freeport */
UPDATE char_create_combinations ccc INNER JOIN zone z ON ccc.start_zone = z.zoneidnumber SET ccc.start_zone = 10 WHERE z.long_name LIKE "%Freeport" AND ccc.class = 12 AND ccc.deity = 206;
/* Non-Inny Magicians to West Freeport */
UPDATE char_create_combinations ccc INNER JOIN zone z ON ccc.start_zone = z.zoneidnumber SET ccc.start_zone = 9 WHERE z.long_name LIKE "%Freeport" AND ccc.class = 13 AND ccc.deity != 206;
/* Inny Magicians to East Freeport */
UPDATE char_create_combinations ccc INNER JOIN zone z ON ccc.start_zone = z.zoneidnumber SET ccc.start_zone = 10 WHERE z.long_name LIKE "%Freeport" AND ccc.class = 13 AND ccc.deity = 206;
/* Non-Inny Enchanters to West Freeport */
UPDATE char_create_combinations ccc INNER JOIN zone z ON ccc.start_zone = z.zoneidnumber SET ccc.start_zone = 9 WHERE z.long_name LIKE "%Freeport" AND ccc.class = 14 AND ccc.deity != 206;
/* Inny Enchanters to East Freeport */
UPDATE char_create_combinations ccc INNER JOIN zone z ON ccc.start_zone = z.zoneidnumber SET ccc.start_zone = 10 WHERE z.long_name LIKE "%Freeport" AND ccc.class = 14 AND ccc.deity = 206;

/* Fix port spells for old zones (for my client configuration, only Steamfont seems to be problematic) */
UPDATE spells_new SET teleport_zone = 'steamfont' WHERE teleport_zone = 'steamfontmts';

/* Disable Fabled spawns */
UPDATE spawnentry s INNER JOIN npc_types n ON s.npcID = n.id SET s.chance = 0 WHERE n.name LIKE "%Fabled%";
