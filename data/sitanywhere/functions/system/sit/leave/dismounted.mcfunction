kill @e[tag=sitanywhere_sit,limit=1,sort=nearest,distance=0..,type=block_display]
tag @s remove is_sitting
playsound minecraft:item.bundle.insert player @s ~ ~ ~ 1 1.25
tp @s ~ ~.3 ~