scoreboard players set @e robotamount 5
scoreboard players set @e robotspawntimer 0
execute unless entity @e[scores={setwaydelay=1}] run scoreboard players set @e robotwavedelay 1000
scoreboard objectives add setwavedelay dummy
scoreboard players set @e setwaydelay 1 
execute if entity @e[scores={robotwavedelay=0}] if entity @e[scores={setwaydelay=1}] run scoreboard players set @e robotamount 15





