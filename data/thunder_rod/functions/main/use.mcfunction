# 召喚
execute as @s at @s anchored eyes run summon minecraft:fireball ^ ^ ^1 {Tags:[shot_fireball, magic_fireball], ExplosionPower:0b}
execute as @s at @s run playsound minecraft:entity.blaze.shoot hostile @s

# クールタイムを設定
scoreboard players add @s fire_rod.cooltime 20

# 「原点 + playerの向いてる方向の2m先」にマーカーを呼び出す。この座標を後でMotion値に代入
execute rotated as @s positioned 0.0 0.0 0.0 run summon minecraft:marker ^ ^ ^2 {Tags:[set_motion]}

# 先ほどの座標を、ベクトルとしてMotion値に代入することで動作を指定
execute as @e[tag=shot_fireball] run data modify entity @s Motion set from entity @e[tag=set_motion, limit=1] Pos

# 座標用のマーカーを削除
kill @e[type=marker, tag=set_motion]

# fireballのタグを削除
tag @e[tag=shot_fireball] remove shot_fireball
