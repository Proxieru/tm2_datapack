execute if entity @e[scores={roundstate=0}] run tp @e[team=Red] @e[tag=func_redspawn,limit=1]
execute if entity @e[scores={roundstate=0}] run tp @e[team=Blu] @e[tag=func_bluspawn,limit=1]
execute if entity @e[scores={roundstate=0}] run execute at @e[tag=spyCicleStruct] run fill ~ ~ ~ ~ ~1 ~ air
execute if entity @e[scores={roundstate=0}] run kill @e[tag=spyCicleStruct]
execute if entity @e[scores={roundstate=0}] run kill @e[type=arrow]
execute if entity @e[scores={roundstate=0}] run effect give @a instant_health 1 10 true

execute if entity @e[scores={roundstate=0}] run scoreboard players set @e roundtimer 2000
execute if entity @e[scores={roundstate=0}] run bossbar set minecraft:tf2timer visible true
execute if entity @e[scores={roundstate=2}] run bossbar set minecraft:tf2timer visible false

execute if entity @e[scores={roundstate=1}] run execute unless entity @e[scores={roundtimer=0}] run scoreboard players remove @e roundtimer 1
execute store result bossbar minecraft:tf2timer value run execute as @a run scoreboard players get @s roundtimer

execute if entity @e[scores={roundtimer=0}] run scoreboard players set @e roundstate 2
execute if entity @e[scores={roundstate=2}] run scoreboard players set @e roundtimer -1
