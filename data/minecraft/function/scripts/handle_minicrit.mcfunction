execute at @s run particle block{block_state:{Name:redstone_block}} ~ ~1 ~ 0 0 0 0 16
damage @s 10 minecraft:player_attack by @a[tag=this,limit=1]
execute at @s run summon text_display ~ ~1.5 ~ {billboard:"center",text:{"bold":true,"color":"yellow","text":"MINI CRIT!"}}
scoreboard players set @a crittexttimer 10