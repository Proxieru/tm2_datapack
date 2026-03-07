tag @e[scores={died=1},team=Red] add oldRed
tag @e[scores={died=1},team=Blu] add oldBlu

execute as @e[scores={died=1}] run scoreboard players set @s[scores={respawntimer=-1}] respawntimer 50
execute as @e[scores={respawntimer=0..}] run scoreboard players remove @s respawntimer 1
execute as @e[scores={died=1}] at @e[scores={died=1}] if entity @s[scores={respawntimer=0}] run scoreboard players set @s died 0
execute as @e[scores={died=1}] run scoreboard players set @s Cloak 100

team join Dead @e[scores={died=1}] 
gamemode spectator @a[scores={respawntimer=1..}]
gamemode survival @a[scores={respawntimer=0}]
execute if entity @e[scores={respawntimer=2}] run clear @a diamond_sword
scoreboard players set @e[team=Dead,scores={respawntimer=1}] spyCicleCooldown 1

team join Red @e[scores={died=0},tag=oldRed]
team join Blu @e[scores={died=0},tag=oldBlu]