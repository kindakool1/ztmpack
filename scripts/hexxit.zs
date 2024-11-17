#priority 10

import crafttweaker.oredict.IOreDict;
import crafttweaker.oredict.IOreDictEntry;
import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemStack;

// Craftable (full) Akashic Tome
var startingTome = <akashictome:tome>.withTag(
	{"akashictome:data": {
		chococraftplus: {id: "chococraftplus:chocopedia", Count: 1 as byte, tag: {"akashictome:definedMod": "chococraftplus"}, Damage: 0 as short}, 
		conarm: {id: "conarm:book", Count: 1 as byte, tag: {"akashictome:definedMod": "conarm"}, Damage: 0 as short}, 
		openblocks: {id: "openblocks:info_book", Count: 1 as byte, tag: {"akashictome:definedMod": "openblocks"}, Damage: 0 as short},
		tconstruct: {id: "tconstruct:book", Count: 1 as byte, tag: {"akashictome:definedMod": "tconstruct"}, Damage: 0 as short}, 
		thermalfoundation: {id: "thermalfoundation:tome_lexicon", Count: 1 as byte, tag: {"akashictome:definedMod": "thermalfoundation"}, Damage: 0 as short}, 
		twilightforest: {id: "patchouli:guide_book", Count: 1 as byte, tag: {"akashictome:definedMod": "twilightforest", "patchouli:book": "twilightforest:guide"}, Damage: 0 as short}}});

startingTome.addTooltip(format.lightPurple("All guides included"));
mods.jei.JEI.addItem(startingTome);
recipes.addShapeless(startingTome, [<hexxitgear:hexical_essence>, oreDict.bookshelf]);

// Craftable Patchouli book
var startingBook = <patchouli:guide_book>.withTag({"patchouli:book": "patchouli:hexxit2-book"});
recipes.addShapeless(startingBook, [<hexxitgear:hexical_essence>, <minecraft:book>]);

// Removed duplicate, unnecessary or purposefully disabled recipes
recipes.removeByRecipeName("tinkersaddons:amelioration_kit");
recipes.removeByRecipeName("tinkersaddons:iron_toolkit");
recipes.removeByRecipeName("tinkersaddons:gold_toolkit");
recipes.removeByRecipeName("tinkersaddons:ender_toolkit");
recipes.removeByRecipeName("twilightforest:patchouli_logbook");
recipes.removeByRecipeName("akashictome:tome");
recipes.removeByRecipeName("dimdoors:rift_remover");
recipes.removeByRecipeName("dimdoors:rift_signature");
recipes.removeByRecipeName("dimdoors:woven_world_thread_helmet");
recipes.removeByRecipeName("dimdoors:woven_world_thread_chestplate");
recipes.removeByRecipeName("dimdoors:woven_world_thread_leggings");
recipes.removeByRecipeName("dimdoors:woven_world_thread_boots");
recipes.removeByRecipeName("secretroomsmod:ghost_block_rottenflesh");
recipes.removeByRecipeName("secretroomsmod:secret_stairs_rottenflesh");
recipes.removeByRecipeName("secretroomsmod:secret_lever_rottenflesh");
recipes.removeByRecipeName("secretroomsmod:secret_redstone_rottenflesh");
recipes.removeByRecipeName("secretroomsmod:secret_wooden_button_rottenflesh");
recipes.removeByRecipeName("secretroomsmod:secret_stone_button_rottenflesh");
recipes.removeByRecipeName("secretroomsmod:secret_pressure_plate_rottenflesh");
recipes.removeByRecipeName("secretroomsmod:secret_light_pressure_plate_rottenflesh");
recipes.removeByRecipeName("secretroomsmod:secret_heavy_pressure_plate_rottenflesh");
recipes.removeByRecipeName("secretroomsmod:secret_player_pressure_plate_rottenflesh");
recipes.removeByRecipeName("secretroomsmod:solid_air_w_br");
recipes.removeByRecipeName("secretroomsmod:solid_air_w_bp");
recipes.removeByRecipeName("secretroomsmod:secret_chest_rottenflesh");
recipes.removeByRecipeName("secretroomsmod:secret_dispenser_rottenflesh");
recipes.removeByRecipeName("secretroomsmod:secret_trapped_chest_rottenflesh");
recipes.removeByRecipeName("secretroomsmod:secret_light_detector_rottenflesh");
recipes.removeByRecipeName("secretroomsmod:camo_paste_sand");
recipes.removeByRecipeName("secretroomsmod:camo_paste_dirt");
recipes.removeByRecipeName("minecraft:stone_sword");
recipes.removeByRecipeName("minecraft:stone_shovel");
recipes.removeByRecipeName("minecraft:stone_pickaxe");
recipes.removeByRecipeName("minecraft:stone_axe");
recipes.removeByRecipeName("minecraft:stone_hoe");
recipes.removeByRecipeName("betterbuilderswands:recipewandunbreakable");
recipes.removeByRecipeName("betterbuilderswands:wandunbreakable13");
recipes.removeByRecipeName("betterbuilderswands:wandunbreakable14");
recipes.removeByRecipeName("translocators:diamond_nugget");
recipes.removeByRecipeName("translocators:diamond_nugget_un");
recipes.removeByRecipeName("quark:hopper");
recipes.removeByRecipeName("minecraft:gold_ingot_from_block");
recipes.removeByRecipeName("minecraft:iron_ingot_from_block");
recipes.removeByRecipeName("minecraft:diamond");
recipes.removeByRecipeName("minecraft:emerald");
recipes.removeByRecipeName("minecraft:coal");
recipes.removeByRecipeName("minecraft:redstone");
recipes.removeByRecipeName("chisel:uncraft_blockcobalt");
recipes.removeByRecipeName("chisel:charcoal");
recipes.removeByRecipeName("chisel:charcoal_uncraft");
recipes.removeByRecipeName("quark:charcoal_block");
recipes.removeByRecipeName("growthcraft_apples:stick");
recipes.removeByRecipeName("mod_lavacow:sausage_roll");
recipes.removeByRecipeName("mod_lavacow:holy_grenade");
recipes.removeByRecipeName("mod_lavacow:piranhalauncher");
recipes.removeByRecipeName("mod_lavacow:bonestew");
recipes.removeByRecipeName("mod_lavacow:weta_hoe");
recipes.removeByRecipeName("thermalfoundation:material_6");

// Remove duplicate recipes due to Quark
recipes.removeByRecipeName("minecraft:orange_wool");
recipes.removeByRecipeName("minecraft:magenta_wool");
recipes.removeByRecipeName("minecraft:light_blue_wool");
recipes.removeByRecipeName("minecraft:yellow_wool");
recipes.removeByRecipeName("minecraft:lime_wool");
recipes.removeByRecipeName("minecraft:pink_wool");
recipes.removeByRecipeName("minecraft:gray_wool");
recipes.removeByRecipeName("minecraft:light_gray_wool");
recipes.removeByRecipeName("minecraft:cyan_wool");
recipes.removeByRecipeName("minecraft:purple_wool");
recipes.removeByRecipeName("minecraft:blue_wool");
recipes.removeByRecipeName("minecraft:brown_wool");
recipes.removeByRecipeName("minecraft:green_wool");
recipes.removeByRecipeName("minecraft:red_wool");
recipes.removeByRecipeName("minecraft:black_wool");
recipes.removeByRecipeName("minecraft:purple_shulker_box");

// Remove brewing recipe duplicate
brewing.removeRecipe(<minecraft:potion>.withTag({Potion: "minecraft:awkward"}), <ancientbeasts:ectoplasm>);
brewing.removeRecipe(<minecraft:splash_potion>.withTag({Potion: "minecraft:awkward"}), <ancientbeasts:ectoplasm>);
brewing.removeRecipe(<minecraft:lingering_potion>.withTag({Potion: "minecraft:awkward"}), <ancientbeasts:ectoplasm>);

// Vanilla Bookshelf compact with Chisel/Quark
<minecraft:bookshelf>.displayName = "Oak Bookshelf";
recipes.remove(<minecraft:bookshelf>);
recipes.addShaped(<minecraft:bookshelf>,
										[[<minecraft:oak_stairs>, null, <minecraft:oak_stairs>],
										[<minecraft:book>, <minecraft:book>, <minecraft:book>],
										[<minecraft:oak_stairs>, null, <minecraft:oak_stairs>]]);

// Modify Bound Leather recipe
recipes.remove(<backpack:bound_leather>);
recipes.addShaped(<backpack:bound_leather>,
											[[null, <minecraft:string>, null],
											[<minecraft:leather>, <minecraft:string>, <minecraft:leather>],
											[null, <minecraft:string>, null]]);
											
// Modify Mega Torch recipe
recipes.remove(<torchmaster:mega_torch>);
recipes.addShaped(<torchmaster:mega_torch>,
											[[<minecraft:torch>, <minecraft:torch>, <minecraft:torch>],
											[<minecraft:diamond_block>, oreDict.logWood, <minecraft:diamond_block>],
											[<minecraft:gold_block>, oreDict.logWood, <minecraft:gold_block>]]);

// Add JEI item descriptions
mods.jei.JEI.addDescription(<cqrepoured:scale_turtle>, "Can be used for repairing, and trading in some Taverns");
mods.jei.JEI.addDescription(<cqrepoured:leather_bull>, "Can be used for repairing, and trading in some Taverns");
mods.jei.JEI.addDescription(<cqrepoured:ball_slime>, "Can be used for repairing, and trading in some Taverns");
mods.jei.JEI.addDescription(<cqrepoured:leather_spider>, "Can be used for repairing, and trading in some Taverns");
mods.jei.JEI.addDescription(<cqrepoured:king_crown>, "Can be attached to helmets");
mods.jei.JEI.addDescription(<cqrepoured:magic_bell>, "Sold by a strange looking Enderman found in some Taverns");

// Rename Builder's Wands
<betterbuilderswands:wandstone>.displayName = "Stone Builder's Wand";
<betterbuilderswands:wandiron>.displayName = "Iron Builder's Wand";
<betterbuilderswands:wanddiamond>.displayName = "Diamond Builder's Wand";

// Fix broken names
<pvj:juniper_pressure_plate>.displayName = "Juniper Pressure Plate";
<pvj:cherry_blossom_pressure_plate>.displayName = "Cherry Blossom Pressure Plate";
<pvj:jacaranda_pressure_plate>.displayName = "Jacaranda Pressure Plate";
<pvj:ice_formation>.displayName = "Ice Formation";
<growthcraft_cellar:cork_sapling>.displayName = "Cork Sapling";

// For new players
recipes.addShapeless(<hexxitgear:hexical_essence>, [<hexxitgear:hexbiscus>]);

// Add Cyclops Eye info
mods.jei.JEI.addDescription(<cyclopstek:cyclops_eye>, "The cyclops lives on a small, remote island in the middle of the ocean");

// Modify Cloud Boots recipe
recipes.remove(<cqrepoured:boots_cloud>);
recipes.addShaped(<cqrepoured:boots_cloud>,
											[[null, null, null],
											[<cqrepoured:feather_golden>, <hexxitgear:hexical_diamond>, <cqrepoured:feather_golden>],
											[<minecraft:diamond>, null, <minecraft:diamond>]]);
											
// Add Lunar Water info
mods.jei.JEI.addDescription(<nyx:lunar_water_bottle>, "If you fill a cauldron with water and let it sit exposed to the night sky for a certain time, it will eventually bubble with white particles. Throw in a Lapis Lazuli and see what happens...");
											
// Add CQR bullet recipes
recipes.addShapeless(<cqrepoured:bullet_iron> * 4, [<minecraft:iron_nugget>, <minecraft:iron_nugget>, <minecraft:iron_nugget>, <minecraft:iron_nugget>]);
recipes.addShapeless(<cqrepoured:bullet_gold> * 4, [<minecraft:gold_nugget>, <minecraft:gold_nugget>, <minecraft:gold_nugget>, <minecraft:gold_nugget>]);
recipes.addShapeless(<cqrepoured:bullet_diamond> * 4, [<thermalfoundation:material:16>, <thermalfoundation:material:16>, <thermalfoundation:material:16>, <thermalfoundation:material:16>]);
recipes.addShaped(<cqrepoured:bullet_fire> * 8,
											[[<cqrepoured:bullet_diamond>, <cqrepoured:bullet_diamond>, <cqrepoured:bullet_diamond>],
											[<cqrepoured:bullet_diamond>, <minecraft:blaze_powder>, <cqrepoured:bullet_diamond>],
											[<cqrepoured:bullet_diamond>, <cqrepoured:bullet_diamond>, <cqrepoured:bullet_diamond>]]);
											
// Modify Golden Feather recipe
recipes.remove(<cqrepoured:feather_golden>);
recipes.addShaped(<cqrepoured:feather_golden>,
											[[<minecraft:gold_ingot>, <minecraft:gold_ingot>, <minecraft:gold_ingot>],
											[<minecraft:gold_ingot>, <minecraft:feather>, <minecraft:gold_ingot>],
											[<minecraft:gold_ingot>, <minecraft:gold_ingot>, <minecraft:gold_ingot>]]);
											
// Modify Hexical Diamond recipe
recipes.remove(<hexxitgear:hexical_diamond>);
recipes.addShaped(<hexxitgear:hexical_diamond>,
											[[null, <nyx:fallen_star>, null],
											[<hexxitgear:hexical_essence>, <minecraft:diamond>, <hexxitgear:hexical_essence>],
											[null, <hexxitgear:hexical_essence>, null]]);

// Fix Asgard Shield Reloaded ore dictionary compatibility
recipes.remove(<asr:diamond_giant_sword>);
recipes.addShaped(<asr:diamond_giant_sword>,
											[[null, <minecraft:diamond>, <minecraft:diamond>],
											[<minecraft:diamond>, <minecraft:diamond>, <minecraft:diamond>],
											[oreDict.stickWood, <minecraft:diamond>, null]]);
											
recipes.remove(<asr:golden_giant_sword>);
recipes.addShaped(<asr:golden_giant_sword>,
											[[null, <minecraft:gold_ingot>, <minecraft:gold_ingot>],
											[<minecraft:gold_ingot>, <minecraft:gold_ingot>, <minecraft:gold_ingot>],
											[oreDict.stickWood, <minecraft:gold_ingot>, null]]);
recipes.remove(<asr:iron_giant_sword>);
recipes.addShaped(<asr:iron_giant_sword>,
											[[null, <minecraft:iron_ingot>, <minecraft:iron_ingot>],
											[<minecraft:iron_ingot>, <minecraft:iron_ingot>, <minecraft:iron_ingot>],
											[oreDict.stickWood, <minecraft:iron_ingot>, null]]);
recipes.remove(<asr:stone_giant_sword>);
recipes.addShaped(<asr:stone_giant_sword>,
											[[null, oreDict.materialStoneTool, oreDict.materialStoneTool],
											[oreDict.materialStoneTool, oreDict.materialStoneTool, oreDict.materialStoneTool],
											[oreDict.stickWood, oreDict.materialStoneTool, null]]);
recipes.remove(<asr:wooden_giant_sword>);
recipes.addShaped(<asr:wooden_giant_sword>,
											[[null, oreDict.plankWood, oreDict.plankWood],
											[oreDict.plankWood, oreDict.plankWood, oreDict.plankWood],
											[oreDict.stickWood, oreDict.plankWood, null]]);
											
// Fix Quark stone tools stick ore dictionary compatibility
recipes.remove(<minecraft:stone_sword>);
recipes.addShaped(<minecraft:stone_sword>,
											[[null, oreDict.materialStoneTool, null],
											[null, oreDict.materialStoneTool, null],
											[null, oreDict.stickWood, null]]);
recipes.remove(<minecraft:stone_shovel>);
recipes.addShaped(<minecraft:stone_shovel>,
											[[null, oreDict.materialStoneTool, null],
											[null, oreDict.stickWood, null],
											[null, oreDict.stickWood, null]]);
recipes.remove(<minecraft:stone_pickaxe>);
recipes.addShaped(<minecraft:stone_pickaxe>,
											[[oreDict.materialStoneTool, oreDict.materialStoneTool, oreDict.materialStoneTool],
											[null, oreDict.stickWood, null],
											[null, oreDict.stickWood, null]]);
recipes.remove(<minecraft:stone_axe>);
recipes.addShaped(<minecraft:stone_axe>,
											[[oreDict.materialStoneTool, oreDict.materialStoneTool, null],
											[oreDict.materialStoneTool, oreDict.stickWood, null],
											[null, oreDict.stickWood, null]]);
recipes.remove(<minecraft:stone_hoe>);
recipes.addShaped(<minecraft:stone_hoe>,
											[[oreDict.materialStoneTool, oreDict.materialStoneTool, null],
											[null, oreDict.stickWood, null],
											[null, oreDict.stickWood, null]]);

// Add Bird's Nest tooltip
<birdsnests:birdsnest>.addTooltip(format.gray("Right click to examine"));

// Nerf Rope coil recipe
recipes.remove(<quark:rope>);
recipes.addShaped(<quark:rope> * 4,
									[[<minecraft:string>, <minecraft:string>, <minecraft:string>],
									[<minecraft:string>, null, <minecraft:string>],
									[<minecraft:string>, <minecraft:string>, <minecraft:string>]]);
									
// Remove confusing durability tooltip on medallions
<hexxitworld:earth_medallion:*>.removeTooltip("Durability:");
<hexxitworld:fire_medallion:*>.removeTooltip("Durability:");
<hexxitworld:ender_medallion:*>.removeTooltip("Durability:");
<hexxitworld:wind_medallion:*>.removeTooltip("Durability:");

// Modify recipes
recipes.remove(<mod_lavacow:dreamcatcher>);
recipes.addShaped(<mod_lavacow:dreamcatcher>,
											[[oreDict.stickWood, oreDict.stickWood, oreDict.stickWood],
											[oreDict.stickWood, <minecraft:web>, oreDict.stickWood],
											[<mod_lavacow:feather_black>, <mod_lavacow:feather_black>, <mod_lavacow:feather_black>]]);
recipes.remove(<mod_lavacow:ghostjelly>);					
recipes.addShapeless(<mod_lavacow:ghostjelly>, [<minecraft:bowl>, <mod_lavacow:moltenpan>, <mod_lavacow:ectoplasm>, <quark:glowshroom>]);
recipes.remove(<mod_lavacow:faminearmor_chestplate>);
recipes.addShaped(<mod_lavacow:faminearmor_chestplate>,
											[[<mod_lavacow:sharptooth>, null, <mod_lavacow:sharptooth>],
											[<mod_lavacow:foul_bristle>, <mod_lavacow:acidicheart>, <mod_lavacow:foul_bristle>],
											[<mod_lavacow:foul_bristle>, <mod_lavacow:foul_bristle>, <mod_lavacow:foul_bristle>]]);
recipes.remove(<ancientbeasts:pokey>);
recipes.addShaped(<ancientbeasts:pokey>,
										[[oreDict.cobblestone, oreDict.cobblestone, oreDict.cobblestone],
										[oreDict.cobblestone, <minecraft:iron_bars>, oreDict.cobblestone],
										[oreDict.cobblestone, <minecraft:redstone>, oreDict.cobblestone]]);

											
// Change Lumen companion recipes
recipes.remove(<lumen:scorching_flint>);
recipes.addShapeless(<lumen:scorching_flint>, [<minecraft:flint>, <lumen:ember_in_a_jar>]);
recipes.addShapeless(<lumen:sparkling_flint>, [<minecraft:flint>, <lumen:lightning_bug_in_a_jar>]);

// Remove MoCE undead heart ore dictionary
<ore:heartUndying>.remove(<mocreatures:heartundead>);

// Remove Ancient Silver ore dictionary
<ore:nuggetSilver>.remove(<mocreatures:ancientsilvernugget>);
<ore:ingotSilver>.remove(<mocreatures:ancientsilveringot>);
<ore:blockSilver>.remove(<mocreatures:ancient_silver_block>);