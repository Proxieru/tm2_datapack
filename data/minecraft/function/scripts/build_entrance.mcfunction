summon armor_stand ~ ~ ~ {Tags:[teleporter_entrance]}
execute at @e[tag=teleporter_entrance,distance=..2] store result score @s teleportRand run random value 1..999999999