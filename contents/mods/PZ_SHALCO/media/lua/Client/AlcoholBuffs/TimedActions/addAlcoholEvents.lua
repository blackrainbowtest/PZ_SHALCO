--[[
    started work on this code at 11.11.2023
]]


--[[
    Initial initialization of variables for the mod when creating a character.
]]
function isSHALCOmainInit(playerID)
    local player = getSpecificPlayer(playerID);

    -- last time alcohol was used
    if player:getModData().SHALCOTimeSinceLastDrink == nil 
    then
        player:getModData().SHALCOTimeSinceLastDrink = 0;
    end

    -- player active boosts data
    if player:getModData().SHALCO_Boosts == nil 
    then
        player:getModData().SHALCO_Boosts = {
            isActiveBoost = false,
            allBoosts = {
                boost1 = false,
                boost2 = false,
                boost3 = false,
                boost4 = false,
            }
        };
    end

    -- debuging
    print("isSHALCOmainInit(player) is init" .. getSpecificPlayer(playerID):getModData().SHALCOTimeSinceLastDrink);
end

--[[
    Checking for the presence of initialized variables for the mod at each tick.
]]
function isSHALCOmainUpdate(player)
    -- last time alcohol was used
    if player:getModData().SHALCOTimeSinceLastDrink == nil 
    then
        player:getModData().SHALCOTimeSinceLastDrink = 0;
    end

    -- debuging
    -- print("isSHALCOmainUpdate(player) is init");
end

--[[
    Checking the character's status every game hour.
]]
function isSHALCOeveryHours()
    -- debuging
    -- print("houer tick: " .. getSpecificPlayer(0):getModData().SHALCOTimeSinceLastDrink);
end

--[[
    Checking the character's condition every 10 game minutes.
]]
function isSHALCOeveryTenMinutes()
    -- debuging
    -- print("10 minute tick: " .. getSpecificPlayer(0):getModData().SHALCOTimeSinceLastDrink);
end

--[[
    Checking the character's condition every game minute.
]]
function isSHALCOeveryMinutes()
    -- debuging
    -- print("Minute tick: " .. getSpecificPlayer(0):getModData().SHALCOTimeSinceLastDrink);
end


Events.OnCreatePlayer.Add(isSHALCOmainInit);
Events.OnPlayerUpdate.Add(isSHALCOmainUpdate);
Events.EveryHours.Add(isSHALCOeveryHours);
Events.EveryTenMinutes.Add(isSHALCOeveryTenMinutes);
Events.EveryOneMinute.Add(isSHALCOeveryMinutes);

-- if isClient() then Events.EveryOneMinute.Add(ISPerkLog.init); end;