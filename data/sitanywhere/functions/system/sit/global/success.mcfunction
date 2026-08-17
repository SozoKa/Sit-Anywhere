tellraw @a[tag=sitanywhere-debug] "sitanywhere:system/sit/global/success"

# set timer to 1 for a better reset
scoreboard players set @s sitanywhere_sneak_timer 1
tag @s add sitanywhere_testfor_global
kill @e[tag=sitanywhere_sit,tag=global,distance=...01,type=interaction]
summon interaction ~ ~ ~ {Tags:["sitanywhere_sit","global"],width:0.05F,height:1.8F}