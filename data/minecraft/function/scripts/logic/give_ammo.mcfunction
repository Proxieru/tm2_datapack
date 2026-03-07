$execute as @a[scores={ammo=0}] run give @s arrow $(ammo_max)
execute as @a[scores={ammo=0}] run scoreboard players remove @s ammoReserve 1
$execute as @a[scores={ammo=0}] run scoreboard players set @s ammoReserve $(ammo_max)