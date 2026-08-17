tellraw @a[tag=sitanywhere-debug] "sitanywhere:system/sit/global/stop_test"

tag @s remove sitanywhere_testfor_global
scoreboard players set @s sitanywhere_sneak_timer 0
kill @e[tag=sitanywhere_sit,tag=global,distance=...01,type=interaction]