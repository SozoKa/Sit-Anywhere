tellraw @a[tag=sitanywhere-debug] "sitanywhere:system/trigger/cant_use_command"

scoreboard players reset @s sit
tellraw @s {"translate":"sitanywhere.trigger.cant_use","fallback":"You can't use the sit command here!","color":"red"}