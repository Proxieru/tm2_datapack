# Stun1 triggers
execute as @a[distance=..3,scores={StunTimer=0}] at @e[tag=trigger_stun,tag=stun1] run effect give @s slowness 3 4 true
execute as @a[distance=..3,scores={StunTimer=0}] at @e[tag=trigger_stun,tag=stun1] run execute at @s run summon text_display ~ ~2 ~ {billboard:"center",text:{"bold":true,"color":"yellow","text":"BONK!"}}
execute as @a[distance=..3,scores={StunTimer=0}] at @e[tag=trigger_stun,tag=stun1] run scoreboard players set @s crittexttimer 10
execute as @a[distance=..3,scores={StunTimer=0}] at @e[tag=trigger_stun,tag=stun1] run scoreboard players set @s StunTimer 30
execute as @a[scores={StunTimer=0..}] unless entity @e[tag=trigger_stun,tag=stun1,distance=..3] run function scripts/logic/stun_timer_handler

# Stun2 triggers
execute as @a[distance=..3,scores={StunTimer=0}] at @e[tag=trigger_stun,tag=stun2] run effect give @s weakness 3 255 true
execute as @a[distance=..3,scores={StunTimer=0}] at @e[tag=trigger_stun,tag=stun2] run scoreboard players set @s StunTimer 30