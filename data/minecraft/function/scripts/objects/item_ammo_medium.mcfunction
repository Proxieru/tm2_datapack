execute at @e[tag=item_ammo_medium] if entity @a[distance=..2] run scoreboard players add @a[distance=..2,scores={class=9}] Cloak 50
execute at @e[tag=item_ammo_medium] if entity @a[distance=..2] run kill @e[tag=item_ammo_medium,distance=..1]
