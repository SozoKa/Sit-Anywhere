# 
# Datapack made by SozoKa!
# Copyright (c) 2025 SozoKa. All rights reserved.
# 
# Permission is granted to use, copy, modify, and distribute
# this data pack and its documentation for any purpose.
# 
# A little credit is still apreciated :)
# 

## test for player that want to sit anywhere
execute as @a[tag=!is_sitting,predicate=!sitanywhere:is_sneaking] if score @s sitanywhere_sneak_parameter matches 1.. run scoreboard players remove @s sitanywhere_sneak_parameter 1
execute as @a[tag=!is_sitting,predicate=sitanywhere:is_sneaking,x_rotation=85..90] at @s unless entity @e[type=interaction,tag=sit,tag=global,distance=...1] run function sitanywhere:global_sit_init

## kill global interaction entity if player does not meet the condition anymore
execute as @a[predicate=!sitanywhere:is_sneaking,x_rotation=..85] at @s if entity @e[type=interaction,tag=sit,tag=global,distance=...001] run kill @e[type=interaction,tag=sit,tag=global,distance=...001]
execute as @a at @s as @e[distance=..3,type=interaction,tag=sit,tag=global] at @s unless entity @p[distance=..0.01] run kill @s

## test for player that want to sit on stair / slab
execute as @a[tag=!is_sitting,predicate=!sitanywhere:is_sneaking,x_rotation=45..] at @s if block ~ ~-.1 ~ #minecraft:stairs[half=bottom] unless entity @e[type=interaction,tag=sit,distance=..1.5] positioned ~ ~-0.1 ~ align xyz run summon interaction ~.501 ~ ~.501 {Tags:["sit","stair_or_slab"],width:0.98F,height:1.01F}
execute as @a[tag=!is_sitting,predicate=!sitanywhere:is_sneaking,x_rotation=45..] at @s if block ~ ~-.1 ~ #minecraft:slabs[type=bottom] unless entity @e[type=interaction,tag=sit,distance=..1] positioned ~ ~-0.1 ~ align xyz run summon interaction ~.501 ~ ~.501 {Tags:["sit","stair_or_slab"],width:0.98F,height:0.51F}

## kill specific interaction entity if player does not meet the condition anymore
execute as @a[predicate=!sitanywhere:is_sneaking,x_rotation=..45] at @s if entity @e[type=interaction,tag=site ,distance=..1.5] run kill @e[type=interaction,tag=sit,tag=stair_or_slab,distance=..1.5]
execute as @a[predicate=sitanywhere:is_sneaking] at @s if entity @e[type=interaction,tag=sit,distance=..1.5] run kill @e[type=interaction,tag=sit,tag=stair_or_slab,distance=..1.5]
execute as @e[type=interaction,tag=sit,tag=stair_or_slab] at @s at @p align xyz positioned ~.5 ~ ~.5 unless entity @s[distance=...01] positioned ~ ~-1 ~ unless entity @s[distance=...01] run kill @s

## action bar message
execute as @a at @s if entity @e[distance=...1,type=interaction,tag=sit,tag=global] run title @s actionbar {"text":"Unhold Sneak and Right-Click to Sit"}

## if block on "sit" is air/broken, remove it
execute as @e[type=block_display,tag=sit] at @s if block ~ ~ ~ air run kill @s

## if player is not on "sit", dismount them properly
execute as @a[tag=is_sitting] unless data entity @s RootVehicle.Entity.block_state unless data entity @s RootVehicle at @s run function sitanywhere:player_dismounted
execute as @a[tag=is_sitting] unless data entity @s RootVehicle.Entity.block_state if data entity @s RootVehicle at @s run function sitanywhere:player_dismounted_on_other_vehicle

## custom sit command "trigger"
scoreboard players enable @a[tag=!is_sitting] sit
execute as @a[tag=!is_sitting] if score @s sit matches 1.. run function sitanywhere:sit_on_block