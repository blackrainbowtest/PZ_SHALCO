function OnEat_Alcohol(food, player, percent)
    -- immersive medicine
    local xp = 100

    if true then
        -- Passives
        player:getXp():AddXP(Perks.Strength, xp);
        player:getXp():AddXP(Perks.Fitness, xp);

        -- Agility
        player:getXp():AddXP(Perks.Sprinting, xp);
        player:getXp():AddXP(Perks.Lightfoot, xp);
        player:getXp():AddXP(Perks.Nimble, xp);
        player:getXp():AddXP(Perks.Sneak, xp);

        -- Combat
        player:getXp():AddXP(Perks.Axe, xp);
        player:getXp():AddXP(Perks.Blunt, xp);
        player:getXp():AddXP(Perks.SmallBlunt, xp);
        player:getXp():AddXP(Perks.LongBlade, xp);
        player:getXp():AddXP(Perks.SmallBlade, xp);
        player:getXp():AddXP(Perks.Spear, xp);
        player:getXp():AddXP(Perks.Maintenance, xp);

        -- Crafting
        player:getXp():AddXP(Perks.Woodwork, xp);
        player:getXp():AddXP(Perks.Cooking, xp);
        player:getXp():AddXP(Perks.Farming, xp);
        player:getXp():AddXP(Perks.Doctor, xp);
        player:getXp():AddXP(Perks.Electricity, xp);
        player:getXp():AddXP(Perks.MetalWelding, xp);
        player:getXp():AddXP(Perks.Mechanics, xp);
        player:getXp():AddXP(Perks.Tailoring, xp);

        -- Firearm
        player:getXp():AddXP(Perks.Aiming, xp);
        player:getXp():AddXP(Perks.Reloading, xp);

        -- Survivalist
        player:getXp():AddXP(Perks.Fishing, xp);
        player:getXp():AddXP(Perks.Trapping, xp);
        player:getXp():AddXP(Perks.PlantScavenging, xp);
    end
end

function OnEat_AlcoholCryingDragon(food, player, percent)
    if player:getPerkLevel(Perks.Fishing) <= 9 then
        if player:getPerkLevel(Perks.Fishing) <= 3 then
            player:getXp():AddXP(Perks.Fishing, 5);
        else
            player:getXp():AddXP(Perks.Fishing, 3);
        end
    end
end

function OnEat_AlcoholDragonBlood(food, player, percent)
    if player:getPerkLevel(Perks.Strength) <= 9 then
        if player:getPerkLevel(Perks.Strength) <= 3 then
            player:getXp():AddXP(Perks.Strength, 50);
        elseif player:getPerkLevel(Perks.Strength) <= 6 then
            player:getXp():AddXP(Perks.Strength, 150);
        elseif player:getPerkLevel(Perks.Strength) <= 9 then
            player:getXp():AddXP(Perks.Strength, 550);
        else
            player:getXp():AddXP(Perks.Strength, 850);
        end
    end
end

function OnEat_AlcoholCarrotCocktail(food, player, percent)
    if player:getPerkLevel(Perks.Sprinting) <= 9 then
        if player:getPerkLevel(Perks.Sprinting) <= 3 then
            player:getXp():AddXP(Perks.Sprinting, 8);
        elseif player:getPerkLevel(Perks.Sprinting) <= 6 then
            player:getXp():AddXP(Perks.Sprinting, 30);
        elseif player:getPerkLevel(Perks.Sprinting) <= 9 then
            player:getXp():AddXP(Perks.Sprinting, 65);
        else
            player:getXp():AddXP(Perks.Sprinting, 110);
        end
    end
end