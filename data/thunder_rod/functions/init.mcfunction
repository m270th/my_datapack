# ニンジン付き棒 右クリック
scoreboard objectives add right_click minecraft.used:minecraft.carrot_on_a_stick

# ファイアロッドのクールタイム
scoreboard objectives add fire_rod.cooltime dummy
scoreboard players set @a fire_rod.cooltime 0
# ファイアボールの継続時間
scoreboard objectives add fire_rod.fireball.lifetime dummy
