X = {}

local IBUtil = require(GetScriptDirectory() .. "/ItemBuildUtility");
local npcBot = GetBot();
local talents = IBUtil.FillTalenTable(npcBot);
local skills  = IBUtil.FillSkillTable(npcBot, IBUtil.GetSlotPattern(1));

X["items"] = { 
	"item_wraith_band",
	"item_magic_wand",
	"item_ring_of_aquila",
	"item_power_treads_agi",
	"item_dragon_lance",
	"item_maelstrom",
	"item_black_king_bar",
	"item_hurricane_pike",
	"item_manta",
	"item_mjollnir",
	"item_butterfly"
};			

X["skills"] = IBUtil.GetBuildPattern(
	  "normal", 
	  {1,2,3,1,1,4,1,3,3,3,4,2,2,2,4}, skills, 
	  {1,3,5,7}, talents
);

return X