# 
# Datapack made by SozoKa!
# Copyright (c) 2025 SozoKa. All rights reserved.
# 
# Permission is granted to use, copy, modify, and distribute
# this data pack and its documentation for any purpose.
# 
# A little credit is still apreciated :)
# 

advancement revoke @s only sitanywhere:detect_interaction_block
summon minecraft:block_display ~ ~-.1 ~ {Tags:[sit]}
ride @s mount @e[type=block_display,tag=sit,limit=1,sort=nearest]
playsound minecraft:item.bundle.insert player @s ~ ~ ~ 1 0.8
tag @s add is_sitting
scoreboard players reset @s sit