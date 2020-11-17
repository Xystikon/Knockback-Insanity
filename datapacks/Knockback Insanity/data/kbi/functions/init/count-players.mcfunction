tag @r[tag=!counted] add counted
scoreboard players add playerCount info 1

execute if entity @a[tag=!counted] run function kbi:init/count-players

tag @a remove counted