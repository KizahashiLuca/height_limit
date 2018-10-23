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
##   action of exceeding limit.
###############################

execute at @e[type=minecraft:area_effect_cloud, name=tmp_cloud] run teleport @s ~ ~ ~
scoreboard players add @s Penalty 1