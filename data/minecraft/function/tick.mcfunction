# class logic
function minecraft:scripts/logic/demoman
function minecraft:scripts/logic/engineer
function minecraft:scripts/logic/heavy
function minecraft:scripts/logic/medic
function minecraft:scripts/logic/pyro
function minecraft:scripts/logic/scout
function minecraft:scripts/logic/sniper
function minecraft:scripts/logic/soldier
function minecraft:scripts/logic/calchealthpercent
function minecraft:scripts/logic/armor
function scripts/logic/jarate_tick

# logic scripts
function minecraft:scripts/logic/robots/wave_manager
function minecraft:scripts/logic/lifestate
function minecraft:scripts/logic/round_manager
function minecraft:scripts/logic/handle_cloak
function scripts/logic/ammo {}

# object scripts
function minecraft:scripts/objects/func_door
function minecraft:scripts/objects/func_regenerate
function minecraft:scripts/objects/item_currencypack
function minecraft:scripts/objects/item_teamflag
function minecraft:scripts/objects/func_capturezone
function minecraft:scripts/objects/func_tracktrain
function minecraft:scripts/objects/payload_team_control_point
function minecraft:scripts/objects/payload_round_win
function minecraft:scripts/objects/item_ammo_small
function minecraft:scripts/objects/item_ammo_medium
function minecraft:scripts/objects/item_ammo_full

# misc
function minecraft:scripts/clear_text
function minecraft:scripts/statusbar

# item
function minecraft:scripts/item/spy/spy_cicle_tick
function minecraft:scripts/item/scout/soda_popper

scoreboard players enable @a changeClass
scoreboard players enable @a changeTeam

execute as @a[scores={changeClass=1}] run function scripts/logic/change_class {class:1}
execute as @a[scores={changeClass=2}] run function scripts/logic/change_class {class:2}
execute as @a[scores={changeClass=3}] run function scripts/logic/change_class {class:3}
execute as @a[scores={changeClass=4}] run function scripts/logic/change_class {class:4}
execute as @a[scores={changeClass=5}] run function scripts/logic/change_class {class:5}
execute as @a[scores={changeClass=6}] run function scripts/logic/change_class {class:6}
execute as @a[scores={changeClass=7}] run function scripts/logic/change_class {class:7}
execute as @a[scores={changeClass=8}] run function scripts/logic/change_class {class:8}
execute as @a[scores={changeClass=9}] run function scripts/logic/change_class {class:9}

execute as @a[scores={changeTeam=1}] run function scripts/logic/red_join
execute as @a[scores={changeTeam=2}] run function scripts/logic/blu_join

execute as @a[team=!Red,team=!Blu,team=!Dead,scores={respawntimer=-1}] run dialog show @s {type:"minecraft:multi_action",title:{text:"Choose Your Team"},body:[{type:"minecraft:plain_message",contents:"Select a team:"}],actions:[{label:"Join RED",action:{type:"run_command",command:"trigger changeTeam set 1"}},{label:"Join BLU",action:{type:"run_command",command:"function minecraft:scripts/logic/blu_join"}}],exit_action:{label:"Cancel"}}
execute as @a unless score @s class = @s class run dialog show @s {type:"minecraft:multi_action",title:{text:"Select Your Class"},body:[{type:"minecraft:plain_message",contents:"Pick a TF2 class:"}],actions:[{label:"Scout",action:{type:"run_command",command:"trigger changeClass set 1"}},{label:"Soldier",action:{type:"run_command",command:"trigger changeClass set 2"}},{label:"Pyro",action:{type:"run_command",command:"trigger changeClass set 3"}},{label:"Demoman",action:{type:"run_command",command:"trigger changeClass set 4"}},{label:"Heavy",action:{type:"run_command",command:"trigger changeClass set 5"}},{label:"Engineer",action:{type:"run_command",command:"trigger changeClass set 6"}},{label:"Medic",action:{type:"run_command",command:"trigger changeClass set 7"}},{label:"Sniper",action:{type:"run_command",command:"trigger changeClass set 8"}},{label:"Spy",action:{type:"run_command",command:"trigger changeClass set 9"}}],exit_action:{label:"Cancel"}}
scoreboard players reset @a teleportRand

execute as @e[type=arrow] run data modify entity @s damage set value -1d