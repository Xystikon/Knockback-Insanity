# info
scoreboard objectives add info dummy
scoreboard players set gameState info 0
    # 0 = in lobby, 1 = startup, 2 = in game, 3 = end
scoreboard players set gameTimeTotal info 0
scoreboard players set totalLives info 5
scoreboard players set gameTimeElapsed info 0
scoreboard players set playerCount info 0
scoreboard players set playersAlive info 0
scoreboard players set map info 1

# stats
scoreboard objectives add deaths deathCount
scoreboard players add @a deaths 0

scoreboard objectives add crouch minecraft.custom:minecraft.sneak_time
scoreboard players add @a crouch 0

# dummies
scoreboard objectives add airTime dummy
scoreboard players set @a airTime 0

scoreboard objectives add doubleJumpTime dummy
scoreboard players set @a doubleJumpTime 0

scoreboard objectives add livesLeft dummy "Lives Left"
scoreboard players set @a livesLeft 0
scoreboard objectives setdisplay sidebar livesLeft

scoreboard objectives add timers dummy
