function kbi:init/scoreboards

# if the game is player
execute if score gameStatus info matches 2 run tag @a remove inLobby
execute if score gameStatus info matches 2 run tag @a remove player
execute if score gameStatus info matches 2 run tag @a add spectator

# if the game is in lobby
execute if score gameStatus info matches 2 run tag @a add inLobby
execute if score gameStatus info matches 2 run tag @a remove player
execute if score gameStatus info matches 2 run tag @a remove spectator