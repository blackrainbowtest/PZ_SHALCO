--[[
    2941768575 speed framework mod used
]]

PlayerMove = PlayerMove or {}

--encapsulate all blocking stuff from vanilla (isBlockedTo + getSpecialSolid {+ vehicle}? )
function PlayerMove.isBlockedTo(fromSquare,toSquare)
    return not toSquare or not fromSquare or fromSquare:isBlockedTo(toSquare) or fromSquare:testCollideSpecialObjects(toSquare) ~= nil --toSquare:getSpecialSolid() ~= nil
end

--works only for straight UP/DOWN/RIGHT/LEFT screen directions (no Z, no diagonal). we need a real algorithm instead of that unsafe sh*t.
function PlayerMove.canTraverseToRecurse(fromSquare,toSquare,easting,southing,ewBlocked,nsBlocked,diagBlockedEasting,diagBlockedSouthing)

    local easwestSquare = fromSquare:getAdjacentSquare(easting)
    ewBlocked = ewBlocked or PlayerMove.isBlockedTo(fromSquare,easwestSquare)
    if toSquare == easwestSquare then return not (ewBlocked or diagBlockedEasting) end
    
    local northsouthSquare = fromSquare:getAdjacentSquare(southing)
    nsBlocked = nsBlocked or PlayerMove.isBlockedTo(fromSquare,northsouthSquare)
    if toSquare == northsouthSquare then return not (nsBlocked or diagBlockedSouthing) end
    
    local diagSquare = nil
    if northsouthSquare then
        diagSquare = northsouthSquare:getAdjacentSquare(easting)--same as easwestSquare:getAdjacentSquare(southing)
    elseif easwestSquare then
        diagSquare = easwestSquare:getAdjacentSquare(southing)
    end
    if not diagSquare then return false end
    
    diagBlockedSouthing = diagBlockedSouthing or PlayerMove.isBlockedTo(northsouthSquare,diagSquare)
    diagBlockedEasting = diagBlockedEasting or PlayerMove.isBlockedTo(easwestSquare,diagSquare)
    if toSquare == diagSquare then return not (ewBlocked or nsBlocked or diagBlockedSouthing or diagBlockedEasting) end

    return PlayerMove.canTraverseToRecurse(diagSquare,toSquare,easting,southing,ewBlocked,nsBlocked,diagBlockedEasting,diagBlockedSouthing)
end
function PlayerMove.canTraverseTo(fromSquare,toSquare,deltaX,deltaY)
    if fromSquare == toSquare then return true end
    local ewBlocked = false;
    local nsBlocked = false;
    local diagBlockedSouthing = false;
    local diagBlockedEasting = false;
    local easting = nil
    if deltaX > 0 then--East direction of movement
        easting = IsoDirections.E
    else
        easting = IsoDirections.W
    end
    local southing = nil
    if deltaY > 0 then--South direction of movement
        southing = IsoDirections.S
    else
        southing = IsoDirections.N
    end
    
    return PlayerMove.canTraverseToRecurse(fromSquare,toSquare,easting,southing,ewBlocked,nsBlocked,diagBlockedEasting,diagBlockedSouthing)
end

function PlayerMove.canDoMoveTo(character,deltaX,deltaY,deltaZ)
    local targetX = character:getX()+(deltaX or 0)
    local targetY = character:getY()+(deltaY or 0)
    local targetZ = character:getZ()+(deltaZ or 0)

    --check destination is valid
    if not getWorld():isValidSquare(targetX,targetY,targetZ) then return false end

    --check destination is reachable
    local currentSquare = character:getCurrentSquare();
    if not currentSquare then
        print("PlayerMove.canDoMoveTo invalid player square. WARNING")
        return false;
    end
    
    
    local destSquare = getCell():getGridSquare(targetX, targetY, targetZ)
    if currentSquare == destSquare then return true end
    return PlayerMove.canTraverseTo(currentSquare,destSquare,deltaX or 0,deltaY or 0)
end

