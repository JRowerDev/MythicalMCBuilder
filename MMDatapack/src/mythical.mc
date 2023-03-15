# Tick
function tick {
    #Forge Crafting Check
    execute as @e[tag=forge] at @s run function mythical:forge_recipes

    #Forge Placement
    execute as @e[type=item, nbt={Item:{id:"minecraft:nether_star", tag:{forge_catalyst:1b}, Count:1b}}] at @s run execute if block ~ ~ ~ anvil run function mythical:summon
}

function load {
    say Mythical loaded
}

function give_steel {
    give @s iron_ingot{display:{Name:'{"text":"Steel Ingot","color":"dark_gray","bold":true}'},steel:1b} 1
}

function summon {
    execute align xz positioned ~0.5 ~ ~0.5 run summon minecraft:armor_stand ~ ~ ~ {Tags:["forge"], Invisible:1b, NoGravity:1b}
    setblock ~ ~ ~ minecraft:dropper{CustomName:'{"text":"Otherworldy Forge"}'}
    execute as @e[tag=forge] at @s run kill @e[type=item, nbt={Item:{id:"minecraft:nether_star", tag:{forge_catalyst:1b}, Count:1b}}, limit=1]
}

function give_forge_cat {
    recipe take @s mythical:forge_catalyst
    advancement revoke @s only mythical:forge_cat_adv
    give @s nether_star{display:{Name:'{"text":"Forge Catalyst","color":"red","bold":true}',Lore:['{"text":"Throw on an anvil to create a Mystical Forge"}']},HideFlags:1,CustomModelData:123003,forge_catalyst:1b,Enchantments:[{}]} 1
    clear @s minecraft:fire_charge
}

function forge_recipes {
    execute (if block ~ ~ ~ dropper{Items:[{Slot:0b,id:"minecraft:iron_ingot",Count:1b,tag:{steel:1b}},{Slot:1b,id:"minecraft:netherite_ingot",Count:1b},{Slot:2b,id:"minecraft:iron_ingot",Count:1b,tag:{steel:1b}},{Slot:4b,id:"minecraft:blaze_rod",Count:1b},{Slot:7b,id:"minecraft:blaze_rod",Count:1b}]}) {
        data merge block ~ ~ ~ {Items:[{Slot:4b, id:"minecraft:netherite_pickaxe", Count:1b, tag:{display:{Name:'{"text":"Nether-Forged Pickaxe","color":"dark_aqua","italic":true}'},HideFlags:7,Unbreakable:1b,netherpick:1b,Enchantments:[{id:"minecraft:efficiency",lvl:4s}]}}]}
    }
}