tellraw @a[tag=sitanywhere-debug] "sitanywhere:system/sit/block/init"

advancement revoke @s only sitanywhere:detect_interaction_block

# check if the player interacting with the interaction is on the same block as the interaction, if not, don't do anything
# warn-off execute-group
execute align xyz positioned ~.5 ~ ~.5 if entity @e[tag=sitanywhere_sit,limit=1,sort=nearest,tag=block,distance=...1,type=interaction] positioned ~ ~.5 ~ run function sitanywhere:system/sit/init
# if on top of stairs
execute align xyz positioned ~.5 ~-1 ~.5 if entity @e[tag=sitanywhere_sit,limit=1,sort=nearest,tag=block,distance=...1,type=interaction] positioned ~ ~.5 ~ run function sitanywhere:system/sit/init

