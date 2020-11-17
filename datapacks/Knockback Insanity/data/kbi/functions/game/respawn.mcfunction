execute as @a if score @s deaths matches 1.. if score map info matches 1 run spawnpoint @s 0 4 294
execute as @a if score @s deaths matches 1.. run scoreboard players remove @s livesLeft 1

execute as @a if score @s deaths matches 1.. if score @s livesLeft matches 0 run function kbi:tag/spectator
execute as @a if score @s deaths matches 1.. if score @s livesLeft matches 0 run scoreboard players remove playersAlive info 1

execute if score playersAlive info matches 1 as @a if score @s livesLeft matches 1.. run function kbi:game/end

execute as @a if score @s deaths matches 1.. if score map info matches 1 run scoreboard players set @s deaths 0