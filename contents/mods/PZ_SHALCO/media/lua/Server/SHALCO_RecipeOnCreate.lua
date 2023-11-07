--[[
    /* ________________________________07.11.2023____________________________________________ */
    /* _______________https://github.com/blackrainbowtest/PZ_SHALCO__________________________ */

]]

function Recipe.OnCreate.ReplacingChurn(items, result, player)

    for i=0,items:size() - 1 do
        local item = items:get(i)
        if string.match(item:getType(), "Churn_") then
            result:setBaseHunger(item:getBaseHunger());
            result:setHungChange(item:getHungChange());
            result:setThirstChange(item:getThirstChangeUnmodified());
            result:setBoredomChange(item:getBoredomChangeUnmodified());
            result:setUnhappyChange(item:getUnhappyChangeUnmodified());
            result:setCarbohydrates(item:getCarbohydrates());
            result:setLipids(item:getLipids());
            result:setProteins(item:getProteins());
            result:setCalories(item:getCalories());
        end
    end
    local inv = player:getInventory();
	inv:AddItem("SapphCooking.ButterChurn");
end