# Init Section
scoreboard objectives add class trigger
scoreboard objectives add maptype dummy
scoreboard objectives add robotspawntimer dummy
scoreboard objectives add robotamount dummy
scoreboard objectives add wave dummy
scoreboard objectives add robotwavedelay dummy
scoreboard objectives add roundstate dummy
scoreboard objectives add roundtimer dummy
scoreboard objectives add Credits dummy
scoreboard objectives add redflagowner dummy
scoreboard objectives add bluflagowner dummy
scoreboard objectives add flagreturntimer dummy
scoreboard objectives add blupoints dummy
scoreboard objectives add redpoints dummy
scoreboard objectives add died deathCount
scoreboard objectives add respawntimer dummy
scoreboard objectives add tf_suddendeath_enabled dummy
scoreboard objectives add crittexttimer dummy
scoreboard objectives add scoutstartround dummy
scoreboard objectives add HP health
scoreboard objectives add Ammo dummy
scoreboard objectives add HealthPercent dummy
scoreboard objectives add ClassHealthWeight dummy
scoreboard objectives add spyCicleCooldown dummy
scoreboard objectives add Cloak dummy
scoreboard objectives add isCloaked dummy
scoreboard objectives add cloakTick dummy
scoreboard objectives add changeClass trigger
scoreboard objectives add changeTeam trigger
scoreboard objectives add teleportRand dummy
scoreboard objectives add teleportRandOld dummy
scoreboard objectives add hype minecraft.custom:minecraft.damage_taken
scoreboard objectives add hypeTimer dummy
scoreboard objectives add hypeTickDecay dummy
scoreboard objectives add ammo dummy
scoreboard objectives add ammoReserve dummy
scoreboard objectives add ammoMax dummy
scoreboard objectives add callMedic trigger
scoreboard objectives add RobotsSpawned dummy

# Team stuff
team add Blu
team add Red
team add Dead
team modify Blu prefix "[BLU] "
team modify Red prefix "[RED] "
team modify Dead prefix "*DEAD* "
team modify Blu color blue
team modify Red color red

scoreboard players set @a flagreturntimer 0
scoreboard players set @a respawntimer 0
scoreboard players set @a died 0
scoreboard players set @a tf_suddendeath_enabled 0
scoreboard players set @a hypeTimer 0

bossbar add tf2timer "Round Time"
bossbar set minecraft:tf2timer max 3000
bossbar add tf2payload "Payload Progress"
bossbar set tf2timer players @a
bossbar set tf2payload players @a
bossbar set minecraft:tf2timer visible false
bossbar set minecraft:tf2payload visible false

gamerule doImmediateRespawn true

say [TF2] engine loading..



say [TF2] engine now loaded.

function inithpcalc
#gets health initally