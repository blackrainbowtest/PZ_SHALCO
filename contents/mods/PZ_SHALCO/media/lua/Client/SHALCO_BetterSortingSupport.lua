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
    TweakItem("SHALCO.AlcoholDarkVoidAle", "DisplayCategory", "FoodB");
    TweakItem("SHALCO.AlcoholZombiePotion", "DisplayCategory", "FoodB");
    TweakItem("SHALCO.AlcoholSkeletonLiqueur", "DisplayCategory", "FoodB");
    TweakItem("SHALCO.AlcoholWhisperOfDarkness", "DisplayCategory", "FoodB");
    TweakItem("SHALCO.AlcoholApocalypticExtract", "DisplayCategory", "FoodB");
    TweakItem("SHALCO.AlcoholFelcloth", "DisplayCategory", "FoodB");
    TweakItem("SHALCO.AlcoholLycanthropeSmoothie", "DisplayCategory", "FoodB");
    TweakItem("SHALCO.AlcoholWindyVampire", "DisplayCategory", "FoodB");
    TweakItem("SHALCO.AlcoholLivingDeadGrog", "DisplayCategory", "FoodB");
    TweakItem("SHALCO.AlcoholCursedDoctor", "DisplayCategory", "FoodB");
    TweakItem("SHALCO.AlcoholGrimBarrier", "DisplayCategory", "FoodB");
    TweakItem("SHALCO.AlcoholDragonsBreath", "DisplayCategory", "FoodB");
    TweakItem("SHALCO.AlcoholDemonicEntity", "DisplayCategory", "FoodB");
    TweakItem("SHALCO.AlcoholGhostHound", "DisplayCategory", "FoodB");
    TweakItem("SHALCO.AlcoholNecromanticDrink", "DisplayCategory", "FoodB");
    TweakItem("SHALCO.AlcoholAstralElixir", "DisplayCategory", "FoodB");
    TweakItem("SHALCO.AlcoholWoundedGhoul", "DisplayCategory", "FoodB");
    TweakItem("SHALCO.AlcoholDeadlyGulp", "DisplayCategory", "FoodB");
    TweakItem("SHALCO.AlcoholFlamingWhiskey", "DisplayCategory", "FoodB");
    TweakItem("SHALCO.AlcoholCryingDragon", "DisplayCategory", "FoodB");
    TweakItem("SHALCO.AlcoholDragonBlood", "DisplayCategory", "FoodB");
    TweakItem("SHALCO.AlcoholCarrotCocktail", "DisplayCategory", "FoodB");
    TweakItem("SHALCO.AlcoholMidnightAvenger", "DisplayCategory", "FoodB");
    TweakItem("SHALCO.AlcoholBloodOfHero", "DisplayCategory", "FoodB");
    TweakItem("SHALCO.AlcoholWatchmaker", "DisplayCategory", "FoodB");
    TweakItem("SHALCO.AlcoholSurvivor", "DisplayCategory", "FoodB");
    TweakItem("SHALCO.AlcoholEmritasNightShadow", "DisplayCategory", "FoodB");

end
