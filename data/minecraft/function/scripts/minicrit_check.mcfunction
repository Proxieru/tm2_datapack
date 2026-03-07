advancement revoke @s only minecraft:minicrit
tag @s add this
execute as @e[nbt={HurtTime:10s}] if function minecraft:scripts/item/scout/get_attacker_milk if entity @s[distance=..5,nbt={active_effects:[{id:"minecraft:infested"}]}] run function minecraft:scripts/handle_minicrit
tag @s remove this