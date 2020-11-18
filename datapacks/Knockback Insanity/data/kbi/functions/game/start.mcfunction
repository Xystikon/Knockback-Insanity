scoreboard players set gameState info 2
execute as @a run function kbi:tag/player

execute if score map info matches 1 run tp @a 0 4 294

# scoreboards
scoreboard objectives remove livesLeft
scoreboard objectives add livesLeft dummy
execute store result score @a[tag=player] livesLeft run scoreboard players get totalLives info
scoreboard objectives setdisplay sidebar livesLeft

scoreboard players set playerCount info 0
function kbi:init/count-players
execute store result score playersAlive info run scoreboard players get playerCount info