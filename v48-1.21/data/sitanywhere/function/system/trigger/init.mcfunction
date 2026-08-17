tellraw @a[tag=sitanywhere-debug] "sitanywhere:system/trigger/init"


execute if block ~ ~-1 ~ air run function sitanywhere:system/trigger/cant_use_command
execute unless block ~ ~-1 ~ air run function sitanywhere:system/sit/init
