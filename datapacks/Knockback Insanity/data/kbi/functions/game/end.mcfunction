tag @s add winner

title @a title [{"selector": "@a[tag=winner]"},{"text": " has won!"}]
tag @s remove winner

scoreboard players set gameState info 0

execute as @a run function kbi:tag/in-lobby

clear @a