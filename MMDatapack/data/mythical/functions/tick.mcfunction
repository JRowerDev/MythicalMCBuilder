#built using mc-build (https://github.com/mc-build/mc-build)

execute as @e[type=item, nbt={OnGround:1b, Item:{id:"minecraft:iron_ingot", Count:1b}}] at @s as @e[type=item, nbt={OnGround:1b, Item:{id:"minecraft:blaze_powder", Count:1b}},limit=1,sort=nearest,distance=0..1] at @s as @e[type=item, nbt={OnGround:1b, Item:{id:"minecraft:coal", Count:1b}},limit=1,sort=nearest,distance=0..1] at @s as @e[type=item, nbt={OnGround:1b, Item:{id:"minecraft:coal", Count:1b}},limit=1,sort=nearest,distance=0..1] run function mythical:give_steel
execute as @e[tag=forge] at @s run function mythical:forge_recipes
execute as @e[type=item, nbt={Item:{id:"minecraft:nether_star", tag:{forge_catalyst:1b}, Count:1b}}] at @s run execute if block ~ ~ ~ anvil run function mythical:summon