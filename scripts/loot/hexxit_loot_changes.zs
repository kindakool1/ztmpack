#priority 1

import loottweaker.LootTweaker;
import loottweaker.vanilla.loot.LootTable;
import loottweaker.vanilla.loot.LootPool;
import loottweaker.vanilla.loot.Functions;
import loottweaker.vanilla.loot.Conditions;

// Improve drops from cows
LootTweaker.getTable("minecraft:entities/cow").getPool("main").setRolls(2, 2);

// Remove old Bird's Nests loot
LootTweaker.getTable("birdsnests:nest_loot").removePool("nest_loot");

// Remove excessive Elementary Staffs loot
LootTweaker.getTable("cqrepoured:chests/food").removePool("loot");
LootTweaker.getTable("cqrepoured:chests/equipment").removePool("loot");
LootTweaker.getTable("cqrepoured:chests/clutter").removePool("loot");
LootTweaker.getTable("quark:chests/pirate_chest").removePool("loot");
LootTweaker.getTable("mod_lavacow:chests/cemetery_chest").removePool("loot");
LootTweaker.getTable("mod_lavacow:chests/desert_tomb_chest").removePool("loot");

// Remove excessive Growthcraft hops loot
LootTweaker.getTable("minecraft:chests/simple_dungeon").removePool("growthcraft_hops:loot_table_simple_dungeon");
LootTweaker.getTable("minecraft:chests/abandoned_mineshaft").removePool("growthcraft_hops:loot_table_simple_dungeon");

// Remove disabled items from loot
LootTweaker.getTable("mod_lavacow:chests/cemetery_chest").getPool("main").removeEntry("mod_lavacow:parasite_item");
LootTweaker.getTable("mod_lavacow:chests/desert_tomb_chest").getPool("main").removeEntry("mod_lavacow:parasite_item");
LootTweaker.getTable("mod_lavacow:entities/bosses/skeleton_king").getPool("rare").removeEntry("mod_lavacow:piranhalauncher");

// Add (Stained) King's Crown to Desert Pyramid loottable
LootTweaker.getTable("minecraft:chests/desert_pyramid").getPool("thp3").addItemEntry(<mod_lavacow:kings_crown:0>, 40, 1, [Functions.setCount(1, 1)], []);

// Add Filch Lizard loot
val filchLizardSpawnPool = LootTweaker.getTable("mocreatures:entities/filch_lizard/filch_lizard_spawn").getPool("filchlizard_spawnitem");
filchLizardSpawnPool.addItemEntry(<birdsnests:birdsnest>, 4, "birdsnests:birdsnest");
filchLizardSpawnPool.addItemEntry(<hexxitworld:material:1>, 3, "hexxitworld:material:1");
filchLizardSpawnPool.addItemEntry(<combustfish:bone_fish>, 2, "combustfish:bone_fish");
filchLizardSpawnPool.addItemEntry(<hexxitworld:mystic_seed>, 1, "hexxitworld:mystic_seed");
filchLizardSpawnPool.addItemEntry(<hexxitgear:refresher_shard>, 1, "hexxitgear:refresher_shard");
filchLizardSpawnPool.addItemEntry(<hexxitworld:material:2>, 1, "hexxitworld:material:2");
filchLizardSpawnPool.addItemEntry(<cqrepoured:feather_golden>, 1, "cqrepoured:feather_golden");
filchLizardSpawnPool.addItemEntry(<mod_lavacow:tooth_dagger>, 1, "mod_lavacow:tooth_dagger");
val filchLizardStealTable = LootTweaker.getTable("mocreatures:entities/filch_lizard/filch_lizard_steal");
filchLizardStealTable.addPool("hexxit1", 1, 1, 0, 0).addItemEntry(<birdsnests:birdsnest>, 1, "birdsnests:birdsnest");
filchLizardStealTable.addPool("hexxit2", 1, 1, 0, 0).addItemEntry(<hexxitworld:material:1>, 1, "hexxitworld:material:1");
filchLizardStealTable.addPool("hexxit3", 1, 1, 0, 0).addItemEntry(<hexxitgear:hexbiscus>, 1, "hexxitgear:hexbiscus");
filchLizardStealTable.addPool("hexxit4", 1, 1, 0, 0).addItemEntry(<combustfish:bone_fish>, 2, "combustfish:bone_fish");
filchLizardStealTable.addPool("hexxit5", 1, 1, 0, 0).addItemEntry(<nyx:fallen_star>, 1, "nyx:fallen_star");
filchLizardStealTable.addPool("hexxit6", 1, 1, 0, 0).addItemEntry(<hexxitworld:mystic_seed>, 1, "hexxitworld:mystic_seed");
filchLizardStealTable.addPool("hexxit7", 1, 1, 0, 0).addItemEntry(<hexxitgear:refresher_shard>, 1, "hexxitgear:refresher_shard");
filchLizardStealTable.addPool("hexxit8", 1, 1, 0, 0).addItemEntry(<hexxitworld:material:2>, 1, "hexxitworld:material:2");
filchLizardStealTable.addPool("hexxit9", 1, 1, 0, 0).addItemEntry(<cqrepoured:feather_golden>, 1, "cqrepoured:feather_golden");
filchLizardStealTable.addPool("hexxit10", 1, 1, 0, 0).addItemEntry(<mod_lavacow:tooth_dagger>, 1, "mod_lavacow:tooth_dagger");
filchLizardStealTable.addPool("hexxit11", 1, 1, 0, 0).addItemEntry(<hexxitgear:hexical_essence>, 1, "hexxitgear:hexical_essence");
filchLizardStealTable.addPool("hexxit12", 1, 1, 0, 0).addItemEntry(<tconstruct:materials:16>, 1, "tconstruct:materials:16");
filchLizardStealTable.addPool("hexxit13", 1, 1, 0, 0).addItemEntry(<tconstruct:materials:9>, 1, "tconstruct:materials:9");
filchLizardStealTable.addPool("hexxit14", 1, 1, 0, 0).addItemEntry(<minecraft:golden_apple>, 1, "minecraft:golden_apple");
filchLizardStealTable.addPool("hexxit15", 1, 1, 0, 0).addItemEntry(<minecraft:golden_apple:1>, 1, "minecraft:golden_apple:1");
filchLizardStealTable.addPool("hexxit16", 1, 1, 0, 0).addItemEntry(<xreliquary:holy_hand_grenade>, 1, "xreliquary:holy_hand_grenade");

// Replace mob drops with ore dictionary item
val ghostPool = LootTweaker.getTable("ancientbeasts:entities/ghost").getPool("ancientbeasts:Ghost");
ghostPool.removeEntry("ancientbeasts:ectoplasm");
ghostPool.addItemEntry(<mod_lavacow:ectoplasm>, 1, 0, [Functions.setCount(0, 2), Functions.lootingEnchantBonus(0, 3, 5)], []);
val vesselPool = LootTweaker.getTable("ancientbeasts:entities/vessel").getPool("ancientbeasts:Vessel2");
vesselPool.removeEntry("ancientbeasts:ectoplasm");
vesselPool.addItemEntry(<mod_lavacow:ectoplasm>, 1, 0, [Functions.setCount(0, 2), Functions.lootingEnchantBonus(0, 3, 5)], []);

// Remove loot from disabled mobs so it doesn't show up (thanks to JER support)
LootTweaker.getTable("mod_lavacow:entities/weta").removePool("chitin");
LootTweaker.getTable("mod_lavacow:entities/pingu").removePool("feather");
LootTweaker.getTable("mod_lavacow:entities/piranha").removePool("tooth");
LootTweaker.getTable("mod_lavacow:entities/swarmer").removePool("tooth");
LootTweaker.getTable("mod_lavacow:entities/undead_swine").removePool("tooth");
LootTweaker.getTable("mod_lavacow:entities/mycosis").removePool("hyphae");
LootTweaker.getTable("mod_lavacow:entities/boneworm").removePool("crown");
LootTweaker.getTable("mod_lavacow:entities/boneworm_nether").removePool("crown");