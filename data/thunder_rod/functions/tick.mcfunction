execute if score @p fire_rod.cooltime matches 1.. run execute as @a[scores={fire_rod.cooltime=1..}] run scoreboard players remove @s fire_rod.cooltime 1
execute if score @p right_click matches 1.. run execute as @a[scores={right_click=1.., fire_rod.cooltime=0},nbt= {SelectedItem:{tag:{tag:"fire_rod"}}}] run function 0424:fire_rod/use

scoreboard players set @a[scores={right_click=1..}] right_click 0

# ロッドによるファイアボールがあれば常に実行
execute if entity @e[tag=magic_fireball] as @e[tag=magic_fireball] at @s run function 0424:fire_rod/fireball_destroy
