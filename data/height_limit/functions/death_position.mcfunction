###############################
## Minecraft Version 1.13.2
##   Height Limit
## Author:
##   KizahashiLuca
## Date: 
##   Oct 25, 2018
## Version:
##   0.0.4
## Description:
##   after death,
##    detect spawn point.
###############################

kill @e[type=minecraft:area_effect_cloud, name=tmp_cloud]
execute at @s run summon minecraft:area_effect_cloud ~ ~ ~ {CustomName:"\"tmp_cloud\"",Radius:0f,Duration:32768}

function height_limit:reposition
scoreboard players operation @s upperbound.X = @s position.X
scoreboard players operation @s upperbound.Z = @s position.Z
scoreboard players operation @s lowerbound.X = @s position.X
scoreboard players operation @s lowerbound.Z = @s position.Z
execute if entity @s[scores={position.X=0..}] run scoreboard players add @s upperbound.X 1
execute if entity @s[scores={position.Z=0..}] run scoreboard players add @s upperbound.Z 1
execute if entity @s[scores={position.X=..-1}] run scoreboard players add @s upperbound.X 1
execute if entity @s[scores={position.Z=..-1}] run scoreboard players add @s upperbound.Z 1

scoreboard players set @s Death 0