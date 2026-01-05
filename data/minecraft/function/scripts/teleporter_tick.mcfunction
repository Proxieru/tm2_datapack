execute as @e[tag=teleporter_entrance] run scoreboard players operation @s teleportRandOld = @s teleportRand
execute as @e[tag=teleporter_exit] run scoreboard players operation @s teleportRandOld = @s teleportRand

execute as @e[tag=teleporter_entrance] at @s run \
    execute as @e[tag=teleporter_exit] run \
        scoreboard players operation @s teleportRand -= @e[tag=teleporter_entrance] teleportRand

execute as @e[tag=teleporter_entrance] at @s run \
    execute as @a[distance=..2] run \
        execute at @e[scores={teleportRand=0},tag=teleporter_exit] run tp @s ~ ~ ~

execute as @e[tag=teleporter_entrance] run scoreboard players operation @s teleportRand = @s teleportRandOld
execute as @e[tag=teleporter_exit] run scoreboard players operation @s teleportRand = @s teleportRandOld
