###############################
## Minecraft Version 1.13.2
##   Height Limit
## Author:
##   KizahashiLuca
## Date: 
##   Oct 24, 2018
## Version:
##   0.0.3
## Description:
##   while boring, not move
##    except spawn point.
###############################

execute if score @s lowerbound.X > @s position.X run execute at @e[type=minecraft:area_effect_cloud,name=tmp_cloud] positioned ~ ~ ~ run teleport @s ~ ~ ~
execute if score @s lowerbound.Z > @s position.Z run execute at @e[type=minecraft:area_effect_cloud,name=tmp_cloud] positioned ~ ~ ~ run teleport @s ~ ~ ~
execute if score @s upperbound.X <= @s position.X run execute at @e[type=minecraft:area_effect_cloud,name=tmp_cloud] positioned ~ ~ ~ run teleport @s ~ ~ ~
execute if score @s upperbound.Z <= @s position.Z run execute at @e[type=minecraft:area_effect_cloud,name=tmp_cloud] positioned ~ ~ ~ run teleport @s ~ ~ ~