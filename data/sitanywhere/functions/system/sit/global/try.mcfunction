tellraw @a[tag=sitanywhere-debug] "sitanywhere:system/sit/global/try"

# if function is ran when player was sneaking 3 ticks ago, then pass
execute if score @s sitanywhere_sneak_timer matches 1..2 run function sitanywhere:system/sit/global/success
# if function is ran when player was not sneaking 3 ticks ago, then set timer to 3
execute unless score @s sitanywhere_sneak_timer matches 1.. run scoreboard players set @s sitanywhere_sneak_timer 3