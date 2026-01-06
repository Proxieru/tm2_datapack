advancement revoke @s only minecraft:mad_milk
tag @s add this
execute as @e[nbt={HurtTime:10s}] if function minecraft:scripts/item/scout/get_attacker_milk if entity @s[distance=..5,nbt={active_effects:[{id:"minecraft:luck"}]}] run function minecraft:scripts/item/scout/handle_milk
tag @s remove this