# 
# Datapack made by SozoKa!
# Copyright (c) 2025 SozoKa. All rights reserved.
# 
# Permission is granted to use, copy, modify, and distribute
# this data pack and its documentation for any purpose.
# 
# A little credit is still apreciated :)
# 

advancement revoke @s only sitanywhere:detect_interaction_stair_or_slab
execute at @s align xyz positioned ~.5 ~ ~.5 if entity @e[type=interaction,tag=sit,tag=stair_or_slab,distance=...1] run function sitanywhere:sit_on_stair_or_slab_checked
execute at @s align xyz positioned ~.5 ~-1 ~.5 if entity @e[type=interaction,tag=sit,limit=1,sort=nearest,distance=...1] run function sitanywhere:sit_on_stair_or_slab_checked