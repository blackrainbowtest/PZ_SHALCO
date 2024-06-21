require 'Items/SuburbsDistributions'
require 'Items/ProceduralDistributions'

LootRarity = {}
LootRarity.Common = 15
LootRarity.Uncommon = 8
LootRarity.Rare = 3
LootRarity.Elite = 1
LootRarity.VeryRare = 0.5
LootRarity.ExtraRare = 0.01

local suburbsDistribution = {
    -- общее
    all = {
        -- Zombie female inventory
        inventoryfemale = {
            items = {
                -- "SHALCO.itemName", LootRarity.ExtraRare,
            }
        },
        -- Zombie male inventory
        inventorymale = {
            items = {
                -- "SHALCO.itemName", LootRarity.ExtraRare,
            }
        },
        Outfit_Farmer = {
            items = {
                -- "SHALCO.itemName", LootRarity.ExtraRare,
            }
        }
    },
    -- большая походная сумка
    Bag_BigHikingBag = {
        items = {
        },
    },
    -- обычная походная сумка
    Bag_NormalHikingBag = {
        items = {
        },
    },
    -- сумка выжившего
    Bag_SurvivorBag = {
        items = {
        },
    },
}

local proceduralDistributions = {
    list = {
        ArmyStorageMedical = {
            items = {
                -- "Base.HeartRateMonitorLeft", LootRarity.ExtraRare,
            },
        },
    }
}

for location, data in pairs(suburbsDistribution.all) do
    for _, value in ipairs(data.items) do
        table.insert(SuburbsDistributions['all'][location].items, value);
    end
end

for location, data in pairs(proceduralDistributions.list) do
    for _, value in ipairs(data.items) do
        table.insert(ProceduralDistributions['list'][location].items, value);
    end
end