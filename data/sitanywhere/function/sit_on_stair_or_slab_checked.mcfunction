# 
# Datapack made by SozoKa!
# Copyright (c) 2025 SozoKa. All rights reserved.
# 
# Permission is granted to use, copy, modify, and distribute
# this data pack and its documentation for any purpose.
# 
# A little credit is still apreciated :)
# 

execute as @e[type=interaction,tag=sit,limit=1,sort=nearest] at @s align xyz run summon minecraft:block_display ~.5 ~.4 ~.5 {Tags:[sit]}
ride @s mount @e[type=block_display,tag=sit,limit=1,sort=nearest]
playsound minecraft:item.bundle.insert player @s ~ ~ ~ 1 0.8
tag @s add is_sitting