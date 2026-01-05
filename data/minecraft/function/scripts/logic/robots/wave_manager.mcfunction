execute if entity @e[scores={maptype=3}] if entity @e[scores={robotspawntimer=0}] if entity @e[scores={robotamount=1..}] at @e[tag=mvm_robot_spawn] run summon pillager ~ ~ ~ {CustomName:[{text:Robot}],CustomNameVisible:1b,Tags:["Robot"],Team:Blu,equipment:{mainhand:{id:crossbow}},drop_chances:{mainhand:1f}}
execute if entity @e[scores={robotspawntimer=0}] run scoreboard players remove @e[scores={robotamount=1..}] robotamount 1
scoreboard players remove @e[scores={robotspawntimer=1..}] robotspawntimer 1
scoreboard players remove @e[scores={robotwavedelay=1..}] robotwavedelay 1

execute if entity @e[scores={wave=1}] run function minecraft:scripts/logic/robots/spawn/wave1

# Eventully, eventully..