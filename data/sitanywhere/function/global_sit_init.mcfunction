# 
# Datapack made by SozoKa!
# Copyright (c) 2025 SozoKa. All rights reserved.
# 
# Permission is granted to use, copy, modify, and distribute
# this data pack and its documentation for any purpose.
# 
# A little credit is still apreciated :)
# 

execute if score @s sitanywhere_sneak_parameter matches 1..2 run function sitanywhere:global_sit_success
execute unless score @s sitanywhere_sneak_parameter matches 1.. run scoreboard players set @s sitanywhere_sneak_parameter 3
