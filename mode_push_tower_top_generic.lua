-- Include this before require to fix Mac
local dir = GetScriptDirectory();
local function GetScriptDirectory()
	if string.sub(dir, 1, 6) == "/Users" then
		return string.match(dir, '.*/(.+)')
	end
	return dir;
end
-----------------------------------------
local Helper = require(GetScriptDirectory() .. "/helper");

function GetDesire()
  return Helper.GetPushDesire(GetBot(), LANE_TOP);
end

function OnStart()

  local npcBot = GetBot();
  npcBot:Action_Chat("Pushing Top", true);

end

function Think()
  Helper.PushThink(GetBot(), LANE_TOP);
end