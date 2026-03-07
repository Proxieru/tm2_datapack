execute at @a[scores={HealthPercent=100..},team=Blu] run title @p actionbar [{"text":"HP: "},{"score":{"name":"@p","objective":"HP"},color:"blue"},{"text":" Ammo: "},{"score":{"name":"@p","objective":"Ammo"}}]
execute at @a[scores={HealthPercent=100..},team=Red] run title @p actionbar [{"text":"HP: "},{"score":{"name":"@p","objective":"HP"},color:"blue"},{"text":" Ammo: "},{"score":{"name":"@p","objective":"Ammo"}}]

execute at @a[scores={HealthPercent=50..100},team=Blu] run title @p actionbar [{"text":"HP: "},{"score":{"name":"@p","objective":"HP"},color:"green"},{"text":" Ammo: "},{"score":{"name":"@p","objective":"Ammo"}}]
execute at @a[scores={HealthPercent=50..100},team=Red] run title @p actionbar [{"text":"HP: "},{"score":{"name":"@p","objective":"HP"},color:"green"},{"text":" Ammo: "},{"score":{"name":"@p","objective":"Ammo"}}]


execute at @a[scores={HealthPercent=20..49},team=Blu] run title @p actionbar [{"text":"HP: "},{"score":{"name":"@p","objective":"HP"},color:"yellow"},{"text":" Ammo: "},{"score":{"name":"@p","objective":"Ammo"}}]
execute at @a[scores={HealthPercent=20..49},team=Red] run title @p actionbar [{"text":"HP: "},{"score":{"name":"@p","objective":"HP"},color:"yellow"},{"text":" Ammo: "},{"score":{"name":"@p","objective":"Ammo"}}]

execute at @a[scores={HealthPercent=10..19},team=Blu] run title @p actionbar [{"text":"HP: "},{"score":{"name":"@p","objective":"HP"},color:"gold"},{"text":" Ammo: "},{"score":{"name":"@p","objective":"Ammo"}}]
execute at @a[scores={HealthPercent=10..19},team=Red] run title @p actionbar [{"text":"HP: "},{"score":{"name":"@p","objective":"HP"},color:"gold"},{"text":" Ammo: "},{"score":{"name":"@p","objective":"Ammo"}}]

execute at @a[scores={HealthPercent=0..9},team=Blu] run title @p actionbar [{"text":"HP: "},{"score":{"name":"@p","objective":"HP"},color:"dark_red"},{"text":" Ammo: "},{"score":{"name":"@p","objective":"Ammo"}}]
execute at @a[scores={HealthPercent=0..9},team=Red] run title @p actionbar [{"text":"HP: "},{"score":{"name":"@p","objective":"HP"},color:"dark_red"},{"text":" Ammo: "},{"score":{"name":"@p","objective":"Ammo"}}]

execute at @a[team=Dead] run title @p actionbar [{"text":"Respawn in: "},{"score":{"name":"@p","objective":"respawntimer"},color:"gold"}]

