$scoreboard players set .global_sitting sitanywhere_settings $(global)
$scoreboard players set .block_sitting sitanywhere_settings $(block)
$scoreboard players set .block_type sitanywhere_settings $(type)
$scoreboard players set .broadcast sitanywhere_settings $(broadcast)

execute if score .block_type sitanywhere_settings matches 1 run scoreboard players set .sit_on_stairs sitanywhere_settings 1
execute if score .block_type sitanywhere_settings matches 1 run scoreboard players set .sit_on_slabs sitanywhere_settings 1

execute if score .block_type sitanywhere_settings matches 2 run scoreboard players set .sit_on_stairs sitanywhere_settings 1
execute if score .block_type sitanywhere_settings matches 2 run scoreboard players set .sit_on_slabs sitanywhere_settings 0

execute if score .block_type sitanywhere_settings matches 3 run scoreboard players set .sit_on_stairs sitanywhere_settings 0
execute if score .block_type sitanywhere_settings matches 3 run scoreboard players set .sit_on_slabs sitanywhere_settings 1

execute if score .broadcast sitanywhere_settings matches 1 run function sitanywhere:settings/broadcast