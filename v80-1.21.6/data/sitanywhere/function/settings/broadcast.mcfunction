tellraw @a ["\n§7------[ §f§lSit Anywhere! - ",{translate:"sitanywhere.settings",fallback:"Settings",color:white,bold:true}," §7]------\n"]

tellraw @a ["§e- ",{translate:"sitanywhere.settings.can_sit_anywhere",fallback:"Can sit anywhere with double sneak?",color:yellow}]
execute if score .global_sitting sitanywhere_settings matches 1 run tellraw @a [{text:" "},{translate:"sitanywhere.yes",fallback:"[YES]",bold:true,color:green},{text:"§r §8"},{translate:"sitanywhere.no",fallback:"[NO]",color:dark_gray}]
execute if score .global_sitting sitanywhere_settings matches 0 run tellraw @a [{text:" "},{translate:"sitanywhere.yes",fallback:"[YES]",color:dark_gray},{text:"§r §c§l"},{translate:"sitanywhere.no",fallback:"[NO]",bold:true,color:red}]

tellraw @a " "

tellraw @a ["§e- ",{translate:"sitanywhere.settings.can_sit_on_blocks",fallback:"Dedicated sitting method on stairs and slabs?",color:yellow}]
execute if score .block_sitting sitanywhere_settings matches 1 run tellraw @a [{text:" "},{translate:"sitanywhere.yes",fallback:"[YES]",bold:true,color:green},{text:"§r §8"},{translate:"sitanywhere.no",fallback:"[NO]",color:dark_gray}]
execute if score .block_sitting sitanywhere_settings matches 0 run tellraw @a [{text:" "},{translate:"sitanywhere.yes",fallback:"[YES]",color:dark_gray},{text:"§r §c§l"},{translate:"sitanywhere.no",fallback:"[NO]",bold:true,color:red}]

execute if score .block_sitting sitanywhere_settings matches 0 if score .sit_on_slabs sitanywhere_settings matches 1 if score .sit_on_stairs sitanywhere_settings matches 1 run tellraw @a [" ",{translate:"sitanywhere.settings.stairs_and_slabs.brackets",fallback:"[STAIRS & SLABS]",color:dark_gray,bold:true}]
execute if score .block_sitting sitanywhere_settings matches 0 if score .sit_on_slabs sitanywhere_settings matches 0 if score .sit_on_stairs sitanywhere_settings matches 1 run tellraw @a [" ",{translate:"sitanywhere.settings.stairs.brackets",fallback:"[STAIRS]",color:dark_gray,bold:true}]
execute if score .block_sitting sitanywhere_settings matches 0 if score .sit_on_slabs sitanywhere_settings matches 1 if score .sit_on_stairs sitanywhere_settings matches 0 run tellraw @a [" ",{translate:"sitanywhere.settings.slabs.brackets",fallback:"[SLABS]",color:dark_gray,bold:true}]

execute if score .block_sitting sitanywhere_settings matches 1 if score .sit_on_slabs sitanywhere_settings matches 1 if score .sit_on_stairs sitanywhere_settings matches 1 run tellraw @a [" ",{translate:"sitanywhere.settings.stairs_and_slabs.brackets",fallback:"[STAIRS & SLABS]",color:light_purple,bold:true}]
execute if score .block_sitting sitanywhere_settings matches 1 if score .sit_on_slabs sitanywhere_settings matches 0 if score .sit_on_stairs sitanywhere_settings matches 1 run tellraw @a [" ",{translate:"sitanywhere.settings.stairs.brackets",fallback:"[STAIRS]",color:light_purple,bold:true}]
execute if score .block_sitting sitanywhere_settings matches 1 if score .sit_on_slabs sitanywhere_settings matches 1 if score .sit_on_stairs sitanywhere_settings matches 0 run tellraw @a [" ",{translate:"sitanywhere.settings.slabs.brackets",fallback:"[SLABS]",color:light_purple,bold:true}]

tellraw @a "\n§7---------------------------------------\n"