## TEST FOR PLAYER THAT WANT TO SIT ON STAIR / SLAB
execute if score .sit_on_stairs sitanywhere_settings matches 1 \
as @a[predicate=!sitanywhere:is_sneaking,tag=!is_sitting,x_rotation=45..90] at @s \
if block ~ ~-.25 ~ #minecraft:stairs[half=bottom] \
align xyz positioned ~.5 ~ ~.5 \
unless entity @e[tag=sitanywhere_sit,distance=...01,type=interaction] \
positioned ~ ~-1 ~ \
unless entity @e[tag=sitanywhere_sit,distance=...01,type=interaction] \
at @s positioned ~ ~-.25 ~ align xyz \
run summon interaction ~.501 ~ ~.501 {Tags:["sitanywhere_sit","block"],width:0.98F,height:1.01F}

execute if score .sit_on_slabs sitanywhere_settings matches 1 \
as @a[predicate=!sitanywhere:is_sneaking,tag=!is_sitting,x_rotation=45..90] at @s \
if block ~ ~-.25 ~ #minecraft:slabs[type=bottom] \
align xyz positioned ~.5 ~ ~.5 \
unless entity @e[tag=sitanywhere_sit,distance=...01,type=interaction] \
at @s positioned ~ ~-.25 ~ align xyz \
run summon interaction ~.501 ~ ~.501 {Tags:["sitanywhere_sit","block"],width:0.98F,height:0.51F}

## KILL SPECIFIC INTERACTION ENTITY IF PLAYER DOES NOT MEET THE CONDITION ANYMORE
execute as @a[predicate=!sitanywhere:is_sneaking,x_rotation=-90..45] at @s align xyz positioned ~.5 ~ ~.5 as @e[distance=...1,tag=sitanywhere_sit,tag=block,type=interaction] run function sitanywhere:system/sit/block/kill_interaction
execute as @a[predicate=sitanywhere:is_sneaking] at @s align xyz positioned ~.5 ~ ~.5 as @e[distance=...1,tag=sitanywhere_sit,tag=block,type=interaction] run function sitanywhere:system/sit/block/kill_interaction
execute as @a[predicate=sitanywhere:is_sneaking] at @s align xyz positioned ~.5 ~-1 ~.5 as @e[distance=...1,tag=sitanywhere_sit,tag=block,type=interaction] run function sitanywhere:system/sit/block/kill_interaction
# warn-off target-selector-no-dimension execute-duplicate
execute as @e[tag=sitanywhere_sit,tag=block,type=interaction] at @s at @p align xyz positioned ~.5 ~ ~.5 unless entity @s[distance=...01] positioned ~ ~-1 ~ unless entity @s[distance=...1] run function sitanywhere:system/sit/block/kill_interaction