execute as @e[scores={class=1}] run attribute @s[scores={class=1}] minecraft:max_health base set 125
effect give @e[scores={class=1}] speed 1 3 true
effect give @e[scores={class=1}] jump_boost 1 3 true
execute as @e[scores={class=1}] run scoreboard players set @s ClassHealthWeight 155