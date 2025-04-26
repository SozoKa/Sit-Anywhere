# 
# Datapack made by SozoKa!
# Copyright (c) 2023 SozoKa. All rights reserved.
# 
# Permission is granted to use, copy, modify, and distribute
# this data pack and its documentation for any purpose.
# 
# A little credit is still apreciated :)
# 

kill @e[type=block_display,tag=sit,limit=1,sort=nearest]
tag @s remove is_sitting
playsound minecraft:item.bundle.insert player @s ~ ~ ~ 1 1.25
tp @s ~ ~.2 ~