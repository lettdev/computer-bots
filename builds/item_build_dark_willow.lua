X = {}

local IBUtil = require(GetScriptDirectory() .. "/ItemBuildUtility");
local npcBot = GetBot();
local talents = IBUtil.FillTalenTable(npcBot);
local skills  = IBUtil.FillSkillTable(npcBot, IBUtil.GetSlotPattern(1));

X["items"] = { 
	"item_magic_wand",
	"item_arcane_boots",
	"item_force_staff",
	"item_cyclone",
	"item_kaya",
	"item_shivas_guard",
	"item_sheepstick"
};			

X["skills"] = IBUtil.GetBuildPattern(
	  "normal", 
	  {2,1,3,2,2,4,2,1,1,1,4,3,3,3,4}, skills, 
	  {1,4,6,8}, talents
);

return X