#priority 2

import loottweaker.LootTweaker;
import loottweaker.vanilla.loot.LootTable;

// Create custom minecraft namespace loot tables for mods that use config files
scripts.loot.hexxit_loot.populate(LootTweaker.newTable("thp_loot_common"), 1, true, false);
scripts.loot.hexxit_loot.populate(LootTweaker.newTable("thp_loot_uncommon"), 2, true, false);
scripts.loot.hexxit_loot.populate(LootTweaker.newTable("thp_loot_rare"), 3, true, false);

// Populate vanilla loot tables
scripts.loot.hexxit_loot.populate(LootTweaker.getTable("minecraft:chests/simple_dungeon"), 2, false, false);
scripts.loot.hexxit_loot.populate(LootTweaker.getTable("minecraft:chests/abandoned_mineshaft"), 1, false, false);
scripts.loot.hexxit_loot.populate(LootTweaker.getTable("minecraft:chests/jungle_temple"), 2, false, false);
scripts.loot.hexxit_loot.populate(LootTweaker.getTable("minecraft:chests/desert_pyramid"), 2, false, false);
scripts.loot.hexxit_loot.populate(LootTweaker.getTable("minecraft:chests/village_blacksmith"), 2, false, false);
scripts.loot.hexxit_loot.populate(LootTweaker.getTable("minecraft:chests/end_city_treasure"), 3, false, false);
scripts.loot.hexxit_loot.populate(LootTweaker.getTable("minecraft:chests/stronghold_library"), 2, false, false);
scripts.loot.hexxit_loot.populate(LootTweaker.getTable("minecraft:chests/stronghold_crossing"), 1, false, false);
scripts.loot.hexxit_loot.populate(LootTweaker.getTable("minecraft:chests/stronghold_corridor"), 1, false, false);
scripts.loot.hexxit_loot.populate(LootTweaker.getTable("minecraft:chests/woodland_mansion"), 3, false, false);
scripts.loot.hexxit_loot.populate(LootTweaker.getTable("minecraft:chests/nether_bridge"), 2, false, false);
scripts.loot.hexxit_loot.populate(LootTweaker.getTable("minecraft:chests/igloo_chest"), 2, false, false);

// Populate modded loot tables
scripts.loot.hexxit_loot.populate(LootTweaker.getTable("birdsnests:nest_loot"), 1, true, true);
scripts.loot.hexxit_loot.populate(LootTweaker.getTable("quark:chests/pirate_chest"), 2, false, false);
scripts.loot.hexxit_loot.populate(LootTweaker.getTable("mod_lavacow:chests/cemetery_chest"), 2, false, false);
scripts.loot.hexxit_loot.populate(LootTweaker.getTable("mod_lavacow:chests/desert_tomb_chest"), 2, false, false);
scripts.loot.hexxit_loot.populate(LootTweaker.getTable("mimicfish:entities/lunkertooth"), 2, false, false);
scripts.loot.hexxit_loot.populate(LootTweaker.getTable("mimicfish:structures/lunkertooth_ruins"), 2, false, false);
scripts.loot.hexxit_loot.populate(LootTweaker.getTable("ancientbeasts:structures/circus"), 2, false, false);