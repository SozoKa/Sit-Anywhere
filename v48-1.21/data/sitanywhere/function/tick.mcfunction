#                  #
## GLOBAL SITTING ##
#                  #

execute if score .global_sitting sitanywhere_settings matches 1.. run function sitanywhere:system/sit/global/tick

#                  #
## BLOCKS SITTING ##
#                  #

execute if score .block_sitting sitanywhere_settings matches 1.. run function sitanywhere:system/sit/block/tick

#           #
## TRIGGER ##
#           #

scoreboard players enable @a[tag=!is_sitting] sit
execute as @a[tag=!is_sitting] if score @s sit matches 1.. at @s run function sitanywhere:system/trigger/init

#         #
## OTHER ##
#         #

## if block under "sit" is air/broken, remove it
execute as @e[tag=sitanywhere_sit,distance=0..,type=block_display] at @s if block ~ ~-.1 ~ air run kill @s

## if player is not on "sit", dismount them properly
execute as @a[tag=is_sitting] unless data entity @s RootVehicle.Entity.block_state run function sitanywhere:system/sit/leave/init

