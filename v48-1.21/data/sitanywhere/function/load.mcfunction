# Datapack made by SozoKa! (https://www.youtube.com/@SozoKa)
# Link: https://modrinth.com/datapack/sit-anywhere!
# 
# Feel free to use this datapack in your own worlds, modpacks, servers !
# But please do not claim it as your own.
# 
# A little credit is still apreciated :)

## LOAD MESSAGE
tellraw @a[tag=convention.debug] {"text":"§7■§6§l Sit Anywhere §8§l| §7By §cSozoKa §8- §7running!"}

## SCOREBOARDS
scoreboard objectives add sitanywhere_sneak_timer dummy
scoreboard objectives add sitanywhere_settings dummy
scoreboard objectives add sit trigger

# set default values for settings
execute unless score .global_sitting sitanywhere_settings matches 0.. run scoreboard players set .global_sitting sitanywhere_settings 1
execute unless score .block_sitting sitanywhere_settings matches 0.. run scoreboard players set .block_sitting sitanywhere_settings 1
execute unless score .sit_on_slabs sitanywhere_settings matches 0.. run scoreboard players set .sit_on_slabs sitanywhere_settings 1
execute unless score .sit_on_stairs sitanywhere_settings matches 0.. run scoreboard players set .sit_on_stairs sitanywhere_settings 1