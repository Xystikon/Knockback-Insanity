##### LOBBY #####

# levitation
execute if score gameState info matches 0 run function kbi:lobby/levitate

##### GAME #####

# start system
execute if score gameState info matches 1 run function kbi:game/start

# respawning
execute if score gameState info matches 2 run function kbi:game/respawn

# bow and arrow
execute if score gameState info matches 2 as @a[tag=player] run function kbi:game/bow-and-arrow

# effects
execute if score gameState info matches 2 as @a[tag=player] run function kbi:game/effects

# double jump - if sneaking
execute if score gameState info matches 2 as @a[tag=player] run function kbi:game/double-jump

# constant commands
execute if score gameState info matches 2 run function kbi:game/constants

# jump pads
execute if score gameState info matches 2 as @a[tag=player] run function kbi:game/jump-pads