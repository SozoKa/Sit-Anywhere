# 
# Datapack made by SozoKa!
# Copyright (c) 2023 SozoKa. All rights reserved.
# 
# Permission is granted to use, copy, modify, and distribute
# this data pack and its documentation for any purpose.
# 
# A little credit is still apreciated :)
# 

execute as @a[predicate=sitanywhere:is_sneaking,x_rotation=90] at @s unless entity @e[type=interaction,tag=sit,distance=...1] run summon interaction ~ ~ ~ {Tags:["sit"],width:0.01F,height:1.8F}
execute as @a[predicate=!sitanywhere:is_sneaking,x_rotation=..85] at @s if entity @e[type=interaction,tag=sit,distance=...001] run kill @e[type=interaction,tag=sit,distance=...001]
execute as @e[type=interaction,tag=sit] at @s if entity @p[distance=.001..] run kill @s

execute as @a[tag=is_sitting] unless data entity @s RootVehicle at @s run function sitanywhere:player_dismounted
