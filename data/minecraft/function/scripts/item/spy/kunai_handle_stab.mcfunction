effect give @a[tag=this] instant_health 1 10 true
effect give @a[tag=this] absorption 15 5 true
damage @s 99 minecraft:player_attack by @a[tag=this,limit=1]
playsound minecraft:item.wolf_armor.break player @s ~ ~ ~ 1 2
playsound minecraft:entity.arrow.hit_player player @a[tag=this,limit=1]
execute at @s run particle block{block_state:{Name:redstone_block}} ~ ~1 ~ 0 0 0 0 16
execute at @s run summon text_display ~ ~1.5 ~ {billboard:"center",text:{"bold":true,"color":"green","text":"CRITICAL HIT!!!"}}
scoreboard players set @a crittexttimer 10