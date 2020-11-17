# tag if double jumping
execute if score @s[nbt={OnGround:0b}] crouch matches 1.. run tag @s add doubleJump

# count time in air while double jumping
scoreboard players add @s[tag=doubleJump] doubleJumpTime 1

# count total air time
scoreboard players add @s airTime 1

# give levitation and clear right after
execute if score @s[nbt={OnGround:0b},tag=doubleJump] doubleJumpTime matches 1 run effect give @s minecraft:levitation 1 38 true
execute if data entity @s {ActiveEffects:[{Id:25b,Duration:18}]} run effect clear @s levitation

# particles and sound
execute as @s[nbt={OnGround:0b},tag=doubleJump] at @s if score @s doubleJumpTime matches 1 run playsound minecraft:block.wool.place player @s ~ ~ ~ 0.5 0.75 0
execute as @s[nbt={OnGround:0b},tag=doubleJump] at @s if score @s doubleJumpTime matches 1 run particle minecraft:cloud ~ ~ ~ 0.1 0 0.1 0.05 8

# reset once on ground
execute as @s[nbt={OnGround:1b}] run scoreboard players set @s doubleJumpTime 0
execute as @s[nbt={OnGround:1b}] run scoreboard players set @s airTime 0
execute as @s[nbt={OnGround:1b}] run scoreboard players set @s crouch 0
tag @s[nbt={OnGround:1b}] remove doubleJump

# reset crouch
scoreboard players set @s crouch 0