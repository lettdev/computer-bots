function GetDesire()

local npcBot = GetBot();

local fBestDefendScore = 0;
local npcBestDefendableAlly = nil;
local npcBestAttackingEnemy = nil;

local tableNearbyRetreatingAlliedHeroes = npcBot:GetNearbyHeroes( 1000, false, BOT_MODE_RETREAT );
if ( #tableNearbyRetreatingAlliedHeroes == 0 )
then
return BOT_MODE_DESIRE_NONE;
end

local tableNearbyEnemyHeroes = npcBot:GetNearbyHeroes( 1000, true, BOT_MODE_NONE );

-- Is there a good enemy to attack, who's scary to our ally and not too scary to us?
for _,npcAlly in pairs( tableNearbyRetreatingAlliedHeroes )
do
local fDefendScore, npcEnemy = GetDefendScore( npcAlly, tableNearbyEnemyHeroes );

if ( fDefendScore > fBestDefendScore )
then
fBestDefendScore = fDefendScore;
npcBestDefendableAlly = npcAlly;
npcBestAttackingEnemy = npcEnemy;
end
end

return RemapValClamped( fBestDefendScore, 0.9, 1.0, BOT_MODE_DESIRE_NONE, BOT_MODE_DESIRE_HIGH );
end
