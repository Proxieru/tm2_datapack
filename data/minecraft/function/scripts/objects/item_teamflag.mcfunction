
# Red flag code

execute unless entity @e[tag=red_flagholder] run execute at @e[tag=red_item_teamflag] run summon armor_stand ~ ~ ~ {ShowArms:1b,Tags:["red_flagholder"]}

execute at @e[tag=red_item_teamflag] if entity @a[distance=..1,team=Blu] run scoreboard players set @a redflagowner 1

execute unless entity @e[tag=red_flag_model] run summon block_display ~ ~ ~ {block_state:{Name:chest}}
tag @e[type=block_display,tag=!blu_flag_model] add red_flag_model
execute at @e[tag=red_item_teamflag] run tp @e[tag=red_flag_model] ~ ~ ~ 0 0

execute as @e[tag=red_item_teamflag] run data modify entity @s Invisible set value 1b

execute at @e[tag=red_item_teamflag] unless entity @a[distance=..1,team=Blu] unless entity @a[distance=..1,team=Red] run scoreboard players set @a redflagowner 0
execute at @e[tag=red_item_teamflag] if entity @a[distance=..2,team=Blu] run tp @e[tag=red_item_teamflag] @a[distance=..2,limit=1,team=Blu]

# Blu flag code

execute unless entity @e[tag=blu_flagholder] run execute at @e[tag=blu_item_teamflag] run summon armor_stand ~ ~ ~ {ShowArms:1b,Tags:["blu_flagholder"]}

execute at @e[tag=blu_item_teamflag] if entity @a[distance=..1,team=Red] run scoreboard players set @a bluflagowner 1

execute unless entity @e[tag=blu_flag_model] run summon block_display ~ ~ ~ {block_state:{Name:chest}}
tag @e[type=block_display,tag=!red_flag_model] add blu_flag_model
execute at @e[tag=blu_item_teamflag] run tp @e[tag=blu_flag_model] ~ ~ ~ 0 0

execute as @e[tag=blu_item_teamflag] run data modify entity @s Invisible set value 1b

execute at @e[tag=blu_item_teamflag] unless entity @a[distance=..1,team=Red] unless entity @a[distance=..1,team=Blu] run scoreboard players set @a flagowner 0
execute at @e[tag=blu_item_teamflag] if entity @a[distance=..2,team=Red] run tp @e[tag=blu_item_teamflag] @a[distance=..2,limit=1,team=Red]

