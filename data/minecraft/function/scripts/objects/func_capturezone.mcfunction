execute at @e[tag=func_capturezone_blu] if entity @e[tag=red_item_teamflag,distance=..2] run scoreboard players add @a blupoints 1
execute at @e[tag=func_capturezone_blu] if entity @e[tag=red_item_teamflag,distance=..2] run tellraw @a[team=Blu] "[Administrator] We've secured the enemy intelligence!"
execute at @e[tag=func_capturezone_blu] if entity @e[tag=red_item_teamflag,distance=..2] run tellraw @a[team=Red] "[Administrator] The enemy captured our intelligence"
execute at @e[tag=func_capturezone_blu] if entity @e[tag=red_item_teamflag,distance=..2] run tp @e[tag=red_item_teamflag] @e[tag=red_flagholder,limit=1]

execute at @e[tag=func_capturezone_red] if entity @e[tag=blu_item_teamflag,distance=..2] run scoreboard players add @a redpoints 1
execute at @e[tag=func_capturezone_red] if entity @e[tag=blu_item_teamflag,distance=..2] run tellraw @a[team=Red] "[Administrator] We've secured the enemy intelligence!"
execute at @e[tag=func_capturezone_red] if entity @e[tag=blu_item_teamflag,distance=..2] run tellraw @a[team=Blu] "[Administrator] The enemy captured our intelligence!"
execute at @e[tag=func_capturezone_red] if entity @e[tag=blu_item_teamflag,distance=..2] run tp @e[tag=blu_item_teamflag] @e[tag=blu_flagholder,limit=1]

execute if entity @a[scores={redpoints=3}] run title @a title "Red won!"
execute if entity @a[scores={redpoints=3}] run title @a subtitle "Red captured the intel 3 times."
execute if entity @a[scores={redpoints=3}] run scoreboard players set @a blupoints 0
execute if entity @a[scores={redpoints=3}] run scoreboard players set @a redpoints 0

execute if entity @a[scores={blupoints=3}] run title @a title "Blu won!"
execute if entity @a[scores={blupoints=3}] run title @a subtitle "Blu captured the intel 3 times."
execute if entity @a[scores={blupoints=3}] run scoreboard players set @a redpoints 0
execute if entity @a[scores={blupoints=3}] run scoreboard players set @a blupoints 0

execute as @e[tag=func_capturezone_red] run data modify entity @s Invisible set value 1b
execute as @e[tag=func_capturezone_blu] run data modify entity @s Invisible set value 1b