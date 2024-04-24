scoreboard players add @s fire_rod.fireball.lifetime 1
execute as @s[scores={fire_rod.fireball.lifetime=20..}] run function fire_rod:main/explosion
