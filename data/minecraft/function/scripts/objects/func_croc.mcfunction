# This behavior may be changed, but currently it makes it so
# whenever the player touches any water in the map it will kill with croc
# becareful! as you can see within the code, the model the datapack summons is a normal armorstand and can be pushed by water

execute unless entity @e[tag=croc_kill_obj] run summon armor_stand ~ ~ ~ {ShowArms:1b,Invisible:1b,CustomName:[{text:Crocodile,color:green}],Tags:["croc_kill_obj"]}
execute as @e[tag=croc_kill_model] at @s if block ~ ~-1 ~ stone run tp @s ~ ~-0.05 ~
execute if entity @e[tag=func_croc] run execute as @e[tag=!croc_kill_model,gamemode=!creative,gamemode=!spectator] at @s if block ~ ~ ~ water run summon armor_stand ~ ~-1 ~ {ShowArms:1b,Invisible:1b,Tags:["croc_kill_model"],equipment:{head:{id:player_head,components:{profile:{properties:[{value:eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvMzJlN2ZhMmY5YjhkNmQxZTczNGVkYTVlM2NlMDI2Njg4MTM0MjkyZmNhZmMzMjViMWVhZDQzZDg5Y2MxZTEifX19,name:textures}]}}}}}
execute if entity @e[tag=func_croc] run execute as @e[tag=!croc_kill_model,gamemode=!creative,gamemode=!spectator] at @s if block ~ ~ ~ water run damage @s 9999 mob_attack by @e[tag=croc_kill_obj,limit=1]
execute at @e[tag=croc_kill_model] run execute at @e[tag=croc_kill_model] run tp @e[tag=croc_kill_model] ^ ^ ^ facing entity @p