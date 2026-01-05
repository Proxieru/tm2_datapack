execute at @e[tag=item_ammo_full] if entity @a[distance=..2] run scoreboard players add @a[distance=..2,scores={class=9}] Cloak 100
execute at @e[tag=item_ammo_full] if entity @a[distance=..2] run kill @e[tag=item_ammo_full,distance=..1]
