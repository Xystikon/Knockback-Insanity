# constant
effect give @a[tag=player] minecraft:resistance 1 1 true
effect give @a[tag=player] minecraft:speed 1 1 true
effect give @a[tag=player] minecraft:jump_boost 1 1 true
effect give @a[tag=player] minecraft:night_vision 1000000 0 true
effect give @a[tag=player] minecraft:regeneration 1 4 true
effect give @a[tag=player] minecraft:dolphins_grace 1 0 true

# give resistance after 3 seconds of air time
execute if score @s airTime matches 60.. run effect give @s resistance 1 0 true

# double jump boost on hit on ground
execute if data entity @s[tag=doubleJump] {OnGround:1b} run effect give @s jump_boost 1 2 true