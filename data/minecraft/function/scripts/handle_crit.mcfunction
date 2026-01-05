execute at @s run particle block{block_state:{Name:redstone_block}} ~ ~1 ~ 0 0 0 0 16
execute at @s run summon text_display ~ ~1.5 ~ {billboard:"center",text:{"bold":true,"color":"green","text":"CRITICAL HIT!!!"}}
scoreboard players set @a crittexttimer 10