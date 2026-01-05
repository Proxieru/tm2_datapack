execute as @a[nbt={active_effects:[{id:"minecraft:infested"}]}] at @s if block ~ ~ ~ water run effect clear @s infested
tp @e[type=silverfish] 999 999 999
