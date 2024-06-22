
-- PlayerSpeedFramework = PlayerSpeedFramework or {}
-- PlayerSpeedFramework.Verbose = false;
-- PlayerSpeedFramework.playerClosestZMap = {}
-- PlayerSpeedFramework.playerSpeedModifierMap = {}


-- -- PlayerSpeedFramework.SetPlayerSpeed is the call for setting speed from other mods
-- -- player is the IsoPlayer object, not its number
-- -- speedModifier is a gain: 0.5 will half your speed. 2.0 will double your speed. e.g. "sneakers" match 1.1 speedModifier.
-- -- set speedModifier it to 1.0 or nil to deactivate
-- function PlayerSpeedFramework.SetPlayerSpeed(player, speedModifier)
--     local playerKey = PlayerSpeedFramework.getPlayerKey(player)
--     PlayerSpeedFramework.playerSpeedModifierMap[playerKey] = speedModifier
--     if PlayerSpeedFramework.Verbose then print ("PlayerSpeedFramework SetPlayerSpeed "..tostring(speedModifier)); end
-- end





-- function PlayerSpeedFramework.OnPlayerUpdate(player)
--     if player and player:isLocalPlayer() then
--         local md = player:getModData()
--         local speedModifier = PlayerSpeedFramework.getPlayer_speedModifier(player)
--         if PlayerSpeedFramework.isPlayerSpeedFrameworkActive(player, md, speedModifier) then
--             local pendingDelta = 0;
--             if PlayerSpeedFramework.isPathfindingRelatedMovement(player) then--the update seems to be done every cycle with WalkTo actions (pathfinding related control)
--                 pendingDelta = speedModifier-1;
--             else
--                 --TODO better understand the vanilla speed mechanism.
--                 -- I use empiric formula: update is done only half the time (unprecise!!) so I apply it twice (precision error induced!!)
--                 -- it seems when I force x (or y or z), I kill something: probably because it forces nx / scriptnx, see IsoMovingObject:setX(float var1)
--                 -- because next update is always 0 (it should not)
--                 pendingDelta = (speedModifier-1)*2+1;
--             end
            
            
--             local deltaX = (player:getX() - md.PlayerSpeedFrameworkPos.x)*pendingDelta
--             local deltaY = (player:getY() - md.PlayerSpeedFrameworkPos.y)*pendingDelta
--             local deltaZ = (player:getZ() - md.PlayerSpeedFrameworkPos.z)*pendingDelta
--             if PlayerSpeedFramework.Verbose then print ("PlayerSpeedFramework OnPlayerUpdate "..pendingDelta.." "..player:getX().." / "..player:getY().." "..deltaX.." / "..deltaY); end

--             if (deltaX ~= 0 or deltaY ~= 0) and PlayerMove.canDoMoveTo(player,deltaX,deltaY,deltaZ) then
--                 player:setX(player:getX()+deltaX);
--                 player:setY(player:getY()+deltaY);
--                 player:setZ(player:getZ()+deltaZ);
--             end
--         end
--         player:getModData().PlayerSpeedFrameworkPos = {x=player:getX(),y=player:getY(), z=player:getZ()};
--     end
-- end

-- function PlayerSpeedFramework.isPathfindingRelatedMovement(player)
--     local pfb2 = player:getPathFindBehavior2();
--     if PlayerSpeedFramework.Verbose then print ("PlayerSpeedFramework isPathfindingRelatedMovement "..tostring((pfb2 and not pfb2:getIsCancelled()) and "Active" or "Cancelled")); end
--     return pfb2 and not pfb2:getIsCancelled();
-- end

-- function PlayerSpeedFramework.isPlayerSpeedFrameworkActive(player, md, speedModifier)
--     if player:getVehicle() ~= nil then return false end--not active while in a vehicle
--     if md == nil or md.PlayerSpeedFrameworkPos == nil then return false end--wait for position initialized
--     if player:isBlockMovement() then return false end--do not impact when other functions want to keep us stuck somewhere (like TrueAction)
--     local TrueActionVar = player:getVariableString("SitWOAnim")
--     if TrueActionVar and TrueActionVar ~= '' then return false end--do not impact when true action is doing its movements
    
--     --when there is no modifier, use vanilla behavior (in order to improve error analysis)
--     if speedModifier < 1.001 and speedModifier > 0.999 then return false end--TODO check lua float equality comparison

--     --if we are in contact with Z / players (and isWalking?) => deactivate
--     local closestZombie = PlayerSpeedFramework.getPlayer_closestZombie(player)
--     if PlayerSpeedFramework.Verbose then print ("PlayerSpeedFramework Distance closestZombie "..tostring(closestZombie)); end
--     if closestZombie < 1.0 then
--         return false
--     end
    
--     return true
-- end

-- function PlayerSpeedFramework.getField(class, fieldName)
--     for i=0, getNumClassFields(class)-1 do
--         local field = getClassField(class,i)
--         if not field then
--             if PlayerSpeedFramework.Verbose then print ("PlayerSpeedFramework getPlayer_closestZombie "..i.." "..tostring("no field")); end
--             return nil
--         end
        
--         --private field is not accessible out of debug mod and any access to it (even modifiers reading wil crash)
--         --that's why I use the dirty string analysis below.
--         local stringField = tostring(field)
--         local isPrivate = string.sub(stringField,1,string.len("private"))=="private"
--         local isProtected = string.sub(stringField,1,string.len("protected"))=="protected"
--         local isRightName = fieldName == "" or stringField:sub(-#fieldName) == fieldName
        
--         if not isPrivate and not isProtected then
--             if PlayerSpeedFramework.Verbose then print ("PlayerSpeedFramework getPlayer_closestZombie "..i.." "..tostring(isRightName)); end
--             if isRightName then
--                 return field
--             end
--             --if we reach here, it was not the right field (but public)
--         else
--             --if we reach here, it was not the right field (and private or protected)
--             if PlayerSpeedFramework.Verbose then print ("PlayerSpeedFramework getPlayer_closestZombie "..i.." is private or protected."); end
--         end
--     end
--     return nil
-- end

-- function PlayerSpeedFramework.getPlayer_speedModifier(player)
--     local playerKey = PlayerSpeedFramework.getPlayerKey(player)
--     local speedModifier = nil
--     if playerKey then
--         speedModifier = PlayerSpeedFramework.playerSpeedModifierMap[playerKey]
--     end
--     if not speedModifier then speedModifier = 1.0 end

--     if PlayerSpeedFramework.Verbose then print ("PlayerSpeedFramework getPlayer_speedModifier "..tostring(speedModifier)); end

--     return speedModifier
-- end

-- function PlayerSpeedFramework.getPlayer_closestZombie(player)
--     if PlayerSpeedFramework.playerClosestZMap then
--         local playerKey = PlayerSpeedFramework.getPlayerKey(player)
--         local playerStruct = PlayerSpeedFramework.playerClosestZMap[playerKey]
        
--         if not playerStruct then--parse the fields only the first time
--             playerStruct = {isValid = false, closestZombie_field=PlayerSpeedFramework.getField(player,"closestZombie")}
--             if playerStruct.closestZombie_field ~= nil then playerStruct.isValid = true end
--             PlayerSpeedFramework.playerClosestZMap[playerKey] = playerStruct
--         end
        
--         if not playerStruct.isValid then 
--             return 1000000.0F
--         end
        
--         return getClassFieldVal(player, playerStruct.closestZombie_field)
--     end
-- end

-- function PlayerSpeedFramework.getPlayerKey(player)
--     return tostring(player)--TODO use OnlineID ?
-- end



-- Events.OnPlayerUpdate.Add(PlayerSpeedFramework.OnPlayerUpdate);--does the movement
