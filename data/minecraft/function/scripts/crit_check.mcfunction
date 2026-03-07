advancement revoke @s only minecraft:check_crit
tag @s add this_crit
execute as @e if function minecraft:scripts/get_crit_attacker run execute as @s run function minecraft:scripts/handle_crit