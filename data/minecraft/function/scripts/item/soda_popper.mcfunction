execute as @a[scores={hype=351..}] run scoreboard players set @s hype 350
execute as @a[scores={hype=350..}] run scoreboard players set @s hypeTimer 8
execute as @a[scores={hypeTimer=1..}] unless score @s hypeTickDecay matches 15 run scoreboard players add @s hypeTickDecay 1
execute as @a[scores={hypeTickDecay=15}] run scoreboard players remove @s hypeTimer 1
execute as @a[scores={hypeTickDecay=15}] run scoreboard players set @s hypeTickDecay 0
execute as @a[scores={hypeTimer=1..}] run effect give @s minecraft:jump_boost 1 6 true
execute as @a[scores={hype=350}] run scoreboard players set @s hype 0
execute as @a unless items entity @s weapon.* crossbow[custom_data~{soda_popper:true}] run scoreboard players set @s hype 0