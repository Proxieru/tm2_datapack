# Normal door code
execute at @e[tag=func_door,tag=westoreast] if entity @a[distance=..3] run fill ~ ~ ~2 ~ ~2 ~ air
execute at @e[tag=func_door,tag=westoreast] unless entity @a[distance=..3] run fill ~ ~ ~2 ~ ~2 ~ iron_block

execute at @e[tag=func_door,tag=northorsouth] if entity @a[distance=..3] run fill ~2 ~ ~ ~ ~2 ~ air
execute at @e[tag=func_door,tag=northorsouth] unless entity @a[distance=..3] run fill ~2 ~ ~ ~ ~2 ~ iron_block

# Setup doors code
execute at @e[tag=setup_func_door,tag=westoreast] if entity @a[distance=..3,scores={roundstate=1}] run fill ~ ~ ~2 ~ ~2 ~ air
execute at @e[tag=setup_func_door,tag=westoreast] unless entity @a[distance=..3,scores={roundstate=1}] run fill ~ ~ ~2 ~ ~2 ~ iron_block

execute at @e[tag=setup_func_door,tag=northorsouth] if entity @a[distance=..3,scores={roundstate=1}] run fill ~2 ~ ~ ~ ~2 ~ air
execute at @e[tag=setup_func_door,tag=northorsouth] unless entity @a[distance=..3,scores={roundstate=1}] run fill ~2 ~ ~ ~ ~2 ~ iron_block

# Team doors code

# Red door code

execute at @e[tag=red_func_door,tag=westoreast] if entity @a[distance=..3,team=Red] run fill ~ ~ ~2 ~ ~2 ~ air
execute at @e[tag=red_func_door,tag=westoreast] unless entity @a[distance=..3,team=Red] run fill ~ ~ ~2 ~ ~2 ~ iron_block

execute at @e[tag=red_func_door,tag=northorsouth] if entity @a[distance=..3,team=Red] run fill ~2 ~ ~ ~ ~2 ~ air
execute at @e[tag=red_func_door,tag=northorsouth] unless entity @a[distance=..3,team=Red] run fill ~2 ~ ~ ~ ~2 ~ iron_block

# Blu door code

execute at @e[tag=blu_func_door,tag=westoreast] if entity @a[distance=..3,team=Blu] run fill ~ ~ ~2 ~ ~2 ~ air
execute at @e[tag=blu_func_door,tag=westoreast] unless entity @a[distance=..3,team=Blu] run fill ~ ~ ~2 ~ ~2 ~ iron_block

execute at @e[tag=blu_func_door,tag=northorsouth] if entity @a[distance=..3,team=Blu] run fill ~2 ~ ~ ~ ~2 ~ air
execute at @e[tag=blu_func_door,tag=northorsouth] unless entity @a[distance=..3,team=Blu] run fill ~2 ~ ~ ~ ~2 ~ iron_block

execute as @e[tag=northorsouth] run data modify entity @s Invisible set value 1b
execute as @e[tag=westoreast] run data modify entity @s Invisible set value 1b