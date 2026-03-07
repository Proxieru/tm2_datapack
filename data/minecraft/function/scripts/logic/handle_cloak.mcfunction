# Stock cloak

execute if entity @a[scores={isCloaked=1}] run execute as @e[type=husk] run attribute @s follow_range base set 0
execute if entity @a[scores={isCloaked=0}] run execute as @e[type=husk] run attribute @s follow_range base reset

execute as @a[scores={class=9}] run scoreboard players set @s isCloaked 0
execute as @a[scores={class=9}] if score @s Cloak matches 1.. if items entity @s weapon.mainhand clock[custom_data~{stock_cloak:true}] run scoreboard players set @s isCloaked 1

execute as @a[scores={isCloaked=0}] if score @s cloakTick matches 60 unless score @s Cloak matches 100 run scoreboard players add @s Cloak 1
execute as @a[scores={isCloaked=0}] if score @s cloakTick matches 60 run scoreboard players set @s cloakTick 0
execute as @a[scores={isCloaked=0}] if score @s cloakTick matches ..60 run scoreboard players add @s cloakTick 1

execute as @e[scores={isCloaked=1}] if score @s Cloak matches 1.. run effect give @s invisibility 2 255 true
execute as @e[scores={isCloaked=1}] if score @s Cloak matches 1.. run scoreboard players remove @s Cloak 1

execute as @e[scores={Cloak=100..}] run scoreboard players set @s Cloak 100
execute as @e[scores={Cloak=0}] run clear @s clock
execute as @e[scores={Cloak=3},nbt=!{Inventory:[{id:"minecraft:clock"}]}] run give @s clock[custom_data={stock_cloak:true}]