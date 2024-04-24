execute at @p[scores={rightClick=1..},nbt= {SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{tag:"Thunder",display:{Name:Thunder}}}}] run summon lightning_bolt
execute at @p[scores={rightClick=1..},nbt= {SelectedItem:{tag:{tag:"Buster_sword",display:{Name: Buster_sword}}}}, tag=!flight] run function a:move_buster_sword
execute at @p[scores={rightClick=1..},nbt= {SelectedItem:{tag:{tag:"Buster_sword",display:{Name: Buster_sword}}}}] run tag @p add flight
execute as @a at @p run scoreboard players set @a[scores={rightClick=1..}] rightClick 0
execute as @a at @p run scoreboard players set @a[scores={rightClick=1..}] rightClick 0
execute as @p[tag=flight] unless block ~ ~-1 ~ minecraft:air run tag @s remove flight