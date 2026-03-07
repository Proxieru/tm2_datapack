execute at @e[tag=item_ammo_small] if entity @a[distance=..2] run scoreboard players add @a[distance=..2,scores={class=9}] Cloak 25
execute at @e[tag=item_ammo_small] if entity @a[distance=..2] run kill @e[tag=item_ammo_small,distance=..1]
