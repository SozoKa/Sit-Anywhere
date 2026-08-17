## TEST FOR GLOBAL SITTING
# if player has a timer, is not sitting, and is not sneaking, then decrement timer
execute as @a[scores={sitanywhere_sneak_timer=1..},tag=!is_sitting,predicate=!sitanywhere:is_sneaking] run scoreboard players remove @s sitanywhere_sneak_timer 1
# if player is not sitting, is sneaking, and is looking down
# and if player has no interaction entity near, then run try function
execute as @a[tag=!is_sitting,predicate=sitanywhere:is_sneaking,x_rotation=85..90] at @s unless entity @e[tag=sitanywhere_sit,tag=global,distance=...01,type=interaction] run function sitanywhere:system/sit/global/try

## KILL INTERACTION ENTITIES IF PLAYER DO NOT MEET CONDITIONS ANYMORE
execute as @a[tag=sitanywhere_testfor_global,x_rotation=..85] at @s run function sitanywhere:system/sit/global/stop_test
## KILL INTERACTION ENTITIES IF PLAYER IS NOT NEAR THEM ANYMORE
execute as @a at @s as @e[distance=..3,tag=sitanywhere_sit,tag=global,type=interaction] at @s unless entity @p[distance=..0.01] run function sitanywhere:system/sit/global/as_interaction_stop

## ACTION BAR MESSAGE
execute as @a[tag=sitanywhere_testfor_global] run title @s actionbar {"translate":"sitanywhere.actionbar","fallback":"Unhold %s and use %s to Sit","with":[{"keybind":"key.sneak"},{"keybind":"key.use"}]}