execute if entity @a[scores={roundstate=0}] run execute at @e[tag=func_tracktrain] run summon minecart ~ ~ ~ {Tags:["Payload"]}
execute if entity @e[scores={roundstate=0}] run scoreboard players set @e roundstate 1
execute at @a[scores={roundstate=2}] run kill @e[tag=Payload]
execute at @e[scores={roundstate=0}] run bossbar set minecraft:tf2payload value 0

execute if entity @e[tag=Payload] run bossbar set minecraft:tf2payload visible true
execute unless entity @e[tag=Payload] run bossbar set minecraft:tf2payload visible true