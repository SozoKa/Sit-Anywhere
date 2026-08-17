# disable sit command
scoreboard players reset @s sit

# add sit tag
tag @s add is_sitting

# create sit and make the player ride it + sound
summon minecraft:block_display ~ ~-.3 ~ {Tags:[sitanywhere_sit]}
ride @s mount @e[tag=sitanywhere_sit,limit=1,sort=nearest,distance=0..,type=block_display]
playsound minecraft:item.bundle.insert player @s ~ ~ ~ 1 0.8