# give bow and arrow
replaceitem entity @s hotbar.4 bow{Unbreakable:1, Enchantments:[{lvl:5s,id:"minecraft:punch"}, {lvl:5s,id:"minecraft:knockback"}], display:{Name:'{"translate":"item.minecraft.bow","color":"gold","italic":false}'}}
replaceitem entity @s inventory.13 arrow

# kill missed arrows
kill @e[type=minecraft:arrow,nbt={inGround:1b}]