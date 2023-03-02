#Function
function underground:changelog/building
setblock 0 200 0 minecraft:bedrock
recipe give @a *


#Scoreborad
scoreboard objectives add underground dummy
scoreboard objectives add tp dummy
scoreboard players add @a underground 1


##Teleport
execute in minecraft:overworld run tp @a[scores={tp=1}] 0 200 0 0 90
execute as @a[scores={tp=1}] run effect give @a minecraft:regeneration 11 250 true
execute as @a[scores={tp=1}] run effect give @a minecraft:night_vision 11 0 true


#Underground
execute in minecraft:overworld as @a[scores={underground=1}] run weather clear
execute in minecraft:overworld as @a[scores={underground=1}] run time set 0
execute in minecraft:overworld as @a[scores={underground=1}] run fill -9 217 -9 8 181 8 air
execute in minecraft:overworld as @a[scores={underground=1}] run scoreboard players set @a tp 1
execute in minecraft:overworld as @a[scores={underground=1}] run gamemode spectator @a
execute in minecraft:overworld as @a[scores={underground=1}] run gamerule commandBlockOutput false
execute in minecraft:overworld as @a[scores={underground=1}] run gamerule doDaylightCycle true
execute in minecraft:overworld as @a[scores={underground=1}] run gamerule doWeatherCycle true
execute in minecraft:overworld as @a[scores={underground=1}] run difficulty normal
execute in minecraft:overworld as @a[scores={underground=1}] run title @a title {"text":"Loading..."}
execute in minecraft:overworld as @a[scores={underground=1}] run title @a subtitle {"text":"Worlds"}
execute in minecraft:overworld as @a[scores={underground=1}] run title @a times 20 200 20
execute in minecraft:overworld as @a[scores={underground=5}] run place template minecraft:cave -9 181 -9
execute in minecraft:overworld as @a[scores={underground=100}] run place structure minecraft:stronghold 0 200 0


#Underground Story
execute in minecraft:overworld as @a[scores={underground=150}] run weather thunder 1000
execute in minecraft:overworld as @a[scores={underground=150}] run time set 0
execute in minecraft:overworld as @a[scores={underground=100}] run advancement revoke @a everything
execute in minecraft:overworld as @a[scores={underground=100}] run scoreboard objectives add kills deathCount
execute in minecraft:overworld as @a[scores={underground=100}] run scoreboard objectives setdisplay list kills
execute in minecraft:overworld as @a[scores={underground=150..160}] run playsound minecraft:ambient.basalt_deltas.additions ambient @a 3 200 0 100
execute in minecraft:overworld as @a[scores={underground=150}] run playsound minecraft:entity.player.big_fall ambient @a 3 200 0 1000 2
execute in minecraft:overworld as @a[scores={underground=150}] run playsound minecraft:entity.villager.hurt ambient @a 3 201 0 1000
execute in minecraft:overworld as @a[scores={underground=155}] run playsound minecraft:entity.villager.celebrate ambient @a 3 201 0 100
execute in minecraft:overworld as @a[scores={underground=160}] run effect give @a minecraft:blindness 15 0 true
execute in minecraft:overworld as @a[scores={underground=160}] run effect give @a minecraft:slowness 10 2 true
execute in minecraft:overworld as @a[scores={underground=170}] run scoreboard players set @a tp 0
execute in minecraft:overworld as @a[scores={underground=170}] run gamemode survival @a
execute in minecraft:overworld as @a[scores={underground=170}] run spawnpoint @a 0 201 0
execute in minecraft:overworld as @a[scores={underground=170}] run title @a title {"text":"Underground","color":"dark_gray"}
execute in minecraft:overworld as @a[scores={underground=170}] run title @a subtitle {"text":"Survival","italic":true,"color":"dark_green"}
execute in minecraft:overworld as @a[scores={underground=170}] run title @a times 30 100 30
execute in minecraft:overworld as @a[scores={underground=180}] run tp @a 3 201 -0 facing 2 200 -0
execute in minecraft:overworld as @a[scores={underground=200}] run playsound minecraft:entity.player.levelup ambient @a 0 66 0 100 2