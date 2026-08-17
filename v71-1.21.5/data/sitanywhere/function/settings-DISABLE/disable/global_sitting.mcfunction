scoreboard players set .global_sitting sitanywhere_settings 0
# warn-off target-selector-no-dimension
kill @e[tag=sitanywhere_sit,tag=global,type=interaction]

playsound block.wooden_button.click_off player @s
function sitanywhere:-settings