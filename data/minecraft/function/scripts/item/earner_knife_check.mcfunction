advancement revoke @s only minecraft:get_backstab_earner
tag @s add this
execute positioned ^ ^ ^3 as @e[nbt={HurtTime:10s},distance=..2.99] if function minecraft:scripts/item/get_attacker rotated ~ 0 positioned as @s positioned ^ ^ ^1 rotated as @s rotated ~ 0 positioned ^ ^ ^-1 if entity @s[distance=...75] run function minecraft:scripts/item/earner_handle_stab
tag @s remove this