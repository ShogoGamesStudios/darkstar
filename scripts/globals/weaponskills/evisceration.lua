-----------------------------------	
-- Evisceration	
-- Dagger weapon skill	
-- Skill level: 230	
-- In order to obtain Evisceration, the quest Cloak and Dagger must be completed.	
-- Delivers a fivefold attack. Chance of params.critical hit varies with TP.	
-- Will stack with Sneak Attack.	
-- Aligned with the Shadow Gorget, Soil Gorget & Light Gorget.	
-- Aligned with the Shadow Belt, Soil Belt & Light Belt.	
-- Element: None	
-- Modifiers: DEX:30%	
-- 100%TP    200%TP    300%TP	
-- 1.00      1.00      1.00	
-----------------------------------	
	
require("scripts/globals/status");	
require("scripts/globals/settings");	
require("scripts/globals/weaponskills");	
-----------------------------------	
	
function OnUseWeaponSkill(player, target, wsID)	
	
	local params = {};
	params.numHits = 5;
	params.ftp100 = 1; params.ftp200 = 1; params.ftp300 = 1;
	params.str_wsc = 0.0; params.dex_wsc = 0.3; params.vit_wsc = 0.0; params.agi_wsc = 0.0; params.int_wsc = 0.0; params.mnd_wsc = 0.0; params.chr_wsc = 0.0;
	params.crit100 = 0.1; params.crit200 = 0.3; params.crit300 = 0.5;
	params.canCrit = true;
	params.acc100 = 0.0; params.acc200= 0.0; params.acc300= 0.0;
	params.atkmulti = 1;
	local damage, tpHits, extraHits = doPhysicalWeaponskill(player, target, params);

	return tpHits, extraHits, damage;
	
end	
