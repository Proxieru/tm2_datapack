scoreboard players operation @a HealthPercent = @p HP
execute as @a run scoreboard players operation @s HealthPercent *= @s HP
execute as @a store result score @s HealthPercent run scoreboard players operation @s HealthPercent /= @s HealthPercent20