execute as @e[tag=jump-pad-marker,type=armor_stand] at @s align xyz positioned ~0.5 ~0.5 ~0.5 run summon area_effect_cloud ~ ~ ~ {Duration:2000000000,Tags:["jump-pad"],CustomNameVisible:1b,CustomName:'{"text":"Jump Pad"}'}
execute as @e[tag=jump-pad-marker,type=armor_stand] at @s run kill @s

execute at @e[tag=jump-pad] run particle minecraft:ambient_entity_effect ~ ~0.25 ~ 0.75 0.1 0.75 2 4 normal

# black concrete - 1st level
execute as @e[tag=jump-pad] at @s if block ~ ~-1 ~ quartz_pillar if block ~ ~-1 ~1 black_concrete run effect give @p[distance=..2] jump_boost 1 14 true

# lime concrete - 2nd level
execute as @e[tag=jump-pad] at @s if block ~ ~-1 ~ quartz_pillar if block ~ ~-1 ~1 lime_concrete run effect give @p[distance=..2] jump_boost 1 21 true

# orange concrete - 3rd level
execute as @e[tag=jump-pad] at @s if block ~ ~-1 ~ quartz_pillar if block ~ ~-1 ~1 orange_concrete run effect give @p[distance=..2] jump_boost 1 28 true

# red concrete - 4th level
execute as @e[tag=jump-pad] at @s if block ~ ~-1 ~ quartz_pillar if block ~ ~-1 ~1 red_concrete run effect give @p[distance=..2] jump_boost 1 31 true