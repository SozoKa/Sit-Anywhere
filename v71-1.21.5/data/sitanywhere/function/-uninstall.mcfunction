scoreboard objectives remove sitanywhere_sneak_timer
scoreboard objectives remove sitanywhere_settings
scoreboard objectives remove sit

kill @e[tag=sitanywhere_sit]

tellraw @s [{translate:"sitanywhere.uninstall.message1",fallback:"Sit Anywhere has been uninstalled.\n\nPlease remove the datapack from your world to complete the uninstallation.\n\nIf you reload the world with the datapack enabled, it will recreate the scoreboards and everything will be restored.",color:red}]
tellraw @s " "
tellraw @s [{translate:"sitanywhere.uninstall.message2",fallback:"To disable the datapack, use the command",color:red}," ",{text:"§e[/datapack disable ...]",click_event:{action:"suggest_command",command:"/datapack disable "}}]