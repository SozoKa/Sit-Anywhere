execute if entity @s[predicate=sitanywhere:is_sneaking,x_rotation=90] unless entity @e[type=interaction,tag=sit,distance=...1] run summon interaction ~ ~ ~ {Tags:["sit"],width:0.01F,height:1.8F}
execute if entity @s[predicate=!sitanywhere:is_sneaking,x_rotation=..85] if entity @e[type=interaction,tag=sit,distance=...001] run kill @e[type=interaction,tag=sit,distance=...001]
