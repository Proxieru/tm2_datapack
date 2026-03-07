scoreboard players operation @a HealthPercent = @p HP
execute as @a run scoreboard players operation @s HealthPercent *= @s HP
execute as @a store result score @s HealthPercent run scoreboard players operation @s HealthPercent /= @s HealthPercent20

# I know the name is confusing but it's init-hp-calc. makes more sense if you read it like that