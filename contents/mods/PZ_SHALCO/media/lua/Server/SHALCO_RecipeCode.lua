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

-- 01 Темный Пустотный Эль (Strength)
function OnEat_AlcoholDarkVoidAle(food, player, percent)
    local val = ZombRand(150,520);
    if player:getPerkLevel(Perks.Strength) <= 9 then
        if player:getPerkLevel(Perks.Strength) <= 3 then
            player:getXp():AddXP(Perks.Strength, val);
        elseif player:getPerkLevel(Perks.Strength) <= 4 then
            player:getXp():AddXP(Perks.Strength, val * 1.8);
        elseif player:getPerkLevel(Perks.Strength) <= 5 then
            player:getXp():AddXP(Perks.Strength, val * 2.2);
        elseif player:getPerkLevel(Perks.Strength) <= 6 then
            player:getXp():AddXP(Perks.Strength, val * 3);
        elseif player:getPerkLevel(Perks.Strength) <= 7 then
            player:getXp():AddXP(Perks.Strength, val * 4.2);
        elseif player:getPerkLevel(Perks.Strength) <= 8 then
            player:getXp():AddXP(Perks.Strength, val * 5.4);
        elseif player:getPerkLevel(Perks.Strength) <= 9 then
            player:getXp():AddXP(Perks.Strength, val * 6.5);
        else
            player:getXp():AddXP(Perks.Strength, val * 10.1);
        end
    end
end

-- 02 Зомби Зелье (Fitness)
function OnEat_AlcoholZombiePotion(food, player, percent)
    local val = ZombRand(120,450);
    if player:getPerkLevel(Perks.Fitness) <= 9 then
        if player:getPerkLevel(Perks.Fitness) <= 3 then
            player:getXp():AddXP(Perks.Fitness, val);
        elseif player:getPerkLevel(Perks.Fitness) <= 4 then
            player:getXp():AddXP(Perks.Fitness, val * 1.8);
        elseif player:getPerkLevel(Perks.Fitness) <= 5 then
            player:getXp():AddXP(Perks.Fitness, val * 2.2);
        elseif player:getPerkLevel(Perks.Fitness) <= 6 then
            player:getXp():AddXP(Perks.Fitness, val * 3);
        elseif player:getPerkLevel(Perks.Fitness) <= 7 then
            player:getXp():AddXP(Perks.Fitness, val * 4.2);
        elseif player:getPerkLevel(Perks.Fitness) <= 8 then
            player:getXp():AddXP(Perks.Fitness, val * 5.4);
        elseif player:getPerkLevel(Perks.Fitness) <= 9 then
            player:getXp():AddXP(Perks.Fitness, val * 6.5);
        else
            player:getXp():AddXP(Perks.Fitness, val * 10.1);
        end
    end
end

-- 03 Скелетный ликер (Sprinting)
function OnEat_AlcoholSkeletonLiqueur(food, player, percent)
    local val = ZombRand(7,12);
    if player:getPerkLevel(Perks.Sprinting) <= 9 then
        if player:getPerkLevel(Perks.Sprinting) <= 3 then
            player:getXp():AddXP(Perks.Sprinting, val);
        elseif player:getPerkLevel(Perks.Sprinting) <= 4 then
            player:getXp():AddXP(Perks.Sprinting, val * 1.8);
        elseif player:getPerkLevel(Perks.Sprinting) <= 5 then
            player:getXp():AddXP(Perks.Sprinting, val * 2.2);
        elseif player:getPerkLevel(Perks.Sprinting) <= 6 then
            player:getXp():AddXP(Perks.Sprinting, val * 3);
        elseif player:getPerkLevel(Perks.Sprinting) <= 7 then
            player:getXp():AddXP(Perks.Sprinting, val * 4.2);
        elseif player:getPerkLevel(Perks.Sprinting) <= 8 then
            player:getXp():AddXP(Perks.Sprinting, val * 5.4);
        elseif player:getPerkLevel(Perks.Sprinting) <= 9 then
            player:getXp():AddXP(Perks.Sprinting, val * 6.5);
        else
            player:getXp():AddXP(Perks.Sprinting, val * 10.1);
        end
    end
end

-- 04 Шепот Тьмы (Lightfoot)
function OnEat_AlcoholWhisperOfDarkness(food, player, percent)
    local val = ZombRand(6,10);
    if player:getPerkLevel(Perks.Lightfoot) <= 9 then
        if player:getPerkLevel(Perks.Lightfoot) <= 3 then
            player:getXp():AddXP(Perks.Lightfoot, val);
        elseif player:getPerkLevel(Perks.Lightfoot) <= 4 then
            player:getXp():AddXP(Perks.Lightfoot, val * 1.8);
        elseif player:getPerkLevel(Perks.Lightfoot) <= 5 then
            player:getXp():AddXP(Perks.Lightfoot, val * 2.2);
        elseif player:getPerkLevel(Perks.Lightfoot) <= 6 then
            player:getXp():AddXP(Perks.Lightfoot, val * 3);
        elseif player:getPerkLevel(Perks.Lightfoot) <= 7 then
            player:getXp():AddXP(Perks.Lightfoot, val * 4.2);
        elseif player:getPerkLevel(Perks.Lightfoot) <= 8 then
            player:getXp():AddXP(Perks.Lightfoot, val * 5.4);
        elseif player:getPerkLevel(Perks.Lightfoot) <= 9 then
            player:getXp():AddXP(Perks.Lightfoot, val * 6.5);
        else
            player:getXp():AddXP(Perks.Lightfoot, val * 10.1);
        end
    end
end

-- 05 Апокалиптический Экстракт (Nimble)
function OnEat_AlcoholApocalypticExtract(food, player, percent)
    local val = ZombRand(7,9);
    if player:getPerkLevel(Perks.Nimble) <= 9 then
        if player:getPerkLevel(Perks.Nimble) <= 3 then
            player:getXp():AddXP(Perks.Nimble, val);
        elseif player:getPerkLevel(Perks.Nimble) <= 4 then
            player:getXp():AddXP(Perks.Nimble, val * 1.8);
        elseif player:getPerkLevel(Perks.Nimble) <= 5 then
            player:getXp():AddXP(Perks.Nimble, val * 2.2);
        elseif player:getPerkLevel(Perks.Nimble) <= 6 then
            player:getXp():AddXP(Perks.Nimble, val * 3);
        elseif player:getPerkLevel(Perks.Nimble) <= 7 then
            player:getXp():AddXP(Perks.Nimble, val * 4.2);
        elseif player:getPerkLevel(Perks.Nimble) <= 8 then
            player:getXp():AddXP(Perks.Nimble, val * 5.4);
        elseif player:getPerkLevel(Perks.Nimble) <= 9 then
            player:getXp():AddXP(Perks.Nimble, val * 6.5);
        else
            player:getXp():AddXP(Perks.Nimble, val * 10.1);
        end
    end
end

-- 06 Ткань Скверны (Sneak)
function OnEat_AlcoholFelcloth(food, player, percent)
    local val = ZombRand(8,10);
    if player:getPerkLevel(Perks.Sneak) <= 9 then
        if player:getPerkLevel(Perks.Sneak) <= 3 then
            player:getXp():AddXP(Perks.Sneak, val);
        elseif player:getPerkLevel(Perks.Sneak) <= 4 then
            player:getXp():AddXP(Perks.Sneak, val * 1.8);
        elseif player:getPerkLevel(Perks.Sneak) <= 5 then
            player:getXp():AddXP(Perks.Sneak, val * 2.2);
        elseif player:getPerkLevel(Perks.Sneak) <= 6 then
            player:getXp():AddXP(Perks.Sneak, val * 3);
        elseif player:getPerkLevel(Perks.Sneak) <= 7 then
            player:getXp():AddXP(Perks.Sneak, val * 4.2);
        elseif player:getPerkLevel(Perks.Sneak) <= 8 then
            player:getXp():AddXP(Perks.Sneak, val * 5.4);
        elseif player:getPerkLevel(Perks.Sneak) <= 9 then
            player:getXp():AddXP(Perks.Sneak, val * 6.5);
        else
            player:getXp():AddXP(Perks.Sneak, val * 10.1);
        end
    end
end

-- 07 Ликантропский смузи (Axe)
function OnEat_AlcoholLycanthropeSmoothie(food, player, percent)
    local val = ZombRand(12,15);
    if player:getPerkLevel(Perks.Axe) <= 9 then
        if player:getPerkLevel(Perks.Axe) <= 3 then
            player:getXp():AddXP(Perks.Axe, val);
        elseif player:getPerkLevel(Perks.Axe) <= 4 then
            player:getXp():AddXP(Perks.Axe, val * 1.8);
        elseif player:getPerkLevel(Perks.Axe) <= 5 then
            player:getXp():AddXP(Perks.Axe, val * 2.2);
        elseif player:getPerkLevel(Perks.Axe) <= 6 then
            player:getXp():AddXP(Perks.Axe, val * 3);
        elseif player:getPerkLevel(Perks.Axe) <= 7 then
            player:getXp():AddXP(Perks.Axe, val * 4.2);
        elseif player:getPerkLevel(Perks.Axe) <= 8 then
            player:getXp():AddXP(Perks.Axe, val * 5.4);
        elseif player:getPerkLevel(Perks.Axe) <= 9 then
            player:getXp():AddXP(Perks.Axe, val * 6.5);
        else
            player:getXp():AddXP(Perks.Axe, val * 10.1);
        end
    end
end

-- 08 Ветреный Вампир (Blunt)
function OnEat_AlcoholWindyVampire(food, player, percent)
    local val = ZombRand(10,14);
    if player:getPerkLevel(Perks.Blunt) <= 9 then
        if player:getPerkLevel(Perks.Blunt) <= 3 then
            player:getXp():AddXP(Perks.Blunt, val);
        elseif player:getPerkLevel(Perks.Blunt) <= 4 then
            player:getXp():AddXP(Perks.Blunt, val * 1.8);
        elseif player:getPerkLevel(Perks.Blunt) <= 5 then
            player:getXp():AddXP(Perks.Blunt, val * 2.2);
        elseif player:getPerkLevel(Perks.Blunt) <= 6 then
            player:getXp():AddXP(Perks.Blunt, val * 3);
        elseif player:getPerkLevel(Perks.Blunt) <= 7 then
            player:getXp():AddXP(Perks.Blunt, val * 4.2);
        elseif player:getPerkLevel(Perks.Blunt) <= 8 then
            player:getXp():AddXP(Perks.Blunt, val * 5.4);
        elseif player:getPerkLevel(Perks.Blunt) <= 9 then
            player:getXp():AddXP(Perks.Blunt, val * 6.5);
        else
            player:getXp():AddXP(Perks.Blunt, val * 10.1);
        end
    end
end

-- 09 Живой Мертвец Грог (SmallBlunt)
function OnEat_AlcoholLivingDeadGrog(food, player, percent)
    local val = ZombRand(8,16);
    if player:getPerkLevel(Perks.SmallBlunt) <= 9 then
        if player:getPerkLevel(Perks.SmallBlunt) <= 3 then
            player:getXp():AddXP(Perks.SmallBlunt, val);
        elseif player:getPerkLevel(Perks.SmallBlunt) <= 4 then
            player:getXp():AddXP(Perks.SmallBlunt, val * 1.8);
        elseif player:getPerkLevel(Perks.SmallBlunt) <= 5 then
            player:getXp():AddXP(Perks.SmallBlunt, val * 2.2);
        elseif player:getPerkLevel(Perks.SmallBlunt) <= 6 then
            player:getXp():AddXP(Perks.SmallBlunt, val * 3);
        elseif player:getPerkLevel(Perks.SmallBlunt) <= 7 then
            player:getXp():AddXP(Perks.SmallBlunt, val * 4.2);
        elseif player:getPerkLevel(Perks.SmallBlunt) <= 8 then
            player:getXp():AddXP(Perks.SmallBlunt, val * 5.4);
        elseif player:getPerkLevel(Perks.SmallBlunt) <= 9 then
            player:getXp():AddXP(Perks.SmallBlunt, val * 6.5);
        else
            player:getXp():AddXP(Perks.SmallBlunt, val * 10.1);
        end
    end
end

-- 10 Проклятый Доктор (LongBlade)
function OnEat_AlcoholCursedDoctor(food, player, percent)
    local val = ZombRand(10,15);
    if player:getPerkLevel(Perks.LongBlade) <= 9 then
        if player:getPerkLevel(Perks.LongBlade) <= 3 then
            player:getXp():AddXP(Perks.LongBlade, val);
        elseif player:getPerkLevel(Perks.LongBlade) <= 4 then
            player:getXp():AddXP(Perks.LongBlade, val * 1.8);
        elseif player:getPerkLevel(Perks.LongBlade) <= 5 then
            player:getXp():AddXP(Perks.LongBlade, val * 2.2);
        elseif player:getPerkLevel(Perks.LongBlade) <= 6 then
            player:getXp():AddXP(Perks.LongBlade, val * 3);
        elseif player:getPerkLevel(Perks.LongBlade) <= 7 then
            player:getXp():AddXP(Perks.LongBlade, val * 4.2);
        elseif player:getPerkLevel(Perks.LongBlade) <= 8 then
            player:getXp():AddXP(Perks.LongBlade, val * 5.4);
        elseif player:getPerkLevel(Perks.LongBlade) <= 9 then
            player:getXp():AddXP(Perks.LongBlade, val * 6.5);
        else
            player:getXp():AddXP(Perks.LongBlade, val * 10.1);
        end
    end
end

-- 11 Мрачный барьер (SmallBlade)
function OnEat_AlcoholGrimBarrier(food, player, percent)
    local val = ZombRand(12,15);
    if player:getPerkLevel(Perks.SmallBlade) <= 9 then
        if player:getPerkLevel(Perks.SmallBlade) <= 3 then
            player:getXp():AddXP(Perks.SmallBlade, val);
        elseif player:getPerkLevel(Perks.SmallBlade) <= 4 then
            player:getXp():AddXP(Perks.SmallBlade, val * 1.8);
        elseif player:getPerkLevel(Perks.SmallBlade) <= 5 then
            player:getXp():AddXP(Perks.SmallBlade, val * 2.2);
        elseif player:getPerkLevel(Perks.SmallBlade) <= 6 then
            player:getXp():AddXP(Perks.SmallBlade, val * 3);
        elseif player:getPerkLevel(Perks.SmallBlade) <= 7 then
            player:getXp():AddXP(Perks.SmallBlade, val * 4.2);
        elseif player:getPerkLevel(Perks.SmallBlade) <= 8 then
            player:getXp():AddXP(Perks.SmallBlade, val * 5.4);
        elseif player:getPerkLevel(Perks.SmallBlade) <= 9 then
            player:getXp():AddXP(Perks.SmallBlade, val * 6.5);
        else
            player:getXp():AddXP(Perks.SmallBlade, val * 10.1);
        end
    end
end

-- 12 Драконье Дыхание (Spear)
function OnEat_AlcoholDragonsBreath(food, player, percent)
    local val = ZombRand(9,17);
    if player:getPerkLevel(Perks.Spear) <= 9 then
        if player:getPerkLevel(Perks.Spear) <= 3 then
            player:getXp():AddXP(Perks.Spear, val);
        elseif player:getPerkLevel(Perks.Spear) <= 4 then
            player:getXp():AddXP(Perks.Spear, val * 1.8);
        elseif player:getPerkLevel(Perks.Spear) <= 5 then
            player:getXp():AddXP(Perks.Spear, val * 2.2);
        elseif player:getPerkLevel(Perks.Spear) <= 6 then
            player:getXp():AddXP(Perks.Spear, val * 3);
        elseif player:getPerkLevel(Perks.Spear) <= 7 then
            player:getXp():AddXP(Perks.Spear, val * 4.2);
        elseif player:getPerkLevel(Perks.Spear) <= 8 then
            player:getXp():AddXP(Perks.Spear, val * 5.4);
        elseif player:getPerkLevel(Perks.Spear) <= 9 then
            player:getXp():AddXP(Perks.Spear, val * 6.5);
        else
            player:getXp():AddXP(Perks.Spear, val * 10.1);
        end
    end
end

-- 13 Демоническая сущность (Maintenance)
function OnEat_AlcoholDemonicEntity(food, player, percent)
    local val = ZombRand(7,15);
    if player:getPerkLevel(Perks.Maintenance) <= 9 then
        if player:getPerkLevel(Perks.Maintenance) <= 3 then
            player:getXp():AddXP(Perks.Maintenance, val);
        elseif player:getPerkLevel(Perks.Maintenance) <= 4 then
            player:getXp():AddXP(Perks.Maintenance, val * 1.8);
        elseif player:getPerkLevel(Perks.Maintenance) <= 5 then
            player:getXp():AddXP(Perks.Maintenance, val * 2.2);
        elseif player:getPerkLevel(Perks.Maintenance) <= 6 then
            player:getXp():AddXP(Perks.Maintenance, val * 3);
        elseif player:getPerkLevel(Perks.Maintenance) <= 7 then
            player:getXp():AddXP(Perks.Maintenance, val * 4.2);
        elseif player:getPerkLevel(Perks.Maintenance) <= 8 then
            player:getXp():AddXP(Perks.Maintenance, val * 5.4);
        elseif player:getPerkLevel(Perks.Maintenance) <= 9 then
            player:getXp():AddXP(Perks.Maintenance, val * 6.5);
        else
            player:getXp():AddXP(Perks.Maintenance, val * 10.1);
        end
    end
end

-- 14 Призрачная гончая (Woodwork)
function OnEat_AlcoholGhostHound(food, player, percent)
    local val = ZombRand(8,18);
    if player:getPerkLevel(Perks.Woodwork) <= 9 then
        if player:getPerkLevel(Perks.Woodwork) <= 3 then
            player:getXp():AddXP(Perks.Woodwork, val);
        elseif player:getPerkLevel(Perks.Woodwork) <= 4 then
            player:getXp():AddXP(Perks.Woodwork, val * 1.8);
        elseif player:getPerkLevel(Perks.Woodwork) <= 5 then
            player:getXp():AddXP(Perks.Woodwork, val * 2.2);
        elseif player:getPerkLevel(Perks.Woodwork) <= 6 then
            player:getXp():AddXP(Perks.Woodwork, val * 3);
        elseif player:getPerkLevel(Perks.Woodwork) <= 7 then
            player:getXp():AddXP(Perks.Woodwork, val * 4.2);
        elseif player:getPerkLevel(Perks.Woodwork) <= 8 then
            player:getXp():AddXP(Perks.Woodwork, val * 5.4);
        elseif player:getPerkLevel(Perks.Woodwork) <= 9 then
            player:getXp():AddXP(Perks.Woodwork, val * 6.5);
        else
            player:getXp():AddXP(Perks.Woodwork, val * 10.1);
        end
    end
end

-- 15 Некромантический Напиток (Cooking)
function OnEat_AlcoholNecromanticDrink(food, player, percent)
    local val = ZombRand(5,15);
    if player:getPerkLevel(Perks.Cooking) <= 9 then
        if player:getPerkLevel(Perks.Cooking) <= 3 then
            player:getXp():AddXP(Perks.Cooking, val);
        elseif player:getPerkLevel(Perks.Cooking) <= 4 then
            player:getXp():AddXP(Perks.Cooking, val * 1.8);
        elseif player:getPerkLevel(Perks.Cooking) <= 5 then
            player:getXp():AddXP(Perks.Cooking, val * 2.2);
        elseif player:getPerkLevel(Perks.Cooking) <= 6 then
            player:getXp():AddXP(Perks.Cooking, val * 3);
        elseif player:getPerkLevel(Perks.Cooking) <= 7 then
            player:getXp():AddXP(Perks.Cooking, val * 4.2);
        elseif player:getPerkLevel(Perks.Cooking) <= 8 then
            player:getXp():AddXP(Perks.Cooking, val * 5.4);
        elseif player:getPerkLevel(Perks.Cooking) <= 9 then
            player:getXp():AddXP(Perks.Cooking, val * 6.5);
        else
            player:getXp():AddXP(Perks.Cooking, val * 10.1);
        end
    end
end

-- 16 Астральный Эликсир (Farming)
function OnEat_AlcoholAstralElixir(food, player, percent)
    local val = ZombRand(10,20);
    if player:getPerkLevel(Perks.Farming) <= 9 then
        if player:getPerkLevel(Perks.Farming) <= 3 then
            player:getXp():AddXP(Perks.Farming, val);
        elseif player:getPerkLevel(Perks.Farming) <= 4 then
            player:getXp():AddXP(Perks.Farming, val * 1.8);
        elseif player:getPerkLevel(Perks.Farming) <= 5 then
            player:getXp():AddXP(Perks.Farming, val * 2.2);
        elseif player:getPerkLevel(Perks.Farming) <= 6 then
            player:getXp():AddXP(Perks.Farming, val * 3);
        elseif player:getPerkLevel(Perks.Farming) <= 7 then
            player:getXp():AddXP(Perks.Farming, val * 4.2);
        elseif player:getPerkLevel(Perks.Farming) <= 8 then
            player:getXp():AddXP(Perks.Farming, val * 5.4);
        elseif player:getPerkLevel(Perks.Farming) <= 9 then
            player:getXp():AddXP(Perks.Farming, val * 6.5);
        else
            player:getXp():AddXP(Perks.Farming, val * 10.1);
        end
    end
end

-- 17 Раненный Вурдалак (Doctor)
function OnEat_AlcoholWoundedGhoul(food, player, percent)
    local val = ZombRand(8,15);
    if player:getPerkLevel(Perks.Doctor) <= 9 then
        if player:getPerkLevel(Perks.Doctor) <= 3 then
            player:getXp():AddXP(Perks.Doctor, val);
        elseif player:getPerkLevel(Perks.Doctor) <= 4 then
            player:getXp():AddXP(Perks.Doctor, val * 1.8);
        elseif player:getPerkLevel(Perks.Doctor) <= 5 then
            player:getXp():AddXP(Perks.Doctor, val * 2.2);
        elseif player:getPerkLevel(Perks.Doctor) <= 6 then
            player:getXp():AddXP(Perks.Doctor, val * 3);
        elseif player:getPerkLevel(Perks.Doctor) <= 7 then
            player:getXp():AddXP(Perks.Doctor, val * 4.2);
        elseif player:getPerkLevel(Perks.Doctor) <= 8 then
            player:getXp():AddXP(Perks.Doctor, val * 5.4);
        elseif player:getPerkLevel(Perks.Doctor) <= 9 then
            player:getXp():AddXP(Perks.Doctor, val * 6.5);
        else
            player:getXp():AddXP(Perks.Doctor, val * 10.1);
        end
    end
end

-- 18 Смертельный Глоток (Electricity)
function OnEat_AlcoholDeadlyGulp(food, player, percent)
    local val = ZombRand(8,15);
    if player:getPerkLevel(Perks.Electricity) <= 9 then
        if player:getPerkLevel(Perks.Electricity) <= 3 then
            player:getXp():AddXP(Perks.Electricity, val);
        elseif player:getPerkLevel(Perks.Electricity) <= 4 then
            player:getXp():AddXP(Perks.Electricity, val * 1.8);
        elseif player:getPerkLevel(Perks.Electricity) <= 5 then
            player:getXp():AddXP(Perks.Electricity, val * 2.2);
        elseif player:getPerkLevel(Perks.Electricity) <= 6 then
            player:getXp():AddXP(Perks.Electricity, val * 3);
        elseif player:getPerkLevel(Perks.Electricity) <= 7 then
            player:getXp():AddXP(Perks.Electricity, val * 4.2);
        elseif player:getPerkLevel(Perks.Electricity) <= 8 then
            player:getXp():AddXP(Perks.Electricity, val * 5.4);
        elseif player:getPerkLevel(Perks.Electricity) <= 9 then
            player:getXp():AddXP(Perks.Electricity, val * 6.5);
        else
            player:getXp():AddXP(Perks.Electricity, val * 10.1);
        end
    end
end

-- 19 Пламенный Виски (Mechanics)
function OnEat_AlcoholFlamingWhiskey(food, player, percent)
    local val = ZombRand(6,13);
    if player:getPerkLevel(Perks.Mechanics) <= 9 then
        if player:getPerkLevel(Perks.Mechanics) <= 3 then
            player:getXp():AddXP(Perks.Mechanics, val);
        elseif player:getPerkLevel(Perks.Mechanics) <= 4 then
            player:getXp():AddXP(Perks.Mechanics, val * 1.8);
        elseif player:getPerkLevel(Perks.Mechanics) <= 5 then
            player:getXp():AddXP(Perks.Mechanics, val * 2.2);
        elseif player:getPerkLevel(Perks.Mechanics) <= 6 then
            player:getXp():AddXP(Perks.Mechanics, val * 3);
        elseif player:getPerkLevel(Perks.Mechanics) <= 7 then
            player:getXp():AddXP(Perks.Mechanics, val * 4.2);
        elseif player:getPerkLevel(Perks.Mechanics) <= 8 then
            player:getXp():AddXP(Perks.Mechanics, val * 5.4);
        elseif player:getPerkLevel(Perks.Mechanics) <= 9 then
            player:getXp():AddXP(Perks.Mechanics, val * 6.5);
        else
            player:getXp():AddXP(Perks.Mechanics, val * 10.1);
        end
    end
end

-- 20 ПЛАЧУЩИЙ_ДРАКОН (Tailoring)
function OnEat_AlcoholCryingDragon(food, player, percent)
    local val = ZombRand(8,15);
    if player:getPerkLevel(Perks.Tailoring) <= 9 then
        if player:getPerkLevel(Perks.Tailoring) <= 3 then
            player:getXp():AddXP(Perks.Tailoring, val);
        elseif player:getPerkLevel(Perks.Tailoring) <= 4 then
            player:getXp():AddXP(Perks.Tailoring, val * 1.8);
        elseif player:getPerkLevel(Perks.Tailoring) <= 5 then
            player:getXp():AddXP(Perks.Tailoring, val * 2.2);
        elseif player:getPerkLevel(Perks.Tailoring) <= 6 then
            player:getXp():AddXP(Perks.Tailoring, val * 3);
        elseif player:getPerkLevel(Perks.Tailoring) <= 7 then
            player:getXp():AddXP(Perks.Tailoring, val * 4.2);
        elseif player:getPerkLevel(Perks.Tailoring) <= 8 then
            player:getXp():AddXP(Perks.Tailoring, val * 5.4);
        elseif player:getPerkLevel(Perks.Tailoring) <= 9 then
            player:getXp():AddXP(Perks.Tailoring, val * 6.5);
        else
            player:getXp():AddXP(Perks.Tailoring, val * 10.1);
        end
    end
end

-- 21 Кровь дракона (MetalWelding)
function OnEat_AlcoholDragonBlood(food, player, percent)
    local val = ZombRand(8,15);
    if player:getPerkLevel(Perks.MetalWelding) <= 9 then
        if player:getPerkLevel(Perks.MetalWelding) <= 3 then
            player:getXp():AddXP(Perks.MetalWelding, val);
        elseif player:getPerkLevel(Perks.MetalWelding) <= 4 then
            player:getXp():AddXP(Perks.MetalWelding, val * 1.8);
        elseif player:getPerkLevel(Perks.MetalWelding) <= 5 then
            player:getXp():AddXP(Perks.MetalWelding, val * 2.2);
        elseif player:getPerkLevel(Perks.MetalWelding) <= 6 then
            player:getXp():AddXP(Perks.MetalWelding, val * 3);
        elseif player:getPerkLevel(Perks.MetalWelding) <= 7 then
            player:getXp():AddXP(Perks.MetalWelding, val * 4.2);
        elseif player:getPerkLevel(Perks.MetalWelding) <= 8 then
            player:getXp():AddXP(Perks.MetalWelding, val * 5.4);
        elseif player:getPerkLevel(Perks.MetalWelding) <= 9 then
            player:getXp():AddXP(Perks.MetalWelding, val * 6.5);
        else
            player:getXp():AddXP(Perks.MetalWelding, val * 10.1);
        end
    end
end

-- 22 Морковный коктель (Fishing)
function OnEat_AlcoholCarrotCocktail(food, player, percent)
    local val = ZombRand(7,12);
    if player:getPerkLevel(Perks.Fishing) <= 9 then
        if player:getPerkLevel(Perks.Fishing) <= 3 then
            player:getXp():AddXP(Perks.Fishing, val);
        elseif player:getPerkLevel(Perks.Fishing) <= 4 then
            player:getXp():AddXP(Perks.Fishing, val * 1.8);
        elseif player:getPerkLevel(Perks.Fishing) <= 5 then
            player:getXp():AddXP(Perks.Fishing, val * 2.2);
        elseif player:getPerkLevel(Perks.Fishing) <= 6 then
            player:getXp():AddXP(Perks.Fishing, val * 3);
        elseif player:getPerkLevel(Perks.Fishing) <= 7 then
            player:getXp():AddXP(Perks.Fishing, val * 4.2);
        elseif player:getPerkLevel(Perks.Fishing) <= 8 then
            player:getXp():AddXP(Perks.Fishing, val * 5.4);
        elseif player:getPerkLevel(Perks.Fishing) <= 9 then
            player:getXp():AddXP(Perks.Fishing, val * 6.5);
        else
            player:getXp():AddXP(Perks.Fishing, val * 10.1);
        end
    end
end

-- 23 Полуночный мститель (Reloading)
function OnEat_AlcoholMidnightAvenger(food, player, percent)
    local val = ZombRand(13,15);
    if player:getPerkLevel(Perks.Reloading) <= 9 then
        if player:getPerkLevel(Perks.Reloading) <= 3 then
            player:getXp():AddXP(Perks.Reloading, val);
        elseif player:getPerkLevel(Perks.Reloading) <= 4 then
            player:getXp():AddXP(Perks.Reloading, val * 1.8);
        elseif player:getPerkLevel(Perks.Reloading) <= 5 then
            player:getXp():AddXP(Perks.Reloading, val * 2.2);
        elseif player:getPerkLevel(Perks.Reloading) <= 6 then
            player:getXp():AddXP(Perks.Reloading, val * 3);
        elseif player:getPerkLevel(Perks.Reloading) <= 7 then
            player:getXp():AddXP(Perks.Reloading, val * 4.2);
        elseif player:getPerkLevel(Perks.Reloading) <= 8 then
            player:getXp():AddXP(Perks.Reloading, val * 5.4);
        elseif player:getPerkLevel(Perks.Reloading) <= 9 then
            player:getXp():AddXP(Perks.Reloading, val * 6.5);
        else
            player:getXp():AddXP(Perks.Reloading, val * 10.1);
        end
    end
end

-- 24 Кровь героя (Aiming)
function OnEat_AlcoholBloodOfHero(food, player, percent)
    local val = ZombRand(11,14);
    if player:getPerkLevel(Perks.Aiming) <= 9 then
        if player:getPerkLevel(Perks.Aiming) <= 3 then
            player:getXp():AddXP(Perks.Aiming, val);
        elseif player:getPerkLevel(Perks.Aiming) <= 4 then
            player:getXp():AddXP(Perks.Aiming, val * 1.8);
        elseif player:getPerkLevel(Perks.Aiming) <= 5 then
            player:getXp():AddXP(Perks.Aiming, val * 2.2);
        elseif player:getPerkLevel(Perks.Aiming) <= 6 then
            player:getXp():AddXP(Perks.Aiming, val * 3);
        elseif player:getPerkLevel(Perks.Aiming) <= 7 then
            player:getXp():AddXP(Perks.Aiming, val * 4.2);
        elseif player:getPerkLevel(Perks.Aiming) <= 8 then
            player:getXp():AddXP(Perks.Aiming, val * 5.4);
        elseif player:getPerkLevel(Perks.Aiming) <= 9 then
            player:getXp():AddXP(Perks.Aiming, val * 6.5);
        else
            player:getXp():AddXP(Perks.Aiming, val * 10.1);
        end
    end
end

-- 25 Часовщик (Trapping)
function OnEat_AlcoholWatchmaker(food, player, percent)
    local val = ZombRand(12,14);
    if player:getPerkLevel(Perks.Trapping) <= 9 then
        if player:getPerkLevel(Perks.Trapping) <= 3 then
            player:getXp():AddXP(Perks.Trapping, val);
        elseif player:getPerkLevel(Perks.Trapping) <= 4 then
            player:getXp():AddXP(Perks.Trapping, val * 1.8);
        elseif player:getPerkLevel(Perks.Trapping) <= 5 then
            player:getXp():AddXP(Perks.Trapping, val * 2.2);
        elseif player:getPerkLevel(Perks.Trapping) <= 6 then
            player:getXp():AddXP(Perks.Trapping, val * 3);
        elseif player:getPerkLevel(Perks.Trapping) <= 7 then
            player:getXp():AddXP(Perks.Trapping, val * 4.2);
        elseif player:getPerkLevel(Perks.Trapping) <= 8 then
            player:getXp():AddXP(Perks.Trapping, val * 5.4);
        elseif player:getPerkLevel(Perks.Trapping) <= 9 then
            player:getXp():AddXP(Perks.Trapping, val * 6.5);
        else
            player:getXp():AddXP(Perks.Trapping, val * 10.1);
        end
    end
end

-- 26 Выживший (PlantScavenging)
function OnEat_AlcoholSurvivor(food, player, percent)
    local val = ZombRand(9,12);
    if player:getPerkLevel(Perks.PlantScavenging) <= 9 then
        if player:getPerkLevel(Perks.PlantScavenging) <= 3 then
            player:getXp():AddXP(Perks.PlantScavenging, val);
        elseif player:getPerkLevel(Perks.PlantScavenging) <= 4 then
            player:getXp():AddXP(Perks.PlantScavenging, val * 1.8);
        elseif player:getPerkLevel(Perks.PlantScavenging) <= 5 then
            player:getXp():AddXP(Perks.PlantScavenging, val * 2.2);
        elseif player:getPerkLevel(Perks.PlantScavenging) <= 6 then
            player:getXp():AddXP(Perks.PlantScavenging, val * 3);
        elseif player:getPerkLevel(Perks.PlantScavenging) <= 7 then
            player:getXp():AddXP(Perks.PlantScavenging, val * 4.2);
        elseif player:getPerkLevel(Perks.PlantScavenging) <= 8 then
            player:getXp():AddXP(Perks.PlantScavenging, val * 5.4);
        elseif player:getPerkLevel(Perks.PlantScavenging) <= 9 then
            player:getXp():AddXP(Perks.PlantScavenging, val * 6.5);
        else
            player:getXp():AddXP(Perks.PlantScavenging, val * 10.1);
        end
    end
end

-- 27 Ночная Тень Эмриты (Random)
function OnEat_AlcoholEmritasNightShadow(food, player, percent)
    local val = ZombRand(12, 20)
    local rnd = ZombRand(1,27)
    local text
    
    if rnd >= 1 and rnd <= 26 then
        local perkNames = {
            [1] = "Strength",
            [2] = "Fitness",
            [3] = "Sprinting",
            [4] = "Lightfoot",
            [5] = "Nimble",
            [6] = "Sneak",
            [7] = "Axe",
            [8] = "Blunt",
            [9] = "SmallBlunt",
            [10] = "LongBlade",
            [11] = "SmallBlade",
            [12] = "Spear",
            [13] = "Maintenance",
            [14] = "Woodwork",
            [15] = "Cooking",
            [16] = "Farming",
            [17] = "Doctor",
            [18] = "Electricity",
            [19] = "MetalWelding",
            [20] = "Mechanics",
            [21] = "Aiming",
            [22] = "Reloading",
            [23] = "Fishing",
            [24] = "Trapping",
            [25] = "PlantScavenging",
            [26] = "Tailoring"
        }
        
        text = perkNames[rnd]
    else
        text = "PlantScavenging"
    end
    
    local perkLevel = player:getPerkLevel(Perks[text])
    local xpMultiplier = 1.0
    
    if perkLevel <= 9 then
        if perkLevel <= 3 then
            xpMultiplier = 1.0
        elseif perkLevel <= 4 then
            xpMultiplier = 1.8
        elseif perkLevel <= 5 then
            xpMultiplier = 2.2
        elseif perkLevel <= 6 then
            xpMultiplier = 3.0
        elseif perkLevel <= 7 then
            xpMultiplier = 4.2
        elseif perkLevel <= 8 then
            xpMultiplier = 5.4
        elseif perkLevel <= 9 then
            xpMultiplier = 6.5
        else
            xpMultiplier = 10.1
        end
    end
    
    local xpToAdd = val * xpMultiplier
    player:getXp():AddXP(Perks[text], xpToAdd)
end