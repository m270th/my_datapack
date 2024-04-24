say @s movetest
execute as @p[tag=flight] run effect give @s levitation 1 120
execute as @p[tag=flight] at @s run tag @e[type=!player, distance=..5, type=!item] add target
execute as @e[tag=target] run damage @s 10
execute as @e[tag=target] run effect give @s levitation 1 120
execute as @e[tag=target] at @s run particle explosion ~ ~1 ~
schedule function a:tp 2t
# effect clear @a
# schedule function a:tp 8t
# schedule function a:tp 8t
# schedule function a:tp 4t
