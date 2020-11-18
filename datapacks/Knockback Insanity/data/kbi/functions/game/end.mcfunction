title @a title [{"selector": "@s"},{"text": " has won!"}]

clear @a

scoreboard players set @a livesLeft 0
execute as @a run function kbi:tag/spectator

gamemode spectator @a

schedule function kbi:game/tp-to-lobby 5s