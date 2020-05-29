local addonName, addon = ...

local function onEvent(self, event, rollId, ...)
    RollOnLoot(rollId, 1)
end

addon.core = {};
addon.core.frame = CreateFrame("Frame");
addon.core.frame:SetScript("OnEvent", onEvent);
addon.core.frame:RegisterEvent("START_LOOT_ROLL")