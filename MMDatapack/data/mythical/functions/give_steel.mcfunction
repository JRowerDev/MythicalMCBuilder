#built using mc-build (https://github.com/mc-build/mc-build)

summon item ~ ~ ~ {Item:{id:"minecraft:iron_ingot",Count:1b, tag:{display:{Name:'{"text":"Steel Ingot"}',Lore:['{"text":"Steel Forged with the heat of the Nether."}']},CustomModelData:123002,steel:1b}}, Tags:["steel"]}
execute as @e[tag=steel] at @s run kill @e[type=item, nbt={Item:{id:"minecraft:iron_ingot", Count:1b}}, limit=1]
execute as @e[tag=steel] at @s run kill @e[type=item, nbt={Item:{id:"minecraft:blaze_powder", Count:1b}}, limit=1]
execute as @e[tag=steel] at @s run kill @e[type=item, nbt={Item:{id:"minecraft:coal", Count:1b}}, limit=2]
execute as @e[tag=steel] at @s run playsound minecraft:block.anvil.place master @a ~ ~ ~ 1 1
execute as @e[tag=steel] at @s run playsound minecraft:entity.lightning_bolt.impact master @a ~ ~ ~ 1 1
execute as @e[tag=steel] at @s run particle minecraft:smoke ~ ~ ~ 0.5 0.5 0.5 0.1 10