--[[
    Используется DarkSlayerEX's Item Tweaker: 
    настраивает API бег полного переопределения 
    обявленных методов.

    В качестве примера использован мод 2866542033
]] --

if not ItemTweaker then
    ItemTweaker = {}
end

if not TweakItem then
    TweakItem = {}
end

if not TweakItemData then
    TweakItemData = {}
end

--[[
    Подготовка для изменений
]] --
function ItemTweaker.tweakItems()
    local item;
    for k, v in pairs(TweakItemData) do
        for t, y in pairs(v) do
            item = ScriptManager.instance:getItem(k);
            if item ~= nil then
                item:DoParam(t .. " = " .. y);
                print(k .. ": " .. t .. ", " .. y);
            end
        end
    end
end

function TweakItem(itemName, itemProperty, propertyValue)
    if not TweakItemData[itemName] then
        TweakItemData[itemName] = {};
    end
    TweakItemData[itemName][itemProperty] = propertyValue;
end
Events.OnGameBoot.Add(ItemTweaker.tweakItems)

if getActivatedMods():contains("BetterSortCC") then
    TweakItem("SHALCO.AlcoholCryingDragon", "DisplayCategory", "FoodB");
    TweakItem("SHALCO.AlcoholDragonBlood", "DisplayCategory", "FoodB");
    TweakItem("SHALCO.AlcoholCarrotCocktail", "DisplayCategory", "FoodB");
end
