execute at @e[tag=item_currencypack] if entity @a[distance=..1] run scoreboard players add @a[distance=..1] Credits 1
execute at @e[tag=item_currencypack] if entity @a[distance=..1] run kill @e[tag=item_currencypack]
execute as @e[tag=item_currencypack] run data modify entity @s Invisible set value 1b


execute at @e[type=item,nbt={Item:{id:"minecraft:crossbow"}}] run summon armor_stand ~ ~ ~ {ShowArms:1b,Tags:["item_currencypack"]}
execute as @e[type=item,nbt={Item:{id:"minecraft:crossbow"}}] run kill @s

