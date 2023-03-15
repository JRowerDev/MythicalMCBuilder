#built using mc-build (https://github.com/mc-build/mc-build)

execute as @e[tag=forge] at @s run function mythical:forge_recipes
execute as @e[type=item, nbt={Item:{id:"minecraft:nether_star", tag:{forge_catalyst:1b}, Count:1b}}] at @s run execute if block ~ ~ ~ anvil run function mythical:summon