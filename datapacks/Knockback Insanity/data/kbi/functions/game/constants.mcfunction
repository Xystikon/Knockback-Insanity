# effects
execute as @a unless data entity @s {foodLevel:20} run effect give @s saturation 1 0 true

# items
kill @e[type=item]

# in lobby
execute as @a if entity @s[tag=inLobby] run gamemode adventure @s

# spectator
execute as @a if entity @s[tag=spectator] run gamemode spectator @s

# player
execute as @a if entity @s[tag=player] run gamemode adventure @s

# dev
execute as @a if entity @s[tag=dev] run gamemode creative @s


# other
weather clear
#tag @a[tag=!player,tag=!spectator] add spectator

execute as @a if data entity @s[tag=afterJump] {OnGround:1b} run tag @s remove afterJump
