execute at @e[tag=func_kill] if entity @a[distance=..2] run kill @a[distance=..2]
execute as @e[tag=func_kill] run data modify entity @s Invisible set value 1b